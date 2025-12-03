@interface GQHTable
+ (id)mapBaseFillStyleForRowIndex:(unsigned __int16)index columnIndex:(unsigned __int16)columnIndex state:(id)state isGroupingCell:(BOOL)cell;
+ (int)beginCells:(id)cells state:(id)state;
+ (int)beginTable:(id)table state:(id)state;
+ (int)endTable:(id)table state:(id)state;
+ (int)handleCell:(id)cell state:(id)state;
+ (int)mapCellContent:(id)content xml:(id)xml state:(id)state;
+ (unsigned)resolveGroupLevel:(id)level model:(id)model columnIndex:(int)index tableState:(id)state;
+ (void)addMissingCellsUpToRowIndex:(unsigned __int16)index columnIndex:(unsigned __int16)columnIndex state:(id)state;
+ (void)mapVectorStyles:(id *)styles toCellStyle:(id)style state:(id)state;
+ (void)splitTable:(id)table;
+ (void)startTableWithTableAnchor:(__CFString *)anchor tableHeight:(float)height state:(id)state;
@end

@implementation GQHTable

+ (int)mapCellContent:(id)content xml:(id)xml state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [xml startElement:"img"];
    processorState = [state processorState];
    if ([content BOOLValue])
    {
      v10 = @"ctrl_boxChecked_norm";
    }

    else
    {
      v10 = @"ctrl_boxUnchecked_norm";
    }

    [xml setAttribute:"src" cfStringValue:{objc_msgSend(processorState, "uriForBundleResource:ofType:", v10, @"pdf"}];
    [xml endElement];
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
      resultCell = [content resultCell];
      if (resultCell)
      {
        [self mapCellContent:resultCell xml:xml state:state];
      }

      return 1;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [objc_msgSend(objc_msgSend(state "tableState")];
      LODWORD(v29) = 7;
      LOBYTE(v28) = 1;
      columnIndex = [content columnIndex];
      level = [content level];
      firstVisibleColumn = [v20 firstVisibleColumn];
      if (([v20 hasGroupDisplayType:columnIndex level:level displayType:&v29 isTypeVisible:&v28] & 1) == 0 && (columnIndex > objc_msgSend(v20, "headerColumnCount") || columnIndex != firstVisibleColumn))
      {
        return 1;
      }

      if (v29 == 7)
      {
        createFormattedValue = 0;
        v24 = 7;
      }

      else
      {
        createFormattedValue = [content createFormattedValue];
        v24 = v29;
      }

      v25 = [GQDTGroupingCell displayTypeString:v24];
      v26 = v25;
      if (createFormattedValue && v25)
      {
        if (v28 == 1)
        {
          [xml startElement:"span"];
          [GQHStyle setSingleStyleAttribute:off_9CE68 value:off_9CEA0 node:xml];
          [xml addContent:v26];
          [xml endElement];
        }
      }

      else
      {
        if (!createFormattedValue)
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
        [xml startElement:"span"];
        [GQHStyle setSingleStyleAttribute:off_9CE68 value:off_9CF20 node:xml];
      }

      [xml addContent:createFormattedValue];
      if (v28 == 1)
      {
        [xml endElement];
      }

      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [content isMemberOfClass:objc_opt_class()];
      return 1;
    }

LABEL_9:
    createFormattedValue = [content createStringValue];
LABEL_10:
    [xml addContent:createFormattedValue];
LABEL_11:
    CFRelease(createFormattedValue);
    return 1;
  }

  stringValue = [content stringValue];
  if (stringValue)
  {
    v14 = stringValue;
    v28 = 0;
    v29 = 0;
    if ([objc_msgSend(content "cellStyle")] && objc_msgSend(v29, "overridesObjectProperty:value:", 38, &v28))
    {
      values = -[GQDWPText initWithContent:]([GQDWPText alloc], "initWithContent:", [v14 UTF8String]);
      v15 = objc_alloc_init(GQDWPParagraph);
      v16 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
      [(GQDWPTextList *)v15 setChildren:v16];
      CFRelease(v16);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [GQHParagraph handleParagraph:v15 state:state bulletStates:Mutable isMultiColumn:0];
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      [xml addContent:v14];
    }

    return 1;
  }

  layoutStorage = [content layoutStorage];
  if (!layoutStorage)
  {
    return 1;
  }

  return [GQHTextBox handleLayoutStorage:layoutStorage state:state];
}

+ (void)addMissingCellsUpToRowIndex:(unsigned __int16)index columnIndex:(unsigned __int16)columnIndex state:(id)state
{
  columnIndexCopy = columnIndex;
  indexCopy = index;
  htmlDoc = [state htmlDoc];
  tableState = [state tableState];
  prevRowIndex = [tableState prevRowIndex];
  prevColumnIndex = [tableState prevColumnIndex];
  v12 = [objc_msgSend(tableState "table")];
  columnCount = [v12 columnCount];
  rowCount = [v12 rowCount];
  if (prevRowIndex < 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = prevRowIndex;
  }

  v26 = indexCopy;
  if (rowCount >= indexCopy)
  {
    v16 = indexCopy;
  }

  else
  {
    v16 = rowCount;
  }

  if (prevRowIndex >= v16)
  {
    while (1)
    {
      LOWORD(prevColumnIndex) = prevColumnIndex + 1;
      if (columnIndexCopy <= prevColumnIndex)
      {
        break;
      }

      [self addMissingCellWithRowIndex:v15 columnIndex:prevColumnIndex state:state];
    }
  }

  else
  {
    v24 = rowCount;
    if (prevRowIndex < 0)
    {
      v15 = -1;
      i = htmlDoc;
    }

    else
    {
      v17 = prevColumnIndex + 1;
      for (i = htmlDoc; columnCount > v17; ++v17)
      {
        [self addMissingCellWithRowIndex:v15 columnIndex:v17 state:state];
      }

      if ([v12 visibilityForRow:v15])
      {
        [htmlDoc endElement];
      }
    }

    for (j = v15 + 1; v16 > j; ++j)
    {
      v20 = [v12 visibilityForRow:j];
      v21 = v20;
      if (v20)
      {
        [self beginRowWithIndex:j state:state];
      }

      if (columnCount)
      {
        v22 = 0;
        do
        {
          [self addMissingCellWithRowIndex:j columnIndex:v22++ state:state];
        }

        while (columnCount > v22);
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
        [self beginRowWithIndex:v26 state:state];
      }

      if (columnIndexCopy)
      {
        v23 = 0;
        do
        {
          [self addMissingCellWithRowIndex:v16 columnIndex:v23++ state:state];
        }

        while (columnIndexCopy > v23);
      }
    }
  }
}

+ (int)beginTable:(id)table state:(id)state
{
  generatorState = [state generatorState];
  [GQHDrawable aboutToGenerateDrawable:table htmlState:generatorState];
  tableState = [generatorState tableState];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [generatorState splitNextAttachment])
  {
    [tableState setSplitTable:1];
    [tableState setSplitTableIndex:{objc_msgSend(generatorState, "firstAttachmentId")}];
    [objc_msgSend(table "geometry")];
    [tableState setOriginalTableHeight:v7];
  }

  return 1;
}

+ (int)endTable:(id)table state:(id)state
{
  generatorState = [state generatorState];
  htmlDoc = [generatorState htmlDoc];
  tableState = [generatorState tableState];
  [self addMissingCellsUpToRowIndex:objc_msgSend(objc_msgSend(objc_msgSend(tableState columnIndex:"table") state:{"model"), "rowCount"), 0, generatorState}];
  [tableState setTable:0];
  [htmlDoc endElementWithExpectedName:"tbody"];
  [htmlDoc endElementWithExpectedName:"table"];
  if ([tableState splitTable])
  {
    [tableState setSplitTable:0];
    [generatorState finishedWithSplitAttachment];
  }

  [generatorState leaveGraphicObject];
  geometry = [table geometry];
  [geometry position];
  v11 = v10;
  v13 = v12;
  [geometry size];
  [generatorState addedDrawableWithBounds:{v11, v13, v14, v15}];
  [GQHDrawable doneGeneratingDrawable:table htmlState:generatorState];
  return 1;
}

+ (void)startTableWithTableAnchor:(__CFString *)anchor tableHeight:(float)height state:(id)state
{
  htmlDoc = [state htmlDoc];
  v10 = [objc_msgSend(state "tableState")];
  geometry = [v10 geometry];
  v12 = geometry;
  if (height > 0.0)
  {
    [geometry size];
    [v12 setSize:?];
  }

  [htmlDoc startElement:"table"];
  if (anchor)
  {
    [htmlDoc setAttribute:"id" cfStringValue:anchor];
  }

  v23 = 0;
  v13 = objc_alloc_init(GQHStyle);
  if ([state needAbsolutelyPositionedTables])
  {
    [(GQHStyle *)v13 addAttribute:off_9CF18 value:off_9CFA0];
    [v12 position];
    [GQHBounds mapPosition:0 srcGraphicStyle:v13 style:state state:?];
  }

  [(GQHStyle *)v13 addAttribute:off_9CE30 value:off_9CFD0];
  [(GQHStyle *)v13 addAttribute:off_9CE60 value:@"inline-table"];
  [(GQHStyle *)v13 addAttribute:off_9CF28 value:off_9CFE0];
  [v12 size];
  [GQHBounds mapSize:"mapSize:angle:srcGraphicStyle:style:state:" angle:0 srcGraphicStyle:v13 style:state state:?];
  [self mapStyle:objc_msgSend(v10 style:"tableStyle") state:{v13, state}];
  if ([objc_msgSend(v10 "tableStyle")])
  {
    pattern = [v23 pattern];
    v15 = @"0";
    if (pattern && [pattern type] == 1)
    {
      v15 = @"1";
    }

    [htmlDoc setAttribute:"border" cfStringValue:v15];
    [htmlDoc setAttribute:"rules" cfStringValue:@"all"];
  }

  tableStyle = [v10 tableStyle];
  [v12 size];
  [GQHTextBox mapScaledImageFill:tableStyle style:v13 size:?];
  -[GQHStyle setStyleOnCurrentNode:mappingBaseStyleClass:baseClassType:](v13, "setStyleOnCurrentNode:mappingBaseStyleClass:baseClassType:", state, [v10 tableStyle], objc_opt_class());

  model = [v10 model];
  columnCount = [model columnCount];
  if (columnCount)
  {
    v19 = columnCount;
    for (i = 0; i < v19; ++i)
    {
      if ([model visibilityForColumn:i])
      {
        [htmlDoc startElement:"col"];
        [model widthForColumn:i];
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%ld", llroundf(v21));
        [htmlDoc setAttribute:"width" cfStringValue:v22];
        CFRelease(v22);
        [htmlDoc endElement];
      }
    }
  }

  [htmlDoc startElement:"tbody"];
}

+ (int)beginCells:(id)cells state:(id)state
{
  generatorState = [state generatorState];
  [objc_msgSend(generatorState "tableState")];
  geometry = [cells geometry];
  htmlDoc = [generatorState htmlDoc];
  if ([objc_msgSend(cells "model")])
  {
    v9 = objc_alloc_init(GQHStyle);
    v10 = [objc_msgSend(cells "tableStyle")];
    v11 = [objc_msgSend(cells "tableStyle")];
    [generatorState enterGraphicObject];
    [htmlDoc startElement:"div"];
    [GQHParagraphStyle mapStyle:v10 style:v9 state:generatorState];
    [GQHTextBox mapStyle:v11 style:v9 state:generatorState];
    if (![generatorState needAbsolutelyPositionedTables])
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
      [(GQHStyle *)v9 setStyleOnCurrentNode:generatorState mappingBaseStyleClasses:Mutable baseClassTypes:v29];
      CFRelease(Mutable);
      CFRelease(v29);

      [htmlDoc addContent:{objc_msgSend(objc_msgSend(cells, "model"), "name")}];
      [htmlDoc endElement];
      [generatorState leaveGraphicObject];
      goto LABEL_24;
    }

    v39 = 0;
    v40 = 0;
    if (([v10 hasValueForFloatProperty:2 value:&v40] & 1) == 0)
    {
      [objc_msgSend(generatorState "implicitStyle")];
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
      v14 = [objc_msgSend(generatorState "implicitStyle")];
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
        mode = [v38 mode];
        [v38 amount];
        if (mode)
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
    [geometry position];
    [(GQHStyle *)v9 addAttribute:v22 pxValue:(v23 - v18)];
    v24 = off_9CEA0;
    [geometry position];
    [(GQHStyle *)v9 addAttribute:v24 pxValue:v25];
    v26 = off_9CF68;
    [geometry size];
    [(GQHStyle *)v9 addAttribute:v26 pxValue:v27];
    [(GQHStyle *)v9 addAttribute:off_9CF18 value:off_9CFA0];
    goto LABEL_23;
  }

LABEL_24:
  [generatorState enterGraphicObject];
  if ([objc_msgSend(generatorState "tableState")])
  {
    [generatorState currentAttachmentPosition];
    v33 = v32;
    [objc_msgSend(generatorState "tableState")];
    v34 = [self createTableAttachmentIdWithNumber:{objc_msgSend(generatorState, "firstAttachmentId")}];
    *&v35 = v33;
    [self startTableWithTableAnchor:v34 tableHeight:generatorState state:v35];
    if (v34)
    {
      CFRelease(v34);
    }
  }

  else
  {
    [self startTableWithTableAnchor:0 tableHeight:generatorState state:0.0];
  }

  return 1;
}

+ (int)handleCell:(id)cell state:(id)state
{
  generatorState = [state generatorState];
  tableState = [generatorState tableState];
  htmlDoc = [generatorState htmlDoc];
  columnIndex = [cell columnIndex];
  rowIndex = [cell rowIndex];
  columnSpan = [cell columnSpan];
  rowSpan = [cell rowSpan];
  [self addMissingCellsUpToRowIndex:rowIndex columnIndex:columnIndex state:generatorState];
  cellCountInColumns = [tableState cellCountInColumns];
  v14 = *cellCountInColumns;
  v15 = (cellCountInColumns[1] - *cellCountInColumns) >> 1;
  if (v15 <= columnIndex)
  {
    return 3;
  }

  v16 = (columnSpan + columnIndex);
  if (v15 < v16)
  {
    return 3;
  }

  if (columnSpan)
  {
    v19 = columnIndex;
    do
    {
      *(v14 + 2 * v19++) += rowSpan;
    }

    while (v16 > v19);
  }

  [tableState setPrevRowIndex:rowIndex columnIndex:(v16 - 1)];
  v20 = [objc_msgSend(tableState "table")];
  if (([v20 visibilityForRow:rowIndex] & 1) == 0 || !objc_msgSend(v20, "visibilityForColumn:", columnIndex))
  {
    return 1;
  }

  [generatorState enterGraphicObject];
  [htmlDoc startElement:"td"];
  if (columnSpan != 1)
  {
    cfa = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", columnSpan);
    [htmlDoc setAttribute:"colspan" cfStringValue:cfa];
    CFRelease(cfa);
  }

  if (rowSpan != 1)
  {
    cfb = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", rowSpan);
    [htmlDoc setAttribute:"rowspan" cfStringValue:cfb];
    CFRelease(cfb);
  }

  cf = [cell cellStyle];
  v25 = 0;
  if ([cf hasValueForObjectProperty:119 value:&v25])
  {
    [generatorState pushImplicitStyle:v25];
  }

  LOWORD(v21) = [self resolveGroupLevel:cell model:v20 columnIndex:columnIndex tableState:tableState];
  [self mapCellStyle:cf rowIndex:rowIndex rowSpan:rowSpan columnIndex:columnIndex columnSpan:columnSpan state:generatorState cell:cell level:v21];
  v17 = [self mapCellContent:cell xml:htmlDoc state:generatorState];
  if (v25)
  {
    [generatorState popImplicitStyle];
  }

  [htmlDoc endElement];
  [generatorState leaveGraphicObject];
  return v17;
}

+ (id)mapBaseFillStyleForRowIndex:(unsigned __int16)index columnIndex:(unsigned __int16)columnIndex state:(id)state isGroupingCell:(BOOL)cell
{
  columnIndexCopy = columnIndex;
  indexCopy = index;
  v9 = [objc_msgSend(state "tableState")];
  model = [v9 model];
  tableStyle = [v9 tableStyle];
  if ([model headerColumnCount] > columnIndexCopy)
  {
    return 0;
  }

  rowCount = [model rowCount];
  if ((rowCount - [model footerRowCount]) <= indexCopy)
  {
    return 0;
  }

  headerRowCount = [model headerRowCount];
  result = 0;
  if (((indexCopy - headerRowCount) & 0x80000001) == 1 && !cell)
  {
    v16 = 0;
    v15 = 0;
    if ([tableStyle hasValueForBoolProperty:81 value:&v15] && v15 == 1)
    {
      if ([tableStyle hasValueForObjectProperty:82 value:&v16])
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

+ (void)mapVectorStyles:(id *)styles toCellStyle:(id)style state:(id)state
{
  v8 = *styles;
  if (__PAIR128__(*styles, *styles) == *(styles + 1) && v8 == styles[3])
  {
    v11 = 0;
    if ([v8 hasValueForObjectProperty:128 value:&v11])
    {
      [GQHGraphicStyle mapStroke:v11 toBorderType:0 style:style state:state];
    }
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      v10 = styles[i];
      if (v10)
      {
        v11 = 0;
        if ([v10 hasValueForObjectProperty:128 value:&v11])
        {
          [GQHGraphicStyle mapStroke:v11 toBorderType:dword_5EAA0[i] style:style state:state];
        }
      }
    }
  }
}

+ (unsigned)resolveGroupLevel:(id)level model:(id)model columnIndex:(int)index tableState:(id)state
{
  if ([model firstVisibleColumn] == index)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      level = [level level];
      [state setGroupLevel:level];
    }

    else
    {
      LOWORD(level) = [state groupLevel];
    }
  }

  else
  {
    LOWORD(level) = 0;
  }

  return level;
}

+ (void)splitTable:(id)table
{
  htmlDoc = [table htmlDoc];
  [htmlDoc endElementWithExpectedName:"tbody"];
  [htmlDoc endElementWithExpectedName:"table"];
  [table moveToNextAttachmentPosition];
  v7 = v6;
  tableState = [table tableState];
  if (v7 <= 0.0)
  {
    [tableState originalTableHeight];
    v13 = v12;
    [objc_msgSend(table "tableState")];
    v11 = 0;
    v10 = v13 - v14;
  }

  else
  {
    [tableState lastAttachmentPosition];
    v10 = v7 - v9;
    v11 = [self createTableAttachmentIdWithNumber:{objc_msgSend(objc_msgSend(table, "tableState"), "nextSplitTableIndex")}];
  }

  [objc_msgSend(table "tableState")];
  v15 = v10;
  *&v16 = v15;
  [self startTableWithTableAnchor:v11 tableHeight:table state:v16];
  if (v11)
  {

    CFRelease(v11);
  }
}

@end