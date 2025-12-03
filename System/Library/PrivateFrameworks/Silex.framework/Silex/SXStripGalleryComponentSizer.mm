@interface SXStripGalleryComponentSizer
- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)range inColumnLayout:(id)layout;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
- (double)contentWidthForColumnLayout:(id)layout;
- (double)rightContentInsetForColumnLayout:(id)layout;
- (double)xOffsetForColumnLayout:(id)layout;
- (id)imageResources;
@end

@implementation SXStripGalleryComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  v54 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  columnLayout = [contextCopy columnLayout];
  [(SXStripGalleryComponentSizer *)self contentWidthForColumnLayout:columnLayout];
  v8 = v7;

  unitConverter = [contextCopy unitConverter];
  [unitConverter convertValueToPoints:{0x404F000000000000, 2}];
  v11 = v10;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  imageResources = [(SXStripGalleryComponentSizer *)self imageResources];
  v13 = [imageResources countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(imageResources);
        }

        v18 = *(*(&v49 + 1) + 8 * i);
        [v18 dimensions];
        v20 = v19;
        [v18 dimensions];
        v22 = v20 / v21;
        if (v20 / v21 < 2.0)
        {
          [v18 dimensions];
          v24 = v23;
          [v18 dimensions];
          v22 = v24 / v25;
          if (v24 / v25 > v16)
          {
            [v18 dimensions];
            v27 = v26;
            [v18 dimensions];
            v16 = v27 / v28;
          }
        }
      }

      v14 = [imageResources countByEnumeratingWithState:&v49 objects:v53 count:{16, v22}];
    }

    while (v14);
  }

  else
  {
    v16 = 0.0;
  }

  if (v16 == 0.0)
  {
    v29 = v11;
  }

  else
  {
    v29 = v8 / v16;
  }

  imageResources2 = [(SXStripGalleryComponentSizer *)self imageResources];
  v31 = [imageResources2 count];

  if (v31)
  {
    imageResources3 = [(SXStripGalleryComponentSizer *)self imageResources];
    v33 = [imageResources3 objectAtIndex:0];

    [v33 dimensions];
    v35 = v34;
    [v33 dimensions];
    if (v35 / v36 < 2.0)
    {
      [v33 dimensions];
      v38 = v29 / v37;
      [v33 dimensions];
      v40 = v38 * v39;
      if (v40 > v8 + -20.0)
      {
        if (v40 >= v8 + -20.0)
        {
          v40 = v8 + -20.0;
        }

        v29 = v40 / v16;
      }
    }
  }

  v41 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [(SXComponentSizer *)self saveInfo:v41 forRenderingPhaseWithIdentifier:@"ContentWidth"];

  v42 = MEMORY[0x1E696AD98];
  columnLayout2 = [contextCopy columnLayout];
  [(SXStripGalleryComponentSizer *)self xOffsetForColumnLayout:columnLayout2];
  v44 = [v42 numberWithDouble:?];
  [(SXComponentSizer *)self saveInfo:v44 forRenderingPhaseWithIdentifier:@"leftOffset"];

  v45 = MEMORY[0x1E696AD98];
  columnLayout3 = [contextCopy columnLayout];
  [(SXStripGalleryComponentSizer *)self rightContentInsetForColumnLayout:columnLayout3];
  v47 = [v45 numberWithDouble:?];
  [(SXComponentSizer *)self saveInfo:v47 forRenderingPhaseWithIdentifier:@"rightOffset"];

  if (v29 < v11)
  {
    v11 = v29;
  }

  return v11;
}

- (id)imageResources
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  component = [(SXComponentSizer *)self component];
  items = [component items];

  v6 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
        imageIdentifier = [v10 imageIdentifier];
        v13 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

        if (v13)
        {
          [array addObject:v13];
        }
      }

      v7 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return array;
}

- (double)contentWidthForColumnLayout:(id)layout
{
  layoutCopy = layout;
  componentLayout = [(SXComponentSizer *)self componentLayout];
  columnRange = [componentLayout columnRange];
  v8 = [layoutCopy convertColumnRange:columnRange minimumColumnLength:{v7, -[SXComponentSizer minimumColumnLength](self, "minimumColumnLength")}];
  v10 = v9;

  componentLayout2 = [(SXComponentSizer *)self componentLayout];
  ignoreDocumentMargin = [componentLayout2 ignoreDocumentMargin];
  componentLayout3 = [(SXComponentSizer *)self componentLayout];
  ignoreDocumentGutter = [componentLayout3 ignoreDocumentGutter];
  componentLayout4 = [(SXComponentSizer *)self componentLayout];
  [layoutCopy widthForColumnRange:v8 ignoreMargin:v10 ignoreGutter:ignoreDocumentMargin ignoreViewportPadding:{ignoreDocumentGutter, objc_msgSend(componentLayout4, "ignoreViewportPadding")}];
  v17 = v16;

  return v17;
}

- (double)xOffsetForColumnLayout:(id)layout
{
  layoutCopy = layout;
  componentLayout = [(SXComponentSizer *)self componentLayout];
  columnRange = [componentLayout columnRange];
  v8 = [layoutCopy convertColumnRange:columnRange minimumColumnLength:{v7, -[SXComponentSizer minimumColumnLength](self, "minimumColumnLength")}];

  componentLayout2 = [(SXComponentSizer *)self componentLayout];
  ignoreDocumentMargin = [componentLayout2 ignoreDocumentMargin];
  componentLayout3 = [(SXComponentSizer *)self componentLayout];
  ignoreDocumentGutter = [componentLayout3 ignoreDocumentGutter];
  componentLayout4 = [(SXComponentSizer *)self componentLayout];
  [layoutCopy xPositionForColumnIndex:v8 ignoreMargin:ignoreDocumentMargin ignoreGutter:ignoreDocumentGutter ignoreViewportPadding:objc_msgSend(componentLayout4 ignoreSafeAreaInsets:{"ignoreViewportPadding"), 1}];
  v15 = v14;

  return v15;
}

- (double)rightContentInsetForColumnLayout:(id)layout
{
  layoutCopy = layout;
  componentLayout = [(SXComponentSizer *)self componentLayout];
  columnRange = [componentLayout columnRange];
  v8 = [layoutCopy convertColumnRange:columnRange minimumColumnLength:{v7, -[SXComponentSizer minimumColumnLength](self, "minimumColumnLength")}];
  v10 = v9;

  componentLayout2 = [(SXComponentSizer *)self componentLayout];
  ignoreDocumentMargin = [componentLayout2 ignoreDocumentMargin];
  componentLayout3 = [(SXComponentSizer *)self componentLayout];
  ignoreDocumentGutter = [componentLayout3 ignoreDocumentGutter];
  componentLayout4 = [(SXComponentSizer *)self componentLayout];
  [layoutCopy widthForColumnRange:v8 ignoreMargin:v10 ignoreGutter:ignoreDocumentMargin ignoreViewportPadding:{ignoreDocumentGutter, objc_msgSend(componentLayout4, "ignoreViewportPadding")}];
  v17 = v16;

  [(SXStripGalleryComponentSizer *)self xOffsetForColumnLayout:layoutCopy];
  v19 = v18;
  [layoutCopy widthForColumnRange:0 ignoreMargin:objc_msgSend(layoutCopy ignoreGutter:"numberOfColumns") ignoreViewportPadding:{3, 3, 3}];
  v21 = v20;

  return v21 - v17 - v19;
}

- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)range inColumnLayout:(id)layout
{
  numberOfColumns = [layout numberOfColumns];
  v5 = 0;
  result.length = numberOfColumns;
  result.location = v5;
  return result;
}

@end