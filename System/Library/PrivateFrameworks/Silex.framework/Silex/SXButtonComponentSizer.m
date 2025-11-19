@interface SXButtonComponentSizer
- (SXButtonComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 textProvider:(id)a8 textComponentLayoutHosting:(id)a9 textSourceFactory:(id)a10;
- (UIEdgeInsets)contentInsetsWithUnitConverter:(id)a3;
- (UIEdgeInsets)layoutMarginsWithUnitConverter:(id)a3;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
- (id)additionsForTextSource:(id)a3;
- (id)componentTextStyleForTextSource:(id)a3 inheritingFromDefaultStyles:(BOOL)a4;
- (id)contentSizeCategoryForTextSource:(id)a3;
- (id)defaultComponentTextStyleForTextSource:(id)a3;
- (id)defaultComponentTextStylesForTextSource:(id)a3;
- (id)textResizerForTextSource:(id)a3;
- (id)textRulesForTextSource:(id)a3;
- (id)textStyleForIdentifier:(id)a3;
@end

@implementation SXButtonComponentSizer

- (SXButtonComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 textProvider:(id)a8 textComponentLayoutHosting:(id)a9 textSourceFactory:(id)a10
{
  v16 = a3;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v29.receiver = self;
  v29.super_class = SXButtonComponentSizer;
  v20 = [(SXComponentSizer *)&v29 initWithComponent:v16 componentLayout:a4 componentStyle:a5 DOMObjectProvider:a6 layoutOptions:a7];
  if (v20)
  {
    v21 = [v17 textForComponent:v16];
    v22 = [v19 createTextSourceWithString:v21 dataSource:v20];
    v23 = [SXTextLayouter alloc];
    v24 = [v18 documentRoot];
    v25 = [(SXTextLayouter *)v23 initWithTextSource:v22 andDocumentRoot:v24];
    textLayouter = v20->_textLayouter;
    v20->_textLayouter = v25;

    v27 = [(SXButtonComponentSizer *)v20 textLayouter];
    [(SXComponentSizer *)v20 saveInfo:v27 forRenderingPhaseWithIdentifier:@"TextLayouter"];
  }

  return v20;
}

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v6 = [(SXButtonComponentSizer *)self textLayouter];
  [v6 reset];

  v7 = [(SXButtonComponentSizer *)self textLayouter];
  [v7 calculateHeightForWidth:a3];

  v8 = MEMORY[0x1E696B098];
  v9 = [(SXButtonComponentSizer *)self textLayouter];
  [v9 typographicBounds];
  v10 = [v8 valueWithCGRect:?];
  [(SXComponentSizer *)self saveInfo:v10 forRenderingPhaseWithIdentifier:@"TypographicBounds"];

  v11 = [(SXButtonComponentSizer *)self textLayouter];
  [v11 typographicBounds];
  v13 = v12;

  return v13;
}

- (UIEdgeInsets)contentInsetsWithUnitConverter:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentSizer *)self componentLayout];
  v6 = [v5 padding];

  if (v6)
  {
    v25.receiver = self;
    v25.super_class = SXButtonComponentSizer;
    [(SXComponentSizer *)&v25 contentInsetsWithUnitConverter:v4];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SXButtonComponentSizer;
    [(SXComponentSizer *)&v26 contentInsetsWithUnitConverter:v4];
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

- (UIEdgeInsets)layoutMarginsWithUnitConverter:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = SXButtonComponentSizer;
  [(SXComponentSizer *)&v50 layoutMarginsWithUnitConverter:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SXComponentSizer *)self componentLayout];
  v14 = [v13 padding];

  if (v14)
  {
    v15 = [v14 left];
    [v4 convertValueToPoints:{v15, v16}];
    v18 = v17;
    v19 = [v14 top];
    [v4 convertValueToPoints:{v19, v20}];
    v21 = [v14 right];
    [v4 convertValueToPoints:{v21, v22}];
    v24 = v23;
    v25 = [v14 bottom];
    [v4 convertValueToPoints:{v25, v26}];
  }

  else
  {
    v24 = 10.0;
    v18 = 10.0;
  }

  v27 = [(SXButtonComponentSizer *)self textLayouter];
  v28 = [v27 wpStorage];

  v29 = [v28 paragraphStyleAtParIndex:0 effectiveRange:0];
  v30 = [(TSWPText *)[SXTextUtilities alloc] initWithParagraphStyle:v29];
  [(TSWPText *)v30 measureStorage:v28];
  v32 = v31;
  [v4 convertValueToPoints:{0x4059000000000000, 7}];
  v34 = v33 - v18 - v24 - v8 - v12;
  v35 = [(SXComponentSizer *)self componentLayout];
  [v35 maximumContentWidth];
  v37 = v36;

  if (v37)
  {
    v38 = [(SXComponentSizer *)self componentLayout];
    v39 = [v38 maximumContentWidth];
    [v4 convertValueToPoints:{v39, v40}];
    v42 = v41;

    if (v32 >= v42)
    {
      v32 = v42;
    }
  }

  v43 = v34 - v32;
  if (v34 - v32 > 0.0)
  {
    v44 = [(SXComponentSizer *)self componentLayout];
    v45 = [v44 horizontalContentAlignment];

    if (v45 == 1)
    {
      v12 = v34 - v32;
    }

    else if (v45 == 3)
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

- (id)textResizerForTextSource:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXComponentSizer *)self DOMObjectProvider];
  v6 = SXDefaultTextStyleIdentifierForRole(@"body");
  v22[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v8 = [(SXComponentSizer *)self component];
  v9 = [v5 componentTextStyleForIdentifiers:v7 component:v8];

  if (!v9)
  {
    v10 = [(SXComponentSizer *)self DOMObjectProvider];
    v21 = @"default";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v12 = [(SXComponentSizer *)self component];
    v9 = [v10 componentTextStyleForIdentifiers:v11 component:v12];
  }

  v13 = 1;
  v14 = [(SXButtonComponentSizer *)self componentTextStyleForTextSource:v4 inheritingFromDefaultStyles:1];
  v15 = v14;
  if (v14)
  {
    v13 = [v14 fontScaling];
  }

  v16 = [SXTextResizer alloc];
  v17 = [(SXComponentSizer *)self layoutOptions];
  v18 = [v17 columnLayout];
  v19 = [(SXTextResizer *)&v16->super.isa initWithColumnLayout:v18 defaultTextStyle:v9 fontScalingEnabled:v13];

  return v19;
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

    if (v9)
    {
      v10 = [(SXComponentSizer *)self component];
      v11 = [v10 classification];
      v12 = [v11 defaultTextStyleIdentifiers];
      [v6 addObjectsFromArray:v12];
    }
  }

  v13 = [(SXComponentSizer *)self component];
  v14 = [v13 textStyle];

  if (v14)
  {
    v15 = [(SXComponentSizer *)self component];
    v16 = [v15 textStyle];
    [v6 addObject:v16];
  }

  v17 = [(SXComponentSizer *)self DOMObjectProvider];
  v18 = [(SXComponentSizer *)self component];
  v19 = [v17 componentTextStyleForIdentifiers:v6 component:v18];

  return v19;
}

- (id)defaultComponentTextStyleForTextSource:(id)a3
{
  v4 = [(SXComponentSizer *)self DOMObjectProvider];
  v5 = MEMORY[0x1E695DEC8];
  v6 = [(SXComponentSizer *)self component];
  v7 = [v6 classification];
  v8 = [v7 defaultTextStyleIdentifiers];
  v9 = [v5 arrayWithArray:v8];
  v10 = [(SXComponentSizer *)self component];
  v11 = [v4 componentTextStyleForIdentifiers:v9 component:v10];

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