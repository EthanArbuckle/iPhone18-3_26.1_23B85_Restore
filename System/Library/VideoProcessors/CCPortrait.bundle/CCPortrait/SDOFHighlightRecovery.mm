@interface SDOFHighlightRecovery
- (id)outputImage;
@end

@implementation SDOFHighlightRecovery

- (id)outputImage
{
  if (!self->inputImage)
  {
    v7 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], a2, v2);
    goto LABEL_7;
  }

  v4 = 1.0;
  if (!self->inputScale)
  {
    objc_msgSend_floatValue(0, a2, v2);
    v4 = v5;
  }

  if (roundf(v4 * objc_msgSend_intValue(self->inputIterations, a2, v2)) == 0.0)
  {
    v7 = self->inputImage;
LABEL_7:
    v8 = v7;
    goto LABEL_13;
  }

  inputIterations = self->inputIterations;
  v81[0] = @"iterations";
  v81[1] = @"dynamicParams";
  inputDynamicParams = self->inputDynamicParams;
  v82[0] = inputIterations;
  v82[1] = inputDynamicParams;
  inputTileSize = self->inputTileSize;
  v81[2] = @"tileSize";
  v81[3] = @"scanKernel";
  inputScanKernel = self->inputScanKernel;
  v82[2] = inputTileSize;
  v82[3] = inputScanKernel;
  inputDiffuseKernel = self->inputDiffuseKernel;
  v81[4] = @"diffuseKernel";
  v81[5] = @"copyBackKernel";
  inputCopyBackKernel = self->inputCopyBackKernel;
  v82[4] = inputDiffuseKernel;
  v82[5] = inputCopyBackKernel;
  inputCopyKernel = self->inputCopyKernel;
  v81[6] = @"copyKernel";
  v81[7] = @"constants";
  inputConstants = self->inputConstants;
  v82[6] = inputCopyKernel;
  v82[7] = inputConstants;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v6, v82, v81, 8);
  v18 = self->inputImage;
  objc_msgSend_extent(v18, v19, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  memset(&v80, 0, sizeof(v80));
  CGAffineTransformMakeScale(&v80, 1.0 / v4, 1.0 / v4);
  v79 = v80;
  v84.origin.x = v22;
  v84.origin.y = v24;
  v84.size.width = v26;
  v84.size.height = v28;
  v85 = CGRectApplyAffineTransform(v84, &v79);
  v86 = CGRectIntegral(v85);
  width = v86.size.width;
  height = v86.size.height;
  objc_msgSend_extent(v18, v31, v32, v86.origin.x, v86.origin.y);
  v34 = width / v33;
  objc_msgSend_extent(v18, v35, v36);
  CGAffineTransformMakeScale(&v79, v34, height / v37);
  v80 = v79;
  if (v4 != 1.0)
  {
    v40 = objc_msgSend_imageByClampingToExtent(v18, v38, v39);

    v79 = v80;
    v18 = objc_msgSend_imageByApplyingTransform_highQualityDownsample_(v40, v41, &v79, 1);

    v43 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v42, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v43, v44, &unk_2A1C955D8, @"scale");
    v45 = MEMORY[0x29EDBA070];
    objc_msgSend_floatValue(self->inputIterations, v46, v47);
    *&v49 = v48 / v4;
    v52 = objc_msgSend_numberWithFloat_(v45, v50, v51, v49);
    objc_msgSend_setObject_forKeyedSubscript_(v43, v53, v52, @"iterations");

    v17 = v43;
  }

  v54 = objc_msgSend_clearImage(MEMORY[0x29EDB9178], v38, v39);
  v56 = objc_msgSend_imageByInsertingIntermediate_(v54, v55, 0);

  objc_msgSend_extent(v18, v57, v58);
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v78[0] = v18;
  v78[1] = v56;
  v68 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v67, v78, 2);
  v70 = objc_msgSend_applyWithExtent_inputs_arguments_error_(HighlightRecoveryProcessor, v69, v68, v17, 0, v60, v62, v64, v66);

  if (v4 != 1.0)
  {
    CGAffineTransformMakeScale(&v79, v4, v4);
    v74 = objc_msgSend_imageByApplyingTransform_highQualityDownsample_(v70, v73, &v79, 1);

    v70 = v74;
  }

  objc_msgSend_extent(self->inputImage, v71, v72);
  v8 = objc_msgSend_imageByCroppingToRect_(v70, v75, v76);

LABEL_13:

  return v8;
}

@end