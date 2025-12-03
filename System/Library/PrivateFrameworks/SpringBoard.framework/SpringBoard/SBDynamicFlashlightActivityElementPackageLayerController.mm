@interface SBDynamicFlashlightActivityElementPackageLayerController
- (SBDynamicFlashlightActivityElementPackageLayerController)initWithPackageView:(id)view;
- (id)sensorShadowPortalLayer;
- (void)setBeamIntensity:(double)intensity width:(double)width animated:(BOOL)animated;
- (void)setTouching:(BOOL)touching animated:(BOOL)animated;
- (void)updateBeamLayersForIntensity:(double)intensity width:(double)width animated:(BOOL)animated;
- (void)updateIndicatorLayersForIntensity:(double)intensity width:(double)width animated:(BOOL)animated;
@end

@implementation SBDynamicFlashlightActivityElementPackageLayerController

- (SBDynamicFlashlightActivityElementPackageLayerController)initWithPackageView:(id)view
{
  viewCopy = view;
  v56.receiver = self;
  v56.super_class = SBDynamicFlashlightActivityElementPackageLayerController;
  v7 = [(SBDynamicFlashlightActivityElementPackageLayerController *)&v56 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_packageView, view);
    v9 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"sensor hiding gradient"];
    shadowLayer = v8->_shadowLayer;
    v8->_shadowLayer = v9;

    if (!v8->_shadowLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v11 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"indicator"];
    indicatorLayer = v8->_indicatorLayer;
    v8->_indicatorLayer = v11;

    if (!v8->_indicatorLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v13 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"circle"];
    circleLayer = v8->_circleLayer;
    v8->_circleLayer = v13;

    if (!v8->_circleLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v15 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"arc_crop_left"];
    arcCropLeftLayer = v8->_arcCropLeftLayer;
    v8->_arcCropLeftLayer = v15;

    if (!v8->_arcCropLeftLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v17 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"arc_crop_right"];
    arcCropRightLayer = v8->_arcCropRightLayer;
    v8->_arcCropRightLayer = v17;

    if (!v8->_arcCropRightLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v19 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"tick"];
    tickLineLayer = v8->_tickLineLayer;
    v8->_tickLineLayer = v19;

    if (!v8->_tickLineLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v21 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"ticksring"];
    ticksRingLayer = v8->_ticksRingLayer;
    v8->_ticksRingLayer = v21;

    if (!v8->_ticksRingLayer)
    {
      [(SBDynamicFlashlightActivityElementPackageLayerController *)a2 initWithPackageView:v8, &v8->_ticksRingLayer, &v57];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v23 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"glyph_holder"];
    glyphHolderLayer = v8->_glyphHolderLayer;
    v8->_glyphHolderLayer = v23;

    if (!v8->_glyphHolderLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v25 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"glyph"];
    glyphLayer = v8->_glyphLayer;
    v8->_glyphLayer = v25;

    if (!v8->_glyphLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v27 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"contents"];
    maskContentsLayer = v8->_maskContentsLayer;
    v8->_maskContentsLayer = v27;

    if (!v8->_maskContentsLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v29 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"wide rainbow"];
    wideRainbowLayer = v8->_wideRainbowLayer;
    v8->_wideRainbowLayer = v29;

    if (!v8->_wideRainbowLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v31 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"rainL"];
    rainbowLeftLayer = v8->_rainbowLeftLayer;
    v8->_rainbowLeftLayer = v31;

    if (!v8->_rainbowLeftLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v33 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"rainR"];
    rainbowRightLayer = v8->_rainbowRightLayer;
    v8->_rainbowRightLayer = v33;

    if (!v8->_rainbowRightLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v35 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"spreadBeamImage"];
    spreadBeamImageLayer = v8->_spreadBeamImageLayer;
    v8->_spreadBeamImageLayer = v35;

    if (!v8->_spreadBeamImageLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v37 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"straightBeamImage"];
    straightBeamImageLayer = v8->_straightBeamImageLayer;
    v8->_straightBeamImageLayer = v37;

    if (!v8->_straightBeamImageLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v39 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"circle flares shifter"];
    circleFlaresShifterLayer = v8->_circleFlaresShifterLayer;
    v8->_circleFlaresShifterLayer = v39;

    if (!v8->_circleFlaresShifterLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v41 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"spreadBeamDimmer"];
    spreadBeamDimmerLayer = v8->_spreadBeamDimmerLayer;
    v8->_spreadBeamDimmerLayer = v41;

    if (!v8->_spreadBeamDimmerLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v43 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"straightBeamDimmer"];
    straightBeamDimmerLayer = v8->_straightBeamDimmerLayer;
    v8->_straightBeamDimmerLayer = v43;

    if (!v8->_straightBeamDimmerLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v45 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"rainLdimmer"];
    rainbowLeftdimmerLayer = v8->_rainbowLeftdimmerLayer;
    v8->_rainbowLeftdimmerLayer = v45;

    if (!v8->_rainbowLeftdimmerLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v47 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"rainRdimmer"];
    rainbowRightdimmerLayer = v8->_rainbowRightdimmerLayer;
    v8->_rainbowRightdimmerLayer = v47;

    if (!v8->_rainbowRightdimmerLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v49 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"flashlightImage"];
    flashlightImageLayer = v8->_flashlightImageLayer;
    v8->_flashlightImageLayer = v49;

    if (!v8->_flashlightImageLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v51 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"widerainbowdimmer"];
    wideRainbowDimmerLayer = v8->_wideRainbowDimmerLayer;
    v8->_wideRainbowDimmerLayer = v51;

    if (!v8->_wideRainbowDimmerLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }

    v53 = [(BSUICAPackageView *)v8->_packageView publishedObjectWithName:@"middleglowDimmer"];
    middleGlowDimmerLayer = v8->_middleGlowDimmerLayer;
    v8->_middleGlowDimmerLayer = v53;

    if (!v8->_middleGlowDimmerLayer)
    {
      [SBDynamicFlashlightActivityElementPackageLayerController initWithPackageView:];
    }
  }

  return v8;
}

- (id)sensorShadowPortalLayer
{
  shadowPortalLayer = self->_shadowPortalLayer;
  if (!shadowPortalLayer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F30]);
    [v4 setSourceLayer:self->_shadowLayer];
    [v4 setHidesSourceLayer:1];
    [v4 setGeometryFlipped:1];
    [(CALayer *)self->_shadowLayer bounds];
    SBRectWithSize();
    [v4 setBounds:?];
    CGAffineTransformMakeScale(&v7, 0.333333333, 0.333333333);
    [v4 setAffineTransform:&v7];
    v5 = self->_shadowPortalLayer;
    self->_shadowPortalLayer = v4;

    shadowPortalLayer = self->_shadowPortalLayer;
  }

  return shadowPortalLayer;
}

- (void)updateIndicatorLayersForIntensity:(double)intensity width:(double)width animated:(BOOL)animated
{
  v8 = 1.0 - width;
  arcCropLeftLayer = self->_arcCropLeftLayer;
  CGAffineTransformMakeRotation(&v20, (width * 42.0 + (1.0 - width) * 5.0) * 0.0174532925);
  [(CALayer *)arcCropLeftLayer setAffineTransform:&v20];
  arcCropRightLayer = self->_arcCropRightLayer;
  CGAffineTransformMakeRotation(&v20, (width * -35.0 + v8 * -5.0) * 0.0174532925);
  [(CALayer *)arcCropRightLayer setAffineTransform:&v20];
  v11 = 1.0 - intensity;
  glyphHolderLayer = self->_glyphHolderLayer;
  CGAffineTransformMakeRotation(&v20, (intensity * 0.0 + (1.0 - intensity) * -10.0) * 0.0174532925 + (width * -38.0 + v8 * -6.4) * 0.0174532925);
  [(CALayer *)glyphHolderLayer setAffineTransform:&v20];
  v13 = width + v8 * 1.35;
  [(CALayer *)self->_circleLayer setBounds:0.0, 0.0, ((intensity * 1000.0 + v11 * 180.0) * v13), ((intensity * 1000.0 + v11 * 180.0) * v13)];
  [(CALayer *)self->_circleLayer setCornerRadius:((intensity * 1000.0 + (1.0 - intensity) * 180.0) * v13 * 0.5)];
  v14 = (v13 * 641.0 + -641.0) * 0.5;
  [(CALayer *)self->_tickLineLayer setPosition:19.0, (v14 + 822.1)];
  ticksRingLayer = self->_ticksRingLayer;
  CATransform3DMakeRotation(&v20, (width * 3.8 + v8 * 2.5) * 0.0174532925, 0.0, 0.0, 1.0);
  [(CAReplicatorLayer *)ticksRingLayer setInstanceTransform:&v20];
  v16 = self->_ticksRingLayer;
  CATransform3DMakeRotation(&v20, (width * 0.0 + v8 * 10.5) * 0.0174532925, 0.0, 0.0, 1.0);
  [(CAReplicatorLayer *)v16 setTransform:&v20];
  v17 = pow(v8, 3.0) * 12.0;
  [(CALayer *)self->_glyphLayer setPosition:(v8 * 10.0 * intensity + v11 * 20.0 + 276.1637), (v11 * (width * -50.0 + v8 * 0.0) + v14 * intensity + v11 * -220.0 + v17 * pow(width, 3.0) + 320.5)];
  if (intensity >= 0.9)
  {
    v18 = @"normal";
  }

  else
  {
    v18 = @"showing_max";
  }

  v19 = v18;
  if (self->_maxLineState != v19)
  {
    objc_storeStrong(&self->_maxLineState, v18);
    [(BSUICAPackageView *)self->_packageView setState:self->_maxLineState onLayer:self->_maskContentsLayer animated:1 transitionSpeed:0 completion:1.0];
  }
}

- (void)updateBeamLayersForIntensity:(double)intensity width:(double)width animated:(BOOL)animated
{
  widthCopy = width;
  v8 = 1.0 - width;
  wideRainbowLayer = self->_wideRainbowLayer;
  CGAffineTransformMakeScale(&v31, width * 0.57 + (1.0 - width) * 0.79, width * 1.11 + (1.0 - width) * 0.79);
  [(CALayer *)wideRainbowLayer setAffineTransform:&v31];
  v10 = widthCopy * 0.53 + v8 * 0.25;
  *&v10 = v10;
  [(CALayer *)self->_wideRainbowLayer setOpacity:v10];
  [(CALayer *)self->_wideRainbowLayer setPosition:237.6717, (widthCopy * 312.0 + v8 * 390.0)];
  spreadBeamImageLayer = self->_spreadBeamImageLayer;
  CATransform3DMakeScale(&v31, widthCopy * 3.749 + v8 * 1.969, 1.37, 1.81);
  [(CALayer *)spreadBeamImageLayer setTransform:&v31];
  v12 = pow(v8, 3.0);
  v13 = v12 * 0.525 + (1.0 - v12) * 0.0;
  *&v13 = v13;
  [(CALayer *)self->_straightBeamImageLayer setOpacity:v13];
  straightBeamImageLayer = self->_straightBeamImageLayer;
  CGAffineTransformMakeScale(&v31, widthCopy * 3.33 + v8 * 0.63, widthCopy + v8 * 2.96);
  [(CALayer *)straightBeamImageLayer setAffineTransform:&v31];
  v15 = widthCopy * 0.28 + v8 * 0.03;
  v16 = v15;
  *&v15 = v16;
  [(CALayer *)self->_rainbowLeftLayer setOpacity:v15];
  *&v17 = v16;
  [(CALayer *)self->_rainbowRightLayer setOpacity:v17];
  v18 = self->_wideRainbowLayer;
  CGAffineTransformMakeScale(&v31, widthCopy + v8 * 0.3, widthCopy + v8 * 0.5);
  [(CALayer *)v18 setAffineTransform:&v31];
  memset(&v31, 0, 48);
  CGAffineTransformMakeRotation(&t1, (widthCopy * 0.0 + v8 * -50.9) * 0.0174532925);
  CGAffineTransformMakeScale(&t2, 3.56, 3.56);
  CGAffineTransformConcat(&v31, &t1, &t2);
  rainbowLeftLayer = self->_rainbowLeftLayer;
  *&t1.a = *&v31.m11;
  *&t1.c = *&v31.m13;
  *&t1.tx = *&v31.m21;
  [(CALayer *)rainbowLeftLayer setAffineTransform:&t1];
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformMakeRotation(&t2, (widthCopy * 0.0 + v8 * 54.1) * 0.0174532925);
  CGAffineTransformMakeScale(&v28, 3.56, 3.56);
  CGAffineTransformConcat(&t1, &t2, &v28);
  rainbowRightLayer = self->_rainbowRightLayer;
  t2 = t1;
  [(CALayer *)rainbowRightLayer setAffineTransform:&t2];
  v21 = intensity * 0.0 + (1.0 - intensity) * 0.7;
  *&v8 = v21;
  LODWORD(v21) = LODWORD(v8);
  [(CALayer *)self->_spreadBeamDimmerLayer setOpacity:v21];
  LODWORD(v22) = LODWORD(v8);
  [(CALayer *)self->_straightBeamDimmerLayer setOpacity:v22];
  v23 = intensity * 0.0 + (1.0 - intensity) * 0.95;
  *&widthCopy = v23;
  LODWORD(v23) = LODWORD(widthCopy);
  [(CALayer *)self->_rainbowLeftdimmerLayer setOpacity:v23];
  LODWORD(v24) = LODWORD(widthCopy);
  [(CALayer *)self->_rainbowRightdimmerLayer setOpacity:v24];
  v25 = intensity * 0.419 + (1.0 - intensity) * 0.25;
  *&v25 = v25;
  [(CALayer *)self->_flashlightImageLayer setOpacity:v25];
  LODWORD(v26) = LODWORD(v8);
  [(CALayer *)self->_wideRainbowDimmerLayer setOpacity:v26];
  v27 = 1.0 - intensity + intensity * 0.0;
  *&v27 = v27;
  [(CALayer *)self->_middleGlowDimmerLayer setOpacity:v27];
}

- (void)setBeamIntensity:(double)intensity width:(double)width animated:(BOOL)animated
{
  animatedCopy = animated;
  [SBDynamicFlashlightActivityElementPackageLayerController updateBeamLayersForIntensity:"updateBeamLayersForIntensity:width:animated:" width:? animated:?];

  [(SBDynamicFlashlightActivityElementPackageLayerController *)self updateIndicatorLayersForIntensity:animatedCopy width:intensity animated:width];
}

- (void)setTouching:(BOOL)touching animated:(BOOL)animated
{
  animatedCopy = animated;
  if (touching)
  {
    v7 = @"touching";
  }

  else
  {
    v7 = @"normal";
  }

  v8 = v7;
  if (self->_touchingState != v8)
  {
    v9 = SBLogFlashlightHUD();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBDynamicFlashlightActivityElementPackageLayerController setTouching:touching animated:v9];
    }

    objc_storeStrong(&self->_touchingState, v7);
    [(BSUICAPackageView *)self->_packageView setState:self->_touchingState onLayer:self->_indicatorLayer animated:animatedCopy transitionSpeed:0 completion:1.0];
  }
}

- (void)initWithPackageView:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"sensor hiding gradient" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"indicator" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"circle" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"arc_crop_left" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"arc_crop_right" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"tick" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:(void *)a3 .cold.7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBDynamicFlashlightActivityElementPackageLayerController.m" lineNumber:95 description:{@"Couldn't find layer %@", @"ticksring"}];

  *a4 = *a3;
}

- (void)initWithPackageView:.cold.8()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.9()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"glyph_holder" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.10()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"glyph" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.11()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"contents" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.12()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"wide rainbow" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.13()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"rainL" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.14()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"rainR" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.15()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"spreadBeamImage" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.16()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"straightBeamImage" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.17()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"circle flares shifter" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.18()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"spreadBeamDimmer" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.19()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"straightBeamDimmer" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.20()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"rainLdimmer" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.21()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"rainRdimmer" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.22()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"flashlightImage" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.23()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"widerainbowdimmer" object:? file:? lineNumber:? description:?];
}

- (void)initWithPackageView:.cold.24()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"middleglowDimmer" object:? file:? lineNumber:? description:?];
}

- (void)setTouching:(char)a1 animated:(NSObject *)a2 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Layer Touching -> %{BOOL}u", v2, 8u);
}

@end