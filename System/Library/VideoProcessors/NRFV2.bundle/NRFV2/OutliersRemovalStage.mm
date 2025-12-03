@interface OutliersRemovalStage
+ (int)prewarmShaders:(id)shaders;
- (OutliersRemovalStage)initWithMetalContext:(id)context;
- (int)runWithInput:(id)input output:(id)output gamma:(float)gamma;
@end

@implementation OutliersRemovalStage

- (OutliersRemovalStage)initWithMetalContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = OutliersRemovalStage;
  v6 = [(OutliersRemovalStage *)&v18 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_metal, context);
  if (!v7[1])
  {
    sub_2958CBED0();
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v11 = objc_msgSend_sharedInstance(OutliersRemovalShared, v8, v9, v10);
  v14 = objc_msgSend_getShaders_(v11, v12, v7[1], v13);
  v15 = v7[2];
  v7[2] = v14;

  if (!v7[2])
  {
    sub_2958CBE2C();
    goto LABEL_7;
  }

  v16 = v7;
LABEL_8:

  return v16;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [OutliersRemovalShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (int)runWithInput:(id)input output:(id)output gamma:(float)gamma
{
  inputCopy = input;
  outputCopy = output;
  gammaCopy = gamma;
  v13 = objc_msgSend_commandQueue(self->_metal, v10, v11, v12);
  v17 = objc_msgSend_commandBuffer(v13, v14, v15, v16);

  if (!v17)
  {
    sub_2958CC020(v46);
LABEL_7:
    v42 = v46[0];
    goto LABEL_4;
  }

  v21 = objc_msgSend_computeCommandEncoder(v17, v18, v19, v20);
  if (!v21)
  {
    sub_2958CBF74(v46);
    goto LABEL_7;
  }

  v24 = v21;
  objc_msgSend_setComputePipelineState_(v21, v22, self->_shaders->_outiersRemovalFilter, v23);
  objc_msgSend_setTexture_atIndex_(v24, v25, inputCopy, 0);
  objc_msgSend_setTexture_atIndex_(v24, v26, outputCopy, 1);
  objc_msgSend_setBytes_length_atIndex_(v24, v27, &gammaCopy, 4, 0);
  objc_msgSend_setImageblockWidth_height_(v24, v28, 32, 32);
  v46[0] = objc_msgSend_width(outputCopy, v29, v30, v31) >> 1;
  v46[1] = objc_msgSend_height(outputCopy, v32, v33, v34) >> 1;
  v46[2] = 1;
  v44 = vdupq_n_s64(0x10uLL);
  v45 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v24, v35, v46, &v44);
  objc_msgSend_endEncoding(v24, v36, v37, v38);
  objc_msgSend_commit(v17, v39, v40, v41);

  v42 = 0;
LABEL_4:

  return v42;
}

@end