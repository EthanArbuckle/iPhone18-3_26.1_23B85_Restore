@interface UniCombineYCbCr
- (UniCombineYCbCr)initWithDevice:(id)device;
- (id)inputNameArray;
- (id)outputImage:(id)image;
- (id)outputNameArray;
- (id)run:(id)run;
@end

@implementation UniCombineYCbCr

- (UniCombineYCbCr)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = UniCombineYCbCr;
  v5 = [(UniKernel *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDevice_(v5, v6, deviceCopy);
  }

  return v7;
}

- (id)run:(id)run
{
  v3 = objc_msgSend_null(MEMORY[0x29EDB8E28], a2, run);
  v7 = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v4, &v7, 1);

  return v5;
}

- (id)outputImage:(id)image
{
  imageCopy = image;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = objc_msgSend_inputs(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, *MEMORY[0x29EDB9238]);
  v14 = objc_msgSend__ciImageForInput_(v7, v13, v12);

  if (!v14)
  {
    sub_2956CD380();
  }

  v17 = objc_msgSend_inputs(v7, v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"inputChroma");
  v21 = objc_msgSend__ciImageForInput_(v7, v20, v19);

  if (!v21)
  {
    sub_2956CD354();
  }

  v24 = objc_msgSend_imageWithYImage_CrCbImage_CrCbScale_matrix_fullRange_colorSpace_(MEMORY[0x29EDB9178], v22, v14, v21, 2, 709, 1, 0);
  if (v24 && (objc_msgSend_imageWithCIImage_(UniImage, v23, v24), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = v25;
    objc_msgSend_setKernel_(v25, v26, v7);
  }

  else
  {
    v30 = [UniImage alloc];
    v27 = objc_msgSend_initWithKernel_(v30, v31, v7);
  }

  v32 = objc_msgSend_inputs(v7, v28, v29);
  v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x29EDB9258]);
  objc_msgSend_setTexture_(v27, v35, v34);

  v38 = objc_msgSend_texture(v27, v36, v37);
  if (!v38)
  {
    sub_2956CD328();
  }

  return v27;
}

- (id)inputNameArray
{
  v4[0] = *MEMORY[0x29EDB9238];
  v4[1] = @"inputChroma";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v4, 2);

  return v2;
}

- (id)outputNameArray
{
  v4 = *MEMORY[0x29EDB9258];
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, &v4, 1);

  return v2;
}

@end