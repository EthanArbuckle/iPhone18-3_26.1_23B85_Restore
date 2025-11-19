@interface PTVFXRenderEffectBinding
- (PTVFXRenderEffectBinding)initWithHumanDetections:(id)a3;
- (id)singleDetectionGroupId;
- (int)updateBackgroundDimming:(float)a3;
- (int)updateWithEvent:(id)a3 renderRequest:(id)a4 videoRect:(CGRect)a5 time:(double)a6;
- (uint64_t)screenSpaceToCameraSpace:(float64x2_t)a3 videoRect:(float64_t)a4;
- (void)setInverseCameraProjection:(__n128)a3;
@end

@implementation PTVFXRenderEffectBinding

- (PTVFXRenderEffectBinding)initWithHumanDetections:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PTVFXRenderEffectBinding;
  v6 = [(PTVFXRenderEffectBinding *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_duration = 7.0;
    v6->_forceFadeOutStart = 3.4028e38;
    v6->_active = 1;
    objc_storeStrong(&v6->_humanDetections, a3);
    v8 = [(PTVFXRenderEffectBinding *)v7 singleDetectionGroupId];
    faceDetectionGroupId = v7->_faceDetectionGroupId;
    v7->_faceDetectionGroupId = v8;

    v10 = v7;
  }

  return v7;
}

- (id)singleDetectionGroupId
{
  v3 = [(PTHumanDetections *)self->_humanDetections detectionsFiltered];
  v4 = [(PTHumanDetections *)self->_humanDetections faceDetectionsFilteredState:0];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  groupId = 0;
  do
  {
    v10 = v4[v5];
    if (v10 >= 2)
    {
      if (v10 == 2)
      {
        groupId = v3->groupId;
        ++v7;
      }
    }

    else
    {
      v6 = v3->groupId;
      ++v8;
    }

    ++v5;
    v3 += 36;
  }

  while (v5 != 4);
  if (v8 == 1 || (v11 = 0, !v8) && (v6 = groupId, v7 == 1))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  }

  return v11;
}

- (uint64_t)screenSpaceToCameraSpace:(float64x2_t)a3 videoRect:(float64_t)a4
{
  if (a5.f64[0] > 0.0 && a6 > 0.0)
  {
    a5.f64[1] = a6;
    a3.f64[1] = a4;
    *&a3.f64[0] = vcvt_f32_f64(a3);
    a2 = vdiv_f32(vsub_f32(a2, *&a3.f64[0]), vcvt_f32_f64(a5));
  }

  LODWORD(a3.f64[0]) = *(a1 + 48);
  return [PTEffectUtil screenSpaceToCameraSpace:*&a2 zValue:a3.f64[0] inverseProjection:*(a1 + 144), *(a1 + 160), *(a1 + 176), *(a1 + 192)];
}

- (int)updateWithEvent:(id)a3 renderRequest:(id)a4 videoRect:(CGRect)a5 time:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v57 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  if (!self->_active)
  {
    goto LABEL_37;
  }

  v48 = v13;
  headPositionBinding = self->_headPositionBinding;
  if (self->_faceDetectionGroupId)
  {
    if (headPositionBinding)
    {
      v16 = [(PTHumanDetections *)self->_humanDetections detectionsFiltered];
      v17 = [(PTHumanDetections *)self->_humanDetections faceDetectionsFilteredState:0];
      v18 = 0;
      p_groupId = &v16[4].groupId;
      do
      {
        v20 = *(p_groupId - 4);
        if (v20 == [(NSNumber *)self->_faceDetectionGroupId intValue]&& v17[v18] != 3)
        {
          [PTVFXRenderEffect transformVideoRectToCropCoordinates:v14 effectRenderRequest:*p_groupId];
          v50 = *v21.i64;
          *v21.i8 = vmla_f32(*v21.i8, 0x3F0000003F000000, *&vextq_s8(v21, v21, 8uLL));
          *&v21.i32[1] = 1.0 - *&v21.i32[1];
          [(PTVFXRenderEffectBinding *)self screenSpaceToCameraSpace:*v21.i64 videoRect:x, y, width, height];
          v49 = v22;
          [(PTVFXRenderEffectBinding *)self screenSpaceToCameraSpace:v50 videoRect:x, y, width, height];
          v23 = v49;
          v25 = vsubq_f32(v49, v24);
          v26 = vmulq_f32(v25, v25);
          v23.i32[3] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
          v55 = v23;
          v27 = [MEMORY[0x277CBEA90] dataWithBytes:&v55 length:16];
          [PTVFXRenderEffectBinding setRawValue:v27 onBinding:self->_headPositionBinding];
        }

        ++v18;
        p_groupId += 18;
      }

      while (v18 != 4);
    }
  }

  else if (headPositionBinding)
  {
    v55 = 0uLL;
    v28 = [MEMORY[0x277CBEA90] dataWithBytes:&v55 length:16];
    [PTVFXRenderEffectBinding setRawValue:v28 onBinding:self->_headPositionBinding];
  }

  durationBinding = self->_durationBinding;
  if (durationBinding)
  {
    v30 = [(VFXGraphBinding *)durationBinding rawValue];
    self->_duration = *[v30 bytes];
  }

  v13 = v48;
  if (v48 && self->_positionBinding)
  {
    [v48 position];
    [PTVFXRenderEffect transformVideoPositionToCropCoordinates:v14 effectRenderRequest:1 flipYAxis:?];
    [PTVFXRenderEffectBinding screenSpaceToCameraSpace:"screenSpaceToCameraSpace:videoRect:" videoRect:?];
    v55 = v31;
    v32 = [MEMORY[0x277CBEA90] dataWithBytes:&v55 length:16];
    [PTVFXRenderEffectBinding setRawValue:v32 onBinding:self->_positionBinding];
  }

  v33 = a6 - self->_creationTimeSeconds;
  duration = self->_duration;
  self->_active = v33 < duration;
  v35 = 0.0;
  if (v33 < duration && self->_useBackgroundDimming)
  {
    if (v33 >= 0.660000026)
    {
      v35 = 1.0;
      if (v33 < (duration + -2.0))
      {
        goto LABEL_24;
      }

      v36 = (duration - v33) * 0.5;
    }

    else
    {
      v36 = v33 / 0.660000026;
    }

    v35 = v36;
  }

LABEL_24:
  self->_dimmingFactor = v35;
  forceFadeOutStart = self->_forceFadeOutStart;
  if (forceFadeOutStart < a6)
  {
    v38 = a6 - forceFadeOutStart + a6 - forceFadeOutStart;
    if (v38 <= 1.0)
    {
      v39 = 1.0 - v38;
      v55.f32[0] = v39;
      if (v35 >= v39)
      {
        v35 = v39;
      }
    }

    else
    {
      self->_active = 0;
      v55.i32[0] = 0;
      v35 = 0.0;
    }

    self->_dimmingFactor = v35;
    v40 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v55 length:4];
    opacityValue = self->_opacityValue;
    self->_opacityValue = v40;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = self->_opacityBindings;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v52;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [*(*(&v51 + 1) + 8 * i) setRawValue:self->_opacityValue];
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v44);
    }
  }

LABEL_37:

  return 0;
}

- (int)updateBackgroundDimming:(float)a3
{
  v6 = a3;
  if (self->_backgroundDimmingBinding)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:4];
    [PTVFXRenderEffectBinding setRawValue:v4 onBinding:self->_backgroundDimmingBinding];
  }

  return 0;
}

- (void)setInverseCameraProjection:(__n128)a3
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((a1 + 144), v5, 64, 1, 0);
}

@end