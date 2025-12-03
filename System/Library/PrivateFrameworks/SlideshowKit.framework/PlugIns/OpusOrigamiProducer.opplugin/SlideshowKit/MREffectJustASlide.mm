@interface MREffectJustASlide
- (BOOL)canMoveInDirection:(unsigned __int8)direction withPZR:(id)r;
- (BOOL)getVerticesCoordinates:(MREffectJustASlide *)self withMatrix:(SEL)matrix forElement:(CGPoint *)(a3;
- (BOOL)isAlphaFriendly;
- (BOOL)isNative3D;
- (BOOL)isOpaque;
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (MREffectJustASlide)init;
- (double)pzrCancel:(id)cancel;
- (double)pzrEnd:(id)end;
- (double)pzrStart:(id)start;
- (double)pzrUpdate:(id)update;
- (id)elementHitAtPoint:(CGPoint)point withInverseMatrix:(float)matrix[16] localPoint:(CGPoint *)localPoint;
- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)beginMorphingToAspectRatio:(double)ratio withDuration:(double)duration;
- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)resetPZR;
@end

@implementation MREffectJustASlide

- (MREffectJustASlide)init
{
  v4.receiver = self;
  v4.super_class = MREffectJustASlide;
  v2 = [(MREffectJustASlide *)&v4 init];
  if (v2)
  {
    *(v2 + 185) = objc_alloc_init(MRCroppingSprite);
    *(v2 + 217) = 0x3FF0000000000000;
  }

  return v2;
}

- (BOOL)isNative3D
{
  v2 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  frame = [v2 frame];
  if (frame)
  {

    return [frame isNative3D];
  }

  else if ([v3 isOpaque])
  {
    return 0;
  }

  else
  {

    return [v3 hasFilters];
  }
}

- (BOOL)isOpaque
{
  v3 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  if (!v3)
  {
    v7 = 0;
    return v7 & 1;
  }

  v4 = v3;
  frame = [v3 frame];
  if (!frame)
  {
    if ([v4 isOpaque])
    {
      v7 = 1;
    }

    else
    {
      v7 = BYTE1(self->mSprite);
    }

    return v7 & 1;
  }

  return [frame isOpaque];
}

- (BOOL)isAlphaFriendly
{
  v2 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  if (!v2)
  {
    return 1;
  }

  frame = [v2 frame];
  if (!frame)
  {
    return 1;
  }

  return [frame isAlphaFriendly];
}

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v8.receiver = self;
  v8.super_class = MREffectJustASlide;
  [(MREffect *)&v8 prerenderForTime:context inContext:arguments withArguments:time];
  BYTE1(self->mSprite) = *([context backColor] + 3) >= 1.0;
  return BYTE1(self->_y0);
}

- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v9 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  v10 = v9;
  if (BYTE1(self->_y0) == 1)
  {
    BYTE1(self->_y0) = 0;
    [v9 setCenter:{*(&self->mForceIsOpaque + 1), *(&self->_panX + 1)}];
    [v10 setScale:*(&self->_panY + 1)];
    [v10 setRotation:*(&self->_scale + 1)];
  }

  v11 = [v10 retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
  if (v11)
  {
    v12 = v11;
    if ([v11 shader])
    {
      [*(&self->super._isInInteractiveMode + 1) setNeedsInSpriteCoordinates:1];
      isOpaque = [(MREffectJustASlide *)self isOpaque];
      v14 = *([context foreColor] + 3);
      if (isOpaque && v14 >= 1.0)
      {
        x = CGPointZero.x;
        y = CGPointZero.y;
      }

      else
      {
        [context blend:2];
        if (v14 < 1.0 || (v27 = [objc_msgSend(v12 "shader")]) == 0)
        {
          [*(&self->super._isInInteractiveMode + 1) setInnerRect:{0.0, 0.0, 1.0, 1.0}];
          [*(&self->super._isInInteractiveMode + 1) renderImageInner:v12 inContext:context atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:{2.0, 2.0, 0.0}];
          [context blend:0];
          goto LABEL_30;
        }

        [v27 CGRectValue];
        [*(&self->super._isInInteractiveMode + 1) setInnerRect:?];
        x = CGPointZero.x;
        y = CGPointZero.y;
        [*(&self->super._isInInteractiveMode + 1) renderImageOuter:v12 inContext:context atPosition:CGPointZero.x andSize:y zRotation:{2.0, 2.0, 0.0}];
        [context blend:0];
      }

      [*(&self->super._isInInteractiveMode + 1) renderImageInner:v12 inContext:context atPosition:x andSize:y zRotation:{2.0, 2.0, 0.0}];
LABEL_30:

      [v12 releaseByUser];
      return;
    }

    isOpaque2 = [v12 isOpaque];
    hasKenBurns = [v12 hasKenBurns];
    foreColorIsOpaqueWhite = [context foreColorIsOpaqueWhite];
    v22 = @"PlainTextureHigh";
    if (foreColorIsOpaqueWhite)
    {
      v22 = @"PlainTextureHighNoColor";
    }

    v23 = @"PlainTextureNoColor";
    if (!foreColorIsOpaqueWhite)
    {
      v23 = @"PlainTexture";
    }

    if (hasKenBurns)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    [v12 aspectRatio];
    if (self->super._panoramaPanningOffsets)
    {
      if (v25 < 0.5 || v25 > 2.0)
      {
        if (v25 <= 2.0)
        {
          [context localAspectRatio];
          [v12 scale];
          [v12 centerY];
          [MREffect valueForPanoramaPanningForElementID:"valueForPanoramaPanningForElementID:value:minValue:maxValue:" value:@"image0" minValue:? maxValue:?];
          [v12 setCenterY:?];
        }

        else
        {
          [v12 scale];
          [v12 centerX];
          [MREffect valueForPanoramaPanningForElementID:"valueForPanoramaPanningForElementID:value:minValue:maxValue:" value:@"image0" minValue:? maxValue:?];
          [v12 setCenterX:?];
        }
      }
    }

    [v12 scale];
    v28 = 1.0;
    if (v29 > 0.0)
    {
      [v12 scale];
      *&v30 = v30;
      v28 = *&v30;
    }

    p_mPixelSize = &self->super.mPixelSize;
    v32 = self->super.mPixelSize.width / self->super.mPixelSize.height;
    [v12 aspectRatio];
    v34 = v33;
    [v12 centerX];
    v36 = (1.0 - (v35 + 1.0) * v28) * 0.5;
    [v12 centerX];
    v38 = (1.0 - (v37 + -1.0) * v28) * 0.5;
    [v12 centerY];
    *(&v69 + 1) = v32;
    v40 = v32;
    v41 = v28 * (v39 + 1.0) * v32;
    v42 = v34;
    v43 = (1.0 - v41 / v34) * 0.5;
    [v12 centerY];
    v45 = (1.0 - v28 * (v44 + -1.0) * v40 / v42) * 0.5;
    v46 = v36;
    v47 = v36 > 0.00001;
    if (v38 < 0.99999)
    {
      v47 = 1;
    }

    v48 = v43;
    v49 = v43 > 0.00001;
    if (v45 < 0.99999)
    {
      v49 = 1;
    }

    if (v47 || v49)
    {
      *&v69 = v36;
      v50 = v38 - v36;
      v51 = v45 - v43;
      if (v47)
      {
        v52 = 1.0 / p_mPixelSize->width;
      }

      else
      {
        v52 = 0.0;
      }

      if (v49)
      {
        v53 = 1.0 / p_mPixelSize->width;
      }

      else
      {
        v53 = 0.0;
      }

      v54 = v53 + v53;
      v55 = v50;
      v56 = v51;
      [*(&self->super._isInInteractiveMode + 1) setInnerRect:{v46 + v52 * 2.0, v48 + v54 * v40, v50 + v52 * -4.0, v51 + v53 * -4.0 * v40, v69}];
      [*(&self->super._isInInteractiveMode + 1) setOuterRect:{(v70 - v52), (v43 - (v53 * v71)), v55 + v52 * 2.0, v56 + v54 * v40}];
      [*(&self->super._isInInteractiveMode + 1) fakeRenderInContext:context atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:{2.0, 2.0, 0.0}];
      [context setShader:v24];
      [*(&self->super._isInInteractiveMode + 1) renderImageInner:v12 inContext:context];
      [context unsetShader];
      backColor = [context backColor];
      v58 = backColor[3];
      if (v58 < 1.0)
      {
        if ([objc_msgSend(v12 "texture")])
        {
          v65 = 2;
        }

        else
        {
          v65 = 3;
        }

        [context blend:v65];
        [context setShader:@"PlainTextureSoftOpaque"];
        v66 = p_mPixelSize->width * v55;
        *&v66 = v66;
        v67 = self->super.mPixelSize.height * v56;
        *&v67 = v67;
        [context setShaderUniformVec2:@"invRadii" :v66 forKey:v67];
        v61 = 0.0;
        v62 = 0.0;
        v63 = 0.0;
        v64 = 0.0;
      }

      else
      {
        [context setShader:@"PlainTextureSoftOpaque"];
        v59 = p_mPixelSize->width * v55;
        *&v59 = v59;
        v60 = self->super.mPixelSize.height * v56;
        *&v60 = v60;
        [context setShaderUniformVec2:@"invRadii" :v59 forKey:v60];
        *&v61 = *backColor;
        *&v62 = backColor[1];
        *&v63 = backColor[2];
        *&v64 = backColor[3];
      }

      [context setShaderUniformVec4:@"edgeColor" :v61 :v62 :v63 forKey:v64];
      [*(&self->super._isInInteractiveMode + 1) renderImageMiddle:v12 inContext:context];
      [context unsetShader];
      if (v58 < 1.0)
      {
        [context blend:0];
      }

      else
      {
        [context composeForeColor:backColor saveTo:v72];
        [context setShader:@"PlainColor"];
        [*(&self->super._isInInteractiveMode + 1) renderImageOuter:0 inContext:context];
        [context unsetShader];
        [context restoreForeColor:v72];
      }
    }

    else
    {
      [context setShader:{v24, v46, v48}];
      if (isOpaque2)
      {
        [*(&self->super._isInInteractiveMode + 1) renderImage:v12 inContext:context atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:{2.0, 2.0, 0.0}];
      }

      else
      {
        if ([objc_msgSend(v12 "texture")])
        {
          v68 = 2;
        }

        else
        {
          v68 = 3;
        }

        [context blend:v68];
        [*(&self->super._isInInteractiveMode + 1) renderImage:v12 inContext:context atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:{2.0, 2.0, 0.0}];
        [context blend:0];
      }

      [context unsetShader];
    }

    [v12 releaseByUser];
  }

  else
  {
    v17 = *(&self->super._isInInteractiveMode + 1);
    v18 = CGPointZero.y;

    [v17 fakeRenderInContext:context atPosition:CGPointZero.x andSize:v18 zRotation:{2.0, 2.0, 0.0}];
  }
}

- (id)retainedByUserRenderedImageAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v9 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  v10 = v9;
  if (BYTE1(self->_y0) == 1)
  {
    BYTE1(self->_y0) = 0;
    [v9 setCenter:{*(&self->mForceIsOpaque + 1), *(&self->_panX + 1)}];
    [v10 setScale:*(&self->_panY + 1)];
    [v10 setRotation:*(&self->_scale + 1)];
  }

  v11 = [v10 retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
  [v11 setUsesBackgroundColorAsBorderColor:1];
  [v11 aspectRatio];
  if (self->super._panoramaPanningOffsets)
  {
    if (v12 < 0.5 || v12 > 2.0)
    {
      if (v12 <= 2.0)
      {
        [context localAspectRatio];
        [v11 scale];
        [v11 centerY];
        [MREffect valueForPanoramaPanningForElementID:"valueForPanoramaPanningForElementID:value:minValue:maxValue:" value:@"image0" minValue:? maxValue:?];
        [v11 setCenterY:?];
      }

      else
      {
        [v11 scale];
        [v11 centerX];
        [MREffect valueForPanoramaPanningForElementID:"valueForPanoramaPanningForElementID:value:minValue:maxValue:" value:@"image0" minValue:? maxValue:?];
        [v11 setCenterX:?];
      }
    }
  }

  [*(&self->super._isInInteractiveMode + 1) fakeRenderInContext:context atPosition:CGPointZero.x andSize:CGPointZero.y zRotation:{2.0, 2.0, 0.0}];
  return v11;
}

- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v8 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];

  return [v8 patchworkAtTime:context inContext:arguments withArguments:time];
}

- (id)elementHitAtPoint:(CGPoint)point withInverseMatrix:(float)matrix[16] localPoint:(CGPoint *)localPoint
{
  if ([*(&self->super._isInInteractiveMode + 1) hitAtPoint:matrix withInverseMatrix:localPoint localPoint:{point.x, point.y}])
  {
    return @"image0";
  }

  else
  {
    return 0;
  }
}

- (BOOL)getVerticesCoordinates:(MREffectJustASlide *)self withMatrix:(SEL)matrix forElement:(CGPoint *)(a3
{
  v8 = [a5 isEqualToString:@"image0"];
  if (v8)
  {
    v9 = *(&self->super._isInInteractiveMode + 1);

    LOBYTE(v8) = [v9 getVerticesCoordinates:a3 withMatrix:a4];
  }

  return v8;
}

- (void)beginMorphingToAspectRatio:(double)ratio withDuration:(double)duration
{
  if (BYTE5(self->_y0) != 1)
  {
    return;
  }

  [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v7 = *(&self->_panY + 1) / ratio;
  *(&self->_panY + 1) = v7;
  v9 = v8 / ratio;
  if (BYTE4(self->_y0) == 1)
  {
    v10 = fmax(v9 + v9, 2.0);
    if (v7 <= v10)
    {
      v10 = 1.0;
      if (v9 <= 1.0)
      {
        v10 = v9;
      }

      if (v7 >= v10)
      {
        goto LABEL_12;
      }
    }
  }

  else if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  *(&self->_panY + 1) = v10;
LABEL_12:
  *(&self->_scale + 1) = 0.0;
  v11 = *(&self->_panY + 1);
  v12 = (1.0 - 1.0 / v11) * 0.5;
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v13 = (1.0 - v9 / v11) * 0.5;
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = v12 + 0.5;
  v16 = v14 + 0.5;
  v17 = *(&self->mForceIsOpaque + 1);
  if (v17 > v12 + 0.5 || (v15 = 0.5 - v12, v17 < 0.5 - v12))
  {
    *(&self->mForceIsOpaque + 1) = v15;
  }

  v18 = *(&self->_panX + 1);
  if (v18 > v16 || (v16 = 0.5 - v14, v18 < 0.5 - v14))
  {
    *(&self->_panX + 1) = v16;
  }

  if (![(MRLayer *)self->super.mEffectLayer isActivated])
  {
    duration = 0.0;
  }

  [(MRLayerEffect *)self->super.mEffectLayer animateCenterOfSlide:@"image0" to:*(&self->mForceIsOpaque + 1) withDuration:*(&self->_panX + 1) andInitialSpeed:duration, 0.0, 0.0];
  [(MRLayerEffect *)self->super.mEffectLayer animateScaleOfSlide:@"image0" to:*(&self->_panY + 1) withDuration:duration];
  [(MRLayerEffect *)self->super.mEffectLayer animateRotationOfSlide:@"image0" to:*(&self->_scale + 1) withDuration:duration];
  BYTE1(self->_y0) = 0;
}

- (double)pzrStart:(id)start
{
  v4 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  [v4 center];
  *(&self->_rotation + 1) = v5;
  *(&self->_startSlideCenter.x + 1) = v6;
  [v4 scale];
  *(&self->_startSlideCenter.y + 1) = v7;
  [v4 rotation];
  *(&self->_startSlideScale + 1) = v8;
  BYTE3(self->_y0) = 0;
  return 0.0;
}

- (double)pzrUpdate:(id)update
{
  if (BYTE5(self->_y0) == 1)
  {
    BYTE4(self->_y0) = *(update + 100);
  }

  v5 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  v6 = self->super.mPixelSize.width / self->super.mPixelSize.height;
  [v5 imageAspectRatio];
  v8 = v7;
  v9 = v7 / v6;
  v10 = *(&self->_startSlideCenter.y + 1) * *(update + 6);
  *(&self->_panY + 1) = v10;
  if (BYTE4(self->_y0) == 1)
  {
    v11 = fmax(v9 + v9, 2.0);
  }

  else
  {
    v12 = 1.0;
    if (v9 <= 1.0)
    {
      v12 = v9;
    }

    if (BYTE5(self->_y0) == 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = 1.0e10;
    }
  }

  if (v10 > v11)
  {
    v10 = v11 * (log10(v10 / v11) + 1.0);
    *(&self->_panY + 1) = v10;
  }

  if (BYTE3(self->_y0) != 1)
  {
    v13 = 0.5 / *(&self->_startSlideCenter.y + 1);
    v14 = __sincos_stret(*(&self->_startSlideScale + 1));
    *(&self->_startSlideRotation + 1) = *(&self->_rotation + 1) + v13 * (v14.__sinval * (v9 / v8 * *(update + 3)) + *(update + 2) * v14.__cosval);
    *(&self->_x0 + 1) = *(&self->_startSlideCenter.x + 1) - v13 * (v14.__cosval * -(v9 * *(update + 3)) + *(update + 2) / v8 * v14.__sinval);
    v10 = *(&self->_panY + 1);
    v15 = v10 <= v9 && *(update + 10) < 1.0 || *(update + 96) == 16;
    BYTE2(self->_y0) = v15;
    BYTE3(self->_y0) = 1;
  }

  v16 = BYTE2(self->_y0);
  if (v16)
  {
    v17 = *(&self->_startSlideScale + 1) + *(update + 7);
    *(&self->_scale + 1) = v17;
    v10 = *(&self->_panY + 1);
  }

  else
  {
    v17 = *(&self->_scale + 1);
  }

  v18 = 0.5 / v10;
  v19 = __sincos_stret(v17);
  *(&self->mForceIsOpaque + 1) = *(&self->_startSlideRotation + 1) - v18 * (v19.__sinval * (v9 / v8 * *(update + 3)) + *(update + 2) * v19.__cosval);
  *(&self->_panX + 1) = *(&self->_x0 + 1) + v18 * (v19.__cosval * -(v9 * *(update + 3)) + v8 * *(update + 2) * v19.__sinval);
  if (v16)
  {
    goto LABEL_38;
  }

  v20 = *(&self->_panY + 1);
  if ((1.0 - 1.0 / v20) * 0.5 >= 0.0)
  {
    v21 = (1.0 - 1.0 / v20) * 0.5;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = (1.0 - v9 / v20) * 0.5;
  if (v22 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = v23 + 0.5;
  v25 = *(&self->mForceIsOpaque + 1);
  if (v25 > v21 + 0.5)
  {
    v26 = v21 + 0.5 + sqrt(v25 - (v21 + 0.5) + 1.0) + -1.0;
LABEL_32:
    *(&self->mForceIsOpaque + 1) = v26;
    goto LABEL_33;
  }

  if (v25 < 0.5 - v21)
  {
    v26 = 0.5 - v21 - sqrt(0.5 - v21 - v25 + 1.0) + 1.0;
    goto LABEL_32;
  }

LABEL_33:
  v27 = *(&self->_panX + 1);
  if (v27 > v24)
  {
    v28 = v24 + sqrt(v27 - v24 + 1.0) + -1.0;
LABEL_37:
    *(&self->_panX + 1) = v28;
    goto LABEL_38;
  }

  if (v27 < 0.5 - v23)
  {
    v28 = 0.5 - v23 - sqrt(0.5 - v23 - v27 + 1.0) + 1.0;
    goto LABEL_37;
  }

LABEL_38:
  BYTE1(self->_y0) = 1;
  return 0.0;
}

- (double)pzrEnd:(id)end
{
  if (BYTE5(self->_y0) == 1)
  {
    BYTE4(self->_y0) = *(end + 100);
  }

  v5 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  v6 = self->super.mPixelSize.width / self->super.mPixelSize.height;
  [v5 imageAspectRatio];
  v8 = v7 / v6;
  v9 = *(&self->_startSlideCenter.y + 1) * *(end + 6);
  *(&self->_panY + 1) = v9;
  if (BYTE4(self->_y0) != 1)
  {
    if (BYTE5(self->_y0) != 1)
    {
      goto LABEL_14;
    }

    if (v8 <= 1.0)
    {
      v10 = v7 / v6;
    }

    else
    {
      v10 = 1.0;
    }

    goto LABEL_13;
  }

  v10 = fmax(v8 + v8, 2.0);
  if (v9 > v10)
  {
    goto LABEL_13;
  }

  v10 = 1.0;
  if (v8 <= 1.0)
  {
    v10 = v7 / v6;
  }

  if (v9 < v10)
  {
LABEL_13:
    *(&self->_panY + 1) = v10;
  }

LABEL_14:
  *(&self->_scale + 1) = 0.0;
  v11 = 0.5 / *(&self->_panY + 1);
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (*(end + 98) == 1)
  {
    v13 = *(end + 8) * 0.125;
    v14 = *(end + 9) * 0.125;
  }

  v15 = *(end + 2) + v13;
  v16 = v14 + *(end + 3);
  *(&self->mForceIsOpaque + 1) = *(&self->_startSlideRotation + 1) - v11 * (v15 + v8 / v7 * v16 * 0.0);
  *(&self->_panX + 1) = *(&self->_x0 + 1) + v11 * (v7 * v15 * 0.0 - v8 * v16);
  v17 = *(&self->_panY + 1);
  v18 = (1.0 - 1.0 / v17) * 0.5;
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = (1.0 - v8 / v17) * 0.5;
  if (v19 >= 0.0)
  {
    v12 = v19;
  }

  v20 = v18 + 0.5;
  v21 = v12 + 0.5;
  v22 = *(&self->mForceIsOpaque + 1);
  if (v22 > v18 + 0.5 || (v20 = 0.5 - v18, v22 < 0.5 - v18))
  {
    *(&self->mForceIsOpaque + 1) = v20;
  }

  v23 = *(&self->_panX + 1);
  if (v23 > v21 || (v21 = 0.5 - v12, v23 < 0.5 - v12))
  {
    *(&self->_panX + 1) = v21;
    v23 = v21;
  }

  v24 = 0.0;
  if (*(end + 98) == 1)
  {
    v24 = 0.25;
    [(MRLayerEffect *)self->super.mEffectLayer animateCenterOfSlide:@"image0" to:*(&self->mForceIsOpaque + 1) withDuration:v23 andInitialSpeed:0.25, *(end + 8), *(end + 9)];
    [(MRLayerEffect *)self->super.mEffectLayer animateScaleOfSlide:@"image0" to:*(&self->_panY + 1) withDuration:0.25];
    [(MRLayerEffect *)self->super.mEffectLayer animateRotationOfSlide:@"image0" to:*(&self->_scale + 1) withDuration:0.25];
    BYTE1(self->_y0) = 0;
  }

  return v24;
}

- (double)pzrCancel:(id)cancel
{
  if (*(cancel + 98) == 1)
  {
    v4 = 0.25;
    [(MRLayerEffect *)self->super.mEffectLayer animateCenterOfSlide:@"image0" to:*(&self->_rotation + 1) withDuration:*(&self->_startSlideCenter.x + 1), 0.25];
    [(MRLayerEffect *)self->super.mEffectLayer animateScaleOfSlide:@"image0" to:*(&self->_startSlideCenter.y + 1) withDuration:0.25];
    [(MRLayerEffect *)self->super.mEffectLayer animateRotationOfSlide:@"image0" to:*(&self->_startSlideScale + 1) withDuration:0.25];
    BYTE1(self->_y0) = 0;
  }

  else
  {
    *(&self->mForceIsOpaque + 1) = *(&self->_rotation + 1);
    *(&self->_panX + 1) = *(&self->_startSlideCenter.x + 1);
    *(&self->_panY + 1) = *(&self->_startSlideCenter.y + 1);
    *(&self->_scale + 1) = *(&self->_startSlideScale + 1);
    return 0.0;
  }

  return v4;
}

- (void)resetPZR
{
  *(&self->_scale + 1) = 0.0;
  *(&self->_panX + 1) = 0.0;
  *(&self->mForceIsOpaque + 1) = 0;
  *(&self->_panY + 1) = 1.0;
  BYTE1(self->_y0) = 0;
  BYTE4(self->_y0) = 0;
}

- (BOOL)canMoveInDirection:(unsigned __int8)direction withPZR:(id)r
{
  if (BYTE4(self->_y0) != 1)
  {
    return 1;
  }

  v7 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:@"image0"];
  v8 = self->super.mPixelSize.width / self->super.mPixelSize.height;
  [v7 imageAspectRatio];
  v10 = *(&self->_panY + 1);
  v11 = (1.0 - 1.0 / v10) * 0.5;
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = (1.0 - v9 / v8 / v10) * 0.5;
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  return ((direction & 1) == 0 || *(r + 8) >= 0.0 || *(&self->mForceIsOpaque + 1) < v11 + 0.5) && ((direction & 2) == 0 || *(r + 8) <= 0.0 || *(&self->mForceIsOpaque + 1) > 0.5 - v11) && ((direction & 4) == 0 || *(r + 9) <= 0.0 || *(&self->_panX + 1) > 0.5 - v12) && ((direction & 8) == 0 || *(r + 9) >= 0.0 || *(&self->_panX + 1) < v12 + 0.5);
}

@end