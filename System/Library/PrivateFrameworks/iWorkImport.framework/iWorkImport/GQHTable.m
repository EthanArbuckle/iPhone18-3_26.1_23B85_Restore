@interface GQHTable
+ (id)mapBaseFillStyleForRowIndex:(unsigned __int16)a3 columnIndex:(unsigned __int16)a4 state:(id)a5 isGroupingCell:(BOOL)a6;
+ (int)beginCells:(id)a3 state:(id)a4;
+ (int)beginTable:(id)a3 state:(id)a4;
+ (int)endTable:(id)a3 state:(id)a4;
+ (int)handleCell:(id)a3 state:(id)a4;
+ (int)mapCellContent:(id)a3 xml:(id)a4 state:(id)a5;
+ (unsigned)resolveGroupLevel:(id)a3 model:(id)a4 columnIndex:(int)a5 tableState:(id)a6;
+ (void)addMissingCellsUpToRowIndex:(unsigned __int16)a3 columnIndex:(unsigned __int16)a4 state:(id)a5;
+ (void)mapVectorStyles:(id *)a3 toCellStyle:(id)a4 state:(id)a5;
+ (void)splitTable:(id)a3;
+ (void)startTableWithTableAnchor:(__CFString *)a3 tableHeight:(float)a4 state:(id)a5;
@end

@implementation GQHTable

+ (int)mapCellContent:(id)a3 xml:(id)a4 state:(id)a5
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a4 startElement:"img"];
    v9 = [a5 processorState];
    if ([a3 BOOLValue])
    {
      v10 = @"ctrl_boxChecked_norm";
    }

    else
    {
      v10 = @"ctrl_boxUnchecked_norm";
    }

    [a4 setAttribute:"src" cfStringValue:{objc_msgSend(v9, "uriForBundleResource:ofType:", v10, @"pdf"}];
    [a4 endElement];
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v18 = [a3 resultCell];
      if (v18)
      {
        [a1 mapCellContent:v18 xml:a4 state:a5];
      }

      return 1;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [objc_msgSend(objc_msgSend(a5 "tableState")];
      LODWORD(v29) = 7;
      LOBYTE(v28) = 1;
      v21 = [a3 columnIndex];
      v22 = [a3 level];
      v23 = [v20 firstVisibleColumn];
      if (([v20 hasGroupDisplayType:v21 level:v22 displayType:&v29 isTypeVisible:&v28] & 1) == 0 && (v21 > objc_msgSend(v20, "headerColumnCount") || v21 != v23))
      {
        return 1;
      }

      if (v29 == 7)
      {
        v11 = 0;
        v24 = 7;
      }

      else
      {
        v11 = [a3 createFormattedValue];
        v24 = v29;
      }

      v25 = [GQDTGroupingCell displayTypeString:v24];
      v26 = v25;
      if (v11 && v25)
      {
        if (v28 == 1)
        {
          [a4 startElement:"span"];
          [GQHStyle setSingleStyleAttribute:off_9CE68 value:off_9CEA0 node:a4];
          [a4 addContent:v26];
          [a4 endElement];
        }
      }

      else
      {
        if (!v11)
        {
          return 1;
        }

        if (!v25)
        {
          goto LABEL_10;
        }
      }

      if (v28 == 1)
      {
        [a4 startElement:"span"];
        [GQHStyle setSingleStyleAttribute:off_9CE68 value:off_9CF20 node:a4];
      }

      [a4 addContent:v11];
      if (v28 == 1)
      {
        [a4 endElement];
      }

      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [a3 isMemberOfClass:objc_opt_class()];
      return 1;
    }

LABEL_9:
    v11 = [a3 createStringValue];
LABEL_10:
    [a4 addContent:v11];
LABEL_11:
    CFRelease(v11);
    return 1;
  }

  v13 = [a3 stringValue];
  if (v13)
  {
    v14 = v13;
    v28 = 0;
    v29 = 0;
    if ([objc_msgSend(a3 "cellStyle")] && objc_msgSend(v29, "overridesObjectProperty:value:", 38, &v28))
    {
      values = -[GQDWPText initWithContent:]([GQDWPText alloc], "initWithContent:", [v14 UTF8String]);
      v15 = objc_alloc_init(GQDWPParagraph);
      v16 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
      [(GQDWPTextList *)v15 setChildren:v16];
      CFRelease(v16);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [GQHParagraph handleParagraph:v15 state:a5 bulletStates:Mutable isMultiColumn:0];
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      [a4 addContent:v14];
    }

    return 1;
  }

  v19 = [a3 layoutStorage];
  if (!v19)
  {
    return 1;
  }

  return [GQHTextBox handleLayoutStorage:v19 state:a5];
}

+ (void)addMissingCellsUpToRowIndex:(unsigned __int16)a3 columnIndex:(unsigned __int16)a4 state:(id)a5
{
  v6 = a4;
  v7 = a3;
  v25 = [a5 htmlDoc];
  v9 = [a5 tableState];
  v10 = [v9 prevRowIndex];
  v11 = [v9 prevColumnIndex];
  v12 = [objc_msgSend(v9 "table")];
  v13 = [v12 columnCount];
  v14 = [v12 rowCount];
  if (v10 < 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = v10;
  }

  v26 = v7;
  if (v14 >= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v14;
  }

  if (v10 >= v16)
  {
    while (1)
    {
      LOWORD(v11) = v11 + 1;
      if (v6 <= v11)
      {
        break;
      }

      [a1 addMissingCellWithRowIndex:v15 columnIndex:v11 state:a5];
    }
  }

  else
  {
    v24 = v14;
    if (v10 < 0)
    {
      v15 = -1;
      i = v25;
    }

    else
    {
      v17 = v11 + 1;
      for (i = v25; v13 > v17; ++v17)
      {
        [a1 addMissingCellWithRowIndex:v15 columnIndex:v17 state:a5];
      }

      if ([v12 visibilityForRow:v15])
      {
        [v25 endElement];
      }
    }

    for (j = v15 + 1; v16 > j; ++j)
    {
      v20 = [v12 visibilityForRow:j];
      v21 = v20;
      if (v20)
      {
        [a1 beginRowWithIndex:j state:a5];
      }

      if (v13)
      {
        v22 = 0;
        do
        {
          [a1 addMissingCellWithRowIndex:j columnIndex:v22++ state:a5];
        }

        while (v13 > v22);
      }

      if (v21)
      {
        [i endElement];
      }
    }

    if (v24 > v26)
    {
      if ([v12 visibilityForRow:v26])
      {
        [a1 beginRowWithIndex:v26 state:a5];
      }

      if (v6)
      {
        v23 = 0;
        do
        {
          [a1 addMissingCellWithRowIndex:v16 columnIndex:v23++ state:a5];
        }

        while (v6 > v23);
      }
    }
  }
}

+ (int)beginTable:(id)a3 state:(id)a4
{
  v5 = [a4 generatorState];
  [GQHDrawable aboutToGenerateDrawable:a3 htmlState:v5];
  v6 = [v5 tableState];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 splitNextAttachment])
  {
    [v6 setSplitTable:1];
    [v6 setSplitTableIndex:{objc_msgSend(v5, "firstAttachmentId")}];
    [objc_msgSend(a3 "geometry")];
    [v6 setOriginalTableHeight:v7];
  }

  return 1;
}

+ (int)endTable:(id)a3 state:(id)a4
{
  v6 = [a4 generatorState];
  v7 = [v6 htmlDoc];
  v8 = [v6 tableState];
  [a1 addMissingCellsUpToRowIndex:objc_msgSend(objc_msgSend(objc_msgSend(v8 columnIndex:"table") state:{"model"), "rowCount"), 0, v6}];
  [v8 setTable:0];
  [v7 endElementWithExpectedName:"tbody"];
  [v7 endElementWithExpectedName:"table"];
  if ([v8 splitTable])
  {
    [v8 setSplitTable:0];
    [v6 finishedWithSplitAttachment];
  }

  [v6 leaveGraphicObject];
  v9 = [a3 geometry];
  [v9 position];
  v11 = v10;
  v13 = v12;
  [v9 size];
  [v6 addedDrawableWithBounds:{v11, v13, v14, v15}];
  [GQHDrawable doneGeneratingDrawable:a3 htmlState:v6];
  return 1;
}

+ (void)startTableWithTableAnchor:(__CFString *)a3 tableHeight:(float)a4 state:(id)a5
{
  v9 = [a5 htmlDoc];
  v10 = [objc_msgSend(a5 "tableState")];
  v11 = [v10 geometry];
  v12 = v11;
  if (a4 > 0.0)
  {
    [v11 size];
    [v12 setSize:?];
  }

  [v9 startElement:"table"];
  if (a3)
  {
    [v9 setAttribute:"id" cfStringValue:a3];
  }

  v23 = 0;
  v13 = objc_alloc_init(GQHStyle);
  if ([a5 needAbsolutelyPositionedTables])
  {
    [(GQHStyle *)v13 addAttribute:off_9CF18 value:off_9CFA0];
    [v12 position];
    [GQHBounds mapPosition:0 srcGraphicStyle:v13 style:a5 state:?];
  }

  [(GQHStyle *)v13 addAttribute:off_9CE30 value:off_9CFD0];
  [(GQHStyle *)v13 addAttribute:off_9CE60 value:@"inline-table"];
  [(GQHStyle *)v13 addAttribute:off_9CF28 value:off_9CFE0];
  [v12 size];
  [GQHBounds mapSize:"mapSize:angle:srcGraphicStyle:style:state:" angle:0 srcGraphicStyle:v13 style:a5 state:?];
  [a1 mapStyle:objc_msgSend(v10 style:"tableStyle") state:{v13, a5}];
  if ([objc_msgSend(v10 "tableStyle")])
  {
    v14 = [v23 pattern];
    v15 = @"0";
    if (v14 && [v14 type] == 1)
    {
      v15 = @"1";
    }

    [v9 setAttribute:"border" cfStringValue:v15];
    [v9 setAttribute:"rules" cfStringValue:@"all"];
  }

  v16 = [v10 tableStyle];
  [v12 size];
  [GQHTextBox mapScaledImageFill:v16 style:v13 size:?];
  -[GQHStyle setStyleOnCurrentNode:mappingBaseStyleClass:baseClassType:](v13, "setStyleOnCurrentNode:mappingBaseStyleClass:baseClassType:", a5, [v10 tableStyle], objc_opt_class());

  v17 = [v10 model];
  v18 = [v17 columnCount];
  if (v18)
  {
    v19 = v18;
    for (i = 0; i < v19; ++i)
    {
      if ([v17 visibilityForColumn:i])
      {
        [v9 startElement:"col"];
        [v17 widthForColumn:i];
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%ld", llroundf(v21));
        [v9 setAttribute:"width" cfStringValue:v22];
        CFRelease(v22);
        [v9 endElement];
      }
    }
  }

  [v9 startElement:"tbody"];
}

+ (int)beginCells:(id)a3 state:(id)a4
{
  v6 = [a4 generatorState];
  [objc_msgSend(v6 "tableState")];
  v7 = [a3 geometry];
  v8 = [v6 htmlDoc];
  if ([objc_msgSend(a3 "model")])
  {
    v9 = objc_alloc_init(GQHStyle);
    v10 = [objc_msgSend(a3 "tableStyle")];
    v11 = [objc_msgSend(a3 "tableStyle")];
    [v6 enterGraphicObject];
    [v8 startElement:"div"];
    [GQHParagraphStyle mapStyle:v10 style:v9 state:v6];
    [GQHTextBox mapStyle:v11 style:v9 state:v6];
    if (![v6 needAbsolutelyPositionedTables])
    {
LABEL_23:
      Mutable = CFArrayCreateMutable(0, 2, &kCFTypeArrayCallBacks);
      v29 = CFArrayCreateMutable(0, 2, &kCFTypeArrayCallBacks);
      CFArraySetValueAtIndex(Mutable, 0, v10);
      v30 = objc_opt_class();
      CFArraySetValueAtIndex(v29, 0, v30);
      CFArraySetValueAtIndex(Mutable, 1, v11);
      v31 = objc_opt_class();
      CFArraySetValueAtIndex(v29, 1, v31);
      [(GQHStyle *)v9 setStyleOnCurrentNode:v6 mappingBaseStyleClasses:Mutable baseClassTypes:v29];
      CFRelease(Mutable);
      CFRelease(v29);

      [v8 addContent:{objc_msgSend(objc_msgSend(a3, "model"), "name")}];
      [v8 endElement];
      [v6 leaveGraphicObject];
      goto LABEL_24;
    }

    v39 = 0;
    v40 = 0;
    if (([v10 hasValueForFloatProperty:2 value:&v40] & 1) == 0)
    {
      [objc_msgSend(v6 "implicitStyle")];
      LODWORD(v40) = v12;
    }

    if ([v10 hasValueForObjectProperty:1 value:&v39])
    {
      v14 = v39;
      if (v39)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = [objc_msgSend(v6 "implicitStyle")];
      v39 = v14;
      if (v14)
      {
LABEL_7:
        LODWORD(v13) = v40;
        if ([GQHTextStyle getDefaultLineHeight:v14 fontSize:&v40 + 4 defLineHeight:v13])
        {
          v15 = SHIDWORD(v40);
        }

        else
        {
          v15 = *&v40 * 1.2;
        }

        goto LABEL_12;
      }
    }

    v15 = 0.0;
LABEL_12:
    v38 = 0;
    if ([v10 hasValueForObjectProperty:28 value:&v38])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v38 mode];
        [v38 amount];
        if (v16)
        {
          v15 = v17;
        }

        else
        {
          v15 = v15 * v17;
        }
      }
    }

    if ([v10 hasValueForFloatProperty:31 value:&v40])
    {
      v18 = v15 + *&v40;
    }

    else
    {
      v18 = v15;
    }

    v37 = 0;
    if ([v11 hasValueForObjectProperty:47 value:&v37])
    {
      [v37 top];
      v20 = v19;
      [v37 bottom];
      v18 = v18 + (v20 + v21);
    }

    v22 = off_9CF50;
    [v7 position];
    [(GQHStyle *)v9 addAttribute:v22 pxValue:(v23 - v18)];
    v24 = off_9CEA0;
    [v7 position];
    [(GQHStyle *)v9 addAttribute:v24 pxValue:v25];
    v26 = off_9CF68;
    [v7 size];
    [(GQHStyle *)v9 addAttribute:v26 pxValue:v27];
    [(GQHStyle *)v9 addAttribute:off_9CF18 value:off_9CFA0];
    goto LABEL_23;
  }

LABEL_24:
  [v6 enterGraphicObject];
  if ([objc_msgSend(v6 "tableState")])
  {
    [v6 currentAttachmentPosition];
    v33 = v32;
    [objc_msgSend(v6 "tableState")];
    v34 = [a1 createTableAttachmentIdWithNumber:{objc_msgSend(v6, "firstAttachmentId")}];
    *&v35 = v33;
    [a1 startTableWithTableAnchor:v34 tableHeight:v6 state:v35];
    if (v34)
    {
      CFRelease(v34);
    }
  }

  else
  {
    [a1 startTableWithTableAnchor:0 tableHeight:v6 state:0.0];
  }

  return 1;
}

+ (int)handleCell:(id)a3 state:(id)a4
{
  v6 = [a4 generatorState];
  v7 = [v6 tableState];
  v8 = [v6 htmlDoc];
  v9 = [a3 columnIndex];
  v10 = [a3 rowIndex];
  v11 = [a3 columnSpan];
  v12 = [a3 rowSpan];
  [a1 addMissingCellsUpToRowIndex:v10 columnIndex:v9 state:v6];
  v13 = [v7 cellCountInColumns];
  v14 = *v13;
  v15 = (v13[1] - *v13) >> 1;
  if (v15 <= v9)
  {
    return 3;
  }

  v16 = (v11 + v9);
  if (v15 < v16)
  {
    return 3;
  }

  if (v11)
  {
    v19 = v9;
    do
    {
      *(v14 + 2 * v19++) += v12;
    }

    while (v16 > v19);
  }

  [v7 setPrevRowIndex:v10 columnIndex:(v16 - 1)];
  v20 = [objc_msgSend(v7 "table")];
  if (([v20 visibilityForRow:v10] & 1) == 0 || !objc_msgSend(v20, "visibilityForColumn:", v9))
  {
    return 1;
  }

  [v6 enterGraphicObject];
  [v8 startElement:"td"];
  if (v11 != 1)
  {
    cfa = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", v11);
    [v8 setAttribute:"colspan" cfStringValue:cfa];
    CFRelease(cfa);
  }

  if (v12 != 1)
  {
    cfb = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", v12);
    [v8 setAttribute:"rowspan" cfStringValue:cfb];
    CFRelease(cfb);
  }

  cf = [a3 cellStyle];
  v25 = 0;
  if ([cf hasValueForObjectProperty:119 value:&v25])
  {
    [v6 pushImplicitStyle:v25];
  }

  LOWORD(v21) = [a1 resolveGroupLevel:a3 model:v20 columnIndex:v9 tableState:v7];
  [a1 mapCellStyle:cf rowIndex:v10 rowSpan:v12 columnIndex:v9 columnSpan:v11 state:v6 cell:a3 level:v21];
  v17 = [a1 mapCellContent:a3 xml:v8 state:v6];
  if (v25)
  {
    [v6 popImplicitStyle];
  }

  [v8 endElement];
  [v6 leaveGraphicObject];
  return v17;
}

+ (id)mapBaseFillStyleForRowIndex:(unsigned __int16)a3 columnIndex:(unsigned __int16)a4 state:(id)a5 isGroupingCell:(BOOL)a6
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_msgSend(a5 "tableState")];
  v10 = [v9 model];
  v11 = [v9 tableStyle];
  if ([v10 headerColumnCount] > v7)
  {
    return 0;
  }

  v12 = [v10 rowCount];
  if ((v12 - [v10 footerRowCount]) <= v8)
  {
    return 0;
  }

  v13 = [v10 headerRowCount];
  result = 0;
  if (((v8 - v13) & 0x80000001) == 1 && !a6)
  {
    v16 = 0;
    v15 = 0;
    if ([v11 hasValueForBoolProperty:81 value:&v15] && v15 == 1)
    {
      if ([v11 hasValueForObjectProperty:82 value:&v16])
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

+ (void)mapVectorStyles:(id *)a3 toCellStyle:(id)a4 state:(id)a5
{
  v8 = *a3;
  if (__PAIR128__(*a3, *a3) == *(a3 + 1) && v8 == a3[3])
  {
    v11 = 0;
    if ([v8 hasValueForObjectProperty:128 value:&v11])
    {
      [GQHGraphicStyle mapStroke:v11 toBorderType:0 style:a4 state:a5];
    }
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      v10 = a3[i];
      if (v10)
      {
        v11 = 0;
        if ([v10 hasValueForObjectProperty:128 value:&v11])
        {
          [GQHGraphicStyle mapStroke:v11 toBorderType:dword_5EAA0[i] style:a4 state:a5];
        }
      }
    }
  }
}

+ (unsigned)resolveGroupLevel:(id)a3 model:(id)a4 columnIndex:(int)a5 tableState:(id)a6
{
  if ([a4 firstVisibleColumn] == a5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [a3 level];
      [a6 setGroupLevel:v8];
    }

    else
    {
      LOWORD(v8) = [a6 groupLevel];
    }
  }

  else
  {
    LOWORD(v8) = 0;
  }

  return v8;
}

+ (void)splitTable:(id)a3
{
  v5 = [a3 htmlDoc];
  [v5 endElementWithExpectedName:"tbody"];
  [v5 endElementWithExpectedName:"table"];
  [a3 moveToNextAttachmentPosition];
  v7 = v6;
  v8 = [a3 tableState];
  if (v7 <= 0.0)
  {
    [v8 originalTableHeight];
    v13 = v12;
    [objc_msgSend(a3 "tableState")];
    v11 = 0;
    v10 = v13 - v14;
  }

  else
  {
    [v8 lastAttachmentPosition];
    v10 = v7 - v9;
    v11 = [a1 createTableAttachmentIdWithNumber:{objc_msgSend(objc_msgSend(a3, "tableState"), "nextSplitTableIndex")}];
  }

  [objc_msgSend(a3 "tableState")];
  v15 = v10;
  *&v16 = v15;
  [a1 startTableWithTableAnchor:v11 tableHeight:a3 state:v16];
  if (v11)
  {

    CFRelease(v11);
  }
}

@end