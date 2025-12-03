@interface PUIWallpaperLegibilityTreatment
- (BOOL)commitToRenderingTree:(id)tree options:(id)options error:(id *)error;
- (PUIWallpaperLegibilityTreatment)initWithCoder:(id)coder;
- (id)colorByDimmingColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)luminanceTreatmentFilters;
- (id)makeDimmingLayer;
- (id)makeGradientLayer;
- (id)makeLuminanceBackdropLayer;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation PUIWallpaperLegibilityTreatment

- (BOOL)commitToRenderingTree:(id)tree options:(id)options error:(id *)error
{
  treeCopy = tree;
  v7 = treeCopy;
  if (self->_needsLuminanceTreatment || self->_needsDimmingTreatment)
  {
    [treeCopy setAllowsGroupBlending:0];
    if (self->_needsDimmingTreatment)
    {
      makeDimmingLayer = [(PUIWallpaperLegibilityTreatment *)self makeDimmingLayer];
      dimmingLayer = self->_dimmingLayer;
      self->_dimmingLayer = makeDimmingLayer;

      [(CALayer *)self->_dimmingLayer setDelegate:self];
      [v7 addSublayer:self->_dimmingLayer];
    }

    if (self->_needsLuminanceTreatment)
    {
      makeLuminanceBackdropLayer = [(PUIWallpaperLegibilityTreatment *)self makeLuminanceBackdropLayer];
      luminanceBackdropLayer = self->_luminanceBackdropLayer;
      self->_luminanceBackdropLayer = makeLuminanceBackdropLayer;

      [(CABackdropLayer *)self->_luminanceBackdropLayer setDelegate:self];
      v12 = self->_luminanceBackdropLayer;
      [v7 bounds];
      [(CABackdropLayer *)v12 setFrame:?];
      [v7 addSublayer:self->_luminanceBackdropLayer];
    }

    if (self->_needsDimmingTreatment)
    {
      averageColor = self->_averageColor;
      if (averageColor)
      {
        grayColor = averageColor;
      }

      else
      {
        grayColor = [MEMORY[0x1E69DC888] grayColor];
      }

      v15 = grayColor;
      layer = [MEMORY[0x1E6979398] layer];
      dimmedColorLayer = self->_dimmedColorLayer;
      self->_dimmedColorLayer = layer;

      v18 = [(PUIWallpaperLegibilityTreatment *)self colorByDimmingColor:v15];
      -[CALayer setBackgroundColor:](self->_dimmedColorLayer, "setBackgroundColor:", [v18 CGColor]);
      [(CALayer *)self->_dimmedColorLayer setCompositingFilter:*MEMORY[0x1E6979CA8]];
      [(CALayer *)self->_dimmedColorLayer setDelegate:self];
      v19 = self->_dimmedColorLayer;
      [v7 bounds];
      [(CALayer *)v19 setFrame:?];
      [v7 addSublayer:self->_dimmedColorLayer];
    }

    if (self->_needsLuminanceTreatment)
    {
      makeGradientLayer = [(PUIWallpaperLegibilityTreatment *)self makeGradientLayer];
      gradientLayer = self->_gradientLayer;
      self->_gradientLayer = makeGradientLayer;

      [(CAGradientLayer *)self->_gradientLayer setDelegate:self];
      v22 = self->_gradientLayer;
      [v7 bounds];
      [(CAGradientLayer *)v22 setFrame:?];
      [v7 addSublayer:self->_gradientLayer];
    }

    [v7 setShouldRasterize:self->_needsDimmingTreatment];
  }

  return 1;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  superlayer = [layerCopy superlayer];
  v4 = superlayer;
  if (superlayer)
  {
    [superlayer bounds];
    [layerCopy setFrame:?];
  }
}

- (id)luminanceTreatmentFilters
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = PUIWallpaperTreatmentBundle();
  if (!v2)
  {
    [PUIWallpaperLegibilityTreatment luminanceTreatmentFilters];
  }

  v3 = v2;
  v4 = [v2 URLForResource:@"WallpaperLuminanceMap" withExtension:@"png"];
  if (!v4)
  {
    [PUIWallpaperLegibilityTreatment luminanceTreatmentFilters];
  }

  v5 = v4;
  v6 = CGImageSourceCreateWithURL(v4, 0);
  if (!v6)
  {
LABEL_12:
    [PUIWallpaperLegibilityTreatment luminanceTreatmentFilters];
  }

  v7 = v6;
  if (!CGImageSourceGetCount(v6))
  {
    CFRelease(v7);
    goto LABEL_12;
  }

  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v7);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, PrimaryImageIndex, 0);
  CFRelease(v7);
  if (!ImageAtIndex)
  {
    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C70]];
  [v10 setValue:ImageAtIndex forKey:@"inputColorMap"];

  v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
  [v11 setValue:&unk_1F1C92A68 forKey:@"inputAmount"];
  v14[0] = v11;
  v14[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  return v12;
}

- (id)makeDimmingLayer
{
  v2 = objc_alloc_init(MEMORY[0x1E6979398]);
  SRGB = CGColorCreateSRGB(0.0, 0.0, 0.0, 0.1);
  [v2 setBackgroundColor:SRGB];
  CGColorRelease(SRGB);
  [v2 setCompositingFilter:*MEMORY[0x1E69798C8]];

  return v2;
}

- (id)makeLuminanceBackdropLayer
{
  layer = [MEMORY[0x1E6979310] layer];
  luminanceTreatmentFilters = [(PUIWallpaperLegibilityTreatment *)self luminanceTreatmentFilters];
  [layer setFilters:luminanceTreatmentFilters];

  return layer;
}

- (id)colorByDimmingColor:(id)color
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [color getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:v7 * -0.589999974 + v8 * -0.300000012 + v6 * -0.109999999 + v5 * 0.0 + 1.0 green:v7 * -0.589999974 + v8 * -0.300000012 + v6 * -0.109999999 + v5 * 0.0 + 1.0 blue:v7 * -0.589999974 + v8 * -0.300000012 + v6 * -0.109999999 + v5 * 0.0 + 1.0 alpha:v7 * 0.0 + v8 * 0.0 + v6 * 0.0 + v5 * 0.5 + 0.0];

  return v3;
}

- (id)makeGradientLayer
{
  components[2] = *MEMORY[0x1E69E9840];
  layer = [MEMORY[0x1E6979380] layer];
  v3 = [&unk_1F1C92CF8 count];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v3, MEMORY[0x1E695E9C0]);
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  if (v3)
  {
    v6 = &qword_1A8D24E68;
    do
    {
      components[0] = 0.0;
      components[1] = *v6;
      v7 = CGColorCreate(v5, components);
      if (v7)
      {
        v8 = v7;
        CFArrayAppendValue(Mutable, v7);
        CFRelease(v8);
      }

      ++v6;
      --v3;
    }

    while (v3);
  }

  [layer setColors:Mutable];
  CFRelease(Mutable);
  CGColorSpaceRelease(v5);
  [layer setLocations:&unk_1F1C92CF8];
  [layer setStartPoint:{0.5, 0.0}];
  [layer setEndPoint:{0.5, 1.0}];
  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798C8]];
  [layer setCompositingFilter:v9];

  return layer;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setNeedsDimmingTreatment:self->_needsDimmingTreatment];
  [v4 setNeedsLuminanceTreatment:self->_needsLuminanceTreatment];
  averageColor = self->_averageColor;
  if (averageColor)
  {
    v6 = [(UIColor *)averageColor copy];
    [v4 setAverageColor:v6];
  }

  else
  {
    [v4 setAverageColor:0];
  }

  return v4;
}

- (PUIWallpaperLegibilityTreatment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PUIWallpaperLegibilityTreatment *)self init];
  if (v5)
  {
    v5->_needsDimmingTreatment = [coderCopy decodeBoolForKey:@"NeedsDimmingTreatment"];
    v5->_needsLuminanceTreatment = [coderCopy decodeBoolForKey:@"NeedsLuminanceTreatment"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AverageColor"];
    averageColor = v5->_averageColor;
    v5->_averageColor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  needsDimmingTreatment = self->_needsDimmingTreatment;
  coderCopy = coder;
  [coderCopy encodeBool:needsDimmingTreatment forKey:@"NeedsDimmingTreatment"];
  [coderCopy encodeBool:self->_needsLuminanceTreatment forKey:@"NeedsLuminanceTreatment"];
  [coderCopy encodeObject:self->_averageColor forKey:@"AverageColor"];
}

@end