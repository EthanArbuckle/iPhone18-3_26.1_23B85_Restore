@interface MRTransitionOrigamiFold
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (MRTransitionOrigamiFold)initWithTransitionID:(id)d;
- (void)_cleanupSwingTimings;
- (void)cleanup;
- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)setAttributes:(id)attributes;
@end

@implementation MRTransitionOrigamiFold

- (MRTransitionOrigamiFold)initWithTransitionID:(id)d
{
  v6.receiver = self;
  v6.super_class = MRTransitionOrigamiFold;
  v3 = [(MRTransition *)&v6 initWithTransitionID:d];
  v4 = v3;
  if (v3)
  {
    [(MRTransitionOrigamiFold *)v3 _setupSwingTimings];
  }

  return v4;
}

- (void)cleanup
{
  if (self->super.mDescription)
  {
    [(MRTransitionOrigamiFold *)self _cleanupSwingTimings];
    v3.receiver = self;
    v3.super_class = MRTransitionOrigamiFold;
    [(MRTransition *)&v3 cleanup];
  }
}

- (void)_cleanupSwingTimings
{
  self->mBigSwing = 0;

  self->mSideSwing = 0;
}

- (void)setAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = MRTransitionOrigamiFold;
  [(MRTransition *)&v4 setAttributes:attributes];
  self->super._direction = 0;
}

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v6.receiver = self;
  v6.super_class = MRTransitionOrigamiFold;
  return [(MRTransition *)&v6 prerenderForTime:context inContext:arguments withArguments:time];
}

- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  [context localAspectRatio];
  v10 = 1.0 / v9;
  if ((1.0 / v9) <= 0.0)
  {
    return;
  }

  if (self->super._direction - 1) < 8u && ((0x8Bu >> (self->super._direction - 1)))
  {
    v11 = dword_164078[(self->super._direction - 1)];
  }

  else
  {
    v11 = [-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"direction", "unsignedIntegerValue"}];
  }

  v12 = [-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"numberOfFoldings", "unsignedCharValue"}];
  v74 = v11;
  v14 = v11 & 1;
  if (v11)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = v10;
  }

  v89 = 0;
  v90 = 0;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  memset(v98, 0, sizeof(v98));
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v16 = (v12 + 1);
  timeCopy = time;
  v18 = timeCopy * v16;
  v19 = vcvtms_s32_f32(v18);
  v20 = v12 - 1;
  if ((v12 - 1) <= v19)
  {
    v21 = v12 - 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v18 - v21;
  v73 = v21;
  if (v20 <= v19)
  {
    v26 = &OBJC_IVAR___MRTransitionOrigamiFold_mSideSwing;
    v23 = v14;
    if (!v14)
    {
      v26 = &OBJC_IVAR___MRTransitionOrigamiFold_mBigSwing;
    }

    v27 = *(&self->super.super.isa + *v26);
    v28 = v22 * 0.5;
    *&v13 = v22 * 0.5;
    [v27 valueAtTime:v13];
    v25 = 3.1416 - v29;
    [v27 timeFirstAtRestValue];
    v24 = v28 >= *&v13;
  }

  else
  {
    v23 = v14;
    v24 = 0;
    v25 = ((((v22 * -3.0) * v22) + 1.0) + ((v22 * (v22 + v22)) * v22)) * 3.1416;
  }

  *&v13 = (v15 + v15) / v16;
  v76 = *&v13;
  v31 = __sincosf_stret(v25);
  cosval = v31.__cosval;
  mSourceLayer = self->super.mSourceLayer;
  [(MRLayerClock *)[(MRLayer *)mSourceLayer clock] externalTime];
  v33 = [(MRLayer *)mSourceLayer patchworkAtTime:context inContext:arguments withArguments:?];
  mTargetLayer = self->super.mTargetLayer;
  [(MRLayerClock *)[(MRLayer *)mTargetLayer clock] externalTime];
  v75 = [(MRLayer *)mTargetLayer patchworkAtTime:context inContext:arguments withArguments:?];
  if (!v24)
  {
    v36 = (~v73 + v16);
    v37 = -(v15 - (v76.f32[0] * v36));
    v38 = v15 - (v76.f32[0] * v36);
    if (v74 > 1)
    {
      v39 = -v15;
    }

    else
    {
      v37 = v15;
      v39 = v38;
    }

    LOWORD(v77[0]) = 2;
    WORD1(v77[0]) = v23;
    *(v77 + 1) = v39;
    *(v77 + 2) = v39;
    *(v77 + 12) = 0;
    *(&v77[1] + 1) = v37;
    *(&v77[1] + 2) = v37;
    memset(&v77[1] + 12, 0, 136);
    RenderPatchworkWithMesh(v33, v77, context);
  }

  if (v20 <= v19)
  {
    v41 = v23;
    if (v23)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    [context cull:v42];
    v40 = 3;
  }

  else
  {
    v40 = 2;
    v41 = v23;
  }

  LOWORD(v78) = v40;
  BYTE2(v78) = v41;
  if (v74 <= 1)
  {
    v43 = &v81;
    v44 = &v80 + 3;
    v45 = &v80 + 2;
    *(&v78 + 1) = -v15;
    *(&v78 + 1) = COERCE_UNSIGNED_INT(-v15);
    LOBYTE(v79) = 0;
    *(&v79 + 1) = -(v15 - (v76.f32[0] * (v73 + 1)));
    *(&v79 + 2) = *(&v79 + 1);
    HIDWORD(v79) = 0;
    LOBYTE(v80) = 0;
    *(&v80 + 1) = v76.f32[0] - (v15 - (v76.f32[0] * (v73 + 1)));
    v46 = (v76.f32[0] * v31.__cosval) - (v15 - (v76.f32[0] * (v73 + 1)));
LABEL_32:
    *v45 = v46;
    *v44 = v76.f32[0] * v31.__sinval;
    *v43 = 0;
    goto LABEL_33;
  }

  *(&v78 + 4 * ((v40 - 1) & 3) + 1) = v15;
  v47 = v40;
  *v35.i32 = (v73 + 1);
  v48 = &v78 + 4 * v40 + 1;
  *(v48 - 3) = v15;
  *(v48 - 2) = 0.0;
  *(&v78 + 16 * v40 - 28) = vmls_lane_f32(*(&v78 + 16 * v40 - 12), vdup_lane_s32(v35, 0), v76, 0);
  *(v48 - 4) = 0;
  v49 = &v78 + 16 * v40 - 28;
  *(v49 + 2) = 0;
  v49[12] = 0;
  if (v20 <= v19)
  {
    v43 = &v79;
    v44 = &v78 + 3;
    v45 = &v78 + 2;
    *(&v78 + 1) = *(&v78 + 4 * (v47 & 1) + 1) - v76.f32[0];
    v46 = *(v49 + 1) + (-v76.f32[0] * v31.__cosval);
    goto LABEL_32;
  }

LABEL_33:
  v77[8] = v86;
  v77[9] = v87;
  LODWORD(v77[10]) = v88;
  v77[4] = v82;
  v77[5] = v83;
  v77[6] = v84;
  v77[7] = v85;
  v77[0] = v78;
  v77[1] = v79;
  v77[2] = v80;
  v77[3] = v81;
  RenderPatchworkWithMesh(v75, v77, context);
  v50 = v76.f32[0];
  if (!v24)
  {
    v51 = v76.f32[0] * v31.__sinval;
    if (v20 > v19)
    {
      v52 = v73 + 1;
      v53 = v15 - (v76.f32[0] * (v73 + 1));
      if (v74 <= 1)
      {
        v54 = 0.0;
      }

      else
      {
        v54 = v76.f32[0] * v31.__sinval;
      }

      if (v74 <= 1)
      {
        v55 = -v53;
      }

      else
      {
        v55 = v53 - (v76.f32[0] * v31.__cosval);
      }

      if (v74 <= 1)
      {
        v56 = -v53;
      }

      else
      {
        v56 = v76.f32[0] + v53;
      }

      if (v74 <= 1)
      {
        v57 = v76.f32[0] * v31.__sinval;
      }

      else
      {
        v57 = 0.0;
      }

      if (v74 <= 1)
      {
        v58 = (v76.f32[0] * v31.__cosval) - v53;
      }

      else
      {
        v58 = v15 - (v76.f32[0] * v52);
      }

      if (v74 <= 1)
      {
        v59 = -v53 - v76.f32[0];
      }

      else
      {
        v59 = v15 - (v76.f32[0] * v52);
      }

      if (v19)
      {
        if (v41)
        {
          v60 = 2;
        }

        else
        {
          v60 = 1;
        }

        [context cull:v60];
      }

      LOWORD(v77[0]) = 2;
      WORD1(v77[0]) = v41;
      *(v77 + 4) = __PAIR64__(LODWORD(v58), LODWORD(v59));
      *(v77 + 3) = v57;
      LODWORD(v77[1]) = 0;
      *(&v77[1] + 4) = __PAIR64__(LODWORD(v55), LODWORD(v56));
      *(&v77[1] + 3) = v54;
      memset(&v77[2], 0, 132);
      RenderPatchworkWithMesh(v33, v77, context);
      v50 = v76.f32[0];
      cosval = v31.__cosval;
    }

    if (v73)
    {
      v61 = v15 - (v50 * (v73 - 1));
      v62 = v15 - (v50 * (v73 + 1));
      v63 = v61 - v50;
      v64 = v62 - (v50 * cosval);
      v65 = v50 - v61;
      v66 = (v50 * cosval) - v62;
      if (v74 <= 1)
      {
        v67 = v76.f32[0] * v31.__sinval;
      }

      else
      {
        v67 = 0.0;
      }

      if (v74 <= 1)
      {
        v68 = v66;
      }

      else
      {
        v68 = v62;
      }

      if (v74 <= 1)
      {
        v69 = v65;
      }

      else
      {
        v69 = v61;
      }

      if (v74 > 1)
      {
        v70 = v64;
      }

      else
      {
        v51 = 0.0;
        v70 = -v62;
      }

      if (v74 <= 1)
      {
        v71 = -v61;
      }

      else
      {
        v71 = v63;
      }

      if (v41)
      {
        v72 = 2;
      }

      else
      {
        v72 = 1;
      }

      [context cull:v72];
      LOWORD(v77[0]) = 2;
      WORD1(v77[0]) = v41;
      *(v77 + 4) = __PAIR64__(LODWORD(v70), LODWORD(v71));
      *(v77 + 3) = v51;
      LOBYTE(v77[1]) = 0;
      *(&v77[1] + 1) = v89;
      BYTE3(v77[1]) = v90;
      *(&v77[1] + 4) = __PAIR64__(LODWORD(v68), LODWORD(v69));
      *(&v77[1] + 3) = v67;
      LOBYTE(v77[2]) = 0;
      *(&v77[2] + 1) = v91;
      *(&v77[6] + 1) = v95;
      *(&v77[5] + 1) = v94;
      *(&v77[4] + 1) = v93;
      *(&v77[3] + 1) = v92;
      LODWORD(v77[10]) = *&v98[15];
      *(&v77[9] + 1) = *v98;
      *(&v77[8] + 1) = v97;
      *(&v77[7] + 1) = v96;
      RenderPatchworkWithMesh(v33, v77, context);
    }
  }

  [context cull:0];
  [v33 removeImages];
  [v75 removeImages];
}

@end