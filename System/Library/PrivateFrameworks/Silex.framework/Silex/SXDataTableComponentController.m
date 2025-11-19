@interface SXDataTableComponentController
- ($01BB1521EC52D44A8E7628F5261DCEC8)paddingForCellAtIndexPath:(id)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathSubstractingHeaders:(id)a3;
- (BOOL)hasColumnHeader;
- (BOOL)hasRowHeader;
- (BOOL)indexPathIsHeader:(id)a3;
- (SXDataTableComponentController)initWithStyleFactory:(id)a3 textSourceFactory:(id)a4 dataSource:(id)a5 recordValueTransformerFactory:(id)a6 DOMObjectProvider:(id)a7;
- (SXDataTableComponentControllerDataSource)dataSource;
- (double)convertConvertibleValue:(_SXConvertibleValue)a3;
- (double)heightForCellAtIndexPath:(id)a3;
- (double)heightForCellndexPath:(id)a3 forWidth:(double)a4;
- (double)minimumWidthForCellAtIndexPath:(id)a3;
- (double)minimumWidthForStorage:(id)a3 usingStringEnumeration:(unint64_t)a4;
- (double)widthForCellAtIndexPath:(id)a3;
- (id)additionsForTextSource:(id)a3;
- (id)backgroundColorForCellAtIndexPath:(id)a3;
- (id)backgroundColorForColumnAtIndex:(unint64_t)a3;
- (id)backgroundColorForRowAtIndex:(unint64_t)a3;
- (id)cellBorderForCellAtIndexPath:(id)a3;
- (id)cellObjectForIndexPath:(id)a3;
- (id)cellStyleForIndexPath:(id)a3;
- (id)columnDividerAtIndex:(unint64_t)a3;
- (id)columnStyleForColumnIndex:(unint64_t)a3;
- (id)component;
- (id)componentTextStyleForTextSource:(id)a3 inheritingFromDefaultStyles:(BOOL)a4;
- (id)contentSizeCategoryForTextSource:(id)a3;
- (id)dataDescriptorForIdentifier:(id)a3;
- (id)dataDescriptorForIndexPath:(id)a3;
- (id)defaultComponentTextStyleForTextSource:(id)a3;
- (id)defaultComponentTextStylesForTextSource:(id)a3;
- (id)inlineTextStylesForTextSource:(id)a3;
- (id)recordForIndexPath:(id)a3;
- (id)rowDividerAtIndex:(unint64_t)a3;
- (id)rowStyleForRowIndex:(unint64_t)a3;
- (id)tableBorder;
- (id)textLayouterForIndexPath:(id)a3;
- (id)textResizerForTextSource:(id)a3;
- (id)textRulesForTextSource:(id)a3;
- (id)textStyleForIdentifier:(id)a3;
- (unint64_t)dataOrientation;
- (unint64_t)horizontalAlignmentForCellAtIndexPath:(id)a3;
- (unint64_t)numberOfColumns;
- (unint64_t)numberOfRows;
- (unint64_t)verticalAlignmentForCellAtIndexPath:(id)a3;
- (void)loadRecords;
- (void)prepareForLayout;
@end

@implementation SXDataTableComponentController

- (SXDataTableComponentController)initWithStyleFactory:(id)a3 textSourceFactory:(id)a4 dataSource:(id)a5 recordValueTransformerFactory:(id)a6 DOMObjectProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = SXDataTableComponentController;
  v18 = [(SXDataTableComponentController *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_styleFactory, a3);
    objc_storeStrong(&v19->_textSourceFactory, a4);
    objc_storeWeak(&v19->_dataSource, v15);
    v20 = [SXDataTableDictionary dataTableDictionaryWithRows:[(SXDataTableComponentController *)v19 numberOfRows] andColumns:[(SXDataTableComponentController *)v19 numberOfColumns]];
    cellObjects = v19->_cellObjects;
    v19->_cellObjects = v20;

    v22 = [SXDataTableDictionary dataTableDictionaryWithRows:[(SXDataTableComponentController *)v19 numberOfRows] andColumns:[(SXDataTableComponentController *)v19 numberOfColumns]];
    textLayouters = v19->_textLayouters;
    v19->_textLayouters = v22;

    objc_storeStrong(&v19->_recordValueTransformerFactory, a6);
    objc_storeStrong(&v19->_DOMObjectProvider, a7);
    [(SXDataTableComponentController *)v19 loadRecords];
  }

  return v19;
}

- (void)loadRecords
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SXDataSortDescriptorFactory);
  v4 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(SXDataTableComponentController *)self component];
  v6 = [v5 sortBy];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 descriptor];
        v13 = [(SXDataTableComponentController *)self dataDescriptorForIdentifier:v12];

        if (v13)
        {
          v14 = -[SXDataSortDescriptorFactory sortDescriptorForDataDescriptor:ascending:](v3, "sortDescriptorForDataDescriptor:ascending:", v13, [v11 direction] == 0);
          if (v14)
          {
            [v4 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [(SXDataTableComponentController *)self component];
  v16 = [v15 data];
  v17 = [v16 recordsUsingSortDescriptors:v4];
  [(SXDataTableComponentController *)self setRecords:v17];
}

- (void)prepareForLayout
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SXDataTableComponentController *)self textLayouters];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)indexPathIsHeader:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(SXDataTableComponentController *)self hasRowHeader]&& !var0)
  {
    return 1;
  }

  result = [(SXDataTableComponentController *)self hasColumnHeader];
  if (var1)
  {
    return 0;
  }

  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathSubstractingHeaders:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableComponentController *)self hasRowHeader];
  if (var0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = var0 - v7;
  v9 = [(SXDataTableComponentController *)self hasColumnHeader];
  if (var1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = var1 - v10;
  v12 = v8;
  result.var1 = v11;
  result.var0 = v12;
  return result;
}

- (BOOL)hasColumnHeader
{
  if ([(SXDataTableComponentController *)self dataOrientation]!= 1)
  {
    return 0;
  }

  v3 = [(SXDataTableComponentController *)self component];
  v4 = [v3 showDescriptorLabels];

  return v4;
}

- (BOOL)hasRowHeader
{
  if ([(SXDataTableComponentController *)self dataOrientation])
  {
    return 0;
  }

  v4 = [(SXDataTableComponentController *)self component];
  v5 = [v4 showDescriptorLabels];

  return v5;
}

- (unint64_t)dataOrientation
{
  v2 = [(SXDataTableComponentController *)self component];
  v3 = [v2 dataOrientation];

  return v3;
}

- (id)tableBorder
{
  v3 = [(SXDataTableComponentController *)self styleFactory];
  v4 = [v3 dataTableStyle];
  v5 = [v4 border];

  if (v5)
  {
    v6 = [(SXDataTableComponentController *)self dataSource];
    v7 = [v6 unitConverterForDataTableComponentController:self];

    [v5 setUnitConverter:v7];
  }

  return v5;
}

- (unint64_t)numberOfRows
{
  v3 = [(SXDataTableComponentController *)self dataOrientation];
  v4 = [(SXDataTableComponentController *)self component];
  v5 = [v4 data];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 descriptors];
    v8 = [v7 count];
  }

  else
  {
    v8 = [v5 numberOfRecords];
  }

  v9 = [(SXDataTableComponentController *)self hasRowHeader];
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v8 + v10;
}

- (unint64_t)numberOfColumns
{
  v3 = [(SXDataTableComponentController *)self dataOrientation];
  v4 = [(SXDataTableComponentController *)self component];
  v5 = [v4 data];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 numberOfRecords];
  }

  else
  {
    v8 = [v5 descriptors];
    v7 = [v8 count];
  }

  v9 = [(SXDataTableComponentController *)self hasColumnHeader];
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v7 + v10;
}

- (id)backgroundColorForRowAtIndex:(unint64_t)a3
{
  v3 = [(SXDataTableComponentController *)self rowStyleForRowIndex:a3];
  v4 = [v3 backgroundColor];

  return v4;
}

- (id)backgroundColorForColumnAtIndex:(unint64_t)a3
{
  v3 = [(SXDataTableComponentController *)self columnStyleForColumnIndex:a3];
  v4 = [v3 backgroundColor];

  return v4;
}

- (id)cellObjectForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableComponentController *)self cellObjects];
  v7 = [v6 objectForIndexPath:{var0, var1}];

  if (!v7)
  {
    v8 = [(SXDataTableComponentController *)self dataDescriptorForIndexPath:var0, var1];
    if ([(SXDataTableComponentController *)self indexPathIsHeader:var0, var1])
    {
      v7 = [v8 label];
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = [(SXDataTableComponentController *)self indexPathSubstractingHeaders:var0, var1];
      v11 = [(SXDataTableComponentController *)self recordForIndexPath:v9, v10];
      v12 = [(SXDataTableComponentController *)self recordValueTransformerFactory];
      v13 = [v12 recordValueTransformerForDataDescriptor:v8];

      v7 = [v13 transformValueForRecord:v11 descriptor:v8];

      if (!v7)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v14 = [(SXDataTableComponentController *)self cellObjects];
    [v14 setObject:v7 forIndexPath:{var0, var1}];

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (id)textLayouterForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableComponentController *)self textLayouters];
  v7 = [v6 objectForIndexPath:{var0, var1}];

  if (!v7)
  {
    v8 = [(SXDataTableComponentController *)self cellObjectForIndexPath:var0, var1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(SXDataTableComponentController *)self textSourceFactory];
      v10 = [v9 textSourceWithFormattedText:v8 indexPath:var0 dataSource:{var1, self}];

      v11 = [(SXDataTableComponentController *)self cellStyleForIndexPath:var0, var1];
      [v10 setDefaultTextAlignment:{objc_msgSend(v11, "horizontalAlignment")}];
      v12 = [SXTextLayouter alloc];
      v13 = [(SXDataTableComponentController *)self dataSource];
      v14 = [v13 textComponentLayoutHostingForDataTableComponentController:self];
      v15 = [v14 documentRoot];
      v7 = [(SXTextLayouter *)v12 initWithTextSource:v10 andDocumentRoot:v15];

      v16 = [(SXDataTableComponentController *)self textLayouters];
      [v16 setObject:v7 forIndexPath:{var0, var1}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (double)minimumWidthForCellAtIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableComponentController *)self cellObjectForIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(SXDataTableComponentController *)self dataDescriptorForIndexPath:var0, var1];
    v9 = [v8 format];

    v10 = [v9 minimumWidth];
    [(SXDataTableComponentController *)self convertConvertibleValue:v10, v11];
    v13 = v12;
    [v9 maximumWidth];
    if (v14)
    {
      v15 = [v9 maximumWidth];
      [(SXDataTableComponentController *)self convertConvertibleValue:v15, v16];
      if (v13 >= v17)
      {
        v13 = v17;
      }
    }

    v18 = [v9 minimumHeight];
    [(SXDataTableComponentController *)self convertConvertibleValue:v18, v19];
    v21 = v20;
    [v9 maximumHeight];
    if (v22)
    {
      v23 = [v9 maximumHeight];
      [(SXDataTableComponentController *)self convertConvertibleValue:v23, v24];
      if (v21 >= v25)
      {
        v21 = v25;
      }
    }

    [v7 widthForImageHeight:v21];
    if (v13 < v26)
    {
      v13 = v26;
    }

    [v9 maximumHeight];
    if (v27)
    {
      v28 = [v9 maximumHeight];
      [(SXDataTableComponentController *)self convertConvertibleValue:v28, v29];
      if (v13 >= v30)
      {
        v13 = v30;
      }
    }

    goto LABEL_22;
  }

  objc_opt_class();
  v13 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  v31 = v6;
  v9 = [(SXDataTableComponentController *)self textLayouterForIndexPath:var0, var1];
  if ([v31 shouldWrapText])
  {
    v32 = [v9 wpStorage];
    v33 = [v9 wpStorage];
    [(SXDataTableComponentController *)self minimumWidthForStorage:v33 usingStringEnumeration:3];
    v13 = v34;

    if (v13 != 0.0)
    {
      goto LABEL_21;
    }

    v35 = [(SXTextUtilities *)v32 string];
    v36 = [v35 length];

    if (!v36)
    {
      goto LABEL_21;
    }

    v37 = [v9 wpStorage];
    [(SXDataTableComponentController *)self minimumWidthForStorage:v37 usingStringEnumeration:2];
  }

  else
  {
    v39 = [SXTextUtilities alloc];
    v40 = [v9 wpStorage];
    v41 = [v40 paragraphStyleAtParIndex:0 effectiveRange:0];
    v32 = [(TSWPText *)v39 initWithParagraphStyle:v41];

    v37 = [v9 wpStorage];
    [(TSWPText *)v32 measureStorage:v37];
  }

  v13 = v38;

LABEL_21:
LABEL_22:

LABEL_23:
  v42 = [(SXDataTableComponentController *)self columnStyleForColumnIndex:var1];
  v43 = [(SXDataTableComponentController *)self cellStyleForIndexPath:var0, var1];
  v44 = [v43 minimumWidth];
  [(SXDataTableComponentController *)self convertConvertibleValue:v44, v45];
  v47 = v46;
  v48 = [v42 minimumWidth];
  [(SXDataTableComponentController *)self convertConvertibleValue:v48, v49];
  if (v50 < v47)
  {
    v50 = v47;
  }

  if (v13 < v50)
  {
    v13 = v50;
  }

  return v13;
}

- (double)heightForCellndexPath:(id)a3 forWidth:(double)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = [(SXDataTableComponentController *)self cellObjectForIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SXDataTableComponentController *)self dataDescriptorForIndexPath:var0, var1];
    v10 = v8;
    v11 = [v9 format];
    [v11 maximumWidth];
    if (v12)
    {
      v13 = [v11 maximumWidth];
      [(SXDataTableComponentController *)self convertConvertibleValue:v13, v14];
      if (v15 <= a4)
      {
        a4 = v15;
      }
    }

    [v11 maximumHeight];
    if (v16)
    {
      v17 = [v11 maximumHeight];
      [(SXDataTableComponentController *)self convertConvertibleValue:v17, v18];
      v20 = v19;
    }

    else
    {
      v20 = 1.79769313e308;
    }

    [v10 sizeThatFits:{a4, v20}];
    v21 = v23;

    goto LABEL_11;
  }

  objc_opt_class();
  v21 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SXDataTableComponentController *)self textLayouterForIndexPath:var0, var1];
    [v9 calculateHeightForWidth:a4];
    v21 = v22;
LABEL_11:
  }

  return v21;
}

- (double)widthForCellAtIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableComponentController *)self columnStyleForColumnIndex:a3.var1];
  v7 = [(SXDataTableComponentController *)self cellStyleForIndexPath:var0, var1];
  [v6 width];
  if (v8 == 1.79769313e308)
  {
    v10 = 0.0;
  }

  else
  {
    [v6 width];
    v10 = v9;
  }

  [v7 width];
  if (v11 > v10)
  {
    [v7 width];
    if (v12 != 1.79769313e308)
    {
      [v7 width];
      v10 = v13;
    }
  }

  return v10;
}

- (double)heightForCellAtIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableComponentController *)self rowStyleForRowIndex:?];
  v7 = [(SXDataTableComponentController *)self cellStyleForIndexPath:var0, var1];
  v8 = [v6 height];
  [(SXDataTableComponentController *)self convertConvertibleValue:v8, v9];
  v11 = v10;
  v12 = [v7 height];
  [(SXDataTableComponentController *)self convertConvertibleValue:v12, v13];
  if (v11 < v14)
  {
    v11 = v14;
  }

  return v11;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)paddingForCellAtIndexPath:(id)a3
{
  v4 = [(SXDataTableComponentController *)self cellStyleForIndexPath:a3.var0, a3.var1];
  v5 = [v4 padding];
  v6 = [v5 left];
  [(SXDataTableComponentController *)self convertConvertibleValue:v6, v7];
  v9 = v8;

  v10 = [v4 padding];
  v11 = [v10 top];
  [(SXDataTableComponentController *)self convertConvertibleValue:v11, v12];
  v14 = v13;

  v15 = [v4 padding];
  v16 = [v15 right];
  [(SXDataTableComponentController *)self convertConvertibleValue:v16, v17];
  v19 = v18;

  v20 = [v4 padding];
  v21 = [v20 bottom];
  [(SXDataTableComponentController *)self convertConvertibleValue:v21, v22];
  v24 = v23;

  v25 = v14;
  v26 = v19;
  v27 = v24;
  v28 = v9;
  result.var3 = v28;
  result.var2 = v27;
  result.var1 = v26;
  result.var0 = v25;
  return result;
}

- (id)cellBorderForCellAtIndexPath:(id)a3
{
  v4 = [(SXDataTableComponentController *)self cellStyleForIndexPath:a3.var0, a3.var1];
  v5 = [v4 border];

  if (v5)
  {
    v6 = [(SXDataTableComponentController *)self dataSource];
    v7 = [v6 unitConverterForDataTableComponentController:self];

    v8 = [v4 border];
    [v8 setUnitConverter:v7];
  }

  v9 = [v4 border];

  return v9;
}

- (unint64_t)verticalAlignmentForCellAtIndexPath:(id)a3
{
  v3 = [(SXDataTableComponentController *)self cellStyleForIndexPath:a3.var0, a3.var1];
  v4 = [v3 verticalAlignment];

  return v4;
}

- (unint64_t)horizontalAlignmentForCellAtIndexPath:(id)a3
{
  v3 = [(SXDataTableComponentController *)self cellStyleForIndexPath:a3.var0, a3.var1];
  v4 = [v3 horizontalAlignment];

  return v4;
}

- (id)backgroundColorForCellAtIndexPath:(id)a3
{
  v3 = [(SXDataTableComponentController *)self cellStyleForIndexPath:a3.var0, a3.var1];
  v4 = [v3 backgroundColor];

  return v4;
}

- (id)rowDividerAtIndex:(unint64_t)a3
{
  v4 = [(SXDataTableComponentController *)self rowStyleForRowIndex:a3];
  v5 = [v4 divider];

  if (v5)
  {
    v6 = [(SXDataTableComponentController *)self dataSource];
    v7 = [v6 unitConverterForDataTableComponentController:self];

    v8 = [v4 divider];
    [v8 setUnitConverter:v7];
  }

  v9 = [v4 divider];

  return v9;
}

- (id)columnDividerAtIndex:(unint64_t)a3
{
  v4 = [(SXDataTableComponentController *)self columnStyleForColumnIndex:a3];
  v5 = [v4 divider];

  if (v5)
  {
    v6 = [(SXDataTableComponentController *)self dataSource];
    v7 = [v6 unitConverterForDataTableComponentController:self];

    v8 = [v4 divider];
    [v8 setUnitConverter:v7];
  }

  v9 = [v4 divider];

  return v9;
}

- (id)textResizerForTextSource:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXDataTableComponentController *)self dataSource];
  v6 = [v5 documentColumnLayoutForDataTableComponentController:self];

  v7 = [(SXDataTableComponentController *)self DOMObjectProvider];
  v8 = SXDefaultTextStyleIdentifierForRole(@"body");
  v21[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v10 = [(SXDataTableComponentController *)self component];
  v11 = [v7 componentTextStyleForIdentifiers:v9 component:v10];

  if (!v11)
  {
    v12 = [(SXDataTableComponentController *)self DOMObjectProvider];
    v20 = @"default";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v14 = [(SXDataTableComponentController *)self component];
    v11 = [v12 componentTextStyleForIdentifiers:v13 component:v14];
  }

  v15 = 1;
  v16 = [(SXDataTableComponentController *)self componentTextStyleForTextSource:v4 inheritingFromDefaultStyles:1];
  v17 = v16;
  if (v16)
  {
    v15 = [v16 fontScaling];
  }

  v18 = [[SXTextResizer alloc] initWithColumnLayout:v6 defaultTextStyle:v11 fontScalingEnabled:v15];

  return v18;
}

- (id)textRulesForTextSource:(id)a3
{
  v3 = [(SXDataTableComponentController *)self component];
  v4 = [v3 classification];
  v5 = [v4 textRules];

  return v5;
}

- (id)additionsForTextSource:(id)a3
{
  v3 = a3;
  v4 = [v3 formattedText];
  v5 = [v4 additions];

  if (v5)
  {
    v6 = [v3 formattedText];
    v7 = [v6 additions];
    v8 = [v7 NSArray];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)inlineTextStylesForTextSource:(id)a3
{
  v3 = a3;
  v4 = [v3 formattedText];
  v5 = [v4 inlineTextStyles];

  if (v5)
  {
    v6 = [v3 formattedText];
    v7 = [v6 inlineTextStyles];
    v8 = [v7 NSArray];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)componentTextStyleForTextSource:(id)a3 inheritingFromDefaultStyles:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  if (v4)
  {
    v8 = [(SXDataTableComponentController *)self component];
    v9 = [v8 classification];
    v10 = [v9 defaultTextStyleIdentifiers];
    [v7 addObjectsFromArray:v10];
  }

  v11 = [v6 indexPath];
  v13 = [(SXDataTableComponentController *)self cellStyleForIndexPath:v11, v12];
  v14 = [v13 textStyles];
  [v7 addObjectsFromArray:v14];

  v15 = [v6 formattedText];
  v16 = [v15 textStyle];

  if (v16)
  {
    v17 = [v6 formattedText];
    v18 = [v17 textStyle];
    [v7 addObject:v18];
  }

  v19 = [(SXDataTableComponentController *)self DOMObjectProvider];
  v20 = [(SXDataTableComponentController *)self component];
  v21 = [v19 componentTextStyleForIdentifiers:v7 component:v20];

  return v21;
}

- (id)defaultComponentTextStyleForTextSource:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = [(SXDataTableComponentController *)self component];
  v6 = [v5 classification];
  v7 = [v6 defaultTextStyleIdentifiers];
  v8 = [v4 arrayWithArray:v7];

  v9 = [(SXDataTableComponentController *)self DOMObjectProvider];
  v10 = [(SXDataTableComponentController *)self component];
  v11 = [v9 componentTextStyleForIdentifiers:v8 component:v10];

  return v11;
}

- (id)defaultComponentTextStylesForTextSource:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(SXDataTableComponentController *)self component];
  v5 = [v4 classification];
  v6 = [v5 defaultTextStyleIdentifiers];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(SXDataTableComponentController *)self DOMObjectProvider];
        v22 = v11;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        v14 = [(SXDataTableComponentController *)self component];
        v15 = [v12 componentTextStyleForIdentifiers:v13 component:v14];

        if (v15)
        {
          [v17 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  return v17;
}

- (id)contentSizeCategoryForTextSource:(id)a3
{
  v4 = [(SXDataTableComponentController *)self dataSource];
  v5 = [v4 contentSizeCategoryForDataTableComponentController:self];

  return v5;
}

- (id)textStyleForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXDataTableComponentController *)self DOMObjectProvider];
  v6 = [(SXDataTableComponentController *)self component];
  v7 = [v5 textStyleForIdentifier:v4 component:v6];

  return v7;
}

- (id)rowStyleForRowIndex:(unint64_t)a3
{
  v5 = [(SXDataTableComponentController *)self shouldTreatIndexPathAsHeader:a3, -1];
  v6 = [(SXDataTableComponentController *)self styleFactory];
  v7 = v6;
  if (a3 || !v5)
  {
    v8 = [v6 rowStyleForRowIndex:a3];
  }

  else
  {
    v8 = [v6 headerRowStyleForRowIndex:0];
  }

  v9 = v8;

  return v9;
}

- (id)columnStyleForColumnIndex:(unint64_t)a3
{
  v5 = [(SXDataTableComponentController *)self shouldTreatIndexPathAsHeader:-1, a3];
  if (a3 || !v5)
  {
    v8 = a3 - [(SXDataTableComponentController *)self hasColumnHeader];
    v6 = [(SXDataTableComponentController *)self styleFactory];
    v7 = [v6 columnStyleForColumnIndex:v8];
  }

  else
  {
    v6 = [(SXDataTableComponentController *)self styleFactory];
    v7 = [v6 headerColumnStyleForColumnIndex:0];
  }

  v9 = v7;

  return v9;
}

- (id)cellStyleForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableComponentController *)self shouldTreatIndexPathAsHeader:?];
  v7 = [(SXDataTableComponentController *)self styleFactory];
  v8 = v7;
  if (v6)
  {
    [v7 headerCellStyleForIndexPath:{var0, var1}];
  }

  else
  {
    [v7 cellStyleForIndexPath:{var0, var1}];
  }
  v9 = ;

  return v9;
}

- (id)recordForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (![(SXDataTableComponentController *)self dataOrientation])
  {
    var1 = var0;
  }

  v6 = [(SXDataTableComponentController *)self records];
  v7 = [v6 objectAtIndex:var1];

  return v7;
}

- (id)dataDescriptorForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(SXDataTableComponentController *)self dataOrientation])
  {
    var1 = var0;
  }

  v6 = [(SXDataTableComponentController *)self component];
  v7 = [v6 data];
  v8 = [v7 descriptors];
  v9 = [v8 objectAtIndex:var1];

  return v9;
}

- (id)dataDescriptorForIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(SXDataTableComponentController *)self component];
  v6 = [v5 data];
  v7 = [v6 descriptors];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 identifier];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 identifier];
          v15 = [v14 isEqualToString:v4];

          if (v15)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v8;
}

- (double)minimumWidthForStorage:(id)a3 usingStringEnumeration:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 string];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [v6 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__SXDataTableComponentController_minimumWidthForStorage_usingStringEnumeration___block_invoke;
  v11[3] = &unk_1E8500CA0;
  v8 = v5;
  v12 = v8;
  v13 = &v14;
  [v6 enumerateSubstringsInRange:0 options:v7 usingBlock:{a4, v11}];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __80__SXDataTableComponentController_minimumWidthForStorage_usingStringEnumeration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = [v7 context];
  v14 = [v7 newSubstorageWithRange:a3 context:a4 flags:{v8, 0}];

  v9 = [SXTextUtilities alloc];
  v10 = [v14 paragraphStyleAtParIndex:0 effectiveRange:0];
  v11 = [(TSWPText *)v9 initWithParagraphStyle:v10];

  [(TSWPText *)v11 measureStorage:v14];
  v13 = *(*(a1 + 40) + 8);
  if (*(v13 + 24) >= v12)
  {
    v12 = *(v13 + 24);
  }

  *(v13 + 24) = v12;
}

- (id)component
{
  v3 = [(SXDataTableComponentController *)self dataSource];
  v4 = [v3 componentForDataTableComponentController:self];

  return v4;
}

- (double)convertConvertibleValue:(_SXConvertibleValue)a3
{
  unit = a3.unit;
  value = a3.value;
  v6 = [(SXDataTableComponentController *)self dataSource];
  v7 = [v6 unitConverterForDataTableComponentController:self];

  [v7 convertValueToPoints:{*&value, unit}];
  v9 = v8;

  return v9;
}

- (SXDataTableComponentControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end