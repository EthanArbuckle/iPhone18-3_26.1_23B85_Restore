@interface SXHighlightController
- (SXHighlightController)init;
- (void)applyHighlightForStorage:(id)storage withRect:(CGRect)rect inRange:(_NSRange)range icc:(id)icc isActive:(BOOL)active keyboardHeight:(unint64_t)height isReload:(BOOL)reload;
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
    array = [MEMORY[0x1E695DF70] array];
    highlightLayers = v2->_highlightLayers;
    v2->_highlightLayers = array;

    array2 = [MEMORY[0x1E695DF70] array];
    activeLayers = v2->_activeLayers;
    v2->_activeLayers = array2;
  }

  return v2;
}

- (void)applyHighlightForStorage:(id)storage withRect:(CGRect)rect inRange:(_NSRange)range icc:(id)icc isActive:(BOOL)active keyboardHeight:(unint64_t)height isReload:(BOOL)reload
{
  activeCopy = active;
  length = range.length;
  location = range.location;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v85[1] = *MEMORY[0x1E69E9840];
  iccCopy = icc;
  storageCopy = storage;
  flowInfo = [(SXTangierTextRenderCollectorItem *)storageCopy flowInfo];
  v21 = [iccCopy repForInfo:flowInfo];

  storage = [(SXTangierTextRenderCollectorItem *)storageCopy storage];
  storage2 = [v21 storage];
  directLayerHost = [(SXTangierTextRenderCollectorItem *)storageCopy directLayerHost];

  if (directLayerHost)
  {
    heightCopy = height;
    v74 = v21;
    selfCopy = self;
    v80 = iccCopy;
    layer = [MEMORY[0x1E6979398] layer];
    layer2 = [MEMORY[0x1E6979508] layer];
    v27 = storage2;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [layer2 setContentsScale:?];

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    [layer setContentsScale:?];

    v30 = [storage characterStyleAtCharIndex:location effectiveRange:0];
    v31 = [storage paragraphStyleAtCharIndex:location effectiveRange:0];
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
    bOOLValue = [v40 BOOLValue];

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
    if (bOOLValue)
    {
      v45 = [v43 fontDescriptorWithSymbolicTraits:1];

      v43 = v45;
    }

    [layer2 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "fontWithDescriptor:size:", v43, v37)}];
    [layer2 setFontSize:v37];
    [layer2 setString:v83];
    iccCopy = v80;
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

    [layer2 setFrame:{x, v46, width, height + 0.0}];
    [layer setFrame:{x, y, width, height}];
    [layer setCornerRadius:4.0];
    if (!activeCopy)
    {
      [v82 luminance];
      if (v55 <= 0.5)
      {
        [layer2 setForegroundColor:{objc_msgSend(v82, "CGColor")}];
        lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
        [layer setBackgroundColor:{objc_msgSend(lightGrayColor, "CGColor")}];

        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [layer setBorderColor:{objc_msgSend(clearColor, "CGColor")}];

        [layer setBorderWidth:0.0];
      }

      else
      {
        clearColor2 = [MEMORY[0x1E69DC888] clearColor];
        [layer2 setForegroundColor:{objc_msgSend(clearColor2, "CGColor")}];

        clearColor3 = [MEMORY[0x1E69DC888] clearColor];
        [layer setBackgroundColor:{objc_msgSend(clearColor3, "CGColor")}];

        [layer setBorderWidth:2.0];
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [layer setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];
      }

      highlightLayers = [(SXHighlightController *)selfCopy highlightLayers];
      [highlightLayers addObject:layer2];

      highlightLayers2 = [(SXHighlightController *)selfCopy highlightLayers];
      v63 = highlightLayers2;
      v64 = layer;
      goto LABEL_23;
    }

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer2 setForegroundColor:{objc_msgSend(blackColor, "CGColor")}];

    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [layer setBackgroundColor:{objc_msgSend(systemYellowColor, "CGColor")}];

    if (!reload)
    {
      [v80 sizeOfScrollViewEnclosingCanvas];
      v50 = v49 - heightCopy;
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
    activeLayers = [(SXHighlightController *)selfCopy activeLayers];
    [activeLayers addObject:layer];

    highlightLayers2 = [(SXHighlightController *)selfCopy activeLayers];
    v63 = highlightLayers2;
    v64 = layer2;
LABEL_23:
    [highlightLayers2 addObject:v64];

    layer3 = [directLayerHost layer];
    layer4 = [directLayerHost layer];
    [layer3 insertSublayer:layer below:layer4];

    layer5 = [directLayerHost layer];
    layer6 = [directLayerHost layer];
    [layer5 insertSublayer:layer2 below:layer6];

    storage2 = v79;
  }
}

- (void)removeActiveLayers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeLayers = [(SXHighlightController *)self activeLayers];
  v4 = [activeLayers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(activeLayers);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [activeLayers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  activeLayers2 = [(SXHighlightController *)self activeLayers];
  [activeLayers2 removeAllObjects];
}

- (void)clearHighlights
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  highlightLayers = [(SXHighlightController *)self highlightLayers];
  v4 = [highlightLayers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(highlightLayers);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [highlightLayers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  highlightLayers2 = [(SXHighlightController *)self highlightLayers];
  [highlightLayers2 removeAllObjects];

  [(SXHighlightController *)self removeActiveLayers];
}

@end