@interface UIStatusBarItemView
+ (id)createViewForItem:(id)item withData:(id)data actions:(int)actions foregroundStyle:(id)style;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UIStatusBarItemView)initWithItem:(id)item data:(id)data actions:(int)actions style:(id)style;
- (UIStatusBarLayoutManager)layoutManager;
- (double)adjustFrameToNewSize:(double)size;
- (double)neededSizeForImageSet:(id)set;
- (double)setStatusBarData:(id)data actions:(int)actions;
- (double)shadowPadding;
- (double)standardPadding;
- (double)updateContentsAndWidth;
- (id)cachedImageWithText:(id)text truncatedWithEllipsesAtMaxWidth:(double)width letterSpacing:(double)spacing;
- (id)description;
- (id)foregroundView;
- (id)imageFromImageContextClippedToWidth:(double)width;
- (id)imageWithShadowNamed:(id)named;
- (id)imageWithText:(id)text shouldCache:(BOOL)cache;
- (id)textFont;
- (int64_t)legibilityStyle;
- (int64_t)textAlignment;
- (void)_tintContentLayerIfNeeded;
- (void)beginDisablingRasterization;
- (void)beginImageContextWithMinimumWidth:(double)width;
- (void)clearCachedTextImage;
- (void)dealloc;
- (void)endDisablingRasterization;
- (void)endImageContext;
- (void)setContentMode:(int64_t)mode;
- (void)setLayerContentsImage:(id)image;
- (void)setVisible:(BOOL)visible frame:(CGRect)frame duration:(double)duration;
- (void)setVisible:(BOOL)visible settingAlpha:(BOOL)alpha;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIStatusBarItemView

+ (id)createViewForItem:(id)item withData:(id)data actions:(int)actions foregroundStyle:(id)style
{
  if (!item)
  {
    return 0;
  }

  v6 = *&actions;
  styleCopy = style;
  dataCopy = data;
  itemCopy = item;
  v12 = [objc_alloc(objc_msgSend(itemCopy "viewClass"))];

  return v12;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = UIStatusBarItemView;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"contents"];
  }

  return v5;
}

- (UIStatusBarItemView)initWithItem:(id)item data:(id)data actions:(int)actions style:(id)style
{
  v7 = *&actions;
  itemCopy = item;
  dataCopy = data;
  styleCopy = style;
  [styleCopy height];
  v15 = v14;
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  usesVerticalLayout = [styleCopy usesVerticalLayout];
  if (usesVerticalLayout)
  {
    v21 = v15;
  }

  else
  {
    v21 = v18;
  }

  if (usesVerticalLayout)
  {
    v22 = v19;
  }

  else
  {
    v22 = v15;
  }

  v23 = [(UIView *)self initWithFrame:v16, v17, v21, v22];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_item, item);
    v24->_imageContext = 0;
    [styleCopy scale];
    v24->_imageContextScale = v25;
    objc_storeStrong(&v24->_foregroundStyle, style);
    [(UIStatusBarItemView *)v24 updateForNewStyle:styleCopy];
    layer = [(UIView *)v24 layer];
    [layer setAllowsGroupOpacity:0];

    [(UIStatusBarItemView *)v24 setAllowsUpdates:1];
    [(UIView *)v24 setUserInteractionEnabled:[(UIStatusBarItemView *)v24 allowsUserInteraction]];
    [(UIStatusBarItemView *)v24 updateForNewData:dataCopy actions:v7];
    [(UIStatusBarItemView *)v24 updateContentsAndWidth];
  }

  return v24;
}

- (void)dealloc
{
  imageContext = self->_imageContext;
  if (imageContext)
  {
    CFRelease(imageContext);
  }

  v4.receiver = self;
  v4.super_class = UIStatusBarItemView;
  [(UIView *)&v4 dealloc];
}

- (id)foregroundView
{
  superview = [(UIView *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    superview2 = [(UIView *)self superview];
  }

  else
  {
    superview2 = 0;
  }

  return superview2;
}

- (void)setVisible:(BOOL)visible settingAlpha:(BOOL)alpha
{
  self->_visible = visible;
  if (alpha)
  {
    v4 = 0.0;
    if (visible)
    {
      v4 = 1.0;
    }

    [(UIView *)self setAlpha:v4];
  }
}

- (void)setVisible:(BOOL)visible frame:(CGRect)frame duration:(double)duration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = duration > 0.0 && +[UIView _isInAnimationBlockWithAnimationsEnabled];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__UIStatusBarItemView_setVisible_frame_duration___block_invoke;
  v15[3] = &__block_descriptor_41_e24_v24__0___v___8___v__B_16l;
  *&v15[4] = duration;
  visibleCopy = visible;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__UIStatusBarItemView_setVisible_frame_duration___block_invoke_2;
  v13[3] = &unk_1E70F35E0;
  v13[4] = self;
  visibleCopy2 = visible;
  [UIView conditionallyAnimate:v12 withAnimation:v15 layout:v13 completion:0];
  [(UIView *)self setFrame:x, y, width, height];
}

uint64_t __49__UIStatusBarItemView_setVisible_frame_duration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = v3 * 0.333333333;
  if (!*(a1 + 40))
  {
    v4 = 0.0;
  }

  return [UIView animateWithDuration:32 delay:a2 options:a3 animations:v3 * 0.666666667 completion:v4];
}

- (double)setStatusBarData:(id)data actions:(int)actions
{
  v4 = *&actions;
  dataCopy = data;
  v7 = 0.0;
  if ([(UIStatusBarItemView *)self allowsUpdates]&& [(UIStatusBarItemView *)self updateForNewData:dataCopy actions:v4])
  {
    [(UIStatusBarItemView *)self updateContentsAndWidth];
    v7 = v8;
  }

  return v7;
}

- (int64_t)legibilityStyle
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  legibilityStyle = [foregroundStyle legibilityStyle];

  return legibilityStyle;
}

- (void)setLayerContentsImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (!imageCopy || ([imageCopy image], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    layer = [(UIView *)self layer];
    [layer setContents:0];

    layer2 = [(UIView *)self layer];
    [layer2 setMask:0];

    legibilityView = self->_legibilityView;
    if (legibilityView)
    {
      [(UIView *)legibilityView removeFromSuperview];
      v20 = self->_legibilityView;
      self->_legibilityView = 0;
    }

    layer3 = [(UIView *)self layer];
    [layer3 setContentsMultiplyColor:0];
    goto LABEL_10;
  }

  legibilityStyle = [(UIStatusBarItemView *)self legibilityStyle];
  if (legibilityStyle)
  {
    v8 = legibilityStyle;
    layer4 = [(UIView *)self layer];
    [layer4 setContents:0];

    v10 = self->_legibilityView;
    if (!v10)
    {
      v11 = [[_UILegibilitySettings alloc] initWithStyle:v8];
      v12 = [_UILegibilityView alloc];
      [(UIStatusBarItemView *)self legibilityStrength];
      v13 = [(_UILegibilityView *)v12 initWithSettings:v11 strength:0 image:?];
      v14 = self->_legibilityView;
      self->_legibilityView = v13;

      [(UIView *)self bounds];
      [(UIView *)self->_legibilityView setFrame:?];
      [(UIView *)self->_legibilityView setAutoresizingMask:18];
      [(UIView *)self->_legibilityView setContentMode:[(UIView *)self contentMode]];
      [(UIView *)self insertSubview:self->_legibilityView atIndex:0];

      v10 = self->_legibilityView;
    }

    layer3 = [v5 image];
    shadowImage = [v5 shadowImage];
    [(_UILegibilityView *)v10 setImage:layer3 shadowImage:shadowImage];

LABEL_10:
    goto LABEL_11;
  }

  v21 = self->_legibilityView;
  if (v21)
  {
    [(UIView *)v21 removeFromSuperview];
    v22 = self->_legibilityView;
    self->_legibilityView = 0;
  }

  if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
  {
    image = [v5 image];
    imageOrientation = [image imageOrientation];

    if (imageOrientation == 4)
    {
      memset(&v31, 0, sizeof(v31));
      CGAffineTransformMakeScale(&v31, -1.0, 1.0);
      layer5 = [(UIView *)self layer];
      v30 = v31;
      [layer5 setAffineTransform:&v30];
    }
  }

  image2 = [v5 image];
  cGImage = [image2 CGImage];
  layer6 = [(UIView *)self layer];
  [layer6 setContents:cGImage];

  image3 = [v5 image];
  [image3 scale];
  [(UIView *)self setContentScaleFactor:?];

  [(UIStatusBarItemView *)self _tintContentLayerIfNeeded];
LABEL_11:
}

- (double)adjustFrameToNewSize:(double)size
{
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  usesVerticalLayout = [foregroundStyle usesVerticalLayout];

  if (usesVerticalLayout)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if (v15 == size)
  {
    return 0.0;
  }

  v16 = size - v15;
  if (usesVerticalLayout)
  {
    sizeCopy = v10;
  }

  else
  {
    sizeCopy = size;
  }

  if (usesVerticalLayout)
  {
    sizeCopy2 = size;
  }

  else
  {
    sizeCopy2 = v12;
  }

  [(UIView *)self setFrame:v6, v8, sizeCopy, sizeCopy2];
  return v16;
}

- (double)neededSizeForImageSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  v6 = 0.0;
  if (setCopy)
  {
    image = [setCopy image];

    if (image)
    {
      image2 = [v5 image];
      [image2 size];
      v6 = v9;
      v11 = v10;

      foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
      if ([foregroundStyle usesVerticalLayout])
      {
        v6 = v11;
      }
    }
  }

  return v6;
}

- (void)_tintContentLayerIfNeeded
{
  if ([(UIStatusBarItemView *)self shouldTintContentImage])
  {
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    tintColor = [foregroundStyle tintColor];
    cGColor = [tintColor CGColor];
    layer = [(UIView *)self layer];
    [layer setContentsMultiplyColor:cGColor];
  }

  else
  {
    foregroundStyle = [(UIView *)self layer];
    [foregroundStyle setContentsMultiplyColor:0];
  }
}

- (double)updateContentsAndWidth
{
  contentsImage = [(UIStatusBarItemView *)self contentsImage];
  if (contentsImage)
  {
    [(UIStatusBarItemView *)self neededSizeForImageSet:contentsImage];
    [(UIStatusBarItemView *)self adjustFrameToNewSize:?];
    v5 = v4;
    image = [contentsImage image];

    if (image)
    {
      [(UIStatusBarItemView *)self setLayerContentsImage:contentsImage];
    }
  }

  else
  {
    contentsIOSurface = [(UIStatusBarItemView *)self contentsIOSurface];
    if (contentsIOSurface)
    {
      v8 = contentsIOSurface;
      [(UIStatusBarItemView *)self setLayerContentsImage:0];
      [(UIView *)self _currentScreenScale];
      v10 = v9;
      layer = [(UIView *)self layer];
      [layer setContents:v8];

      layer2 = [(UIView *)self layer];
      [layer2 setContentsScale:v10];

      [(UIStatusBarItemView *)self _tintContentLayerIfNeeded];
      -[UIStatusBarItemView adjustFrameToNewSize:](self, "adjustFrameToNewSize:", [v8 width] / v10);
      v5 = v13;
    }

    else
    {
      [(UIStatusBarItemView *)self neededSizeForImageSet:0];
      [(UIStatusBarItemView *)self adjustFrameToNewSize:?];
      v5 = v14;
    }
  }

  return v5;
}

- (void)setContentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = UIStatusBarItemView;
  [(UIView *)&v5 setContentMode:?];
  [(UIView *)self->_legibilityView setContentMode:mode];
}

- (id)textFont
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [foregroundStyle textFontForStyle:{-[UIStatusBarItemView textStyle](self, "textStyle")}];

  return v4;
}

- (int64_t)textAlignment
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  usesVerticalLayout = [foregroundStyle usesVerticalLayout];

  return usesVerticalLayout;
}

- (double)standardPadding
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  [foregroundStyle standardPadding];
  v4 = v3;

  return v4;
}

- (double)shadowPadding
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  [foregroundStyle shadowPadding];
  v4 = v3;

  return v4;
}

- (void)beginImageContextWithMinimumWidth:(double)width
{
  v4 = ceil(width);
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  usesVerticalLayout = [foregroundStyle usesVerticalLayout];

  imageContext = self->_imageContext;
  if (!imageContext)
  {
    goto LABEL_7;
  }

  if (usesVerticalLayout)
  {
    Height = CGBitmapContextGetHeight(imageContext);
  }

  else
  {
    Height = CGBitmapContextGetWidth(imageContext);
  }

  if (v4 != Height / self->_imageContextScale)
  {
    CFRelease(self->_imageContext);
    self->_imageContext = 0;
    goto LABEL_7;
  }

  v16 = self->_imageContext;
  if (!v16)
  {
LABEL_7:
    if (v4 > 0.0)
    {
      foregroundStyle2 = [(UIStatusBarItemView *)self foregroundStyle];
      [foregroundStyle2 height];
      v11 = v10;

      if (usesVerticalLayout)
      {
        v12 = v11;
      }

      else
      {
        v12 = v4;
      }

      if (usesVerticalLayout)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      _UIGraphicsBeginImageContextWithOptions(0, 0, v12, v13, self->_imageContextScale);
      ContextStack = GetContextStack(0);
      if (*ContextStack <= 0)
      {
        self->_imageContext = 0;
      }

      else
      {
        v15 = ContextStack[3 * (*ContextStack - 1) + 1];
        self->_imageContext = v15;
        if (v15)
        {

          CFRetain(v15);
        }
      }
    }

    return;
  }

  Width = CGBitmapContextGetWidth(self->_imageContext);
  v20.size.height = CGBitmapContextGetHeight(self->_imageContext);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = Width;
  CGContextClearRect(v16, v20);
  v18 = self->_imageContext;

  UIGraphicsPushContext(v18);
}

- (id)imageFromImageContextClippedToWidth:(double)width
{
  imageContext = self->_imageContext;
  if (imageContext && (Image = CGBitmapContextCreateImage(imageContext)) != 0)
  {
    v7 = Image;
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    if ([foregroundStyle usesVerticalLayout])
    {
      Width = CGImageGetWidth(v7);
      Height = self->_imageContextScale * width;
    }

    else
    {
      Width = self->_imageContextScale * width;
      Height = CGImageGetHeight(v7);
    }

    v16.origin.x = *MEMORY[0x1E695EFF8];
    v16.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v16.size.width = Width;
    v16.size.height = Height;
    v12 = CGImageCreateWithImageInRect(v7, v16);
    if (v12)
    {
      v13 = v12;
      v11 = [UIImage imageWithCGImage:v12 scale:0 orientation:self->_imageContextScale];
      CFRelease(v13);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)endImageContext
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  if (v4 == self->_imageContext)
  {
    v5 = GetContextStack(0);

    PopContextFromStack(v5);
  }
}

- (id)imageWithText:(id)text shouldCache:(BOOL)cache
{
  textCopy = text;
  if ([textCopy length])
  {
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    item = [(UIStatusBarItemView *)self item];
    type = [item type];
    textAlignment = [(UIStatusBarItemView *)self textAlignment];
    textStyle = [(UIStatusBarItemView *)self textStyle];
    legibilityStyle = [(UIStatusBarItemView *)self legibilityStyle];
    [(UIStatusBarItemView *)self legibilityStrength];
    LOBYTE(v16) = cache;
    v14 = [foregroundStyle imageWithText:textCopy ofItemType:type forWidth:2 lineBreakMode:textAlignment letterSpacing:textStyle textAlignment:legibilityStyle style:1.79769313e308 withLegibilityStyle:0.0 legibilityStrength:v13 shouldCache:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)cachedImageWithText:(id)text truncatedWithEllipsesAtMaxWidth:(double)width letterSpacing:(double)spacing
{
  textCopy = text;
  if (![textCopy length])
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (![(NSString *)self->_lastGeneratedTextImageText isEqualToString:textCopy])
  {
    goto LABEL_8;
  }

  lastGeneratedTextImage = self->_lastGeneratedTextImage;
  if (!lastGeneratedTextImage)
  {
    goto LABEL_8;
  }

  image = [(_UILegibilityImageSet *)lastGeneratedTextImage image];
  [image size];
  if (v11 > width)
  {

LABEL_8:
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    item = [(UIStatusBarItemView *)self item];
    type = [item type];
    textAlignment = [(UIStatusBarItemView *)self textAlignment];
    textStyle = [(UIStatusBarItemView *)self textStyle];
    legibilityStyle = [(UIStatusBarItemView *)self legibilityStyle];
    [(UIStatusBarItemView *)self legibilityStrength];
    v21 = [foregroundStyle imageWithText:textCopy ofItemType:type forWidth:4 lineBreakMode:textAlignment letterSpacing:textStyle textAlignment:legibilityStyle style:width withLegibilityStyle:spacing legibilityStrength:v20];
    v22 = self->_lastGeneratedTextImage;
    self->_lastGeneratedTextImage = v21;

    self->_lastGeneratedTextImageLetterSpacing = spacing;
    goto LABEL_9;
  }

  v13 = vabdd_f64(self->_lastGeneratedTextImageLetterSpacing, spacing);

  if (v13 > 2.22044605e-16)
  {
    goto LABEL_8;
  }

LABEL_9:
  v12 = self->_lastGeneratedTextImage;
LABEL_10:

  return v12;
}

- (void)clearCachedTextImage
{
  lastGeneratedTextImageText = self->_lastGeneratedTextImageText;
  self->_lastGeneratedTextImageText = 0;

  lastGeneratedTextImage = self->_lastGeneratedTextImage;
  self->_lastGeneratedTextImage = 0;

  self->_lastGeneratedTextImageLetterSpacing = 0.0;
}

- (id)imageWithShadowNamed:(id)named
{
  namedCopy = named;
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  legibilityStyle = [(UIStatusBarItemView *)self legibilityStyle];
  [(UIStatusBarItemView *)self legibilityStrength];
  v7 = [foregroundStyle imageNamed:namedCopy withLegibilityStyle:legibilityStyle legibilityStrength:?];

  return v7;
}

- (void)beginDisablingRasterization
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:0x1EFB9C6F0 object:self];
}

- (void)endDisablingRasterization
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:0x1EFB9C710 object:self];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy)
  {
    [(UIStatusBarItemView *)self endDisablingRasterization];
  }

  v5.receiver = self;
  v5.super_class = UIStatusBarItemView;
  [(UIView *)&v5 willMoveToWindow:windowCopy];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = UIStatusBarItemView;
  v3 = [(UIView *)&v8 description];
  item = [(UIStatusBarItemView *)self item];
  v5 = [item description];
  v6 = [v3 stringByAppendingFormat:@" [Item = %@]", v5];

  return v6;
}

- (UIStatusBarLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  return WeakRetained;
}

@end