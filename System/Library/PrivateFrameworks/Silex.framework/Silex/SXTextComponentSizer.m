@interface SXTextComponentSizer
- (SXTextComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 textComponentLayoutHosting:(id)a8 textSourceFactory:(id)a9;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
- (double)verticalPositionForRange:(_NSRange)a3;
- (id)additionsForTextSource:(id)a3;
- (id)componentTextStyleForTextSource:(id)a3 inheritingFromDefaultStyles:(BOOL)a4;
- (id)contentSizeCategoryForTextSource:(id)a3;
- (id)defaultComponentTextStyleForTextSource:(id)a3;
- (id)defaultComponentTextStylesForTextSource:(id)a3;
- (id)existingExclusionPathForComponentWithIdentifier:(id)a3;
- (id)inlineTextStylesForTextSource:(id)a3;
- (id)snapLines;
- (id)textResizerForTextSource:(id)a3;
- (id)textRulesForTextSource:(id)a3;
- (id)textStyleForIdentifier:(id)a3;
- (unint64_t)stringLength;
- (void)addExclusionPath:(id)a3;
- (void)removeAllExclusionPaths;
@end

@implementation SXTextComponentSizer

- (SXTextComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 textComponentLayoutHosting:(id)a8 textSourceFactory:(id)a9
{
  v15 = a3;
  v16 = a8;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = SXTextComponentSizer;
  v18 = [(SXComponentSizer *)&v27 initWithComponent:v15 componentLayout:a4 componentStyle:a5 DOMObjectProvider:a6 layoutOptions:a7];
  if (v18)
  {
    v19 = [v15 text];
    v20 = [v17 createTextSourceWithString:v19 dataSource:v18];

    v21 = [SXTextLayouter alloc];
    v22 = [v16 documentRoot];
    v23 = [(SXTextLayouter *)v21 initWithTextSource:v20 andDocumentRoot:v22];
    textLayouter = v18->_textLayouter;
    v18->_textLayouter = v23;

    v25 = [(SXTextComponentSizer *)v18 textLayouter];
    [(SXComponentSizer *)v18 saveInfo:v25 forRenderingPhaseWithIdentifier:@"TextLayouter"];
  }

  return v18;
}

- (void)addExclusionPath:(id)a3
{
  v4 = a3;
  v5 = [(SXTextComponentSizer *)self textLayouter];
  [v5 addExclusionPath:v4];
}

- (void)removeAllExclusionPaths
{
  v2 = [(SXTextComponentSizer *)self textLayouter];
  [v2 removeAllExclusionPaths];
}

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v6 = [(SXTextComponentSizer *)self textLayouter];
  [v6 reset];

  v7 = [(SXTextComponentSizer *)self textLayouter];
  [v7 calculateHeightForWidth:a3];
  v9 = v8;

  return v9;
}

- (id)snapLines
{
  v2 = [(SXTextComponentSizer *)self textLayouter];
  v3 = [v2 firstColumn];

  v4 = [MEMORY[0x1E695DF70] array];
  [v3 frameBounds];
  if (CGRectGetHeight(v17) > 100.0)
  {
    v5 = [v3 storage];
    v6 = [v3 range];
    v8 = [v5 paragraphIndexRangeForCharRange:{v6, v7}];
    if (v8 < v8 + v9)
    {
      v10 = v8;
      v11 = v9;
      do
      {
        v12 = [v5 textRangeForParagraphAtIndex:v10];
        if (v13 >= 2)
        {
          [v3 topOfLineAtCharIndex:v12];
          v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v4 addObject:v14];
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  return v4;
}

- (double)verticalPositionForRange:(_NSRange)a3
{
  location = a3.location;
  v4 = [(SXTextComponentSizer *)self textLayouter:a3.location];
  v5 = [v4 firstColumn];
  [v5 topOfLineAtCharIndex:location];
  v7 = v6;

  return v7;
}

- (unint64_t)stringLength
{
  v2 = [(SXTextComponentSizer *)self textLayouter];
  v3 = [v2 textSource];
  v4 = [v3 string];
  v5 = [v4 length];

  return v5;
}

- (id)existingExclusionPathForComponentWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SXTextComponentSizer *)self textLayouter];
  v6 = [v5 exclusionPaths];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(SXTangierTextRenderCollectorItem *)v10 componentIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)textResizerForTextSource:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = [(SXComponentSizer *)self DOMObjectProvider];
  v5 = SXDefaultTextStyleIdentifierForRole(@"body");
  v26[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v7 = [(SXComponentSizer *)self component];
  v8 = [v4 componentTextStyleForIdentifiers:v6 component:v7];

  if (!v8)
  {
    v9 = [(SXComponentSizer *)self DOMObjectProvider];
    v25 = @"default";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v11 = [(SXComponentSizer *)self component];
    v8 = [v9 componentTextStyleForIdentifiers:v10 component:v11];
  }

  v12 = [(SXComponentSizer *)self DOMObjectProvider];
  v13 = [(SXComponentSizer *)self component];
  v14 = [v13 textStyle];
  v15 = [(SXComponentSizer *)self component];
  v16 = [v15 classification];
  v17 = [(SXComponentSizer *)self component];
  v18 = [v12 componentTextStyleForIdentifier:v14 classification:v16 component:v17];

  if (v18)
  {
    v19 = [v18 fontScaling];
  }

  else
  {
    v19 = 1;
  }

  v20 = [SXTextResizer alloc];
  v21 = [(SXComponentSizer *)self layoutOptions];
  v22 = [v21 columnLayout];
  v23 = [(SXTextResizer *)&v20->super.isa initWithColumnLayout:v22 defaultTextStyle:v8 fontScalingEnabled:v19];

  return v23;
}

- (id)componentTextStyleForTextSource:(id)a3 inheritingFromDefaultStyles:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  if (v4)
  {
    v7 = [(SXComponentSizer *)self component];
    v8 = [v7 classification];
    v9 = [v8 defaultTextStyleIdentifiers];
    [v6 addObjectsFromArray:v9];
  }

  v10 = [(SXComponentSizer *)self component];
  v11 = [v10 textStyle];

  if (v11)
  {
    v12 = [(SXComponentSizer *)self component];
    v13 = [v12 textStyle];
    [v6 addObject:v13];
  }

  v14 = [(SXComponentSizer *)self DOMObjectProvider];
  v15 = [(SXComponentSizer *)self component];
  v16 = [v14 componentTextStyleForIdentifiers:v6 component:v15];

  return v16;
}

- (id)defaultComponentTextStyleForTextSource:(id)a3
{
  v4 = [(SXComponentSizer *)self DOMObjectProvider];
  v5 = [(SXComponentSizer *)self component];
  v6 = [v5 classification];
  v7 = [v6 defaultTextStyleIdentifiers];
  v8 = [(SXComponentSizer *)self component];
  v9 = [v4 componentTextStyleForIdentifiers:v7 component:v8];

  return v9;
}

- (id)defaultComponentTextStylesForTextSource:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(SXComponentSizer *)self component];
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
        v12 = [(SXComponentSizer *)self DOMObjectProvider];
        v22 = v11;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        v14 = [(SXComponentSizer *)self component];
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

- (id)inlineTextStylesForTextSource:(id)a3
{
  v3 = [(SXComponentSizer *)self component];
  v4 = [v3 inlineTextStyles];

  return v4;
}

- (id)additionsForTextSource:(id)a3
{
  v3 = [(SXComponentSizer *)self component];
  v4 = [v3 additions];
  v5 = [v4 NSArray];

  return v5;
}

- (id)textRulesForTextSource:(id)a3
{
  v3 = [(SXComponentSizer *)self component];
  v4 = [v3 classification];
  v5 = [v4 textRules];

  return v5;
}

- (id)contentSizeCategoryForTextSource:(id)a3
{
  v3 = [(SXComponentSizer *)self layoutOptions];
  v4 = [v3 contentSizeCategory];

  return v4;
}

- (id)textStyleForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentSizer *)self DOMObjectProvider];
  v6 = [(SXComponentSizer *)self component];
  v7 = [v5 textStyleForIdentifier:v4 component:v6];

  return v7;
}

@end