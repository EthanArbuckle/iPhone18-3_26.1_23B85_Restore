@interface SubjectRelightingStage
+ (int)prewarmShaders:(id)a3;
- (SubjectRelightingStage)initWithMetalContext:(id)a3;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 label:(id)a5;
- (unsigned)getSRLStatus;
- (void)reset;
@end

@implementation SubjectRelightingStage

- (SubjectRelightingStage)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_295876644(self);
LABEL_15:
    v7 = 0;
    goto LABEL_8;
  }

  v28.receiver = self;
  v28.super_class = SubjectRelightingStage;
  v6 = [(SubjectRelightingStage *)&v28 init];
  v7 = v6;
  if (!v6)
  {
    sub_2958765E0();
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v9 = objc_msgSend_newBufferWithLength_options_label_(v7, v8, 8460, 0, @"srlV2_Global_Stats");
  srlV2GlobalStatsBuffer = v7->_srlV2GlobalStatsBuffer;
  v7->_srlV2GlobalStatsBuffer = v9;

  if (!v7->_srlV2GlobalStatsBuffer)
  {
    sub_295876544(v7);
    goto LABEL_15;
  }

  v12 = objc_msgSend_newBufferWithLength_options_label_(v7, v11, 271680, 0, @"srlV2_Face_Stats");
  srlV2FaceStatsBuffer = v7->_srlV2FaceStatsBuffer;
  v7->_srlV2FaceStatsBuffer = v12;

  if (!v7->_srlV2FaceStatsBuffer)
  {
    sub_2958764A8(v7);
    goto LABEL_15;
  }

  v15 = objc_msgSend_newBufferWithLength_options_label_(v7, v14, 84, 0, @"srlV2_Rendering_Params");
  srlV2CoeffsBuffer = v7->_srlV2CoeffsBuffer;
  v7->_srlV2CoeffsBuffer = v15;

  if (!v7->_srlV2CoeffsBuffer)
  {
    sub_29587640C(v7);
    goto LABEL_15;
  }

  v20 = objc_msgSend_sharedInstance(SubjectRelightingShared, v17, v18, v19);
  v23 = objc_msgSend_getShaders_(v20, v21, v7->_metalContext, v22);
  shaders = v7->_shaders;
  v7->_shaders = v23;

  if (!v7->_shaders)
  {
    sub_295876370(v7);
    goto LABEL_15;
  }

  v25 = objc_alloc_init(SRLv2Plist);
  srlV2Plist = v7->_srlV2Plist;
  v7->_srlV2Plist = v25;

  v7->_curveParameter = 0.5;
  v7->_mitigationNeeded = 0;
  *&v7->_srlInLivePhotos = 1;
LABEL_8:

  return v7;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [SubjectRelightingShaders alloc];
    v7 = objc_msgSend_initWithMetalContext_(v4, v5, v3, v6);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      sub_2958766E8();
      v7 = 0;
      v8 = -12786;
    }
  }

  else
  {
    sub_29587674C(&v10);
    v7 = 0;
    v8 = v10;
  }

  return v8;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 label:(id)a5
{
  v7 = objc_msgSend_device(self->_metalContext, a2, a3, a4, a5);
  v9 = objc_msgSend_newBufferWithLength_options_(v7, v8, a3, a4);

  objc_msgSend_setLabel_(v9, v10, 0, v11);
  return v9;
}

- (void)reset
{
  lastSRLCommandBuffer = self->_lastSRLCommandBuffer;
  self->_lastSRLCommandBuffer = 0;

  self->_curveParameter = 0.5;
  self->_mitigationNeeded = 0;
}

- (unsigned)getSRLStatus
{
  lastSRLCommandBuffer = self->_lastSRLCommandBuffer;
  if (lastSRLCommandBuffer)
  {
    objc_msgSend_waitUntilCompleted(lastSRLCommandBuffer, a2, v2, v3);
    v9 = *(objc_msgSend_contents(self->_srlV2CoeffsBuffer, v6, v7, v8) + 80);
    self->_curveParameter = v9;
    v10 = vcvts_n_u32_f32(v9, 8uLL);
    if (v9 >= 0.5 || v9 <= 0.25)
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 | 0x80000000;
      self->_mitigationNeeded = 1;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  if (self->_srlInLivePhotos)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  v14 = self->_lastSRLCommandBuffer;
  self->_lastSRLCommandBuffer = 0;

  return v13;
}

@end