@interface SXTextComponentSizer
- (SXTextComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options textComponentLayoutHosting:(id)hosting textSourceFactory:(id)factory;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
- (double)verticalPositionForRange:(_NSRange)range;
- (id)additionsForTextSource:(id)source;
- (id)componentTextStyleForTextSource:(id)source inheritingFromDefaultStyles:(BOOL)styles;
- (id)contentSizeCategoryForTextSource:(id)source;
- (id)defaultComponentTextStyleForTextSource:(id)source;
- (id)defaultComponentTextStylesForTextSource:(id)source;
- (id)existingExclusionPathForComponentWithIdentifier:(id)identifier;
- (id)inlineTextStylesForTextSource:(id)source;
- (id)snapLines;
- (id)textResizerForTextSource:(id)source;
- (id)textRulesForTextSource:(id)source;
- (id)textStyleForIdentifier:(id)identifier;
- (unint64_t)stringLength;
- (void)addExclusionPath:(id)path;
- (void)removeAllExclusionPaths;
@end

@implementation SXTextComponentSizer

- (SXTextComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options textComponentLayoutHosting:(id)hosting textSourceFactory:(id)factory
{
  componentCopy = component;
  hostingCopy = hosting;
  factoryCopy = factory;
  v27.receiver = self;
  v27.super_class = SXTextComponentSizer;
  v18 = [(SXComponentSizer *)&v27 initWithComponent:componentCopy componentLayout:layout componentStyle:style DOMObjectProvider:provider layoutOptions:options];
  if (v18)
  {
    text = [componentCopy text];
    v20 = [factoryCopy createTextSourceWithString:text dataSource:v18];

    v21 = [SXTextLayouter alloc];
    documentRoot = [hostingCopy documentRoot];
    v23 = [(SXTextLayouter *)v21 initWithTextSource:v20 andDocumentRoot:documentRoot];
    textLayouter = v18->_textLayouter;
    v18->_textLayouter = v23;

    textLayouter = [(SXTextComponentSizer *)v18 textLayouter];
    [(SXComponentSizer *)v18 saveInfo:textLayouter forRenderingPhaseWithIdentifier:@"TextLayouter"];
  }

  return v18;
}

- (void)addExclusionPath:(id)path
{
  pathCopy = path;
  textLayouter = [(SXTextComponentSizer *)self textLayouter];
  [textLayouter addExclusionPath:pathCopy];
}

- (void)removeAllExclusionPaths
{
  textLayouter = [(SXTextComponentSizer *)self textLayouter];
  [textLayouter removeAllExclusionPaths];
}

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  textLayouter = [(SXTextComponentSizer *)self textLayouter];
  [textLayouter reset];

  textLayouter2 = [(SXTextComponentSizer *)self textLayouter];
  [textLayouter2 calculateHeightForWidth:width];
  v9 = v8;

  return v9;
}

- (id)snapLines
{
  textLayouter = [(SXTextComponentSizer *)self textLayouter];
  firstColumn = [textLayouter firstColumn];

  array = [MEMORY[0x1E695DF70] array];
  [firstColumn frameBounds];
  if (CGRectGetHeight(v17) > 100.0)
  {
    storage = [firstColumn storage];
    range = [firstColumn range];
    v8 = [storage paragraphIndexRangeForCharRange:{range, v7}];
    if (v8 < v8 + v9)
    {
      v10 = v8;
      v11 = v9;
      do
      {
        v12 = [storage textRangeForParagraphAtIndex:v10];
        if (v13 >= 2)
        {
          [firstColumn topOfLineAtCharIndex:v12];
          v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [array addObject:v14];
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  return array;
}

- (double)verticalPositionForRange:(_NSRange)range
{
  location = range.location;
  v4 = [(SXTextComponentSizer *)self textLayouter:range.location];
  firstColumn = [v4 firstColumn];
  [firstColumn topOfLineAtCharIndex:location];
  v7 = v6;

  return v7;
}

- (unint64_t)stringLength
{
  textLayouter = [(SXTextComponentSizer *)self textLayouter];
  textSource = [textLayouter textSource];
  string = [textSource string];
  v5 = [string length];

  return v5;
}

- (id)existingExclusionPathForComponentWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  textLayouter = [(SXTextComponentSizer *)self textLayouter];
  exclusionPaths = [textLayouter exclusionPaths];

  v7 = [exclusionPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(exclusionPaths);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        componentIdentifier = [(SXTangierTextRenderCollectorItem *)v10 componentIdentifier];
        v12 = [componentIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [exclusionPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)textResizerForTextSource:(id)source
{
  v26[1] = *MEMORY[0x1E69E9840];
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  v5 = SXDefaultTextStyleIdentifierForRole(@"body");
  v26[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  component = [(SXComponentSizer *)self component];
  v8 = [dOMObjectProvider componentTextStyleForIdentifiers:v6 component:component];

  if (!v8)
  {
    dOMObjectProvider2 = [(SXComponentSizer *)self DOMObjectProvider];
    v25 = @"default";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    component2 = [(SXComponentSizer *)self component];
    v8 = [dOMObjectProvider2 componentTextStyleForIdentifiers:v10 component:component2];
  }

  dOMObjectProvider3 = [(SXComponentSizer *)self DOMObjectProvider];
  component3 = [(SXComponentSizer *)self component];
  textStyle = [component3 textStyle];
  component4 = [(SXComponentSizer *)self component];
  classification = [component4 classification];
  component5 = [(SXComponentSizer *)self component];
  v18 = [dOMObjectProvider3 componentTextStyleForIdentifier:textStyle classification:classification component:component5];

  if (v18)
  {
    fontScaling = [v18 fontScaling];
  }

  else
  {
    fontScaling = 1;
  }

  v20 = [SXTextResizer alloc];
  layoutOptions = [(SXComponentSizer *)self layoutOptions];
  columnLayout = [layoutOptions columnLayout];
  v23 = [(SXTextResizer *)&v20->super.isa initWithColumnLayout:columnLayout defaultTextStyle:v8 fontScalingEnabled:fontScaling];

  return v23;
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
    [array addObjectsFromArray:defaultTextStyleIdentifiers];
  }

  component2 = [(SXComponentSizer *)self component];
  textStyle = [component2 textStyle];

  if (textStyle)
  {
    component3 = [(SXComponentSizer *)self component];
    textStyle2 = [component3 textStyle];
    [array addObject:textStyle2];
  }

  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  component4 = [(SXComponentSizer *)self component];
  v16 = [dOMObjectProvider componentTextStyleForIdentifiers:array component:component4];

  return v16;
}

- (id)defaultComponentTextStyleForTextSource:(id)source
{
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  component = [(SXComponentSizer *)self component];
  classification = [component classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];
  component2 = [(SXComponentSizer *)self component];
  v9 = [dOMObjectProvider componentTextStyleForIdentifiers:defaultTextStyleIdentifiers component:component2];

  return v9;
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

- (id)inlineTextStylesForTextSource:(id)source
{
  component = [(SXComponentSizer *)self component];
  inlineTextStyles = [component inlineTextStyles];

  return inlineTextStyles;
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