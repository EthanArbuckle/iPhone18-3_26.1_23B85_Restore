@interface MRTransitionOrigamiFlip
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (MRTransitionOrigamiFlip)initWithTransitionID:(id)a3;
- (void)_cleanupSwingTimings;
- (void)cleanup;
- (void)renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)setAttributes:(id)a3;
@end

@implementation MRTransitionOrigamiFlip

- (MRTransitionOrigamiFlip)initWithTransitionID:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRTransitionOrigamiFlip;
  v3 = [(MRTransition *)&v6 initWithTransitionID:a3];
  v4 = v3;
  if (v3)
  {
    [(MRTransitionOrigamiFlip *)v3 _setupSwingTimings];
  }

  return v4;
}

- (void)cleanup
{
  if (self->super.mDescription)
  {
    [(MRTransitionOrigamiFlip *)self _cleanupSwingTimings];
    v3.receiver = self;
    v3.super_class = MRTransitionOrigamiFlip;
    [(MRTransition *)&v3 cleanup];
  }
}

- (void)_cleanupSwingTimings
{
  self->mBigSwing = 0;

  self->mSideSwing = 0;
}

- (void)setAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = MRTransitionOrigamiFlip;
  [(MRTransition *)&v4 setAttributes:a3];
  self->super._direction = 0;
}

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  v6.receiver = self;
  v6.super_class = MRTransitionOrigamiFlip;
  return [(MRTransition *)&v6 prerenderForTime:a4 inContext:a5 withArguments:a3];
}

- (void)renderAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  [a4 localAspectRatio];
  v10 = 1.0 / v9;
  if ((1.0 / v9) <= 0.0)
  {
    return;
  }

  if (self->super._direction - 1) < 8u && ((0x8Bu >> (self->super._direction - 1)))
  {
    v11 = dword_1634F0[(self->super._direction - 1)];
  }

  else
  {
    v11 = [-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"direction", "unsignedIntegerValue"}];
  }

  [-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"offsetFromMiddle", "floatValue"}];
  v13 = v12;
  v14 = v12;
  mSourceLayer = self->super.mSourceLayer;
  [(MRLayerClock *)[(MRLayer *)mSourceLayer clock] externalTime];
  v16 = [(MRLayer *)mSourceLayer patchworkAtTime:a4 inContext:a5 withArguments:?];
  mTargetLayer = self->super.mTargetLayer;
  [(MRLayerClock *)[(MRLayer *)mTargetLayer clock] externalTime];
  v18 = [(MRLayer *)mTargetLayer patchworkAtTime:a4 inContext:a5 withArguments:?];
  v20 = v11 & 1;
  v21 = &OBJC_IVAR___MRTransitionOrigamiFlip_mSideSwing;
  if (v11)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = v10;
  }

  if ((v11 & 1) == 0)
  {
    v21 = &OBJC_IVAR___MRTransitionOrigamiFlip_mBigSwing;
  }

  v23 = *(&self->super.super.isa + *v21);
  v43 = a3;
  if (v11)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  *&v19 = a3;
  [v23 valueAtTime:v19];
  if (v11 >= 2)
  {
    v26 = v18;
  }

  else
  {
    v26 = v16;
  }

  if (v11 >= 2)
  {
    v27 = 3.14159265 - v25;
    v28 = v27;
  }

  else
  {
    v16 = v18;
    v28 = v25;
  }

  v29 = __sincosf_stret(v28);
  [a4 cull:v24];
  v30 = -v29.__cosval;
  sinval = v29.__sinval;
  if (v13 <= 0.0)
  {
    if (v13 >= 0.0)
    {
      v34 = 1.57079637;
      goto LABEL_26;
    }

    v32 = v20 == 0;
    v33 = &unk_1634D0;
  }

  else
  {
    v32 = v20 == 0;
    v33 = &unk_1634E0;
  }

  v34 = v33[v32];
LABEL_26:
  v35 = v22 * v13;
  v36 = (v14 + (1.0 - v14) * v30) * v22;
  v37 = (1.0 - v14) * sinval * v22;
  v44 = v36;
  v45 = v37;
  v38 = v28;
  v39 = v34;
  if (v34 >= v38)
  {
    if (v11 >= 2)
    {
      [v23 timeFirstAtRestValue];
      if (v40 <= v43)
      {
        goto LABEL_32;
      }
    }

    v46 = 3;
    v47 = v11 & 1;
    v48 = 0;
    v49 = -v22;
    *v50 = -v22;
    *&v50[4] = 0;
    v51 = v35;
    v52 = v35;
    v53 = 0;
    v54 = v22;
    v55 = v44;
    *v56 = v45;
    memset(&v56[4], 0, 116);
    RenderPatchworkWithMesh(v16, &v46, a4);
  }

  if (v11 > 1 || ([v23 timeFirstAtRestValue], v41 > v43))
  {
LABEL_32:
    v42.f64[0] = v14 + (v14 + 1.0) * v30;
    v42.f64[1] = (v14 + 1.0) * sinval;
    v46 = 3;
    v47 = v11 & 1;
    v48 = 0;
    v49 = -v22;
    *v50 = vcvt_f32_f64(vmulq_n_f64(v42, v22));
    *&v50[8] = 0;
    v51 = v35;
    v52 = v35;
    v53 = 0;
    v54 = v22;
    v55 = v22;
    memset(v56, 0, sizeof(v56));
    RenderPatchworkWithMesh(v26, &v46, a4);
  }

  if (v39 < v38)
  {
    v46 = 3;
    v47 = v11 & 1;
    v48 = 0;
    v49 = -v22;
    *v50 = -v22;
    *&v50[4] = 0;
    v51 = v35;
    v52 = v35;
    v53 = 0;
    v54 = v22;
    v55 = v44;
    *v56 = v45;
    memset(&v56[4], 0, 116);
    RenderPatchworkWithMesh(v16, &v46, a4);
  }

  [a4 cull:0];
  [v16 removeImages];
  [v26 removeImages];
}

@end