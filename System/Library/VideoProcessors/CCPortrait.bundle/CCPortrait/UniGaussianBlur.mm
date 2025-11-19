@interface UniGaussianBlur
- (UniGaussianBlur)init;
- (UniGaussianBlur)initWithDevice:(id)a3;
- (id)inputNameArray;
- (id)outputImage:(id)a3;
- (id)outputNameArray;
- (id)run:(id)a3;
@end

@implementation UniGaussianBlur

- (UniGaussianBlur)init
{
  v3.receiver = self;
  v3.super_class = UniGaussianBlur;
  return [(UniKernel *)&v3 init];
}

- (UniGaussianBlur)initWithDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UniGaussianBlur;
  v5 = [(UniKernel *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDevice_(v5, v6, v4);
  }

  return v7;
}

- (id)run:(id)a3
{
  v4 = a3;
  v73[0] = @"name";
  v73[1] = @"inputRadius";
  v74[0] = @"MPSImageGaussianBlur";
  v7 = objc_msgSend_inputs(self, v5, v6);
  v8 = *MEMORY[0x29EDB9240];
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v9, *MEMORY[0x29EDB9240]);
  v74[1] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v11, v74, v73, 2);

  v15 = objc_msgSend_device(v4, v13, v14);
  v17 = objc_msgSend_findKernel_device_(UniDeviceCache, v16, v12, v15);

  v18 = MEMORY[0x29EDBA0F8];
  v21 = objc_msgSend_inputs(self, v19, v20);
  v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v8);
  v25 = objc_msgSend_stringWithFormat_(v18, v24, @"GaussianBlur_sigma_%@", v23);
  objc_msgSend_setLabel_(v17, v26, v25);

  if (!v17)
  {
    sub_2956CD89C();
  }

  if (v4)
  {
    v31 = v4;
  }

  else
  {
    v32 = objc_msgSend_device(self, v27, v28);
    v31 = objc_msgSend_newCommandQueue(v32, v33, v34);
  }

  v35 = objc_msgSend_commandBuffer(v31, v29, v30);
  v38 = objc_msgSend_mk(self, v36, v37);
  v43 = objc_msgSend_label(v38, v39, v40);
  if (v43)
  {
    v44 = objc_msgSend_mk(self, v41, v42);
    v47 = objc_msgSend_label(v44, v45, v46);
    objc_msgSend_setLabel_(v35, v48, v47);
  }

  else
  {
    v49 = objc_opt_class();
    v44 = objc_msgSend_description(v49, v50, v51);
    objc_msgSend_setLabel_(v35, v52, v44);
  }

  v55 = objc_msgSend_inputs(self, v53, v54);
  v57 = objc_msgSend_objectForKeyedSubscript_(v55, v56, *MEMORY[0x29EDB9238]);
  v59 = objc_msgSend__mtlTextureForImage_(UniKernel, v58, v57);
  v72 = v59;

  v62 = objc_msgSend_inputs(self, v60, v61);
  v64 = objc_msgSend_objectForKeyedSubscript_(v62, v63, *MEMORY[0x29EDB9258]);
  v66 = objc_msgSend__mtlTextureForImage_(UniKernel, v65, v64);

  if (!v59)
  {
    sub_2956CD870();
  }

  if (!v66)
  {
    sub_2956CD844();
  }

  if (v59 == v66)
  {
    objc_msgSend_encodeToCommandBuffer_inPlaceTexture_fallbackCopyAllocator_(v17, v67, v35, &v72, 0);
  }

  else
  {
    objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(v17, v67, v35, v59, v66);
  }

  v71[0] = v35;
  v71[1] = v66;
  v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v68, v71, 2);

  return v69;
}

- (id)outputImage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = objc_msgSend_inputs(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, *MEMORY[0x29EDB9238]);
  v14 = objc_msgSend__ciImageForInput_(v7, v13, v12);

  if (!v14)
  {
    sub_2956CD8F4();
  }

  objc_msgSend_extent(v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v27 = objc_msgSend_imageByClampingToExtent(v14, v25, v26);

  v28 = *MEMORY[0x29EDB9240];
  v31 = objc_msgSend_inputs(v7, v29, v30, *MEMORY[0x29EDB9240]);
  v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, v28);
  v58 = v33;
  v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v34, &v58, &v57, 1);
  v37 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v27, v36, @"CIGaussianBlur", v35);
  v40 = objc_msgSend_imageByCroppingToRect_(v37, v38, v39, v18, v20, v22, v24);

  if (v40 && (objc_msgSend_imageWithCIImage_(UniImage, v41, v40), (v42 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v44 = v42;
    objc_msgSend_setKernel_(v42, v43, v7);
  }

  else
  {
    v47 = [UniImage alloc];
    v44 = objc_msgSend_initWithKernel_(v47, v48, v7);
  }

  v49 = objc_msgSend_inputs(v7, v45, v46);
  v51 = objc_msgSend_objectForKeyedSubscript_(v49, v50, *MEMORY[0x29EDB9258]);
  objc_msgSend_setTexture_(v44, v52, v51);

  v55 = objc_msgSend_texture(v44, v53, v54);
  if (!v55)
  {
    sub_2956CD8C8();
  }

  return v44;
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

@end