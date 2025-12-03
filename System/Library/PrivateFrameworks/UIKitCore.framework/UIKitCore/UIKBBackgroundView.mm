@interface UIKBBackgroundView
- (NSString)cacheKey;
- (UIKBBackgroundView)initWithFrame:(CGRect)frame;
- (double)cachedWidth;
- (id)cacheKeysForRenderFlags:(id)flags;
- (int64_t)assetIdiom;
- (void)displayLayer:(id)layer;
- (void)drawContentsOfRenderers:(id)renderers;
- (void)refreshStyleForKeyplane:(id)keyplane inputTraits:(id)traits;
- (void)setRenderConfig:(id)config;
@end

@implementation UIKBBackgroundView

- (UIKBBackgroundView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UIKBBackgroundView;
  v3 = [(UIKBSplitImageView *)&v8 initWithFrame:1 canStretchAsFullWidth:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    geometryCacheKey = v3->_geometryCacheKey;
    v3->_geometryCacheKey = &stru_1EFB14550;

    [(UIView *)v4 setUserInteractionEnabled:0];
    v6 = v4;
  }

  return v4;
}

- (void)refreshStyleForKeyplane:(id)keyplane inputTraits:(id)traits
{
  keyplaneCopy = keyplane;
  traitsCopy = traits;
  objc_storeStrong(&self->_keyplane, keyplane);
  objc_storeStrong(&self->_inputTraits, traits);
  [(UIView *)self setOpaque:0];
  v8 = [(UIKBTree *)self->_keyplane cachedKeysByKeyName:@"Candidate-Selection"];
  self->_hasCandidateKeys = v8 != 0;

  if (self->_hasCandidateKeys)
  {
    visualStyle = 101;
  }

  else
  {
    visualStyle = [keyplaneCopy visualStyle];
  }

  self->_visualStyle = visualStyle;
  self->_isSplit = [(UIKBTree *)self->_keyplane isSplit];
  self->_centerFilled = [(UIKBScreenTraits *)self->_screenTraits centerFilled];
  if (self->_isSplit && (-[UIKBSplitImageView prepareForDisplay:](self, "prepareForDisplay:", 1), [keyplaneCopy frameForKeylayoutName:@"split-left"], self->_splitLeftRect.origin.x = v10, self->_splitLeftRect.origin.y = v11, self->_splitLeftRect.size.width = v12, self->_splitLeftRect.size.height = v13, objc_msgSend(keyplaneCopy, "frameForKeylayoutName:", @"split-right"), self->_splitRightRect.origin.x = v14, self->_splitRightRect.origin.y = v15, self->_splitRightRect.size.width = v16, self->_splitRightRect.size.height = v17, size = self->_splitLeftRect.size, self->_splitLeftCacheRect.origin = self->_splitLeftRect.origin, self->_splitLeftCacheRect.size = size, v19 = self->_splitRightRect.size, self->_splitRightCacheRect.origin = self->_splitRightRect.origin, self->_splitRightCacheRect.size = v19, self->_isSplit) && !self->_centerFilled)
  {
    [(UIKBSplitImageView *)self prepareForDisplay:1];
    v23 = [(UIView *)self _clipCornersOfView:self];
    self->_topCorners = v23 | 0xC;
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu, %g:%g", v23 | 0xC, *&self->_splitLeftRect.size.height, *&self->_splitRightRect.size.height];
    [(UIKBBackgroundView *)self setGeometryCacheKey:v24];

    v25 = UIKBCornerRadius();
    v26 = v25 + v25;
    self->_splitLeftCacheRect.size.width = v26;
    self->_splitRightCacheRect.size.width = v26;
    self->_splitRightCacheRect.origin.x = self->_splitLeftCacheRect.size.width + 3.0;
  }

  else
  {
    [(UIKBSplitImageView *)self prepareForDisplay:0];
    v20 = MEMORY[0x1E696AD98];
    [(UIView *)self frame];
    v22 = [v20 numberWithInt:v21];
    [(UIKBBackgroundView *)self setGeometryCacheKey:v22];
  }

  [(UIView *)self setNeedsDisplay];
}

- (void)drawContentsOfRenderers:(id)renderers
{
  renderersCopy = renderers;
  v4 = [UIKBRenderingContext renderingContextForRenderConfig:self->_renderConfig];
  v5 = [UIKBRenderFactory lightweightFactoryForVisualStyle:[(UIKBTree *)self->_keyplane visualStyling] renderingContext:v4];
  if (v5)
  {
    [(UIView *)self contentScaleFactor];
    [v5 setScale:?];
    [(UIKBScreenTraits *)self->_screenTraits stretchFactor];
    [v5 setStretchFactor:?];
    v6 = [v5 backgroundTraitsForKeyplane:self->_keyplane];
    geometry = [v6 geometry];
    splitLeftRect = [geometry splitLeftRect];
    if (splitLeftRect)
    {
      v9 = splitLeftRect;
      geometry2 = [v6 geometry];
      splitRightRect = [geometry2 splitRightRect];

      if (!splitRightRect)
      {
LABEL_8:
        v20 = [renderersCopy objectAtIndex:0];
        [v20 renderBackgroundTraits:v6];

        goto LABEL_9;
      }

      if (self->_centerFilled)
      {
        geometry3 = [v6 geometry];
        [geometry3 setSplitLeftRect:0];

        geometry = [v6 geometry];
        [geometry setSplitRightRect:0];
      }

      else
      {
        topCorners = self->_topCorners;
        geometry4 = [v6 geometry];
        [geometry4 setRoundRectCorners:topCorners];

        v15 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_splitLeftCacheRect.origin.x, self->_splitLeftCacheRect.origin.y, self->_splitLeftCacheRect.size.width, self->_splitLeftCacheRect.size.height}];
        geometry5 = [v6 geometry];
        [geometry5 setSplitLeftRect:v15];

        v17 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_splitRightCacheRect.origin.x, self->_splitRightCacheRect.origin.y, self->_splitRightCacheRect.size.width, self->_splitRightCacheRect.size.height}];
        geometry6 = [v6 geometry];
        [geometry6 setSplitRightRect:v17];

        v19 = UIKBCornerRadius();
        geometry = [v6 geometry];
        [geometry setRoundRectRadius:v19];
      }
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (NSString)cacheKey
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_visualStyle];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_centerFilled];
  v6 = [v3 arrayWithObjects:{v4, v5, self->_geometryCacheKey, 0}];
  v7 = [v6 componentsJoinedByString:@""];;

  return v7;
}

- (id)cacheKeysForRenderFlags:(id)flags
{
  v13[1] = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  cacheKey = [(UIKBBackgroundView *)self cacheKey];
  firstObject = [flagsCopy firstObject];

  integerValue = [firstObject integerValue];
  renderConfig = [(UIKBBackgroundView *)self renderConfig];
  v9 = [UIKBRenderFactory cacheKeyForString:cacheKey withRenderFlags:integerValue renderConfig:renderConfig];

  v12 = firstObject;
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v10;
}

- (void)setRenderConfig:(id)config
{
  configCopy = config;
  renderConfig = [(UIKBBackgroundView *)self renderConfig];
  if (renderConfig)
  {
    renderConfig2 = [(UIKBBackgroundView *)self renderConfig];
    lightKeyboard = [renderConfig2 lightKeyboard];
    v8 = lightKeyboard ^ [(UIKBRenderConfig *)configCopy lightKeyboard];
  }

  else
  {
    v8 = 1;
  }

  if ([(UIKBRenderConfig *)configCopy usesCompactKeycapsFont]&& [(UIKBTree *)self->_keyplane isKanaKeyboard])
  {
    [(UIKBRenderConfig *)configCopy setUsesCompactKeycapsFont:0];
    usesCompactKeycapsFont = [(UIKBRenderConfig *)self->_renderConfig usesCompactKeycapsFont];
    v8 = usesCompactKeycapsFont ^ [(UIKBRenderConfig *)configCopy usesCompactKeycapsFont];
  }

  renderConfig = self->_renderConfig;
  self->_renderConfig = configCopy;

  if (configCopy)
  {
    if (v8)
    {
      [(UIView *)self setNeedsDisplay];
    }

    layer = [(UIView *)self layer];
    contents = [layer contents];

    if (!contents)
    {

      [(UIView *)self setNeedsDisplay];
    }
  }
}

- (void)displayLayer:(id)layer
{
  if ([(UIView *)self isHidden])
  {
    return;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (self->_isSplit)
  {
    v4 = self->_splitRightCacheRect.size.width + 3.0;
    v6 = self->_splitLeftCacheRect.size.width + 3.0;
    [(UIKBBackgroundView *)self cachedWidth];
    v7 = v10;
    [(UIKBBackgroundView *)self cachedWidth];
    v5 = v11;
    v9 = self->_splitLeftCacheRect.size.width + 1.0;
    v8 = self->_splitRightCacheRect.size.width + 1.0;
  }

  layer = [(UIView *)self layer];
  [layer setBackgroundColor:0];

  visualStyle = self->_visualStyle;
  if (visualStyle == 5 || visualStyle == 105 || [(UITextInputTraits *)self->_inputTraits keyboardType]== 127)
  {
    layer2 = [(UIView *)self layer];
    [layer2 setContents:0];

    [(UIKBSplitImageView *)self setImage:0 splitLeft:0 splitRight:0 keyplane:0];
    if (-[UITextInputTraits keyboardType](self->_inputTraits, "keyboardType") != 127 && -[UITextInputTraits keyboardType](self->_inputTraits, "keyboardType") != 4 && -[UITextInputTraits keyboardType](self->_inputTraits, "keyboardType") != 11 && ([UIApp _isSpringBoard] & 1) != 0)
    {
      return;
    }

    window = [(UIView *)self window];
    _isTextEffectsWindow = [window _isTextEffectsWindow];

    if (_isTextEffectsWindow)
    {
      return;
    }

    renderConfig = [(UIKBBackgroundView *)self renderConfig];
    v31 = +[_UIBackdropViewSettings settingsForStyle:graphicsQuality:](_UIBackdropViewSettings, "settingsForStyle:graphicsQuality:", [renderConfig backdropStyle], +[UIKBRenderFactory _graphicsQuality](UIKBRenderFactory, "_graphicsQuality"));

    [v31 grayscaleTintLevel];
    v19 = v18;
    [v31 grayscaleTintAlpha];
    v21 = [UIColor colorWithWhite:v19 alpha:v20];
    cGColor = [v21 CGColor];
    layer3 = [(UIView *)self layer];
    [layer3 setBackgroundColor:cGColor];

LABEL_14:

    return;
  }

  if ([(UIKBRenderConfig *)self->_renderConfig lightKeyboard])
  {
    v24 = +[UIKeyboardCache sharedInstance];
    layoutName = [(UIKBTree *)self->_keyplane layoutName];
    v26 = [v24 displayImagesForView:self fromLayout:layoutName imageFlags:&unk_1EFE2C6A0];

    v31 = [v26 objectForKey:&unk_1EFE31288];

    if (v31)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v31;
        if ([v21 hasFormatColor])
        {
          v31 = [v21 imageWithRenderingMode:2];
        }

        else
        {
          v31 = v21;
        }
      }

      else
      {
        v21 = 0;
      }

      layer4 = [(UIView *)self layer];
      [layer4 setContents:0];

      if (self->_isSplit)
      {
        if (self->_centerFilled)
        {
          v28 = [v31 resizableImageWithCapInsets:{0.0, v9, 0.0, v8}];
          [(UIKBSplitImageView *)self setImage:v28 splitLeft:0 splitRight:0 keyplane:0];
        }

        else
        {
          v28 = [v31 _resizableImageWithSubimageInsets:0.0 resizeInsets:{0.0, 0.0, v4, 0.0, 0.0, 0.0, v7}];
          v29 = [v31 _resizableImageWithSubimageInsets:0.0 resizeInsets:{v6, 0.0, 0.0, 0.0, v5, 0.0, 0.0}];
          [(UIKBSplitImageView *)self setImage:0 splitLeft:v28 splitRight:v29 keyplane:self->_keyplane];
        }
      }

      else
      {
        [(UIKBSplitImageView *)self setImage:v31 splitLeft:0 splitRight:0 keyplane:0];
      }

      if (v21)
      {
        formatColor = [v21 formatColor];
        [(UIKBSplitImageView *)self setContentsMultiplyColor:formatColor];
      }

      else
      {
        [(UIKBSplitImageView *)self setContentsMultiplyColor:0];
      }

      goto LABEL_14;
    }
  }

  [(UIKBSplitImageView *)self setImage:0 splitLeft:0 splitRight:0 keyplane:0];
}

- (double)cachedWidth
{
  if (+[UIKeyboardCache enabled])
  {
    result = 1.0;
    if (self->_isSplit)
    {
      return self->_splitLeftCacheRect.size.width + self->_splitRightCacheRect.size.width + 3.0;
    }
  }

  else
  {
    [(UIView *)self frame];
    return v4;
  }

  return result;
}

- (int64_t)assetIdiom
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom;
}

@end