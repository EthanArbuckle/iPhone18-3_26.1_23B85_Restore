@interface SXStripGalleryComponentSizer
- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)a3 inColumnLayout:(id)a4;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
- (double)contentWidthForColumnLayout:(id)a3;
- (double)rightContentInsetForColumnLayout:(id)a3;
- (double)xOffsetForColumnLayout:(id)a3;
- (id)imageResources;
@end

@implementation SXStripGalleryComponentSizer

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 columnLayout];
  [(SXStripGalleryComponentSizer *)self contentWidthForColumnLayout:v6];
  v8 = v7;

  v9 = [v5 unitConverter];
  [v9 convertValueToPoints:{0x404F000000000000, 2}];
  v11 = v10;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = [(SXStripGalleryComponentSizer *)self imageResources];
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
          objc_enumerationMutation(v12);
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

      v14 = [v12 countByEnumeratingWithState:&v49 objects:v53 count:{16, v22}];
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

  v30 = [(SXStripGalleryComponentSizer *)self imageResources];
  v31 = [v30 count];

  if (v31)
  {
    v32 = [(SXStripGalleryComponentSizer *)self imageResources];
    v33 = [v32 objectAtIndex:0];

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
  v43 = [v5 columnLayout];
  [(SXStripGalleryComponentSizer *)self xOffsetForColumnLayout:v43];
  v44 = [v42 numberWithDouble:?];
  [(SXComponentSizer *)self saveInfo:v44 forRenderingPhaseWithIdentifier:@"leftOffset"];

  v45 = MEMORY[0x1E696AD98];
  v46 = [v5 columnLayout];
  [(SXStripGalleryComponentSizer *)self rightContentInsetForColumnLayout:v46];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(SXComponentSizer *)self component];
  v5 = [v4 items];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(SXComponentSizer *)self DOMObjectProvider];
        v12 = [v10 imageIdentifier];
        v13 = [v11 imageResourceForIdentifier:v12];

        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

- (double)contentWidthForColumnLayout:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentSizer *)self componentLayout];
  v6 = [v5 columnRange];
  v8 = [v4 convertColumnRange:v6 minimumColumnLength:{v7, -[SXComponentSizer minimumColumnLength](self, "minimumColumnLength")}];
  v10 = v9;

  v11 = [(SXComponentSizer *)self componentLayout];
  v12 = [v11 ignoreDocumentMargin];
  v13 = [(SXComponentSizer *)self componentLayout];
  v14 = [v13 ignoreDocumentGutter];
  v15 = [(SXComponentSizer *)self componentLayout];
  [v4 widthForColumnRange:v8 ignoreMargin:v10 ignoreGutter:v12 ignoreViewportPadding:{v14, objc_msgSend(v15, "ignoreViewportPadding")}];
  v17 = v16;

  return v17;
}

- (double)xOffsetForColumnLayout:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentSizer *)self componentLayout];
  v6 = [v5 columnRange];
  v8 = [v4 convertColumnRange:v6 minimumColumnLength:{v7, -[SXComponentSizer minimumColumnLength](self, "minimumColumnLength")}];

  v9 = [(SXComponentSizer *)self componentLayout];
  v10 = [v9 ignoreDocumentMargin];
  v11 = [(SXComponentSizer *)self componentLayout];
  v12 = [v11 ignoreDocumentGutter];
  v13 = [(SXComponentSizer *)self componentLayout];
  [v4 xPositionForColumnIndex:v8 ignoreMargin:v10 ignoreGutter:v12 ignoreViewportPadding:objc_msgSend(v13 ignoreSafeAreaInsets:{"ignoreViewportPadding"), 1}];
  v15 = v14;

  return v15;
}

- (double)rightContentInsetForColumnLayout:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentSizer *)self componentLayout];
  v6 = [v5 columnRange];
  v8 = [v4 convertColumnRange:v6 minimumColumnLength:{v7, -[SXComponentSizer minimumColumnLength](self, "minimumColumnLength")}];
  v10 = v9;

  v11 = [(SXComponentSizer *)self componentLayout];
  v12 = [v11 ignoreDocumentMargin];
  v13 = [(SXComponentSizer *)self componentLayout];
  v14 = [v13 ignoreDocumentGutter];
  v15 = [(SXComponentSizer *)self componentLayout];
  [v4 widthForColumnRange:v8 ignoreMargin:v10 ignoreGutter:v12 ignoreViewportPadding:{v14, objc_msgSend(v15, "ignoreViewportPadding")}];
  v17 = v16;

  [(SXStripGalleryComponentSizer *)self xOffsetForColumnLayout:v4];
  v19 = v18;
  [v4 widthForColumnRange:0 ignoreMargin:objc_msgSend(v4 ignoreGutter:"numberOfColumns") ignoreViewportPadding:{3, 3, 3}];
  v21 = v20;

  return v21 - v17 - v19;
}

- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)a3 inColumnLayout:(id)a4
{
  v4 = [a4 numberOfColumns];
  v5 = 0;
  result.length = v4;
  result.location = v5;
  return result;
}

@end