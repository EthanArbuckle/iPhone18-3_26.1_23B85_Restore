@interface UIKeyboardBIUImageGenerator
- (UIKeyboardBIUImageGenerator)init;
- (id)BIUImageForBold:(BOOL)a3 italic:(BOOL)a4 underline:(BOOL)a5;
- (void)_accessibilitySettingsChanged:(id)a3;
- (void)_drawBIUAtSize:(CGSize)a3 bold:(BOOL)a4 italic:(BOOL)a5 underline:(BOOL)a6;
- (void)setNormalColor:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation UIKeyboardBIUImageGenerator

- (UIKeyboardBIUImageGenerator)init
{
  v17.receiver = self;
  v17.super_class = UIKeyboardBIUImageGenerator;
  v2 = [(UIKeyboardBIUImageGenerator *)&v17 init];
  if (v2)
  {
    v3 = +[UIColor systemBlueColor];
    tintColor = v2->_tintColor;
    v2->_tintColor = v3;

    v5 = +[UIColor blackColor];
    normalColor = v2->_normalColor;
    v2->_normalColor = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    imageCache = v2->_imageCache;
    v2->_imageCache = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__accessibilitySettingsChanged_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

    v2->_useButtonShapes = _AXSButtonShapesEnabled() != 0;
    v10 = [UIImage kitImageNamed:@"UIButtonBarKeyboardBIUBold"];
    biuBoldImage = v2->_biuBoldImage;
    v2->_biuBoldImage = v10;

    v12 = [UIImage kitImageNamed:@"UIButtonBarKeyboardBIUItalic"];
    biuItalicImage = v2->_biuItalicImage;
    v2->_biuItalicImage = v12;

    v14 = [UIImage kitImageNamed:@"UIButtonBarKeyboardBIUUnderline"];
    biuUnderlineImage = v2->_biuUnderlineImage;
    v2->_biuUnderlineImage = v14;
  }

  return v2;
}

- (void)setTintColor:(id)a3
{
  v5 = a3;
  if (![(UIColor *)self->_tintColor isEqual:?])
  {
    objc_storeStrong(&self->_tintColor, a3);
    [(UIKeyboardBIUImageGenerator *)self _invalidateCache];
  }
}

- (void)setNormalColor:(id)a3
{
  v5 = a3;
  if (![(UIColor *)self->_normalColor isEqual:?])
  {
    objc_storeStrong(&self->_normalColor, a3);
    [(UIKeyboardBIUImageGenerator *)self _invalidateCache];
  }
}

- (void)_accessibilitySettingsChanged:(id)a3
{
  v4 = _AXSButtonShapesEnabled() != 0;
  if (self->_useButtonShapes != v4)
  {
    self->_useButtonShapes = v4;

    [(UIKeyboardBIUImageGenerator *)self _invalidateCache];
  }
}

- (void)_drawBIUAtSize:(CGSize)a3 bold:(BOOL)a4 italic:(BOOL)a5 underline:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  height = a3.height;
  width = a3.width;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v14 = MEMORY[0x1E695EFF8];
  if (v8)
  {
    [(UIImage *)self->_biuBoldImage drawAtPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if (self->_useButtonShapes)
    {
      v16.origin.y = height + -3.0;
      v16.origin.x = 3.0;
      v16.size.width = 3.0;
      v16.size.height = 3.0;
      CGContextFillEllipseInRect(v13, v16);
    }
  }

  if (v7)
  {
    [(UIImage *)self->_biuItalicImage drawAtPoint:*v14, v14[1]];
    if (self->_useButtonShapes)
    {
      v17.origin.y = height + -3.0;
      v17.origin.x = 14.0;
      v17.size.width = 3.0;
      v17.size.height = 3.0;
      CGContextFillEllipseInRect(v13, v17);
    }
  }

  if (v6)
  {
    [(UIImage *)self->_biuUnderlineImage drawAtPoint:*v14, v14[1]];
    if (self->_useButtonShapes)
    {
      v18.origin.y = height + -3.0;
      v18.origin.x = 25.0;
      v18.size.width = 3.0;
      v18.size.height = 3.0;
      CGContextFillEllipseInRect(v13, v18);
    }
  }

  [(UIColor *)self->_tintColor setFill];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = width;
  v19.size.height = height;
  UIRectFillUsingBlendMode(v19, kCGBlendModeSourceIn);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = width;
  v20.size.height = height;
  CGContextBeginTransparencyLayerWithRect(v13, v20, 0);
  if (v8)
  {
    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [(UIImage *)self->_biuBoldImage drawAtPoint:*v14, v14[1]];
    if (v7)
    {
LABEL_15:
      if (v6)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  [(UIImage *)self->_biuItalicImage drawAtPoint:*v14, v14[1]];
  if (!v6)
  {
LABEL_16:
    [(UIImage *)self->_biuUnderlineImage drawAtPoint:*v14, v14[1]];
  }

LABEL_17:
  [(UIColor *)self->_normalColor setFill];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  UIRectFillUsingBlendMode(v21, kCGBlendModeSourceIn);

  CGContextEndTransparencyLayer(v13);
}

- (id)BIUImageForBold:(BOOL)a3 italic:(BOOL)a4 underline:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = 2;
  if (!a4)
  {
    v9 = 0;
  }

  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9 | a3 | v10 | 8];
  v12 = [(NSMutableDictionary *)self->_imageCache objectForKeyedSubscript:v11];
  if (!v12)
  {
    [(UIImage *)self->_biuBoldImage size];
    v15 = v14;
    if (self->_useButtonShapes)
    {
      v16 = v13 + 6.0;
    }

    else
    {
      v16 = v13;
    }

    [(UIImage *)self->_biuBoldImage scale];
    _UIGraphicsBeginImageContextWithOptions(0, 0, v15, v16, v17);
    [(UIKeyboardBIUImageGenerator *)self _drawBIUAtSize:v7 bold:v6 italic:v5 underline:v15, v16];
    v18 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    if (self->_useButtonShapes)
    {
      v19 = -8.0;
    }

    else
    {
      v19 = -2.0;
    }

    v20 = [v18 imageWithAlignmentRectInsets:{0.0, 0.0, v19, 0.0}];

    v12 = [v20 imageWithRenderingMode:1];

    [(NSMutableDictionary *)self->_imageCache setObject:v12 forKeyedSubscript:v11];
  }

  v21 = v12;

  return v21;
}

@end