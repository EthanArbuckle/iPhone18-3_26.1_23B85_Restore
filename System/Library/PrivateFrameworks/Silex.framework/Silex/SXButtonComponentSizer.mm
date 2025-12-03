@interface SXButtonComponentSizer
- (SXButtonComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options textProvider:(id)textProvider textComponentLayoutHosting:(id)hosting textSourceFactory:(id)self0;
- (UIEdgeInsets)contentInsetsWithUnitConverter:(id)converter;
- (UIEdgeInsets)layoutMarginsWithUnitConverter:(id)converter;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
- (id)additionsForTextSource:(id)source;
- (id)componentTextStyleForTextSource:(id)source inheritingFromDefaultStyles:(BOOL)styles;
- (id)contentSizeCategoryForTextSource:(id)source;
- (id)defaultComponentTextStyleForTextSource:(id)source;
- (id)defaultComponentTextStylesForTextSource:(id)source;
- (id)textResizerForTextSource:(id)source;
- (id)textRulesForTextSource:(id)source;
- (id)textStyleForIdentifier:(id)identifier;
@end

@implementation SXButtonComponentSizer

- (SXButtonComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options textProvider:(id)textProvider textComponentLayoutHosting:(id)hosting textSourceFactory:(id)self0
{
  componentCopy = component;
  textProviderCopy = textProvider;
  hostingCopy = hosting;
  factoryCopy = factory;
  v29.receiver = self;
  v29.super_class = SXButtonComponentSizer;
  v20 = [(SXComponentSizer *)&v29 initWithComponent:componentCopy componentLayout:layout componentStyle:style DOMObjectProvider:provider layoutOptions:options];
  if (v20)
  {
    v21 = [textProviderCopy textForComponent:componentCopy];
    v22 = [factoryCopy createTextSourceWithString:v21 dataSource:v20];
    v23 = [SXTextLayouter alloc];
    documentRoot = [hostingCopy documentRoot];
    v25 = [(SXTextLayouter *)v23 initWithTextSource:v22 andDocumentRoot:documentRoot];
    textLayouter = v20->_textLayouter;
    v20->_textLayouter = v25;

    textLayouter = [(SXButtonComponentSizer *)v20 textLayouter];
    [(SXComponentSizer *)v20 saveInfo:textLayouter forRenderingPhaseWithIdentifier:@"TextLayouter"];
  }

  return v20;
}

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  textLayouter = [(SXButtonComponentSizer *)self textLayouter];
  [textLayouter reset];

  textLayouter2 = [(SXButtonComponentSizer *)self textLayouter];
  [textLayouter2 calculateHeightForWidth:width];

  v8 = MEMORY[0x1E696B098];
  textLayouter3 = [(SXButtonComponentSizer *)self textLayouter];
  [textLayouter3 typographicBounds];
  v10 = [v8 valueWithCGRect:?];
  [(SXComponentSizer *)self saveInfo:v10 forRenderingPhaseWithIdentifier:@"TypographicBounds"];

  textLayouter4 = [(SXButtonComponentSizer *)self textLayouter];
  [textLayouter4 typographicBounds];
  v13 = v12;

  return v13;
}

- (UIEdgeInsets)contentInsetsWithUnitConverter:(id)converter
{
  converterCopy = converter;
  componentLayout = [(SXComponentSizer *)self componentLayout];
  padding = [componentLayout padding];

  if (padding)
  {
    v25.receiver = self;
    v25.super_class = SXButtonComponentSizer;
    [(SXComponentSizer *)&v25 contentInsetsWithUnitConverter:converterCopy];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SXButtonComponentSizer;
    [(SXComponentSizer *)&v26 contentInsetsWithUnitConverter:converterCopy];
    v16 = v15;
    v10 = v17;
    v19 = v18;
    v14 = v20;

    v8 = v16 + 5.0;
    v12 = v19 + 5.0;
  }

  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (UIEdgeInsets)layoutMarginsWithUnitConverter:(id)converter
{
  converterCopy = converter;
  v50.receiver = self;
  v50.super_class = SXButtonComponentSizer;
  [(SXComponentSizer *)&v50 layoutMarginsWithUnitConverter:converterCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  componentLayout = [(SXComponentSizer *)self componentLayout];
  padding = [componentLayout padding];

  if (padding)
  {
    left = [padding left];
    [converterCopy convertValueToPoints:{left, v16}];
    v18 = v17;
    v19 = [padding top];
    [converterCopy convertValueToPoints:{v19, v20}];
    right = [padding right];
    [converterCopy convertValueToPoints:{right, v22}];
    v24 = v23;
    bottom = [padding bottom];
    [converterCopy convertValueToPoints:{bottom, v26}];
  }

  else
  {
    v24 = 10.0;
    v18 = 10.0;
  }

  textLayouter = [(SXButtonComponentSizer *)self textLayouter];
  wpStorage = [textLayouter wpStorage];

  v29 = [wpStorage paragraphStyleAtParIndex:0 effectiveRange:0];
  v30 = [(TSWPText *)[SXTextUtilities alloc] initWithParagraphStyle:v29];
  [(TSWPText *)v30 measureStorage:wpStorage];
  v32 = v31;
  [converterCopy convertValueToPoints:{0x4059000000000000, 7}];
  v34 = v33 - v18 - v24 - v8 - v12;
  componentLayout2 = [(SXComponentSizer *)self componentLayout];
  [componentLayout2 maximumContentWidth];
  v37 = v36;

  if (v37)
  {
    componentLayout3 = [(SXComponentSizer *)self componentLayout];
    maximumContentWidth = [componentLayout3 maximumContentWidth];
    [converterCopy convertValueToPoints:{maximumContentWidth, v40}];
    v42 = v41;

    if (v32 >= v42)
    {
      v32 = v42;
    }
  }

  v43 = v34 - v32;
  if (v34 - v32 > 0.0)
  {
    componentLayout4 = [(SXComponentSizer *)self componentLayout];
    horizontalContentAlignment = [componentLayout4 horizontalContentAlignment];

    if (horizontalContentAlignment == 1)
    {
      v12 = v34 - v32;
    }

    else if (horizontalContentAlignment == 3)
    {
      v8 = v34 - v32;
    }

    else
    {
      v12 = v43 * 0.5;
      v8 = v43 * 0.5;
    }
  }

  v46 = v6;
  v47 = v8;
  v48 = v10;
  v49 = v12;
  result.right = v49;
  result.bottom = v48;
  result.left = v47;
  result.top = v46;
  return result;
}

- (id)textResizerForTextSource:(id)source
{
  v22[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  v6 = SXDefaultTextStyleIdentifierForRole(@"body");
  v22[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  component = [(SXComponentSizer *)self component];
  v9 = [dOMObjectProvider componentTextStyleForIdentifiers:v7 component:component];

  if (!v9)
  {
    dOMObjectProvider2 = [(SXComponentSizer *)self DOMObjectProvider];
    v21 = @"default";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    component2 = [(SXComponentSizer *)self component];
    v9 = [dOMObjectProvider2 componentTextStyleForIdentifiers:v11 component:component2];
  }

  fontScaling = 1;
  v14 = [(SXButtonComponentSizer *)self componentTextStyleForTextSource:sourceCopy inheritingFromDefaultStyles:1];
  v15 = v14;
  if (v14)
  {
    fontScaling = [v14 fontScaling];
  }

  v16 = [SXTextResizer alloc];
  layoutOptions = [(SXComponentSizer *)self layoutOptions];
  columnLayout = [layoutOptions columnLayout];
  v19 = [(SXTextResizer *)&v16->super.isa initWithColumnLayout:columnLayout defaultTextStyle:v9 fontScalingEnabled:fontScaling];

  return v19;
}

- (id)componentTextStyleForTextSource:(id)source inheritingFromDefaultStyles:(BOOL)styles
{
  stylesCopy = styles;
  array = [MEMORY[0x1E695DF70] array];
  if (stylesCopy)
  {
    component = [(SXComponentSizer *)self component];
    classification = [component classification];
    defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];

    if (defaultTextStyleIdentifiers)
    {
      component2 = [(SXComponentSizer *)self component];
      classification2 = [component2 classification];
      defaultTextStyleIdentifiers2 = [classification2 defaultTextStyleIdentifiers];
      [array addObjectsFromArray:defaultTextStyleIdentifiers2];
    }
  }

  component3 = [(SXComponentSizer *)self component];
  textStyle = [component3 textStyle];

  if (textStyle)
  {
    component4 = [(SXComponentSizer *)self component];
    textStyle2 = [component4 textStyle];
    [array addObject:textStyle2];
  }

  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  component5 = [(SXComponentSizer *)self component];
  v19 = [dOMObjectProvider componentTextStyleForIdentifiers:array component:component5];

  return v19;
}

- (id)defaultComponentTextStyleForTextSource:(id)source
{
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  v5 = MEMORY[0x1E695DEC8];
  component = [(SXComponentSizer *)self component];
  classification = [component classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];
  v9 = [v5 arrayWithArray:defaultTextStyleIdentifiers];
  component2 = [(SXComponentSizer *)self component];
  v11 = [dOMObjectProvider componentTextStyleForIdentifiers:v9 component:component2];

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
  component = [(SXComponentSizer *)self component];
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
        dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
        v22 = v11;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        component2 = [(SXComponentSizer *)self component];
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

- (id)additionsForTextSource:(id)source
{
  component = [(SXComponentSizer *)self component];
  additions = [component additions];
  nSArray = [additions NSArray];

  return nSArray;
}

- (id)textRulesForTextSource:(id)source
{
  component = [(SXComponentSizer *)self component];
  classification = [component classification];
  textRules = [classification textRules];

  return textRules;
}

- (id)contentSizeCategoryForTextSource:(id)source
{
  layoutOptions = [(SXComponentSizer *)self layoutOptions];
  contentSizeCategory = [layoutOptions contentSizeCategory];

  return contentSizeCategory;
}

- (id)textStyleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  component = [(SXComponentSizer *)self component];
  v7 = [dOMObjectProvider textStyleForIdentifier:identifierCopy component:component];

  return v7;
}

@end