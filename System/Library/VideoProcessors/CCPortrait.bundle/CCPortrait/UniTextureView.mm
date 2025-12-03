@interface UniTextureView
- (CGRect)extentForImage;
- (UniTextureView)init;
- (UniTextureView)initWithDevice:(id)device;
- (id)inputNameArray;
- (id)outputImage:(id)image;
- (id)outputNameArray;
- (id)run:(id)run;
- (id)sibling:(id)sibling;
@end

@implementation UniTextureView

- (UniTextureView)init
{
  v3.receiver = self;
  v3.super_class = UniTextureView;
  return [(UniKernel *)&v3 init];
}

- (UniTextureView)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = UniTextureView;
  v5 = [(UniKernel *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDevice_(v5, v6, deviceCopy);
  }

  return v7;
}

- (id)sibling:(id)sibling
{
  siblingCopy = sibling;
  if (!siblingCopy)
  {
    sub_2956CF448();
  }

  v7 = siblingCopy;
  if ((objc_msgSend_usage(siblingCopy, v5, v6) & 0x10) == 0)
  {
    sub_2956CF41C();
  }

  v10 = objc_msgSend_pixelFormat(v7, v8, v9);
  if (v10 > 30)
  {
    switch(v10)
    {
      case 31:
        v13 = 30;
        goto LABEL_17;
      case 70:
        v13 = 71;
        goto LABEL_17;
      case 71:
        v13 = 70;
        goto LABEL_17;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_17;
  }

  if (v10 == 10)
  {
    v13 = 11;
    goto LABEL_17;
  }

  if (v10 == 11)
  {
    v13 = 10;
    goto LABEL_17;
  }

  if (v10 != 30)
  {
    goto LABEL_14;
  }

  v13 = 31;
LABEL_17:
  v14 = objc_msgSend_inputs(self, v11, v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"desiredFormat");

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_msgSend_unsignedIntegerValue(v16, v17, v18);
    }
  }

  if (!v13)
  {
    sub_2956CF3F0();
  }

  v19 = objc_msgSend_parentTexture(v7, v17, v18);
  v22 = v19;
  if (v19 && objc_msgSend_pixelFormat(v19, v20, v21) == v13)
  {
    v23 = v22;
  }

  else
  {
    v23 = objc_msgSend_newTextureViewWithPixelFormat_(v7, v20, v13);
  }

  v24 = v23;

  return v24;
}

- (id)run:(id)run
{
  runCopy = run;
  v7 = objc_msgSend_inputs(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x29EDB9258]);

  if (!v9)
  {
    sub_2956CF4CC();
  }

  v12 = objc_msgSend_device(v9, v10, v11);
  v15 = v12;
  if (runCopy)
  {
    v16 = runCopy;
  }

  else
  {
    v16 = objc_msgSend_newCommandQueue(v12, v13, v14);
  }

  v19 = v16;
  v20 = objc_msgSend_commandBuffer(v16, v17, v18);
  v23 = objc_msgSend_mk(self, v21, v22);
  v28 = objc_msgSend_label(v23, v24, v25);
  if (v28)
  {
    v29 = objc_msgSend_mk(self, v26, v27);
    v32 = objc_msgSend_label(v29, v30, v31);
    objc_msgSend_setLabel_(v20, v33, v32);
  }

  else
  {
    v34 = objc_opt_class();
    v29 = objc_msgSend_description(v34, v35, v36);
    objc_msgSend_setLabel_(v20, v37, v29);
  }

  v40 = objc_msgSend_inputs(self, v38, v39);
  v42 = objc_msgSend_objectForKey_(v40, v41, *MEMORY[0x29EDB9238]);

  v44 = objc_msgSend__mtlTextureForImage_(UniKernel, v43, v42);
  if (!v44)
  {
    sub_2956CF4A0();
  }

  v47 = v44;
  v48 = objc_msgSend_pixelFormat(v44, v45, v46);
  if (v48 == objc_msgSend_pixelFormat(v9, v49, v50))
  {
    sub_2956CF474();
  }

  v54[0] = v20;
  v54[1] = v9;
  v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v51, v54, 2);

  return v52;
}

- (CGRect)extentForImage
{
  v4 = objc_msgSend_inputs(self, a2, v2);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *MEMORY[0x29EDB9238]);
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

- (id)outputImage:(id)image
{
  imageCopy = image;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = objc_msgSend_inputs(v7, v8, v9);
  v11 = *MEMORY[0x29EDB9238];
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v12, *MEMORY[0x29EDB9238]);
  v15 = objc_msgSend__ciImageForInput_(v7, v14, v13);

  if (!v15)
  {
    sub_2956CF598();
  }

  v79 = imageCopy;
  v16 = v15;
  v19 = objc_msgSend_inputs(v7, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"desiredFormat");

  v23 = v16;
  if (!v21)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  v28 = v25;
  v29 = 0;
  if (isKindOfClass)
  {
    v29 = objc_msgSend_unsignedIntegerValue(v21, v26, v27);
  }

  v30 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v26, @"ur_sRGB_to_Linear");
  v34 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v31, @"ur_Linear_to_sRGB");
  if (v29 == 70)
  {
    objc_msgSend_extent(v16, v32, v33);
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v80 = v16;
    v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v54, &v80, 1);
    objc_msgSend_applyWithExtent_arguments_(v34, v55, v44, v47, v49, v51, v53);
    goto LABEL_12;
  }

  if (v29 == 71)
  {
    objc_msgSend_extent(v16, v32, v33);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v81 = v16;
    v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v43, &v81, 1);
    objc_msgSend_applyWithExtent_arguments_(v30, v45, v44, v36, v38, v40, v42);
    v23 = LABEL_12:;

    goto LABEL_16;
  }

  v44 = uni_logger_api();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    sub_2956CF4F8(v21, v44);
  }

  v23 = v16;
LABEL_16:

  if (!v23)
  {
LABEL_19:
    v61 = [UniImage alloc];
    v58 = objc_msgSend_initWithKernel_(v61, v62, v7);
    goto LABEL_20;
  }

LABEL_17:
  v56 = objc_msgSend_imageWithCIImage_(UniImage, v22, v23);
  if (!v56)
  {
    goto LABEL_19;
  }

  v58 = v56;
  objc_msgSend_setKernel_(v56, v57, v7);
LABEL_20:
  v63 = objc_msgSend_inputs(v7, v59, v60);
  v65 = objc_msgSend_objectForKeyedSubscript_(v63, v64, v11);
  v67 = objc_msgSend__mtlTextureForImage_(UniKernel, v66, v65);

  v70 = MEMORY[0x29EDB9258];
  if (v67 && objc_msgSend_conformsToProtocol_(v67, v68, &unk_2A1CA0A70))
  {
    v71 = objc_msgSend_sibling_(v7, v68, v67);

    if (v71)
    {
      v72 = objc_msgSend_inputs(v7, v68, v69);
      objc_msgSend_setObject_forKeyedSubscript_(v72, v73, v71, *v70);

      v67 = v71;
    }

    else
    {
      v67 = 0;
    }
  }

  v74 = objc_msgSend_inputs(v7, v68, v69);
  v76 = objc_msgSend_objectForKeyedSubscript_(v74, v75, *v70);
  objc_msgSend_setTexture_(v58, v77, v76);

  return v58;
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