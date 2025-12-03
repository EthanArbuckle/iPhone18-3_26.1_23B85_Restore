@interface _PIDynamicLocalLightMapPrepare
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation _PIDynamicLocalLightMapPrepare

+ (id)customAttributes
{
  v25[4] = *MEMORY[0x1E69E9840];
  v24[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7C0];
  v23[0] = *MEMORY[0x1E695F790];
  v23[1] = v2;
  v23[2] = *MEMORY[0x1E695F778];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v25[0] = v3;
  v24[1] = @"inputLightMapWidth";
  v5 = *MEMORY[0x1E695F6A0];
  v19[0] = *MEMORY[0x1E695F6D8];
  v4 = v19[0];
  v19[1] = v5;
  v22[0] = &unk_1F471F730;
  v22[1] = &unk_1F471F730;
  v7 = *MEMORY[0x1E695F718];
  v8 = *MEMORY[0x1E695F698];
  v20 = *MEMORY[0x1E695F6F0];
  v6 = v20;
  v21 = v8;
  v22[2] = v7;
  v22[3] = @"NSNumber";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v19 count:4];
  v25[1] = v9;
  v24[2] = @"inputLightMapHeight";
  v17[0] = v4;
  v17[1] = v5;
  v18[0] = &unk_1F471F730;
  v18[1] = &unk_1F471F730;
  v17[2] = v6;
  v17[3] = v8;
  v18[2] = v7;
  v18[3] = @"NSNumber";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v25[2] = v10;
  v24[3] = @"inputGuidedFilterEpsilon";
  v15[0] = v4;
  v15[1] = v5;
  v16[0] = &unk_1F471F730;
  v16[1] = &unk_1F471F740;
  v11 = *MEMORY[0x1E695F758];
  v15[2] = v6;
  v15[3] = v8;
  v16[2] = v11;
  v16[3] = @"NSNumber";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v25[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];

  return v13;
}

- (id)outputImage
{
  v62 = *MEMORY[0x1E69E9840];
  inputLightMap = self->inputLightMap;
  if (inputLightMap)
  {
    inputLightMapWidth = self->inputLightMapWidth;
    inputLightMapHeight = self->inputLightMapHeight;
    v6 = inputLightMap;
    v7 = inputLightMapWidth;
    v8 = inputLightMapHeight;
    v9 = [(NSData *)v6 length];
    if (v9)
    {
      unsignedLongValue = [(NSNumber *)v7 unsignedLongValue];
      unsignedLongValue2 = [(NSNumber *)v8 unsignedLongValue];
      if (unsignedLongValue)
      {
        v12 = unsignedLongValue2 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        unsignedLongValue = vcvtmd_u64_f64(sqrt(vcvtd_n_f64_u64(v9, 1uLL)));
        v13 = unsignedLongValue;
      }

      else
      {
        v13 = unsignedLongValue2;
      }

      if (v9 == (2 * unsignedLongValue * v13))
      {
        v14 = *MEMORY[0x1E695F9F0];
        v58 = *MEMORY[0x1E695F9E8];
        v59 = v14;
        v60 = v6;
        v61 = @"CILocalLight";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v58 count:2];
        v16 = objc_alloc(MEMORY[0x1E695F658]);
        *&v54.a = MEMORY[0x1E69E9820];
        *&v54.b = 3221225472;
        *&v54.c = ___lightMapImageFromData_block_invoke;
        *&v54.d = &unk_1E82AB9E8;
        *&v54.ty = unsignedLongValue;
        v55 = v13;
        *&v54.tx = v6;
        v56 = v9;
        v9 = [v16 initWithImageProvider:&v54 width:unsignedLongValue height:v13 format:*MEMORY[0x1E695F8F0] colorSpace:0 options:v15];
      }

      else
      {
        v9 = 0;
      }
    }

    inputGuideImage = self->inputGuideImage;
    if (inputGuideImage)
    {
      CGAffineTransformMakeScale(&v54, 0.5, 0.5);
      v18 = [(CIImage *)inputGuideImage imageByApplyingTransform:&v54];
      inputGuidedFilterEpsilon = self->inputGuidedFilterEpsilon;
      v20 = v9;
      v21 = v18;
      v22 = inputGuidedFilterEpsilon;
      v23 = 0;
      if (v20 && v21)
      {
        [v20 extent];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        [v21 extent];
        v66.origin.x = v32;
        v66.origin.y = v33;
        v66.size.width = v34;
        v66.size.height = v35;
        v64.origin.x = v25;
        v64.origin.y = v27;
        v64.size.width = v29;
        v64.size.height = v31;
        if (CGRectEqualToRect(v64, v66))
        {
          v23 = v20;
        }

        else
        {
          [v20 extent];
          v67.origin.x = 0.0;
          v67.origin.y = 0.0;
          v67.size.width = 1.0;
          v67.size.height = 1.0;
          if (CGRectEqualToRect(v65, v67))
          {
            imageByClampingToExtent = [v20 imageByClampingToExtent];
            [v21 extent];
            v23 = [imageByClampingToExtent imageByCroppingToRect:?];
          }

          else
          {
            *&v54.a = v20;
            *&v54.b = v21;
            imageByClampingToExtent = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:2];
            v37 = MEMORY[0x1E695F688];
            v38 = [imageByClampingToExtent objectAtIndexedSubscript:0];
            [v38 extent];
            v39 = [v37 vectorWithCGRect:?];
            v60 = v39;
            v40 = MEMORY[0x1E695F688];
            v41 = [imageByClampingToExtent objectAtIndexedSubscript:1];
            [v41 extent];
            v42 = [v40 vectorWithCGRect:?];
            v61 = v42;
            v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:2];

            [v21 extent];
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v51 = v50;
            v57[0] = @"imageExtents";
            v57[1] = @"guidedFilterEpsilon";
            v58 = v43;
            v59 = v22;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:v57 count:2];
            v23 = [(CIImageProcessorKernel *)_PIDynamicGuidedProcessorKernel applyWithExtent:imageByClampingToExtent inputs:v52 arguments:0 error:v45, v47, v49, v51];
          }
        }
      }

      CGAffineTransformMakeScale(&v54, 2.0, 2.0);
      v9 = [v23 imageByApplyingTransform:&v54];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end