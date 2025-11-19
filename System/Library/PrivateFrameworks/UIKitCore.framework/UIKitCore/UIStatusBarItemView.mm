@interface UIStatusBarItemView
+ (id)createViewForItem:(id)a3 withData:(id)a4 actions:(int)a5 foregroundStyle:(id)a6;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIStatusBarItemView)initWithItem:(id)a3 data:(id)a4 actions:(int)a5 style:(id)a6;
- (UIStatusBarLayoutManager)layoutManager;
- (double)adjustFrameToNewSize:(double)a3;
- (double)neededSizeForImageSet:(id)a3;
- (double)setStatusBarData:(id)a3 actions:(int)a4;
- (double)shadowPadding;
- (double)standardPadding;
- (double)updateContentsAndWidth;
- (id)cachedImageWithText:(id)a3 truncatedWithEllipsesAtMaxWidth:(double)a4 letterSpacing:(double)a5;
- (id)description;
- (id)foregroundView;
- (id)imageFromImageContextClippedToWidth:(double)a3;
- (id)imageWithShadowNamed:(id)a3;
- (id)imageWithText:(id)a3 shouldCache:(BOOL)a4;
- (id)textFont;
- (int64_t)legibilityStyle;
- (int64_t)textAlignment;
- (void)_tintContentLayerIfNeeded;
- (void)beginDisablingRasterization;
- (void)beginImageContextWithMinimumWidth:(double)a3;
- (void)clearCachedTextImage;
- (void)dealloc;
- (void)endDisablingRasterization;
- (void)endImageContext;
- (void)setContentMode:(int64_t)a3;
- (void)setLayerContentsImage:(id)a3;
- (void)setVisible:(BOOL)a3 frame:(CGRect)a4 duration:(double)a5;
- (void)setVisible:(BOOL)a3 settingAlpha:(BOOL)a4;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIStatusBarItemView

+ (id)createViewForItem:(id)a3 withData:(id)a4 actions:(int)a5 foregroundStyle:(id)a6
{
  if (!a3)
  {
    return 0;
  }

  v6 = *&a5;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [objc_alloc(objc_msgSend(v11 "viewClass"))];

  return v12;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIStatusBarItemView;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"contents"];
  }

  return v5;
}

- (UIStatusBarItemView)initWithItem:(id)a3 data:(id)a4 actions:(int)a5 style:(id)a6
{
  v7 = *&a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  [v13 height];
  v15 = v14;
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  v20 = [v13 usesVerticalLayout];
  if (v20)
  {
    v21 = v15;
  }

  else
  {
    v21 = v18;
  }

  if (v20)
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
    objc_storeStrong(&v23->_item, a3);
    v24->_imageContext = 0;
    [v13 scale];
    v24->_imageContextScale = v25;
    objc_storeStrong(&v24->_foregroundStyle, a6);
    [(UIStatusBarItemView *)v24 updateForNewStyle:v13];
    v26 = [(UIView *)v24 layer];
    [v26 setAllowsGroupOpacity:0];

    [(UIStatusBarItemView *)v24 setAllowsUpdates:1];
    [(UIView *)v24 setUserInteractionEnabled:[(UIStatusBarItemView *)v24 allowsUserInteraction]];
    [(UIStatusBarItemView *)v24 updateForNewData:v12 actions:v7];
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
  v3 = [(UIView *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UIView *)self superview];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setVisible:(BOOL)a3 settingAlpha:(BOOL)a4
{
  self->_visible = a3;
  if (a4)
  {
    v4 = 0.0;
    if (a3)
    {
      v4 = 1.0;
    }

    [(UIView *)self setAlpha:v4];
  }
}

- (void)setVisible:(BOOL)a3 frame:(CGRect)a4 duration:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a5 > 0.0 && +[UIView _isInAnimationBlockWithAnimationsEnabled];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__UIStatusBarItemView_setVisible_frame_duration___block_invoke;
  v15[3] = &__block_descriptor_41_e24_v24__0___v___8___v__B_16l;
  *&v15[4] = a5;
  v16 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__UIStatusBarItemView_setVisible_frame_duration___block_invoke_2;
  v13[3] = &unk_1E70F35E0;
  v13[4] = self;
  v14 = a3;
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

- (double)setStatusBarData:(id)a3 actions:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = 0.0;
  if ([(UIStatusBarItemView *)self allowsUpdates]&& [(UIStatusBarItemView *)self updateForNewData:v6 actions:v4])
  {
    [(UIStatusBarItemView *)self updateContentsAndWidth];
    v7 = v8;
  }

  return v7;
}

- (int64_t)legibilityStyle
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [v2 legibilityStyle];

  return v3;
}

- (void)setLayerContentsImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 image], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v17 = [(UIView *)self layer];
    [v17 setContents:0];

    v18 = [(UIView *)self layer];
    [v18 setMask:0];

    legibilityView = self->_legibilityView;
    if (legibilityView)
    {
      [(UIView *)legibilityView removeFromSuperview];
      v20 = self->_legibilityView;
      self->_legibilityView = 0;
    }

    v15 = [(UIView *)self layer];
    [v15 setContentsMultiplyColor:0];
    goto LABEL_10;
  }

  v7 = [(UIStatusBarItemView *)self legibilityStyle];
  if (v7)
  {
    v8 = v7;
    v9 = [(UIView *)self layer];
    [v9 setContents:0];

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

    v15 = [v5 image];
    v16 = [v5 shadowImage];
    [(_UILegibilityView *)v10 setImage:v15 shadowImage:v16];

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
    v23 = [v5 image];
    v24 = [v23 imageOrientation];

    if (v24 == 4)
    {
      memset(&v31, 0, sizeof(v31));
      CGAffineTransformMakeScale(&v31, -1.0, 1.0);
      v25 = [(UIView *)self layer];
      v30 = v31;
      [v25 setAffineTransform:&v30];
    }
  }

  v26 = [v5 image];
  v27 = [v26 CGImage];
  v28 = [(UIView *)self layer];
  [v28 setContents:v27];

  v29 = [v5 image];
  [v29 scale];
  [(UIView *)self setContentScaleFactor:?];

  [(UIStatusBarItemView *)self _tintContentLayerIfNeeded];
LABEL_11:
}

- (double)adjustFrameToNewSize:(double)a3
{
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIStatusBarItemView *)self foregroundStyle];
  v14 = [v13 usesVerticalLayout];

  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if (v15 == a3)
  {
    return 0.0;
  }

  v16 = a3 - v15;
  if (v14)
  {
    v17 = v10;
  }

  else
  {
    v17 = a3;
  }

  if (v14)
  {
    v18 = a3;
  }

  else
  {
    v18 = v12;
  }

  [(UIView *)self setFrame:v6, v8, v17, v18];
  return v16;
}

- (double)neededSizeForImageSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0.0;
  if (v4)
  {
    v7 = [v4 image];

    if (v7)
    {
      v8 = [v5 image];
      [v8 size];
      v6 = v9;
      v11 = v10;

      v12 = [(UIStatusBarItemView *)self foregroundStyle];
      if ([v12 usesVerticalLayout])
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
    v6 = [(UIStatusBarItemView *)self foregroundStyle];
    v3 = [v6 tintColor];
    v4 = [v3 CGColor];
    v5 = [(UIView *)self layer];
    [v5 setContentsMultiplyColor:v4];
  }

  else
  {
    v6 = [(UIView *)self layer];
    [v6 setContentsMultiplyColor:0];
  }
}

- (double)updateContentsAndWidth
{
  v3 = [(UIStatusBarItemView *)self contentsImage];
  if (v3)
  {
    [(UIStatusBarItemView *)self neededSizeForImageSet:v3];
    [(UIStatusBarItemView *)self adjustFrameToNewSize:?];
    v5 = v4;
    v6 = [v3 image];

    if (v6)
    {
      [(UIStatusBarItemView *)self setLayerContentsImage:v3];
    }
  }

  else
  {
    v7 = [(UIStatusBarItemView *)self contentsIOSurface];
    if (v7)
    {
      v8 = v7;
      [(UIStatusBarItemView *)self setLayerContentsImage:0];
      [(UIView *)self _currentScreenScale];
      v10 = v9;
      v11 = [(UIView *)self layer];
      [v11 setContents:v8];

      v12 = [(UIView *)self layer];
      [v12 setContentsScale:v10];

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

- (void)setContentMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UIStatusBarItemView;
  [(UIView *)&v5 setContentMode:?];
  [(UIView *)self->_legibilityView setContentMode:a3];
}

- (id)textFont
{
  v3 = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [v3 textFontForStyle:{-[UIStatusBarItemView textStyle](self, "textStyle")}];

  return v4;
}

- (int64_t)textAlignment
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [v2 usesVerticalLayout];

  return v3;
}

- (double)standardPadding
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  [v2 standardPadding];
  v4 = v3;

  return v4;
}

- (double)shadowPadding
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  [v2 shadowPadding];
  v4 = v3;

  return v4;
}

- (void)beginImageContextWithMinimumWidth:(double)a3
{
  v4 = ceil(a3);
  v5 = [(UIStatusBarItemView *)self foregroundStyle];
  v6 = [v5 usesVerticalLayout];

  imageContext = self->_imageContext;
  if (!imageContext)
  {
    goto LABEL_7;
  }

  if (v6)
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
      v9 = [(UIStatusBarItemView *)self foregroundStyle];
      [v9 height];
      v11 = v10;

      if (v6)
      {
        v12 = v11;
      }

      else
      {
        v12 = v4;
      }

      if (v6)
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

- (id)imageFromImageContextClippedToWidth:(double)a3
{
  imageContext = self->_imageContext;
  if (imageContext && (Image = CGBitmapContextCreateImage(imageContext)) != 0)
  {
    v7 = Image;
    v8 = [(UIStatusBarItemView *)self foregroundStyle];
    if ([v8 usesVerticalLayout])
    {
      Width = CGImageGetWidth(v7);
      Height = self->_imageContextScale * a3;
    }

    else
    {
      Width = self->_imageContextScale * a3;
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

- (id)imageWithText:(id)a3 shouldCache:(BOOL)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(UIStatusBarItemView *)self foregroundStyle];
    v8 = [(UIStatusBarItemView *)self item];
    v9 = [v8 type];
    v10 = [(UIStatusBarItemView *)self textAlignment];
    v11 = [(UIStatusBarItemView *)self textStyle];
    v12 = [(UIStatusBarItemView *)self legibilityStyle];
    [(UIStatusBarItemView *)self legibilityStrength];
    LOBYTE(v16) = a4;
    v14 = [v7 imageWithText:v6 ofItemType:v9 forWidth:2 lineBreakMode:v10 letterSpacing:v11 textAlignment:v12 style:1.79769313e308 withLegibilityStyle:0.0 legibilityStrength:v13 shouldCache:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)cachedImageWithText:(id)a3 truncatedWithEllipsesAtMaxWidth:(double)a4 letterSpacing:(double)a5
{
  v8 = a3;
  if (![v8 length])
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (![(NSString *)self->_lastGeneratedTextImageText isEqualToString:v8])
  {
    goto LABEL_8;
  }

  lastGeneratedTextImage = self->_lastGeneratedTextImage;
  if (!lastGeneratedTextImage)
  {
    goto LABEL_8;
  }

  v10 = [(_UILegibilityImageSet *)lastGeneratedTextImage image];
  [v10 size];
  if (v11 > a4)
  {

LABEL_8:
    v14 = [(UIStatusBarItemView *)self foregroundStyle];
    v15 = [(UIStatusBarItemView *)self item];
    v16 = [v15 type];
    v17 = [(UIStatusBarItemView *)self textAlignment];
    v18 = [(UIStatusBarItemView *)self textStyle];
    v19 = [(UIStatusBarItemView *)self legibilityStyle];
    [(UIStatusBarItemView *)self legibilityStrength];
    v21 = [v14 imageWithText:v8 ofItemType:v16 forWidth:4 lineBreakMode:v17 letterSpacing:v18 textAlignment:v19 style:a4 withLegibilityStyle:a5 legibilityStrength:v20];
    v22 = self->_lastGeneratedTextImage;
    self->_lastGeneratedTextImage = v21;

    self->_lastGeneratedTextImageLetterSpacing = a5;
    goto LABEL_9;
  }

  v13 = vabdd_f64(self->_lastGeneratedTextImageLetterSpacing, a5);

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

- (id)imageWithShadowNamed:(id)a3
{
  v4 = a3;
  v5 = [(UIStatusBarItemView *)self foregroundStyle];
  v6 = [(UIStatusBarItemView *)self legibilityStyle];
  [(UIStatusBarItemView *)self legibilityStrength];
  v7 = [v5 imageNamed:v4 withLegibilityStyle:v6 legibilityStrength:?];

  return v7;
}

- (void)beginDisablingRasterization
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:0x1EFB9C6F0 object:self];
}

- (void)endDisablingRasterization
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:0x1EFB9C710 object:self];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(UIStatusBarItemView *)self endDisablingRasterization];
  }

  v5.receiver = self;
  v5.super_class = UIStatusBarItemView;
  [(UIView *)&v5 willMoveToWindow:v4];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = UIStatusBarItemView;
  v3 = [(UIView *)&v8 description];
  v4 = [(UIStatusBarItemView *)self item];
  v5 = [v4 description];
  v6 = [v3 stringByAppendingFormat:@" [Item = %@]", v5];

  return v6;
}

- (UIStatusBarLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  return WeakRetained;
}

@end