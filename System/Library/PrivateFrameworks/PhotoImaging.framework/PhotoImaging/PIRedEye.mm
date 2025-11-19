@interface PIRedEye
- (id)outputImage;
@end

@implementation PIRedEye

- (id)outputImage
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = self->_inputImage;
  v4 = v3;
  inputDestinationImage = self->_inputDestinationImage;
  if (!inputDestinationImage)
  {
    inputDestinationImage = v3;
  }

  v6 = inputDestinationImage;
  v7 = v6;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (inputCorrectionInfo = self->_inputCorrectionInfo) != 0 && [(NSArray *)inputCorrectionInfo count])
  {
    [v4 extent];
    v11 = v10;
    *&rect[1] = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v7 extent];
    v19 = v18;
    *rect = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    inputCameraModel = self->_inputCameraModel;
    if (!inputCameraModel)
    {
      inputCameraModel = &stru_1F46EAF88;
    }

    rect[2] = inputCameraModel;
    v57.origin.x = v19;
    v57.origin.y = v21;
    v57.size.width = v23;
    v57.size.height = v25;
    Width = CGRectGetWidth(v57);
    v58.origin.x = v11;
    v58.origin.y = v13;
    v58.size.width = v15;
    v58.size.height = v17;
    v28 = Width / CGRectGetWidth(v58);
    *&v59.origin.x = rect[0];
    v59.origin.y = v21;
    v59.size.width = v23;
    v59.size.height = v25;
    Height = CGRectGetHeight(v59);
    *&v60.origin.x = rect[1];
    v60.origin.y = v13;
    v60.size.width = v15;
    v60.size.height = v17;
    v30 = Height / CGRectGetHeight(v60);
    if (v28 <= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v28;
    }

    *&rect[3] = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    rect[1] = self->_inputCorrectionInfo;
    v32 = [rect[1] countByEnumeratingWithState:&rect[3] objects:v54 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v47;
      do
      {
        v35 = 0;
        v36 = v7;
        v37 = v4;
        do
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(rect[1]);
          }

          v38 = *(rect[4] + 8 * v35);
          v52[0] = @"inputCorrectionInfo";
          v52[1] = @"inputCameraModel";
          v53[0] = v38;
          v53[1] = rect[2];
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
          v40 = [v37 imageByApplyingFilter:@"CIRedEyeCorrection" withInputParameters:v39];

          v4 = [v40 imageByCompositingOverImage:v37];

          v50 = @"inputScale";
          v41 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
          v51 = v41;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v43 = [v40 imageByApplyingFilter:@"CILanczosScaleTransform" withInputParameters:v42];

          v7 = [v43 imageByCompositingOverImage:v36];

          ++v35;
          v36 = v7;
          v37 = v4;
        }

        while (v33 != v35);
        v33 = [rect[1] countByEnumeratingWithState:&rect[3] objects:v54 count:16];
      }

      while (v33);
    }

    v44 = v7;
  }

  else
  {
    v44 = v7;
  }

  return v44;
}

@end