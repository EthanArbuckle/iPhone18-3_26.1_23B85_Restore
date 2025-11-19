@interface CMIColourConstancyRegistrationV1
- (CMIColourConstancyRegistrationV1)initWithMetalContext:(id)a3;
- (__n128)homography;
- (int)prepareToProcess:(int)a3;
- (int)purgeResources;
- (int)registerImage:(id)a3 referenceLumaTexture:(id)a4;
- (int)warpImage:(id)a3 outputWarpedTexture:(id)a4;
@end

@implementation CMIColourConstancyRegistrationV1

- (CMIColourConstancyRegistrationV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CMIColourConstancyRegistrationV1;
  v6 = [(CMIColourConstancyRegistrationV1 *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    sub_13BA8();
LABEL_7:
    v9 = 0;
    goto LABEL_4;
  }

  if (!v5)
  {
    sub_13B04();
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  v7[2].i32[0] = 0;
  v8 = matrix_identity_float3x3.columns[1];
  v7[3] = matrix_identity_float3x3.columns[0];
  v7[4] = v8;
  v7[5] = matrix_identity_float3x3.columns[2];
  v9 = v7;
LABEL_4:

  return v9;
}

- (int)purgeResources
{
  regWarpGPU = self->_regWarpGPU;
  self->_regWarpGPU = 0;

  warpStage = self->_warpStage;
  self->_warpStage = 0;

  return 0;
}

- (int)prepareToProcess:(int)a3
{
  self->_registrationProcessingType = a3;
  if (a3)
  {
    sub_13C4C();
    return 0;
  }

  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  [RegWarpPP getDefaults:v16];
  BYTE12(v17) = 0;
  DWORD1(v17) = 20;
  v4 = [FigRegWarpPPGPU alloc];
  v5 = [(FigMetalContext *)self->_metalContext commandQueue];
  v6 = [v4 initWithOptionalCommandQueue:v5 config:v16];
  regWarpGPU = self->_regWarpGPU;
  self->_regWarpGPU = v6;

  if (self->_regWarpGPU)
  {
    v8 = [(FigMetalContext *)self->_metalContext allocator];

    if (v8)
    {
      v9 = [(FigMetalContext *)self->_metalContext allocator];
      [(FigRegWarpPPGPU *)self->_regWarpGPU setAllocator:v9];

      if (!FigGetCFPreferenceNumberWithDefault())
      {
        v10 = [CMIWarpStage alloc];
        v11 = [(FigMetalContext *)self->_metalContext commandQueue];
        v12 = [(FigMetalContext *)self->_metalContext allocator];
        v13 = [v10 initWithOptionalCommandQueue:v11 allocator:v12];
        warpStage = self->_warpStage;
        self->_warpStage = v13;

        if (!self->_warpStage)
        {
          sub_13CC8();
        }
      }

      return 0;
    }

    sub_13D3C(&v18);
  }

  else
  {
    sub_13DE8(&v18);
  }

  return v18;
}

- (int)registerImage:(id)a3 referenceLumaTexture:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  if (!self->_registrationProcessingType)
  {
    if (-[FigRegWarpPPGPU allocateResources:imageHeight:imageFormat:externalMemory:externalMemorySize:](self->_regWarpGPU, "allocateResources:imageHeight:imageFormat:externalMemory:externalMemorySize:", [v7 width], objc_msgSend(v7, "height"), objc_msgSend(v7, "pixelFormat"), 0, 0))
    {
      sub_13E94();
    }

    else if ([(FigRegWarpPPGPU *)self->_regWarpGPU processReferenceTexture:v8 regionOfInterest:0 numKeypoints:&v15])
    {
      sub_13F74();
    }

    else
    {
      v10 = [(FigRegWarpPPGPU *)self->_regWarpGPU processNonReferenceTexture:v6 outputTransform:v16];
      if (v10 == -6 || !v10)
      {
        HIDWORD(v11) = HIDWORD(v16[0]);
        v12 = *(v16 + 12);
        *&self[1].super.isa = v16[0];
        *&self[1]._regWarpGPU = v12;
        *&v11 = *(&v16[1] + 1);
        DWORD2(v11) = v17;
        *&self[1]._registrationProcessingType = v11;
        [(FigRegWarpPPGPU *)self->_regWarpGPU releaseResources];
        v9 = 0;
        goto LABEL_9;
      }

      fig_log_get_emitter();
      FigDebugAssert3();
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = -1;
  }

LABEL_9:

  return v9;
}

- (int)warpImage:(id)a3 outputWarpedTexture:(id)a4
{
  v4 = [(CMIWarpStage *)self->_warpStage runWarpUsingTransform:a3 inputTex:a4 outputTex:*&self[1].super.isa, *&self[1]._regWarpGPU, *&self[1]._registrationProcessingType];
  if (v4)
  {
    sub_14054();
  }

  return v4;
}

- (__n128)homography
{
  result = *(a1 + 48);
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  return result;
}

@end