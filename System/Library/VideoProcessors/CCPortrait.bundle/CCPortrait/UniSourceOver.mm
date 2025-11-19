@interface UniSourceOver
- (CGRect)extentForImage;
- (UniSourceOver)init;
- (UniSourceOver)initWithDevice:(id)a3;
- (id)inputNameArray;
- (id)outputImage:(id)a3;
- (id)outputNameArray;
- (id)run:(id)a3;
@end

@implementation UniSourceOver

- (UniSourceOver)init
{
  v3.receiver = self;
  v3.super_class = UniSourceOver;
  return [(UniKernel *)&v3 init];
}

- (UniSourceOver)initWithDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UniSourceOver;
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
  v7 = objc_msgSend_inputs(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x29EDB9238]);

  v11 = objc_msgSend__mtlTextureForImage_(UniKernel, v10, v9);
  if (!v11)
  {
    sub_2956CF294();
  }

  v14 = v11;
  v15 = objc_msgSend_device(v11, v12, v13);
  v66 = v9;
  v65 = v15;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v18 = objc_msgSend_newCommandQueue(v15, v16, v17);
  }

  v21 = v18;
  v22 = objc_msgSend_commandBuffer(v18, v19, v20);
  v23 = objc_opt_class();
  v26 = objc_msgSend_description(v23, v24, v25);
  objc_msgSend_setLabel_(v22, v27, v26);

  v30 = objc_msgSend_inputs(self, v28, v29);
  v32 = objc_msgSend_objectForKey_(v30, v31, @"inputBlitImage");

  v34 = objc_msgSend__mtlTextureForImage_(UniKernel, v33, v32);
  v37 = objc_msgSend_inputs(self, v35, v36);
  v39 = objc_msgSend_objectForKey_(v37, v38, @"destOrigin");

  v42 = objc_msgSend_blitCommandEncoder(v22, v40, v41);
  memset(v70, 0, sizeof(v70));
  v69[0] = objc_msgSend_width(v34, v43, v44);
  v69[1] = objc_msgSend_height(v34, v45, v46);
  v69[2] = 1;
  objc_msgSend_X(v39, v47, v48);
  v50 = v49;
  v53 = objc_msgSend_height(v14, v51, v52);
  objc_msgSend_Y(v39, v54, v55);
  v68[0] = v50;
  v68[1] = v53 - (objc_msgSend_height(v34, v57, v58) + v56);
  v68[2] = 0;
  objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v42, v59, v34, 0, 0, v70, v69, v14, 0, 0, v68);
  objc_msgSend_endEncoding(v42, v60, v61);
  v67[0] = v22;
  v67[1] = v14;
  v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v62, v67, 2);

  return v63;
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

- (id)outputImage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = objc_msgSend_inputs(v7, v8, v9);
  v11 = *MEMORY[0x29EDB9238];
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v12, *MEMORY[0x29EDB9238]);
  v15 = objc_msgSend__ciImageForInput_(v7, v14, v13);

  if (!v15)
  {
    sub_2956CF2C0();
  }

  v97 = v4;
  v16 = v15;
  v19 = objc_msgSend_inputs(v7, v17, v18);
  v21 = objc_msgSend_objectForKey_(v19, v20, @"inputBlitImage");

  v23 = objc_msgSend__ciImageForInput_(v7, v22, v21);
  v26 = objc_msgSend_inputs(v7, v24, v25);
  v28 = objc_msgSend_objectForKey_(v26, v27, @"destOrigin");

  v31 = objc_msgSend_inputs(v7, v29, v30);
  v33 = objc_msgSend_objectForKey_(v31, v32, @"_scale");

  if (v23)
  {
    v36 = 1.0;
    if (v33)
    {
      objc_msgSend_floatValue(v33, v34, v35);
      v36 = v37;
    }

    CGAffineTransformMakeScale(&v100, 1.0, -1.0);
    v39 = objc_msgSend_imageByApplyingTransform_(v23, v38, &v100);

    objc_msgSend_extent(v39, v40, v41);
    v43 = -v42;
    objc_msgSend_extent(v39, v44, v45);
    CGAffineTransformMakeTranslation(&v100, v43, -v46);
    v48 = objc_msgSend_imageByApplyingTransform_(v39, v47, &v100);

    if (v36 == 1.0)
    {
      v51 = v36;
    }

    else
    {
      v51 = v36;
      CGAffineTransformMakeScale(&v100, v51, v51);
      v53 = objc_msgSend_imageByApplyingTransform_(v48, v52, &v100);

      v48 = v53;
    }

    objc_msgSend_X(v28, v49, v50);
    v56 = v55 * v51;
    objc_msgSend_Y(v28, v57, v58);
    CGAffineTransformMakeTranslation(&v100, v56, v59 * v51);
    v23 = objc_msgSend_imageByApplyingTransform_(v48, v60, &v100);

    v98 = *MEMORY[0x29EDB9230];
    v99 = v16;
    v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v61, &v99, &v98, 1);
    v54 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v23, v63, @"CISourceOverCompositing", v62);

    objc_msgSend_extent(v54, v64, v65);
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    objc_msgSend_extent(v16, v74, v75);
    v103.origin.x = v76;
    v103.origin.y = v77;
    v103.size.width = v78;
    v103.size.height = v79;
    v102.origin.x = v67;
    v102.origin.y = v69;
    v102.size.width = v71;
    v102.size.height = v73;
    if (!CGRectEqualToRect(v102, v103))
    {
      objc_msgSend_extent(v16, v80, v81);
      v84 = objc_msgSend_imageByCroppingToRect_(v54, v82, v83);

      v54 = v84;
    }

    if (!v54)
    {
      goto LABEL_15;
    }

    objc_msgSend_imageWithCIImage_(UniImage, v80, v54);
  }

  else
  {
    v54 = v16;
    objc_msgSend_imageWithCIImage_(UniImage, v34, v16);
  }
  v85 = ;
  if (v85)
  {
    v87 = v85;
    objc_msgSend_setKernel_(v85, v86, v7);
    goto LABEL_16;
  }

LABEL_15:
  v90 = [UniImage alloc];
  v87 = objc_msgSend_initWithKernel_(v90, v91, v7);
LABEL_16:
  v92 = objc_msgSend_inputs(v7, v88, v89);
  v94 = objc_msgSend_objectForKeyedSubscript_(v92, v93, v11);
  objc_msgSend_setTexture_(v87, v95, v94);

  return v87;
}

- (id)inputNameArray
{
  v4[0] = *MEMORY[0x29EDB9238];
  v4[1] = @"inputBlitImage";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v4, 2);

  return v2;
}

- (id)outputNameArray
{
  v4 = *MEMORY[0x29EDB9238];
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, &v4, 1);

  return v2;
}

@end