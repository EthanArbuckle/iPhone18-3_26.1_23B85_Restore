@interface PTEffectRenderRequest
- (CGRect)inReactionVideoRect;
- (CGRect)inScreenCaptureRect;
- (CGRect)outColorROI;
- (CGSize)inReactionColorSize;
- (PTEffectRenderRequest)init;
- (float)remappedAperture;
- (uint64_t)reactionsCombinedCropRect;
- (void)dealloc;
- (void)setBilbyFloatingMode:(BOOL)mode;
- (void)setDetectedObjects:(__CFDictionary *)objects;
- (void)setRelightStrengthStudioLight:(float)light;
@end

@implementation PTEffectRenderRequest

- (PTEffectRenderRequest)init
{
  v9.receiver = self;
  v9.super_class = PTEffectRenderRequest;
  v2 = [(PTEffectRenderRequest *)&v9 init];
  if (v2)
  {
    [(PTEffectRenderRequest *)v2 setFrameTimeSeconds:CACurrentMediaTime()];
    [(PTEffectRenderRequest *)v2 setEffectType:-1];
    [(PTEffectRenderRequest *)v2 setEffectQuality:-1];
    v2->_apertureSDOF = 0.5;
    +[PTEffectRenderRequest relightStrengthStudioLightDefault];
    v2->_relightStrengthStudioLight = v3;
    [(PTEffectRenderRequest *)v2 setFocusOnAll:0];
    [(PTEffectRenderRequest *)v2 setInScreenCaptureRect:0.028125, 0.05, 0.6, 0.666666667];
    [(PTEffectRenderRequest *)v2 setInReactionVideoRect:0.0, 0.0, 1.0, 1.0];
    [(PTEffectRenderRequest *)v2 setOutColorROI:0.0, 0.0, 1.0, 1.0];
    LODWORD(v4) = 2143289344;
    [(PTEffectRenderRequest *)v2 setLuxLevel:v4];
    v2->_detectedObjects = 0;
    v5 = MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v2->_transform.a = *MEMORY[0x277CBF2C0];
    *&v2->_transform.c = v6;
    *&v2->_transform.tx = *(v5 + 32);
    v2->_suppressGestureTriggeredReactions = 0;
    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  detectedObjects = self->_detectedObjects;
  if (detectedObjects)
  {
    CFRelease(detectedObjects);
    self->_detectedObjects = 0;
  }

  v4.receiver = self;
  v4.super_class = PTEffectRenderRequest;
  [(PTEffectRenderRequest *)&v4 dealloc];
}

- (void)setRelightStrengthStudioLight:(float)light
{
  lightCopy = light;
  if (lightCopy > 1.0)
  {
    lightCopy = 1.0;
  }

  v4 = fmax(lightCopy, 0.0);
  self->_relightStrengthStudioLight = v4;
}

- (void)setDetectedObjects:(__CFDictionary *)objects
{
  detectedObjects = self->_detectedObjects;
  if (detectedObjects)
  {
    CFRelease(detectedObjects);
    self->_detectedObjects = 0;
  }

  if (objects)
  {
    self->_detectedObjects = CFRetain(objects);
  }
}

- (void)setBilbyFloatingMode:(BOOL)mode
{
  v3 = 4;
  if (!mode)
  {
    v3 = 0;
  }

  self->_presenterOverlayMode = v3;
}

- (CGRect)inScreenCaptureRect
{
  objc_copyStruct(v6, &self->_inScreenCaptureRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)inReactionVideoRect
{
  objc_copyStruct(v6, &self->_inReactionVideoRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)inReactionColorSize
{
  objc_copyStruct(v4, &self->_inReactionColorSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)outColorROI
{
  objc_copyStruct(v6, &self->_outColorROI, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (uint64_t)reactionsCombinedCropRect
{
  [self outColorROI];
  v3.f64[1] = v2;
  v5.f64[1] = v4;
  *&v12 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v3).u64[0];
  [self inReactionVideoRect];
  v7.f64[1] = v6;
  v9.f64[1] = v8;
  *&v10 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v7).u64[0];

  return [PTEffectUtil multiplyRectTransform:v12 withRectTransform:v10];
}

- (float)remappedAperture
{
  [(PTEffectRenderRequest *)self apertureSDOF];
  v3 = v2;
  if (v2 > 1.1)
  {
    +[PTEffectRenderRequest apertureSDOFRange];
    if (v5 >= v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (v4 >= v6)
    {
      v6 = v4;
    }

    v3 = (v6 - v4) / (v5 - v4);
  }

  if (v3 <= 0.5)
  {
    return (v3 * 3.2) + 1.4;
  }

  v7 = v3 + -0.5 + v3 + -0.5;
  return ((v3 * 3.2) + 1.4) + (powf(v7, 4.0) * 5.4);
}

@end