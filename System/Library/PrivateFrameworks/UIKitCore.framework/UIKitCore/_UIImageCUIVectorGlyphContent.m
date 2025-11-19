@interface _UIImageCUIVectorGlyphContent
- (BOOL)containsNamedColorStyle:(id)a3;
- (BOOL)containsNamedColorStyles;
- (BOOL)isEqual:(id)a3;
- (CGImage)CGImage;
- (CGImage)_provideCGImageWithSize:(CGSize)a3 scale:(double)a4;
- (CGImage)_provideVectorGlyphCGImageWithSize:(CGSize)a3 scale:(double)a4 hierarchicalColorResolver:(id)a5;
- (CGImage)_provideVectorGlyphCGImageWithSize:(CGSize)a3 scale:(double)a4 namedColorResolver:(id)a5;
- (CGImage)_provideVectorGlyphCGImageWithSize:(CGSize)a3 scale:(double)a4 paletteColors:(id)a5;
- (CGImage)_provideVectorGlyphCGImageWithSize:(CGSize)a3 scale:(double)a4 templateColor:(id)a5;
- (CGSize)sizeInPixels;
- (_UIImageCUIVectorGlyphContent)contentWithCGImage:(CGImage *)a3;
- (_UIImageCUIVectorGlyphContent)contentWithVariableValue:(double)a3;
- (_UIImageCUIVectorGlyphContent)initWithCUIVectorGlyph:(id)a3 scale:(double)a4;
- (_UIImageCUIVectorGlyphContent)initWithScale:(double)a3;
- (id)_automaticSymbolConfiguration;
- (id)description;
- (id)outlinePath;
- (unint64_t)numberOfHierarchyLayers;
- (unint64_t)numberOfPaletteLayers;
- (void)_drawVectorGlyphWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 hierarchicalColorResolver:(id)a6;
- (void)_drawVectorGlyphWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 namedColorResolver:(id)a6;
- (void)_drawVectorGlyphWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 paletteColors:(id)a6;
- (void)_drawVectorGlyphWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 templateColor:(id)a6;
- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6;
- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5;
- (void)dealloc;
@end

@implementation _UIImageCUIVectorGlyphContent

- (id)_automaticSymbolConfiguration
{
  v3 = [(CUINamedVectorGlyph *)self->_vectorGlyph preferredRenderingMode];
  switch(v3)
  {
    case 1:
      v6 = +[UIImageSymbolConfiguration configurationPreferringMonochrome];
      break;
    case 2:
      v6 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
      break;
    case 3:
      v4 = +[UIColor tintColor];
      v5 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v4];

      goto LABEL_12;
    default:
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "SF Symbol has a preferred rendering mode unsupported by UIKit. This is an internal UIKit bug.", buf, 2u);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &_automaticSymbolConfiguration___s_category) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "SF Symbol has a preferred rendering mode unsupported by UIKit. This is an internal UIKit bug.", buf, 2u);
        }
      }

      v10.receiver = self;
      v10.super_class = _UIImageCUIVectorGlyphContent;
      v6 = [(_UIImageContent *)&v10 _automaticSymbolConfiguration];
      break;
  }

  v5 = v6;
LABEL_12:

  return v5;
}

- (CGSize)sizeInPixels
{
  width = self->_sizeInPixels.width;
  height = self->_sizeInPixels.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)containsNamedColorStyles
{
  p_isMultiColor = &self->_isMultiColor;
  explicit = atomic_load_explicit(&self->_isMultiColor, memory_order_acquire);
  if ((explicit & 0x80000000) != 0)
  {
    explicit = [(CUINamedVectorGlyph *)self->_vectorGlyph containsNamedColorStyles];
    atomic_store(explicit, p_isMultiColor);
  }

  return explicit != 0;
}

- (CGImage)CGImage
{
  if (self->_overrideImageRef)
  {
    return self->_overrideImageRef;
  }

  else
  {
    return [(CUINamedVectorGlyph *)self->_vectorGlyph image];
  }
}

- (unint64_t)numberOfHierarchyLayers
{
  p_numberOfHierarchyLayers = &self->_numberOfHierarchyLayers;
  explicit = atomic_load_explicit(&self->_numberOfHierarchyLayers, memory_order_acquire);
  if ((explicit & 0x8000000000000000) != 0)
  {
    explicit = [(CUINamedVectorGlyph *)self->_vectorGlyph numberOfHierarchyLayers];
    atomic_store(explicit, p_numberOfHierarchyLayers);
  }

  return explicit;
}

- (void)dealloc
{
  overrideImageRef = self->_overrideImageRef;
  if (overrideImageRef)
  {
    CGImageRelease(overrideImageRef);
  }

  v4.receiver = self;
  v4.super_class = _UIImageCUIVectorGlyphContent;
  [(_UIImageCUIVectorGlyphContent *)&v4 dealloc];
}

- (unint64_t)numberOfPaletteLayers
{
  p_numberOfPaletteLayers = &self->_numberOfPaletteLayers;
  explicit = atomic_load_explicit(&self->_numberOfPaletteLayers, memory_order_acquire);
  if ((explicit & 0x8000000000000000) != 0)
  {
    explicit = [(CUINamedVectorGlyph *)self->_vectorGlyph numberOfPaletteLayers];
    atomic_store(explicit, p_numberOfPaletteLayers);
  }

  return explicit;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CUINamedVectorGlyph *)self->_vectorGlyph debugDescription];
  v6 = [v3 stringWithFormat:@"<%@:%p vectorGlyph:%@>", v4, self, v5];

  return v6;
}

- (_UIImageCUIVectorGlyphContent)initWithCUIVectorGlyph:(id)a3 scale:(double)a4
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = _UIImageCUIVectorGlyphContent;
  v9 = [(_UIImageContent *)&v19 initWithScale:a4];
  if (v9)
  {
    if (!v8)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:v9 file:@"_UIImageContent.m" lineNumber:1987 description:@"Need a valid vector glyph!"];
    }

    [v8 pointSize];
    v11 = v10;
    [v8 referencePointSize];
    v9->_glyphScaleFactor = v11 / v12;
    objc_storeStrong(&v9->_vectorGlyph, a3);
    [(_UIImageContent *)v9 scale];
    v14 = v13;
    [(CUINamedVectorGlyph *)v9->_vectorGlyph alignmentRect];
    v9->_sizeInPixels.width = v14 * v15;
    v9->_sizeInPixels.height = v14 * v16;
    atomic_store(0xFFFFFFFF, &v9->_isMultiColor);
    atomic_store(0xFFFFFFFFFFFFFFFFLL, &v9->_numberOfHierarchyLayers);
    atomic_store(0xFFFFFFFFFFFFFFFFLL, &v9->_numberOfPaletteLayers);
  }

  return v9;
}

- (_UIImageCUIVectorGlyphContent)initWithScale:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:2006 description:@"You need to use -initWithCGImage:CUIVectorGlyph:scale:"];

  return 0;
}

- (id)outlinePath
{
  v2 = [(CUINamedVectorGlyph *)self->_vectorGlyph CGPath];
  if (v2)
  {
    v2 = [UIBezierPath bezierPathWithCGPath:v2];
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([_UIImageContent content:v4 isEqualToContent:?])
  {
    v5 = v4[5];
    v6 = self->_vectorGlyph;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(CUINamedVectorGlyph *)v6 isEqual:v7];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_UIImageCUIVectorGlyphContent)contentWithCGImage:(CGImage *)a3
{
  v5 = [_UIImageCUIVectorGlyphContent alloc];
  vectorGlyph = self->_vectorGlyph;
  [(_UIImageContent *)self scale];
  v7 = [(_UIImageCUIVectorGlyphContent *)v5 initWithCUIVectorGlyph:vectorGlyph scale:?];
  v7->_overrideImageRef = CGImageRetain(a3);

  return v7;
}

- (_UIImageCUIVectorGlyphContent)contentWithVariableValue:(double)a3
{
  [(_UIImageCUIVectorGlyphContent *)self variableValue];
  if (v5 == a3)
  {
    v11.receiver = self;
    v11.super_class = _UIImageCUIVectorGlyphContent;
    v8 = [(_UIImageContent *)&v11 contentWithVariableValue:a3];
  }

  else
  {
    v6 = [_UIImageCUIVectorGlyphContent alloc];
    v7 = [(CUINamedVectorGlyph *)self->_vectorGlyph copy];
    [(_UIImageContent *)self scale];
    v8 = [(_UIImageCUIVectorGlyphContent *)v6 initWithCUIVectorGlyph:v7 scale:?];

    v9 = [(_UIImageCUIVectorGlyphContent *)v8 vectorGlyph];
    [v9 setVariableMaxValue:a3];
  }

  return v8;
}

- (BOOL)containsNamedColorStyle:(id)a3
{
  v4 = [(CUINamedVectorGlyph *)self->_vectorGlyph containsNamedColorStyle:a3];
  if (v4)
  {
    atomic_store(MEMORY[0x1E695E118], &self->_isMultiColor);
  }

  return v4;
}

- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5
{
  height = a3.height;
  width = a3.width;
  [(_UIImageContent *)self size:a3.width];
  v9 = width / v8;
  v11 = height / v10;

  CGContextScaleCTM(a5, v9, v11);
}

- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6
{
  if (a3.width > 0.0 && a3.height > 0.0)
  {
    [(CUINamedVectorGlyph *)self->_vectorGlyph drawInContext:a5, a6];
  }
}

- (CGImage)_provideCGImageWithSize:(CGSize)a3 scale:(double)a4
{
  v4 = 0;
  if (a3.width > 0.0)
  {
    height = a3.height;
    if (a3.height > 0.0)
    {
      width = a3.width;
      [(_UIImageContent *)self size];
      v11 = width == v10 && height == v9;
      if (v11 && ([(_UIImageContent *)self scale], v12 == a4))
      {
        v13 = CGImageRetain([(_UIImageCUIVectorGlyphContent *)self CGImage]);
      }

      else
      {
        v13 = [(CUINamedVectorGlyph *)self->_vectorGlyph rasterizeImageUsingScaleFactor:a4 forTargetSize:width, height];
      }

      v4 = v13;
      if (v13)
      {
        CFAutorelease(v13);
      }
    }
  }

  return v4;
}

- (CGImage)_provideVectorGlyphCGImageWithSize:(CGSize)a3 scale:(double)a4 namedColorResolver:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93___UIImageCUIVectorGlyphContent__provideVectorGlyphCGImageWithSize_scale_namedColorResolver___block_invoke;
    aBlock[3] = &unk_1E7106F10;
    v20 = v9;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  if (width > 0.0 && height > 0.0)
  {
    [(_UIImageContent *)self size];
    if (width == v14 && height == v13 && ([(_UIImageContent *)self scale], v15 == a4))
    {
      if (v11)
      {
        v16 = [(CUINamedVectorGlyph *)self->_vectorGlyph imageWithColorResolver:v11];
      }

      else
      {
        v16 = CGImageRetain([(_UIImageCUIVectorGlyphContent *)self CGImage]);
      }
    }

    else
    {
      vectorGlyph = self->_vectorGlyph;
      if (v11)
      {
        v16 = [(CUINamedVectorGlyph *)vectorGlyph rasterizeImageUsingScaleFactor:v11 forTargetSize:a4 withColorResolver:width, height];
      }

      else
      {
        v16 = [(CUINamedVectorGlyph *)vectorGlyph rasterizeImageUsingScaleFactor:a4 forTargetSize:width, height];
      }
    }

    v12 = v16;
    if (v16)
    {
      CFAutorelease(v16);
    }
  }

  return v12;
}

- (void)_drawVectorGlyphWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 namedColorResolver:(id)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a6;
  v11 = v10;
  if (!v10)
  {
    v12 = 0;
    if (width <= 0.0 || height <= 0.0)
    {
      goto LABEL_12;
    }

LABEL_11:
    [(CUINamedVectorGlyph *)self->_vectorGlyph drawInContext:a5];
    v12 = 0;
    goto LABEL_12;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93___UIImageCUIVectorGlyphContent__drawVectorGlyphWithSize_scale_inContext_namedColorResolver___block_invoke;
  aBlock[3] = &unk_1E7106F10;
  v15 = v10;
  v12 = _Block_copy(aBlock);

  if (width <= 0.0 || height <= 0.0)
  {
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  if ([(CUINamedVectorGlyph *)self->_vectorGlyph numberOfMulticolorLayers])
  {
    v13 = 0;
    do
    {
      [(CUINamedVectorGlyph *)self->_vectorGlyph drawMulticolorLayerAtIndex:v13++ inContext:a5 withColorResolver:v12];
    }

    while (v13 < [(CUINamedVectorGlyph *)self->_vectorGlyph numberOfMulticolorLayers]);
  }

LABEL_12:
}

- (CGImage)_provideVectorGlyphCGImageWithSize:(CGSize)a3 scale:(double)a4 hierarchicalColorResolver:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100___UIImageCUIVectorGlyphContent__provideVectorGlyphCGImageWithSize_scale_hierarchicalColorResolver___block_invoke;
    aBlock[3] = &unk_1E7106F38;
    v20 = v9;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  if (width > 0.0 && height > 0.0)
  {
    [(_UIImageContent *)self size];
    if (width == v14 && height == v13 && ([(_UIImageContent *)self scale], v15 == a4))
    {
      if (v11)
      {
        v16 = [(CUINamedVectorGlyph *)self->_vectorGlyph imageWithHierarchyColorResolver:v11];
      }

      else
      {
        v16 = CGImageRetain([(_UIImageCUIVectorGlyphContent *)self CGImage]);
      }
    }

    else
    {
      vectorGlyph = self->_vectorGlyph;
      if (v11)
      {
        v16 = [(CUINamedVectorGlyph *)vectorGlyph rasterizeImageUsingScaleFactor:v11 forTargetSize:a4 withHierarchyColorResolver:width, height];
      }

      else
      {
        v16 = [(CUINamedVectorGlyph *)vectorGlyph rasterizeImageUsingScaleFactor:a4 forTargetSize:width, height];
      }
    }

    v12 = v16;
    if (v16)
    {
      CFAutorelease(v16);
    }
  }

  return v12;
}

- (void)_drawVectorGlyphWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 hierarchicalColorResolver:(id)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a6;
  v11 = v10;
  if (!v10)
  {
    v12 = 0;
    if (width <= 0.0 || height <= 0.0)
    {
      goto LABEL_12;
    }

LABEL_11:
    [(CUINamedVectorGlyph *)self->_vectorGlyph drawInContext:a5];
    v12 = 0;
    goto LABEL_12;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100___UIImageCUIVectorGlyphContent__drawVectorGlyphWithSize_scale_inContext_hierarchicalColorResolver___block_invoke;
  aBlock[3] = &unk_1E7106F38;
  v15 = v10;
  v12 = _Block_copy(aBlock);

  if (width <= 0.0 || height <= 0.0)
  {
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  if ([(CUINamedVectorGlyph *)self->_vectorGlyph numberOfHierarchyLayers])
  {
    v13 = 0;
    do
    {
      [(CUINamedVectorGlyph *)self->_vectorGlyph drawHierarchyLayerAtIndex:v13++ inContext:a5 withColorResolver:v12];
    }

    while (v13 < [(CUINamedVectorGlyph *)self->_vectorGlyph numberOfHierarchyLayers]);
  }

LABEL_12:
}

- (CGImage)_provideVectorGlyphCGImageWithSize:(CGSize)a3 scale:(double)a4 paletteColors:(id)a5
{
  if (a3.width <= 0.0)
  {
    return 0;
  }

  height = a3.height;
  if (a3.height <= 0.0)
  {
    return 0;
  }

  width = a3.width;
  v9 = [a5 mutableCopy];
  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      [v9 setObject:objc_msgSend(v11 atIndexedSubscript:{"CGColor"), v10}];

      ++v10;
    }

    while ([v9 count] > v10);
  }

  [(_UIImageContent *)self size];
  if (width == v13 && height == v12 && ([(_UIImageContent *)self scale], v14 == a4))
  {
    v15 = [(CUINamedVectorGlyph *)self->_vectorGlyph imageWithPaletteColors:v9];
  }

  else
  {
    v15 = [(CUINamedVectorGlyph *)self->_vectorGlyph rasterizeImageUsingScaleFactor:v9 forTargetSize:a4 withPaletteColors:width, height];
  }

  v16 = v15;

  if (!v16)
  {
    return 0;
  }

  return CFAutorelease(v16);
}

- (void)_drawVectorGlyphWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 paletteColors:(id)a6
{
  if (a3.width > 0.0 && a3.height > 0.0)
  {
    v11 = [a6 mutableCopy];
    if ([v11 count])
    {
      v9 = 0;
      do
      {
        v10 = [v11 objectAtIndexedSubscript:v9];
        [v11 setObject:objc_msgSend(v10 atIndexedSubscript:{"CGColor"), v9}];

        ++v9;
      }

      while ([v11 count] > v9);
    }

    [(CUINamedVectorGlyph *)self->_vectorGlyph drawInContext:a5 withPaletteColors:v11];
  }
}

- (CGImage)_provideVectorGlyphCGImageWithSize:(CGSize)a3 scale:(double)a4 templateColor:(id)a5
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (width > 0.0 && height > 0.0)
  {
    if (!v10)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:2324 description:@"templateColor cannot be nil"];
    }

    [(_UIImageContent *)self size];
    if (width == v14 && height == v13 && ([(_UIImageContent *)self scale], v15 == a4))
    {
      v16 = -[CUINamedVectorGlyph imageWithTintColor:](self->_vectorGlyph, "imageWithTintColor:", [v11 CGColor]);
      if (!v16)
      {
LABEL_9:
        v12 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v16 = -[CUINamedVectorGlyph rasterizeImageWithTintColor:usingScaleFactor:forTargetSize:](self->_vectorGlyph, "rasterizeImageWithTintColor:usingScaleFactor:forTargetSize:", [v11 CGColor], a4, width, height);
      if (!v16)
      {
        goto LABEL_9;
      }
    }

    v12 = CFAutorelease(v16);
  }

LABEL_12:

  return v12;
}

- (void)_drawVectorGlyphWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 templateColor:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a6;
  if (width > 0.0 && height > 0.0)
  {
    v15 = v11;
    if (!v11)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:2343 description:@"templateColor cannot be nil"];
    }

    vectorGlyph = self->_vectorGlyph;
    v13 = v15;
    -[CUINamedVectorGlyph drawWithTintColor:inContext:](vectorGlyph, "drawWithTintColor:inContext:", [v15 CGColor], a5);
    v11 = v15;
  }
}

@end