@interface SXDataTableComponentController
- ($01BB1521EC52D44A8E7628F5261DCEC8)paddingForCellAtIndexPath:(id)path;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathSubstractingHeaders:(id)headers;
- (BOOL)hasColumnHeader;
- (BOOL)hasRowHeader;
- (BOOL)indexPathIsHeader:(id)header;
- (SXDataTableComponentController)initWithStyleFactory:(id)factory textSourceFactory:(id)sourceFactory dataSource:(id)source recordValueTransformerFactory:(id)transformerFactory DOMObjectProvider:(id)provider;
- (SXDataTableComponentControllerDataSource)dataSource;
- (double)convertConvertibleValue:(_SXConvertibleValue)value;
- (double)heightForCellAtIndexPath:(id)path;
- (double)heightForCellndexPath:(id)path forWidth:(double)width;
- (double)minimumWidthForCellAtIndexPath:(id)path;
- (double)minimumWidthForStorage:(id)storage usingStringEnumeration:(unint64_t)enumeration;
- (double)widthForCellAtIndexPath:(id)path;
- (id)additionsForTextSource:(id)source;
- (id)backgroundColorForCellAtIndexPath:(id)path;
- (id)backgroundColorForColumnAtIndex:(unint64_t)index;
- (id)backgroundColorForRowAtIndex:(unint64_t)index;
- (id)cellBorderForCellAtIndexPath:(id)path;
- (id)cellObjectForIndexPath:(id)path;
- (id)cellStyleForIndexPath:(id)path;
- (id)columnDividerAtIndex:(unint64_t)index;
- (id)columnStyleForColumnIndex:(unint64_t)index;
- (id)component;
- (id)componentTextStyleForTextSource:(id)source inheritingFromDefaultStyles:(BOOL)styles;
- (id)contentSizeCategoryForTextSource:(id)source;
- (id)dataDescriptorForIdentifier:(id)identifier;
- (id)dataDescriptorForIndexPath:(id)path;
- (id)defaultComponentTextStyleForTextSource:(id)source;
- (id)defaultComponentTextStylesForTextSource:(id)source;
- (id)inlineTextStylesForTextSource:(id)source;
- (id)recordForIndexPath:(id)path;
- (id)rowDividerAtIndex:(unint64_t)index;
- (id)rowStyleForRowIndex:(unint64_t)index;
- (id)tableBorder;
- (id)textLayouterForIndexPath:(id)path;
- (id)textResizerForTextSource:(id)source;
- (id)textRulesForTextSource:(id)source;
- (id)textStyleForIdentifier:(id)identifier;
- (unint64_t)dataOrientation;
- (unint64_t)horizontalAlignmentForCellAtIndexPath:(id)path;
- (unint64_t)numberOfColumns;
- (unint64_t)numberOfRows;
- (unint64_t)verticalAlignmentForCellAtIndexPath:(id)path;
- (void)loadRecords;
- (void)prepareForLayout;
@end

@implementation SXDataTableComponentController

- (SXDataTableComponentController)initWithStyleFactory:(id)factory textSourceFactory:(id)sourceFactory dataSource:(id)source recordValueTransformerFactory:(id)transformerFactory DOMObjectProvider:(id)provider
{
  factoryCopy = factory;
  sourceFactoryCopy = sourceFactory;
  sourceCopy = source;
  transformerFactoryCopy = transformerFactory;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = SXDataTableComponentController;
  v18 = [(SXDataTableComponentController *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_styleFactory, factory);
    objc_storeStrong(&v19->_textSourceFactory, sourceFactory);
    objc_storeWeak(&v19->_dataSource, sourceCopy);
    v20 = [SXDataTableDictionary dataTableDictionaryWithRows:[(SXDataTableComponentController *)v19 numberOfRows] andColumns:[(SXDataTableComponentController *)v19 numberOfColumns]];
    cellObjects = v19->_cellObjects;
    v19->_cellObjects = v20;

    v22 = [SXDataTableDictionary dataTableDictionaryWithRows:[(SXDataTableComponentController *)v19 numberOfRows] andColumns:[(SXDataTableComponentController *)v19 numberOfColumns]];
    textLayouters = v19->_textLayouters;
    v19->_textLayouters = v22;

    objc_storeStrong(&v19->_recordValueTransformerFactory, transformerFactory);
    objc_storeStrong(&v19->_DOMObjectProvider, provider);
    [(SXDataTableComponentController *)v19 loadRecords];
  }

  return v19;
}

- (void)loadRecords
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SXDataSortDescriptorFactory);
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  component = [(SXDataTableComponentController *)self component];
  sortBy = [component sortBy];

  v7 = [sortBy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(sortBy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        descriptor = [v11 descriptor];
        v13 = [(SXDataTableComponentController *)self dataDescriptorForIdentifier:descriptor];

        if (v13)
        {
          v14 = -[SXDataSortDescriptorFactory sortDescriptorForDataDescriptor:ascending:](v3, "sortDescriptorForDataDescriptor:ascending:", v13, [v11 direction] == 0);
          if (v14)
          {
            [array addObject:v14];
          }
        }
      }

      v8 = [sortBy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  component2 = [(SXDataTableComponentController *)self component];
  data = [component2 data];
  v17 = [data recordsUsingSortDescriptors:array];
  [(SXDataTableComponentController *)self setRecords:v17];
}

- (void)prepareForLayout
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  textLayouters = [(SXDataTableComponentController *)self textLayouters];
  v3 = [textLayouters countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(textLayouters);
        }

        [*(*(&v7 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [textLayouters countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)indexPathIsHeader:(id)header
{
  var1 = header.var1;
  var0 = header.var0;
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPathSubstractingHeaders:(id)headers
{
  var1 = headers.var1;
  var0 = headers.var0;
  hasRowHeader = [(SXDataTableComponentController *)self hasRowHeader];
  if (var0)
  {
    v7 = hasRowHeader;
  }

  else
  {
    v7 = 0;
  }

  v8 = var0 - v7;
  hasColumnHeader = [(SXDataTableComponentController *)self hasColumnHeader];
  if (var1)
  {
    v10 = hasColumnHeader;
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

  component = [(SXDataTableComponentController *)self component];
  showDescriptorLabels = [component showDescriptorLabels];

  return showDescriptorLabels;
}

- (BOOL)hasRowHeader
{
  if ([(SXDataTableComponentController *)self dataOrientation])
  {
    return 0;
  }

  component = [(SXDataTableComponentController *)self component];
  showDescriptorLabels = [component showDescriptorLabels];

  return showDescriptorLabels;
}

- (unint64_t)dataOrientation
{
  component = [(SXDataTableComponentController *)self component];
  dataOrientation = [component dataOrientation];

  return dataOrientation;
}

- (id)tableBorder
{
  styleFactory = [(SXDataTableComponentController *)self styleFactory];
  dataTableStyle = [styleFactory dataTableStyle];
  border = [dataTableStyle border];

  if (border)
  {
    dataSource = [(SXDataTableComponentController *)self dataSource];
    v7 = [dataSource unitConverterForDataTableComponentController:self];

    [border setUnitConverter:v7];
  }

  return border;
}

- (unint64_t)numberOfRows
{
  dataOrientation = [(SXDataTableComponentController *)self dataOrientation];
  component = [(SXDataTableComponentController *)self component];
  data = [component data];
  v6 = data;
  if (dataOrientation)
  {
    descriptors = [data descriptors];
    numberOfRecords = [descriptors count];
  }

  else
  {
    numberOfRecords = [data numberOfRecords];
  }

  hasRowHeader = [(SXDataTableComponentController *)self hasRowHeader];
  if (numberOfRecords)
  {
    v10 = hasRowHeader;
  }

  else
  {
    v10 = 0;
  }

  return numberOfRecords + v10;
}

- (unint64_t)numberOfColumns
{
  dataOrientation = [(SXDataTableComponentController *)self dataOrientation];
  component = [(SXDataTableComponentController *)self component];
  data = [component data];
  v6 = data;
  if (dataOrientation)
  {
    numberOfRecords = [data numberOfRecords];
  }

  else
  {
    descriptors = [data descriptors];
    numberOfRecords = [descriptors count];
  }

  hasColumnHeader = [(SXDataTableComponentController *)self hasColumnHeader];
  if (numberOfRecords)
  {
    v10 = hasColumnHeader;
  }

  else
  {
    v10 = 0;
  }

  return numberOfRecords + v10;
}

- (id)backgroundColorForRowAtIndex:(unint64_t)index
{
  v3 = [(SXDataTableComponentController *)self rowStyleForRowIndex:index];
  backgroundColor = [v3 backgroundColor];

  return backgroundColor;
}

- (id)backgroundColorForColumnAtIndex:(unint64_t)index
{
  v3 = [(SXDataTableComponentController *)self columnStyleForColumnIndex:index];
  backgroundColor = [v3 backgroundColor];

  return backgroundColor;
}

- (id)cellObjectForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  cellObjects = [(SXDataTableComponentController *)self cellObjects];
  label = [cellObjects objectForIndexPath:{var0, var1}];

  if (!label)
  {
    var1 = [(SXDataTableComponentController *)self dataDescriptorForIndexPath:var0, var1];
    if ([(SXDataTableComponentController *)self indexPathIsHeader:var0, var1])
    {
      label = [var1 label];
      if (!label)
      {
        goto LABEL_7;
      }
    }

    else
    {
      var12 = [(SXDataTableComponentController *)self indexPathSubstractingHeaders:var0, var1];
      v11 = [(SXDataTableComponentController *)self recordForIndexPath:var12, v10];
      recordValueTransformerFactory = [(SXDataTableComponentController *)self recordValueTransformerFactory];
      v13 = [recordValueTransformerFactory recordValueTransformerForDataDescriptor:var1];

      label = [v13 transformValueForRecord:v11 descriptor:var1];

      if (!label)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    cellObjects2 = [(SXDataTableComponentController *)self cellObjects];
    [cellObjects2 setObject:label forIndexPath:{var0, var1}];

    goto LABEL_7;
  }

LABEL_8:

  return label;
}

- (id)textLayouterForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  textLayouters = [(SXDataTableComponentController *)self textLayouters];
  v7 = [textLayouters objectForIndexPath:{var0, var1}];

  if (!v7)
  {
    var1 = [(SXDataTableComponentController *)self cellObjectForIndexPath:var0, var1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textSourceFactory = [(SXDataTableComponentController *)self textSourceFactory];
      v10 = [textSourceFactory textSourceWithFormattedText:var1 indexPath:var0 dataSource:{var1, self}];

      var12 = [(SXDataTableComponentController *)self cellStyleForIndexPath:var0, var1];
      [v10 setDefaultTextAlignment:{objc_msgSend(var12, "horizontalAlignment")}];
      v12 = [SXTextLayouter alloc];
      dataSource = [(SXDataTableComponentController *)self dataSource];
      v14 = [dataSource textComponentLayoutHostingForDataTableComponentController:self];
      documentRoot = [v14 documentRoot];
      v7 = [(SXTextLayouter *)v12 initWithTextSource:v10 andDocumentRoot:documentRoot];

      textLayouters2 = [(SXDataTableComponentController *)self textLayouters];
      [textLayouters2 setObject:v7 forIndexPath:{var0, var1}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (double)minimumWidthForCellAtIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  v6 = [(SXDataTableComponentController *)self cellObjectForIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    var1 = [(SXDataTableComponentController *)self dataDescriptorForIndexPath:var0, var1];
    format = [var1 format];

    minimumWidth = [format minimumWidth];
    [(SXDataTableComponentController *)self convertConvertibleValue:minimumWidth, v11];
    v13 = v12;
    [format maximumWidth];
    if (v14)
    {
      maximumWidth = [format maximumWidth];
      [(SXDataTableComponentController *)self convertConvertibleValue:maximumWidth, v16];
      if (v13 >= v17)
      {
        v13 = v17;
      }
    }

    minimumHeight = [format minimumHeight];
    [(SXDataTableComponentController *)self convertConvertibleValue:minimumHeight, v19];
    v21 = v20;
    [format maximumHeight];
    if (v22)
    {
      maximumHeight = [format maximumHeight];
      [(SXDataTableComponentController *)self convertConvertibleValue:maximumHeight, v24];
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

    [format maximumHeight];
    if (v27)
    {
      maximumHeight2 = [format maximumHeight];
      [(SXDataTableComponentController *)self convertConvertibleValue:maximumHeight2, v29];
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
  format = [(SXDataTableComponentController *)self textLayouterForIndexPath:var0, var1];
  if ([v31 shouldWrapText])
  {
    wpStorage = [format wpStorage];
    wpStorage2 = [format wpStorage];
    [(SXDataTableComponentController *)self minimumWidthForStorage:wpStorage2 usingStringEnumeration:3];
    v13 = v34;

    if (v13 != 0.0)
    {
      goto LABEL_21;
    }

    string = [(SXTextUtilities *)wpStorage string];
    v36 = [string length];

    if (!v36)
    {
      goto LABEL_21;
    }

    wpStorage3 = [format wpStorage];
    [(SXDataTableComponentController *)self minimumWidthForStorage:wpStorage3 usingStringEnumeration:2];
  }

  else
  {
    v39 = [SXTextUtilities alloc];
    wpStorage4 = [format wpStorage];
    v41 = [wpStorage4 paragraphStyleAtParIndex:0 effectiveRange:0];
    wpStorage = [(TSWPText *)v39 initWithParagraphStyle:v41];

    wpStorage3 = [format wpStorage];
    [(TSWPText *)wpStorage measureStorage:wpStorage3];
  }

  v13 = v38;

LABEL_21:
LABEL_22:

LABEL_23:
  v42 = [(SXDataTableComponentController *)self columnStyleForColumnIndex:var1];
  var12 = [(SXDataTableComponentController *)self cellStyleForIndexPath:var0, var1];
  minimumWidth2 = [var12 minimumWidth];
  [(SXDataTableComponentController *)self convertConvertibleValue:minimumWidth2, v45];
  v47 = v46;
  minimumWidth3 = [v42 minimumWidth];
  [(SXDataTableComponentController *)self convertConvertibleValue:minimumWidth3, v49];
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

- (double)heightForCellndexPath:(id)path forWidth:(double)width
{
  var1 = path.var1;
  var0 = path.var0;
  v8 = [(SXDataTableComponentController *)self cellObjectForIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    var1 = [(SXDataTableComponentController *)self dataDescriptorForIndexPath:var0, var1];
    v10 = v8;
    format = [var1 format];
    [format maximumWidth];
    if (v12)
    {
      maximumWidth = [format maximumWidth];
      [(SXDataTableComponentController *)self convertConvertibleValue:maximumWidth, v14];
      if (v15 <= width)
      {
        width = v15;
      }
    }

    [format maximumHeight];
    if (v16)
    {
      maximumHeight = [format maximumHeight];
      [(SXDataTableComponentController *)self convertConvertibleValue:maximumHeight, v18];
      v20 = v19;
    }

    else
    {
      v20 = 1.79769313e308;
    }

    [v10 sizeThatFits:{width, v20}];
    v21 = v23;

    goto LABEL_11;
  }

  objc_opt_class();
  v21 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    var1 = [(SXDataTableComponentController *)self textLayouterForIndexPath:var0, var1];
    [var1 calculateHeightForWidth:width];
    v21 = v22;
LABEL_11:
  }

  return v21;
}

- (double)widthForCellAtIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  v6 = [(SXDataTableComponentController *)self columnStyleForColumnIndex:path.var1];
  var1 = [(SXDataTableComponentController *)self cellStyleForIndexPath:var0, var1];
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

  [var1 width];
  if (v11 > v10)
  {
    [var1 width];
    if (v12 != 1.79769313e308)
    {
      [var1 width];
      v10 = v13;
    }
  }

  return v10;
}

- (double)heightForCellAtIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  v6 = [(SXDataTableComponentController *)self rowStyleForRowIndex:?];
  var1 = [(SXDataTableComponentController *)self cellStyleForIndexPath:var0, var1];
  height = [v6 height];
  [(SXDataTableComponentController *)self convertConvertibleValue:height, v9];
  v11 = v10;
  height2 = [var1 height];
  [(SXDataTableComponentController *)self convertConvertibleValue:height2, v13];
  if (v11 < v14)
  {
    v11 = v14;
  }

  return v11;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)paddingForCellAtIndexPath:(id)path
{
  v4 = [(SXDataTableComponentController *)self cellStyleForIndexPath:path.var0, path.var1];
  padding = [v4 padding];
  left = [padding left];
  [(SXDataTableComponentController *)self convertConvertibleValue:left, v7];
  v9 = v8;

  padding2 = [v4 padding];
  v11 = [padding2 top];
  [(SXDataTableComponentController *)self convertConvertibleValue:v11, v12];
  v14 = v13;

  padding3 = [v4 padding];
  right = [padding3 right];
  [(SXDataTableComponentController *)self convertConvertibleValue:right, v17];
  v19 = v18;

  padding4 = [v4 padding];
  bottom = [padding4 bottom];
  [(SXDataTableComponentController *)self convertConvertibleValue:bottom, v22];
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

- (id)cellBorderForCellAtIndexPath:(id)path
{
  v4 = [(SXDataTableComponentController *)self cellStyleForIndexPath:path.var0, path.var1];
  border = [v4 border];

  if (border)
  {
    dataSource = [(SXDataTableComponentController *)self dataSource];
    v7 = [dataSource unitConverterForDataTableComponentController:self];

    border2 = [v4 border];
    [border2 setUnitConverter:v7];
  }

  border3 = [v4 border];

  return border3;
}

- (unint64_t)verticalAlignmentForCellAtIndexPath:(id)path
{
  v3 = [(SXDataTableComponentController *)self cellStyleForIndexPath:path.var0, path.var1];
  verticalAlignment = [v3 verticalAlignment];

  return verticalAlignment;
}

- (unint64_t)horizontalAlignmentForCellAtIndexPath:(id)path
{
  v3 = [(SXDataTableComponentController *)self cellStyleForIndexPath:path.var0, path.var1];
  horizontalAlignment = [v3 horizontalAlignment];

  return horizontalAlignment;
}

- (id)backgroundColorForCellAtIndexPath:(id)path
{
  v3 = [(SXDataTableComponentController *)self cellStyleForIndexPath:path.var0, path.var1];
  backgroundColor = [v3 backgroundColor];

  return backgroundColor;
}

- (id)rowDividerAtIndex:(unint64_t)index
{
  v4 = [(SXDataTableComponentController *)self rowStyleForRowIndex:index];
  divider = [v4 divider];

  if (divider)
  {
    dataSource = [(SXDataTableComponentController *)self dataSource];
    v7 = [dataSource unitConverterForDataTableComponentController:self];

    divider2 = [v4 divider];
    [divider2 setUnitConverter:v7];
  }

  divider3 = [v4 divider];

  return divider3;
}

- (id)columnDividerAtIndex:(unint64_t)index
{
  v4 = [(SXDataTableComponentController *)self columnStyleForColumnIndex:index];
  divider = [v4 divider];

  if (divider)
  {
    dataSource = [(SXDataTableComponentController *)self dataSource];
    v7 = [dataSource unitConverterForDataTableComponentController:self];

    divider2 = [v4 divider];
    [divider2 setUnitConverter:v7];
  }

  divider3 = [v4 divider];

  return divider3;
}

- (id)textResizerForTextSource:(id)source
{
  v21[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dataSource = [(SXDataTableComponentController *)self dataSource];
  v6 = [dataSource documentColumnLayoutForDataTableComponentController:self];

  dOMObjectProvider = [(SXDataTableComponentController *)self DOMObjectProvider];
  v8 = SXDefaultTextStyleIdentifierForRole(@"body");
  v21[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  component = [(SXDataTableComponentController *)self component];
  v11 = [dOMObjectProvider componentTextStyleForIdentifiers:v9 component:component];

  if (!v11)
  {
    dOMObjectProvider2 = [(SXDataTableComponentController *)self DOMObjectProvider];
    v20 = @"default";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    component2 = [(SXDataTableComponentController *)self component];
    v11 = [dOMObjectProvider2 componentTextStyleForIdentifiers:v13 component:component2];
  }

  fontScaling = 1;
  v16 = [(SXDataTableComponentController *)self componentTextStyleForTextSource:sourceCopy inheritingFromDefaultStyles:1];
  v17 = v16;
  if (v16)
  {
    fontScaling = [v16 fontScaling];
  }

  v18 = [[SXTextResizer alloc] initWithColumnLayout:v6 defaultTextStyle:v11 fontScalingEnabled:fontScaling];

  return v18;
}

- (id)textRulesForTextSource:(id)source
{
  component = [(SXDataTableComponentController *)self component];
  classification = [component classification];
  textRules = [classification textRules];

  return textRules;
}

- (id)additionsForTextSource:(id)source
{
  sourceCopy = source;
  formattedText = [sourceCopy formattedText];
  additions = [formattedText additions];

  if (additions)
  {
    formattedText2 = [sourceCopy formattedText];
    additions2 = [formattedText2 additions];
    nSArray = [additions2 NSArray];
  }

  else
  {
    nSArray = MEMORY[0x1E695E0F0];
  }

  return nSArray;
}

- (id)inlineTextStylesForTextSource:(id)source
{
  sourceCopy = source;
  formattedText = [sourceCopy formattedText];
  inlineTextStyles = [formattedText inlineTextStyles];

  if (inlineTextStyles)
  {
    formattedText2 = [sourceCopy formattedText];
    inlineTextStyles2 = [formattedText2 inlineTextStyles];
    nSArray = [inlineTextStyles2 NSArray];
  }

  else
  {
    nSArray = MEMORY[0x1E695E0F0];
  }

  return nSArray;
}

- (id)componentTextStyleForTextSource:(id)source inheritingFromDefaultStyles:(BOOL)styles
{
  stylesCopy = styles;
  sourceCopy = source;
  array = [MEMORY[0x1E695DF70] array];
  if (stylesCopy)
  {
    component = [(SXDataTableComponentController *)self component];
    classification = [component classification];
    defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];
    [array addObjectsFromArray:defaultTextStyleIdentifiers];
  }

  indexPath = [sourceCopy indexPath];
  v13 = [(SXDataTableComponentController *)self cellStyleForIndexPath:indexPath, v12];
  textStyles = [v13 textStyles];
  [array addObjectsFromArray:textStyles];

  formattedText = [sourceCopy formattedText];
  textStyle = [formattedText textStyle];

  if (textStyle)
  {
    formattedText2 = [sourceCopy formattedText];
    textStyle2 = [formattedText2 textStyle];
    [array addObject:textStyle2];
  }

  dOMObjectProvider = [(SXDataTableComponentController *)self DOMObjectProvider];
  component2 = [(SXDataTableComponentController *)self component];
  v21 = [dOMObjectProvider componentTextStyleForIdentifiers:array component:component2];

  return v21;
}

- (id)defaultComponentTextStyleForTextSource:(id)source
{
  v4 = MEMORY[0x1E695DF70];
  component = [(SXDataTableComponentController *)self component];
  classification = [component classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];
  v8 = [v4 arrayWithArray:defaultTextStyleIdentifiers];

  dOMObjectProvider = [(SXDataTableComponentController *)self DOMObjectProvider];
  component2 = [(SXDataTableComponentController *)self component];
  v11 = [dOMObjectProvider componentTextStyleForIdentifiers:v8 component:component2];

  return v11;
}

- (id)defaultComponentTextStylesForTextSource:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  component = [(SXDataTableComponentController *)self component];
  classification = [component classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];

  v7 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(defaultTextStyleIdentifiers);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        dOMObjectProvider = [(SXDataTableComponentController *)self DOMObjectProvider];
        v22 = v11;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        component2 = [(SXDataTableComponentController *)self component];
        v15 = [dOMObjectProvider componentTextStyleForIdentifiers:v13 component:component2];

        if (v15)
        {
          [array addObject:v15];
        }
      }

      v8 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)contentSizeCategoryForTextSource:(id)source
{
  dataSource = [(SXDataTableComponentController *)self dataSource];
  v5 = [dataSource contentSizeCategoryForDataTableComponentController:self];

  return v5;
}

- (id)textStyleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dOMObjectProvider = [(SXDataTableComponentController *)self DOMObjectProvider];
  component = [(SXDataTableComponentController *)self component];
  v7 = [dOMObjectProvider textStyleForIdentifier:identifierCopy component:component];

  return v7;
}

- (id)rowStyleForRowIndex:(unint64_t)index
{
  v5 = [(SXDataTableComponentController *)self shouldTreatIndexPathAsHeader:index, -1];
  styleFactory = [(SXDataTableComponentController *)self styleFactory];
  v7 = styleFactory;
  if (index || !v5)
  {
    v8 = [styleFactory rowStyleForRowIndex:index];
  }

  else
  {
    v8 = [styleFactory headerRowStyleForRowIndex:0];
  }

  v9 = v8;

  return v9;
}

- (id)columnStyleForColumnIndex:(unint64_t)index
{
  index = [(SXDataTableComponentController *)self shouldTreatIndexPathAsHeader:-1, index];
  if (index || !index)
  {
    v8 = index - [(SXDataTableComponentController *)self hasColumnHeader];
    styleFactory = [(SXDataTableComponentController *)self styleFactory];
    v7 = [styleFactory columnStyleForColumnIndex:v8];
  }

  else
  {
    styleFactory = [(SXDataTableComponentController *)self styleFactory];
    v7 = [styleFactory headerColumnStyleForColumnIndex:0];
  }

  v9 = v7;

  return v9;
}

- (id)cellStyleForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  v6 = [(SXDataTableComponentController *)self shouldTreatIndexPathAsHeader:?];
  styleFactory = [(SXDataTableComponentController *)self styleFactory];
  v8 = styleFactory;
  if (v6)
  {
    [styleFactory headerCellStyleForIndexPath:{var0, var1}];
  }

  else
  {
    [styleFactory cellStyleForIndexPath:{var0, var1}];
  }
  v9 = ;

  return v9;
}

- (id)recordForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  if (![(SXDataTableComponentController *)self dataOrientation])
  {
    var1 = var0;
  }

  records = [(SXDataTableComponentController *)self records];
  v7 = [records objectAtIndex:var1];

  return v7;
}

- (id)dataDescriptorForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  if ([(SXDataTableComponentController *)self dataOrientation])
  {
    var1 = var0;
  }

  component = [(SXDataTableComponentController *)self component];
  data = [component data];
  descriptors = [data descriptors];
  v9 = [descriptors objectAtIndex:var1];

  return v9;
}

- (id)dataDescriptorForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  component = [(SXDataTableComponentController *)self component];
  data = [component data];
  descriptors = [data descriptors];

  v8 = [descriptors countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(descriptors);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        identifier = [v11 identifier];
        if (identifier)
        {
          v13 = identifier;
          identifier2 = [v11 identifier];
          v15 = [identifier2 isEqualToString:identifierCopy];

          if (v15)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [descriptors countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (double)minimumWidthForStorage:(id)storage usingStringEnumeration:(unint64_t)enumeration
{
  storageCopy = storage;
  string = [storageCopy string];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [string length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__SXDataTableComponentController_minimumWidthForStorage_usingStringEnumeration___block_invoke;
  v11[3] = &unk_1E8500CA0;
  v8 = storageCopy;
  v12 = v8;
  v13 = &v14;
  [string enumerateSubstringsInRange:0 options:v7 usingBlock:{enumeration, v11}];
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
  dataSource = [(SXDataTableComponentController *)self dataSource];
  v4 = [dataSource componentForDataTableComponentController:self];

  return v4;
}

- (double)convertConvertibleValue:(_SXConvertibleValue)value
{
  unit = value.unit;
  value = value.value;
  dataSource = [(SXDataTableComponentController *)self dataSource];
  v7 = [dataSource unitConverterForDataTableComponentController:self];

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