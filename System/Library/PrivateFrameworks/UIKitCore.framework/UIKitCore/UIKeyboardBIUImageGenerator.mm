@interface UIKeyboardBIUImageGenerator
- (UIKeyboardBIUImageGenerator)init;
- (id)BIUImageForBold:(BOOL)bold italic:(BOOL)italic underline:(BOOL)underline;
- (void)_accessibilitySettingsChanged:(id)changed;
- (void)_drawBIUAtSize:(CGSize)size bold:(BOOL)bold italic:(BOOL)italic underline:(BOOL)underline;
- (void)setNormalColor:(id)color;
- (void)setTintColor:(id)color;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    imageCache = v2->_imageCache;
    v2->_imageCache = dictionary;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accessibilitySettingsChanged_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

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

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_tintColor isEqual:?])
  {
    objc_storeStrong(&self->_tintColor, color);
    [(UIKeyboardBIUImageGenerator *)self _invalidateCache];
  }
}

- (void)setNormalColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_normalColor isEqual:?])
  {
    objc_storeStrong(&self->_normalColor, color);
    [(UIKeyboardBIUImageGenerator *)self _invalidateCache];
  }
}

- (void)_accessibilitySettingsChanged:(id)changed
{
  v4 = _AXSButtonShapesEnabled() != 0;
  if (self->_useButtonShapes != v4)
  {
    self->_useButtonShapes = v4;

    [(UIKeyboardBIUImageGenerator *)self _invalidateCache];
  }
}

- (void)_drawBIUAtSize:(CGSize)size bold:(BOOL)bold italic:(BOOL)italic underline:(BOOL)underline
{
  underlineCopy = underline;
  italicCopy = italic;
  boldCopy = bold;
  height = size.height;
  width = size.width;
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
  if (boldCopy)
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

  if (italicCopy)
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

  if (underlineCopy)
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
  if (boldCopy)
  {
    if (italicCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [(UIImage *)self->_biuBoldImage drawAtPoint:*v14, v14[1]];
    if (italicCopy)
    {
LABEL_15:
      if (underlineCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  [(UIImage *)self->_biuItalicImage drawAtPoint:*v14, v14[1]];
  if (!underlineCopy)
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

- (id)BIUImageForBold:(BOOL)bold italic:(BOOL)italic underline:(BOOL)underline
{
  underlineCopy = underline;
  italicCopy = italic;
  boldCopy = bold;
  v9 = 2;
  if (!italic)
  {
    v9 = 0;
  }

  v10 = 4;
  if (!underline)
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9 | bold | v10 | 8];
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
    [(UIKeyboardBIUImageGenerator *)self _drawBIUAtSize:boldCopy bold:italicCopy italic:underlineCopy underline:v15, v16];
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