@interface SXHighlightController
- (SXHighlightController)init;
- (void)applyHighlightForStorage:(id)a3 withRect:(CGRect)a4 inRange:(_NSRange)a5 icc:(id)a6 isActive:(BOOL)a7 keyboardHeight:(unint64_t)a8 isReload:(BOOL)a9;
- (void)clearHighlights;
- (void)removeActiveLayers;
@end

@implementation SXHighlightController

- (SXHighlightController)init
{
  v8.receiver = self;
  v8.super_class = SXHighlightController;
  v2 = [(SXHighlightController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    highlightLayers = v2->_highlightLayers;
    v2->_highlightLayers = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    activeLayers = v2->_activeLayers;
    v2->_activeLayers = v5;
  }

  return v2;
}

- (void)applyHighlightForStorage:(id)a3 withRect:(CGRect)a4 inRange:(_NSRange)a5 icc:(id)a6 isActive:(BOOL)a7 keyboardHeight:(unint64_t)a8 isReload:(BOOL)a9
{
  v81 = a7;
  length = a5.length;
  location = a5.location;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v85[1] = *MEMORY[0x1E69E9840];
  v18 = a6;
  v19 = a3;
  v20 = [(SXTangierTextRenderCollectorItem *)v19 flowInfo];
  v21 = [v18 repForInfo:v20];

  v22 = [(SXTangierTextRenderCollectorItem *)v19 storage];
  v23 = [v21 storage];
  v24 = [(SXTangierTextRenderCollectorItem *)v19 directLayerHost];

  if (v24)
  {
    v71 = a8;
    v74 = v21;
    v78 = self;
    v80 = v18;
    v25 = [MEMORY[0x1E6979398] layer];
    v26 = [MEMORY[0x1E6979508] layer];
    v27 = v23;
    v28 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v28 scale];
    [v26 setContentsScale:?];

    v29 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v29 scale];
    [v25 setContentsScale:?];

    v30 = [v22 characterStyleAtCharIndex:location effectiveRange:0];
    v31 = [v22 paragraphStyleAtCharIndex:location effectiveRange:0];
    v79 = v27;
    v32 = [v27 substringWithRange:{location, length}];
    v77 = v31;
    v33 = [v31 valueForProperty:17];
    [v33 floatValue];
    v35 = v34;

    v76 = [v30 valueForProperty:53];
    v36 = [v76 objectForKey:@"NSFontNameAttribute"];
    v37 = v35;
    v38 = [MEMORY[0x1E69DB878] fontWithName:v36 size:v37];
    v84 = *MEMORY[0x1E69DB648];
    v85[0] = v38;
    v73 = v38;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:&v84 count:1];
    v72 = v83 = v32;
    [v32 sizeWithAttributes:?];
    v39 = [v30 valueForProperty:19];
    LODWORD(v31) = [v39 BOOLValue];

    v40 = [v30 valueForProperty:20];
    v41 = [v40 BOOLValue];

    v82 = [v30 valueForProperty:18];
    v75 = v36;
    v42 = [MEMORY[0x1E69DB880] fontDescriptorWithName:v36 size:v37];
    v43 = v42;
    if (v31)
    {
      v44 = [v42 fontDescriptorWithSymbolicTraits:2];

      v43 = v44;
    }

    v21 = v74;
    if (v41)
    {
      v45 = [v43 fontDescriptorWithSymbolicTraits:1];

      v43 = v45;
    }

    [v26 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "fontWithDescriptor:size:", v43, v37)}];
    [v26 setFontSize:v37];
    [v26 setString:v83];
    v18 = v80;
    if (v74)
    {
      [v74 wordMetricsAtCharIndex:location];
      v46 = 0.0 - 0.0;
    }

    else
    {
      v46 = 0.0;
    }

    if (y + height == v46)
    {
      v46 = v46 - 0.0;
    }

    [v26 setFrame:{x, v46, width, height + 0.0}];
    [v25 setFrame:{x, y, width, height}];
    [v25 setCornerRadius:4.0];
    if (!v81)
    {
      [v82 luminance];
      if (v55 <= 0.5)
      {
        [v26 setForegroundColor:{objc_msgSend(v82, "CGColor")}];
        v59 = [MEMORY[0x1E69DC888] lightGrayColor];
        [v25 setBackgroundColor:{objc_msgSend(v59, "CGColor")}];

        v60 = [MEMORY[0x1E69DC888] clearColor];
        [v25 setBorderColor:{objc_msgSend(v60, "CGColor")}];

        [v25 setBorderWidth:0.0];
      }

      else
      {
        v56 = [MEMORY[0x1E69DC888] clearColor];
        [v26 setForegroundColor:{objc_msgSend(v56, "CGColor")}];

        v57 = [MEMORY[0x1E69DC888] clearColor];
        [v25 setBackgroundColor:{objc_msgSend(v57, "CGColor")}];

        [v25 setBorderWidth:2.0];
        v58 = [MEMORY[0x1E69DC888] whiteColor];
        [v25 setBorderColor:{objc_msgSend(v58, "CGColor")}];
      }

      v61 = [(SXHighlightController *)v78 highlightLayers];
      [v61 addObject:v26];

      v62 = [(SXHighlightController *)v78 highlightLayers];
      v63 = v62;
      v64 = v25;
      goto LABEL_23;
    }

    v47 = [MEMORY[0x1E69DC888] blackColor];
    [v26 setForegroundColor:{objc_msgSend(v47, "CGColor")}];

    v48 = [MEMORY[0x1E69DC888] systemYellowColor];
    [v25 setBackgroundColor:{objc_msgSend(v48, "CGColor")}];

    if (!a9)
    {
      [v80 sizeOfScrollViewEnclosingCanvas];
      v50 = v49 - v71;
      [v74 frameInCanvas];
      v52 = v50 * 0.5;
      if (v51 + 0.0 > v52)
      {
        [v74 frameInCanvas];
        v54 = v53 + 0.0 - v52;
LABEL_21:
        [v80 setContentOffset:1 animated:{0.0, v54}];
        goto LABEL_22;
      }

      [v80 contentOffset];
      if (v65 > v52)
      {
        v54 = -50.0;
        goto LABEL_21;
      }
    }

LABEL_22:
    v66 = [(SXHighlightController *)v78 activeLayers];
    [v66 addObject:v25];

    v62 = [(SXHighlightController *)v78 activeLayers];
    v63 = v62;
    v64 = v26;
LABEL_23:
    [v62 addObject:v64];

    v67 = [v24 layer];
    v68 = [v24 layer];
    [v67 insertSublayer:v25 below:v68];

    v69 = [v24 layer];
    v70 = [v24 layer];
    [v69 insertSublayer:v26 below:v70];

    v23 = v79;
  }
}

- (void)removeActiveLayers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SXHighlightController *)self activeLayers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(SXHighlightController *)self activeLayers];
  [v8 removeAllObjects];
}

- (void)clearHighlights
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SXHighlightController *)self highlightLayers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(SXHighlightController *)self highlightLayers];
  [v8 removeAllObjects];

  [(SXHighlightController *)self removeActiveLayers];
}

@end