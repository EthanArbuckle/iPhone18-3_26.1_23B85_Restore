@interface SingleColorCubeCorrectionStage
+ (int)prewarmShaders:(id)a3;
- (int)load3DTextureFromData:(const char *)a3 cubeSize:(unsigned int)a4 metal:(id)a5 outTexture:(id *)a6;
- (int)runOnLuma:(id)a3 andChroma:(id)a4 withMask:(id)a5 outChroma:(id)a6;
@end

@implementation SingleColorCubeCorrectionStage

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_sharedInstance(SingleColorCubeCorrectionStageShared, v4, v5, v6);
  v10 = objc_msgSend_getShaders_(v7, v8, v3, v9);

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -12786;
  }

  return v11;
}

- (int)load3DTextureFromData:(const char *)a3 cubeSize:(unsigned int)a4 metal:(id)a5 outTexture:(id *)a6
{
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x29EDBB670]);
  v13 = v10;
  if (!v10)
  {
    sub_29588B0D0(v36);
LABEL_7:
    v34 = v36[0];
    goto LABEL_4;
  }

  objc_msgSend_setTextureType_(v10, v11, 7, v12);
  objc_msgSend_setWidth_(v13, v14, a4, v15);
  objc_msgSend_setHeight_(v13, v16, a4, v17);
  objc_msgSend_setDepth_(v13, v18, a4, v19);
  objc_msgSend_setPixelFormat_(v13, v20, 70, v21);
  objc_msgSend_setUsage_(v13, v22, 1, v23);
  v27 = objc_msgSend_device(v9, v24, v25, v26);
  v30 = objc_msgSend_newTextureWithDescriptor_(v27, v28, v13, v29);
  v31 = *a6;
  *a6 = v30;

  v33 = *a6;
  if (!*a6)
  {
    sub_29588B034(v36);
    goto LABEL_7;
  }

  memset(v36, 0, 24);
  v36[3] = a4;
  v36[4] = a4;
  v36[5] = a4;
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v33, v32, v36, 0, 0, a3, 4 * a4, 4 * a4 * a4);
  v34 = 0;
LABEL_4:

  return v34;
}

- (int)runOnLuma:(id)a3 andChroma:(id)a4 withMask:(id)a5 outChroma:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16 = a6;
  if (!v12 || (objc_msgSend_canApplyMaskedCube(self, v13, v14, v15) & 1) != 0)
  {
    v17 = objc_msgSend_commandQueue(self->_metal, v13, v14, v15);
    v21 = objc_msgSend_commandBuffer(v17, v18, v19, v20);

    if (v21)
    {
      v25 = objc_msgSend_computeCommandEncoder(v21, v22, v23, v24);
      if (v25)
      {
        v28 = v25;
        v29 = 16;
        if (!v12)
        {
          v29 = 8;
        }

        objc_msgSend_setComputePipelineState_(v25, v26, *(&self->_shaders->super.isa + v29), v27);
        objc_msgSend_setImageblockWidth_height_(v28, v30, 32, 32);
        objc_msgSend_setTexture_atIndex_(v28, v31, v10, 0);
        objc_msgSend_setTexture_atIndex_(v28, v32, v11, 1);
        objc_msgSend_setTexture_atIndex_(v28, v33, v16, 2);
        objc_msgSend_setTexture_atIndex_(v28, v34, self->_defaultCubeTexture, 4);
        if (v12)
        {
          objc_msgSend_setTexture_atIndex_(v28, v35, self->_alternateCubeTexture, 3);
          objc_msgSend_setTexture_atIndex_(v28, v38, v12, 5);
        }

        v53[0] = objc_msgSend_width(v16, v35, v36, v37);
        v53[1] = objc_msgSend_height(v16, v39, v40, v41);
        v53[2] = 1;
        v51 = vdupq_n_s64(0x10uLL);
        v52 = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v28, v42, v53, &v51);
        objc_msgSend_endEncoding(v28, v43, v44, v45);
        objc_msgSend_commit(v21, v46, v47, v48);

        goto LABEL_10;
      }

      sub_29588B3A0(v21, v53);
    }

    else
    {
      sub_29588B454(v53);
    }

    v49 = v53[0];
    goto LABEL_11;
  }

  sub_29588B338();
LABEL_10:
  v49 = 0;
LABEL_11:

  return v49;
}

@end