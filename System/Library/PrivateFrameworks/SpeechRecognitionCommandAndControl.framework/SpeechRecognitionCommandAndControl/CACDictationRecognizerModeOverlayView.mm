@interface CACDictationRecognizerModeOverlayView
- (CACDictationRecognizerModeOverlayView)initWithFrame:(CGRect)frame;
- (CGRect)boundsForLastReload;
- (id)_createInvertedMaskedImage:(id)image withColor:(id)color;
- (id)_imageForCurrentDictiationRecognizerMode;
- (id)imageBundle;
- (void)_addIconContrasted:(BOOL)contrasted;
- (void)_updateOverlayImage;
- (void)setDictationRecognizerMode:(int)mode;
- (void)setImageRect:(CGRect)rect withColor:(id)color;
@end

@implementation CACDictationRecognizerModeOverlayView

- (CACDictationRecognizerModeOverlayView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CACDictationRecognizerModeOverlayView;
  return [(CACDictationRecognizerModeOverlayView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setImageRect:(CGRect)rect withColor:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (!CGRectEqualToRect(self->_imageRect, v12))
  {
    self->_imageRect.origin.x = x;
    self->_imageRect.origin.y = y;
    self->_imageRect.size.width = width;
    self->_imageRect.size.height = height;
    objc_storeStrong(&self->_tintColor, color);
    [(CACDictationRecognizerModeOverlayView *)self _updateOverlayImage];
  }
}

- (void)setDictationRecognizerMode:(int)mode
{
  if (self->_dictationRecognizerMode != mode)
  {
    self->_dictationRecognizerMode = mode;
    [(CACDictationRecognizerModeOverlayView *)self _updateOverlayImage];
  }
}

- (id)_createInvertedMaskedImage:(id)image withColor:(id)color
{
  v5 = MEMORY[0x277CBF758];
  colorCopy = color;
  imageCopy = image;
  v8 = [[v5 alloc] initWithImage:imageCopy];
  v9 = [MEMORY[0x277CBF750] filterWithName:@"CIColorInvert"];
  [v9 setValue:v8 forKey:*MEMORY[0x277CBFAF0]];
  v27 = [MEMORY[0x277CBF740] contextWithOptions:0];
  outputImage = [v9 outputImage];
  [v8 extent];
  v11 = [v27 createCGImage:outputImage fromRect:?];

  Width = CGImageGetWidth(v11);
  Height = CGImageGetHeight(v11);
  BitsPerComponent = CGImageGetBitsPerComponent(v11);
  BitsPerPixel = CGImageGetBitsPerPixel(v11);
  BytesPerRow = CGImageGetBytesPerRow(v11);
  DataProvider = CGImageGetDataProvider(v11);
  v18 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, 0, 1);
  v19 = [imageCopy _flatImageWithColor:colorCopy];

  cGImage = [v19 CGImage];
  v21 = CGImageCreateWithMask(cGImage, v18);
  CGImageRelease(v18);
  v22 = MEMORY[0x277D755B8];
  [imageCopy scale];
  v24 = v23;

  v25 = [v22 imageWithCGImage:v21 scale:0 orientation:v24];
  CGImageRelease(v21);

  return v25;
}

- (void)_updateOverlayImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CACDictationRecognizerModeOverlayView__updateOverlayImage__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__CACDictationRecognizerModeOverlayView__updateOverlayImage__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) subviews];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];

  [*(a1 + 32) frame];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [*(a1 + 32) _addIconContrasted:1];
  }

  [*(a1 + 32) _addIconContrasted:0];
  return [*(a1 + 32) setNeedsDisplay];
}

- (void)_addIconContrasted:(BOOL)contrasted
{
  contrastedCopy = contrasted;
  v41[4] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [(CACDictationRecognizerModeOverlayView *)self addSubview:v5];
  v6 = objc_alloc(MEMORY[0x277D755E8]);
  _imageForCurrentDictiationRecognizerMode = [(CACDictationRecognizerModeOverlayView *)self _imageForCurrentDictiationRecognizerMode];
  v8 = [v6 initWithImage:_imageForCurrentDictiationRecognizerMode];

  [v8 setContentMode:0];
  p_imageRect = &self->_imageRect;
  [v8 setOrigin:{self->_imageRect.origin.x, self->_imageRect.origin.y}];
  v40 = v8;
  [v5 addSubview:v8];
  if (contrastedCopy)
  {
    v10 = [CACAdaptiveBackdropView contrastAdaptiveBackdropViewWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v11 layer];
  [layer setCaptureOnly:0];

  v13 = *MEMORY[0x277CDA610];
  layer2 = [v11 layer];
  [layer2 setCompositingFilter:v13];

  [v5 addSubview:v11];
  layer3 = [(CACDictationRecognizerModeOverlayView *)self layer];
  [layer3 setAllowsGroupBlending:0];

  _imageForCurrentDictiationRecognizerMode2 = [(CACDictationRecognizerModeOverlayView *)self _imageForCurrentDictiationRecognizerMode];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  if (contrastedCopy)
  {
    [_imageForCurrentDictiationRecognizerMode2 _flatImageWithColor:systemWhiteColor];
  }

  else
  {
    [(CACDictationRecognizerModeOverlayView *)self _createInvertedMaskedImage:_imageForCurrentDictiationRecognizerMode2 withColor:systemWhiteColor];
  }
  v18 = ;

  v39 = v18;
  v19 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v18];
  [v19 setContentMode:0];
  [v19 setOrigin:{p_imageRect->origin.x, p_imageRect->origin.y}];
  if (contrastedCopy)
  {
    [v19 frame];
    [v19 setFrame:{CACCGRectIncreasedByPercentage(v20, v21, v22, v23, 0.08)}];
  }

  [v5 addSubview:v19];
  array = [MEMORY[0x277CBEB18] array];
  topAnchor = [v11 topAnchor];
  topAnchor2 = [v19 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v41[0] = v35;
  bottomAnchor = [v11 bottomAnchor];
  bottomAnchor2 = [v19 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  v41[1] = v31;
  leadingAnchor = [v11 leadingAnchor];
  leadingAnchor2 = [v19 leadingAnchor];
  [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v26 = v36 = v5;
  v41[2] = v26;
  trailingAnchor = [v11 trailingAnchor];
  trailingAnchor2 = [v19 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  v41[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [array addObjectsFromArray:v30];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (id)_imageForCurrentDictiationRecognizerMode
{
  dictationRecognizerMode = self->_dictationRecognizerMode;
  if (dictationRecognizerMode > 1)
  {
    v4 = @"dication-mode-numerical";
    if (dictationRecognizerMode != 2)
    {
      v4 = 0;
    }

    if (dictationRecognizerMode == 3)
    {
      v3 = @"dication-mode-alphabetical";
    }

    else
    {
      v3 = v4;
    }

    goto LABEL_11;
  }

  if (dictationRecognizerMode)
  {
    if (dictationRecognizerMode == 1)
    {
      v3 = @"dication-mode-commandsonly";
    }

    else
    {
      v3 = 0;
    }

LABEL_11:
    v5 = MEMORY[0x277D755B8];
    imageBundle = [(CACDictationRecognizerModeOverlayView *)self imageBundle];
    v7 = [v5 imageNamed:v3 inBundle:imageBundle];

    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (id)imageBundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CACDictationRecognizerModeOverlayView_imageBundle__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  if (imageBundle_onceToken_0 != -1)
  {
    dispatch_once(&imageBundle_onceToken_0, block);
  }

  return imageBundle_sImageBundle_0;
}

uint64_t __52__CACDictationRecognizerModeOverlayView_imageBundle__block_invoke()
{
  imageBundle_sImageBundle_0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (CGRect)boundsForLastReload
{
  x = self->_boundsForLastReload.origin.x;
  y = self->_boundsForLastReload.origin.y;
  width = self->_boundsForLastReload.size.width;
  height = self->_boundsForLastReload.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end