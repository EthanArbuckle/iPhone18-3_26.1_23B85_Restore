@interface UniScaleImage
- (CGRect)extentForImage;
- (UniScaleImage)initWithDevice:(id)a3;
- (id)inputNameArray;
- (id)outputImage:(id)a3;
- (id)outputNameArray;
- (id)run:(id)a3;
- (int)_loadShaders:(id)a3;
@end

@implementation UniScaleImage

- (UniScaleImage)initWithDevice:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UniScaleImage;
  v5 = [(UniKernel *)&v10 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDevice_(v5, v6, v4);
    objc_msgSend__loadShaders_(v7, v8, v4);
  }

  return v7;
}

- (id)run:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_inputs(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x29EDB9238]);

  v12 = objc_msgSend_inputs(self, v10, v11);
  v14 = objc_msgSend_objectForKey_(v12, v13, *MEMORY[0x29EDB9258]);

  v16 = objc_msgSend__mtlTextureForImage_(UniKernel, v15, v9);
  v18 = objc_msgSend__mtlTextureForImage_(UniKernel, v17, v14);
  if (!v16)
  {
    sub_2956CF318();
  }

  v21 = v18;
  if (!v18)
  {
    sub_2956CF2EC();
  }

  v64 = v9;
  v22 = objc_msgSend_device(v16, v19, v20);
  v25 = v22;
  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v26 = objc_msgSend_newCommandQueue(v22, v23, v24);
  }

  v29 = v26;
  v30 = objc_msgSend_commandBuffer(v26, v27, v28);
  v31 = objc_opt_class();
  v34 = objc_msgSend_description(v31, v32, v33);
  objc_msgSend_setLabel_(v30, v35, v34);

  if (self->_downsampleRGBA)
  {
    v38 = objc_msgSend_width(v16, v36, v37);
    if (v38 == objc_msgSend_width(v21, v39, v40) && (v43 = objc_msgSend_height(v16, v41, v42), v43 == objc_msgSend_height(v21, v44, v45)))
    {
      v46 = objc_msgSend_blitCommandEncoder(v30, v41, v42);
      objc_msgSend_copyFromTexture_toTexture_(v46, v47, v16, v21);
      objc_msgSend_endEncoding(v46, v48, v49);
    }

    else
    {
      v51 = objc_msgSend_computeCommandEncoder(v30, v41, v42);
      objc_msgSend_setComputePipelineState_(v51, v52, self->_downsampleRGBA);
      objc_msgSend_setTexture_atIndex_(v51, v53, v16, 0);
      objc_msgSend_setTexture_atIndex_(v51, v54, v21, 1);
      v68[0] = (objc_msgSend_width(v21, v55, v56) + 15) >> 4;
      v68[1] = (objc_msgSend_height(v21, v57, v58) + 15) >> 4;
      v68[2] = 1;
      v66 = vdupq_n_s64(0x10uLL);
      v67 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v51, v59, v68, &v66);
      objc_msgSend_endEncoding(v51, v60, v61);
    }

    v65[0] = v30;
    v65[1] = v21;
    v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v50, v65, 2);
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

- (CGRect)extentForImage
{
  v4 = objc_msgSend_inputs(self, a2, v2);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *MEMORY[0x29EDB9258]);
  v8 = objc_msgSend__ciImageForInput_(self, v7, v6);

  objc_msgSend_extent(v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)outputImage:(id)a3
{
  v3 = objc_msgSend_copy(self, a2, a3);
  v6 = objc_msgSend_inputs(v3, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, *MEMORY[0x29EDB9238]);

  v10 = objc_msgSend__ciImageForInput_(v3, v9, v8);
  v13 = objc_msgSend_inputs(v3, v11, v12);
  v15 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x29EDB9248]);

  v18 = v10;
  if (v18)
  {
    memset(&v40, 0, sizeof(v40));
    objc_msgSend_X(v15, v16, v17);
    v20 = v19;
    objc_msgSend_Y(v15, v21, v22);
    CGAffineTransformMakeScale(&v40, v20, v23);
    v39 = v40;
    if (CGAffineTransformIsIdentity(&v39))
    {
      v25 = v18;
      objc_msgSend_imageWithCIImage_(UniImage, v24, v18);
    }

    else
    {
      v39 = v40;
      v25 = objc_msgSend_imageByApplyingTransform_highQualityDownsample_(v18, v24, &v39, 0);

      if (!v25)
      {
        goto LABEL_9;
      }

      objc_msgSend_imageWithCIImage_(UniImage, v26, v25);
    }
    v27 = ;
    if (v27)
    {
      v29 = v27;
      objc_msgSend_setKernel_(v27, v28, v3);
      goto LABEL_10;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_9:
  v32 = [UniImage alloc];
  v29 = objc_msgSend_initWithKernel_(v32, v33, v3);
LABEL_10:
  v34 = objc_msgSend_inputs(v3, v30, v31);
  v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, *MEMORY[0x29EDB9258]);
  objc_msgSend_setTexture_(v29, v37, v36);

  return v29;
}

- (id)inputNameArray
{
  v4 = *MEMORY[0x29EDB9238];
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, &v4, 1);

  return v2;
}

- (id)outputNameArray
{
  v4 = *MEMORY[0x29EDB9258];
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, &v4, 1);

  return v2;
}

- (int)_loadShaders:(id)a3
{
  v4 = MEMORY[0x29EDB9F48];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x29EDC0A40]);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v8, v9, v7, 0);
    v12 = objc_msgSend_computePipelineStateFor_constants_(inited, v11, @"bilinearResampling", 0);
    downsampleRGBA = self->_downsampleRGBA;
    self->_downsampleRGBA = v12;

    v14 = 0;
  }

  else
  {
    inited = uni_logger_api();
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_2956CF344(self, inited);
    }

    v14 = -1;
  }

  return v14;
}

@end