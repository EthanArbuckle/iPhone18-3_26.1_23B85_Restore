@interface SingleColorCubeCorrectionStage
+ (int)prewarmShaders:(id)shaders;
- (int)load3DTextureFromData:(const char *)data cubeSize:(unsigned int)size metal:(id)metal outTexture:(id *)texture;
- (int)runOnLuma:(id)luma andChroma:(id)chroma withMask:(id)mask outChroma:(id)outChroma;
@end

@implementation SingleColorCubeCorrectionStage

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v7 = objc_msgSend_sharedInstance(SingleColorCubeCorrectionStageShared, v4, v5, v6);
  v10 = objc_msgSend_getShaders_(v7, v8, shadersCopy, v9);

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

- (int)load3DTextureFromData:(const char *)data cubeSize:(unsigned int)size metal:(id)metal outTexture:(id *)texture
{
  metalCopy = metal;
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
  objc_msgSend_setWidth_(v13, v14, size, v15);
  objc_msgSend_setHeight_(v13, v16, size, v17);
  objc_msgSend_setDepth_(v13, v18, size, v19);
  objc_msgSend_setPixelFormat_(v13, v20, 70, v21);
  objc_msgSend_setUsage_(v13, v22, 1, v23);
  v27 = objc_msgSend_device(metalCopy, v24, v25, v26);
  v30 = objc_msgSend_newTextureWithDescriptor_(v27, v28, v13, v29);
  v31 = *texture;
  *texture = v30;

  v33 = *texture;
  if (!*texture)
  {
    sub_29588B034(v36);
    goto LABEL_7;
  }

  memset(v36, 0, 24);
  v36[3] = size;
  v36[4] = size;
  v36[5] = size;
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v33, v32, v36, 0, 0, data, 4 * size, 4 * size * size);
  v34 = 0;
LABEL_4:

  return v34;
}

- (int)runOnLuma:(id)luma andChroma:(id)chroma withMask:(id)mask outChroma:(id)outChroma
{
  lumaCopy = luma;
  chromaCopy = chroma;
  maskCopy = mask;
  outChromaCopy = outChroma;
  if (!maskCopy || (objc_msgSend_canApplyMaskedCube(self, v13, v14, v15) & 1) != 0)
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
        if (!maskCopy)
        {
          v29 = 8;
        }

        objc_msgSend_setComputePipelineState_(v25, v26, *(&self->_shaders->super.isa + v29), v27);
        objc_msgSend_setImageblockWidth_height_(v28, v30, 32, 32);
        objc_msgSend_setTexture_atIndex_(v28, v31, lumaCopy, 0);
        objc_msgSend_setTexture_atIndex_(v28, v32, chromaCopy, 1);
        objc_msgSend_setTexture_atIndex_(v28, v33, outChromaCopy, 2);
        objc_msgSend_setTexture_atIndex_(v28, v34, self->_defaultCubeTexture, 4);
        if (maskCopy)
        {
          objc_msgSend_setTexture_atIndex_(v28, v35, self->_alternateCubeTexture, 3);
          objc_msgSend_setTexture_atIndex_(v28, v38, maskCopy, 5);
        }

        v53[0] = objc_msgSend_width(outChromaCopy, v35, v36, v37);
        v53[1] = objc_msgSend_height(outChromaCopy, v39, v40, v41);
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