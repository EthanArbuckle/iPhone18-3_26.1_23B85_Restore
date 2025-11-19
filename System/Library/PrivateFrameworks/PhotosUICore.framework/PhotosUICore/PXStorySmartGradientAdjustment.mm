@interface PXStorySmartGradientAdjustment
- (BOOL)isEqualToDisplayAssetAdjustment:(id)a3;
- (CGRect)normalizedSourceRect;
- (CGSize)requestSizeForProposedTargetSize:(CGSize)a3;
- (CGSize)targetSize;
- (id)applyToImage:(id)a3 targetSize:(CGSize)a4;
- (unint64_t)hash;
@end

@implementation PXStorySmartGradientAdjustment

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)normalizedSourceRect
{
  x = self->_normalizedSourceRect.origin.x;
  y = self->_normalizedSourceRect.origin.y;
  width = self->_normalizedSourceRect.size.width;
  height = self->_normalizedSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)requestSizeForProposedTargetSize:(CGSize)a3
{
  v3 = 30.0;
  v4 = 30.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)isEqualToDisplayAssetAdjustment:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 useSmartColor];
    if (v6 == -[PXStorySmartGradientAdjustment useSmartColor](self, "useSmartColor") && (v7 = [v5 useSimpleBlur], v7 == -[PXStorySmartGradientAdjustment useSimpleBlur](self, "useSimpleBlur")) && (objc_msgSend(v5, "simpleBlurRadius"), v9 = v8, -[PXStorySmartGradientAdjustment simpleBlurRadius](self, "simpleBlurRadius"), v9 == v10) && (objc_msgSend(v5, "simpleBlurExposure"), v12 = v11, -[PXStorySmartGradientAdjustment simpleBlurExposure](self, "simpleBlurExposure"), v12 == v13) && (v14 = objc_msgSend(v5, "simpleBlurRepeatEdges"), v14 == -[PXStorySmartGradientAdjustment simpleBlurRepeatEdges](self, "simpleBlurRepeatEdges")) && (objc_msgSend(v5, "simpleBlurEdgeStretch"), v16 = v15, -[PXStorySmartGradientAdjustment simpleBlurEdgeStretch](self, "simpleBlurEdgeStretch"), v16 == v17) && (objc_msgSend(v5, "normalizedSourceRect"), v19 = v18, v21 = v20, v23 = v22, v25 = v24, -[PXStorySmartGradientAdjustment normalizedSourceRect](self, "normalizedSourceRect"), v39.origin.x = v26, v39.origin.y = v27, v39.size.width = v28, v39.size.height = v29, v38.origin.x = v19, v38.origin.y = v21, v38.size.width = v23, v38.size.height = v25, CGRectEqualToRect(v38, v39)))
    {
      [v5 targetSize];
      v31 = v30;
      v33 = v32;
      [(PXStorySmartGradientAdjustment *)self targetSize];
      v36 = v33 == v35 && v31 == v34;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (id)applyToImage:(id)a3 targetSize:(CGSize)a4
{
  v108[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v76 = [MEMORY[0x1E696AAA8] currentHandler];
    [v76 handleFailureInMethod:a2 object:self file:@"PXStorySmartGradientAdjustment.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"image != nil"}];
  }

  [v6 extent];
  if (CGRectIsEmpty(v110))
  {
    v77 = [MEMORY[0x1E696AAA8] currentHandler];
    [v77 handleFailureInMethod:a2 object:self file:@"PXStorySmartGradientAdjustment.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsEmpty(image.extent)"}];
  }

  v7 = v6;
  if ([(PXStorySmartGradientAdjustment *)self useSimpleBlur])
  {
    [v7 extent];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(PXStorySmartGradientAdjustment *)self normalizedSourceRect];
    if (!CGRectIsEmpty(v111))
    {
      [(PXStorySmartGradientAdjustment *)self normalizedSourceRect];
      PXRectDenormalize();
    }

    v87 = v9;
    v88 = v11;
    v112.origin.x = v9;
    v112.origin.y = v11;
    v89 = v13;
    v90 = v15;
    v112.size.width = v13;
    v112.size.height = v15;
    v113 = CGRectInset(v112, 0.5, 0.5);
    x = v113.origin.x;
    height = v113.size.height;
    y = v113.origin.y;
    width = v113.size.width;
    v16 = *MEMORY[0x1E695EFF8];
    v17 = *(MEMORY[0x1E695EFF8] + 8);
    [(PXStorySmartGradientAdjustment *)self targetSize];
    v19 = v18;
    v21 = v20;
    v114.origin.x = v16;
    v114.origin.y = v17;
    v114.size.width = v19;
    v114.size.height = v21;
    v115 = CGRectInset(v114, 0.5, 0.5);
    v22 = v115.origin.x;
    v23 = v115.origin.y;
    sy = v115.size.width;
    sx = v115.size.height;
    [(PXStorySmartGradientAdjustment *)self simpleBlurExposure];
    v25 = v24;
    [(PXStorySmartGradientAdjustment *)self simpleBlurRadius];
    v27 = sqrt(v19 * v21) * (v26 * 0.01);
    v107 = *MEMORY[0x1E695FAA0];
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
    v108[0] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:&v107 count:1];

    if ([(PXStorySmartGradientAdjustment *)self simpleBlurRepeatEdges])
    {
      v79 = v23;
      v80 = v22;
      v83 = v27;
      [(PXStorySmartGradientAdjustment *)self simpleBlurEdgeStretch];
      v31 = v30;
      v32 = *MEMORY[0x1E695EFD0];
      v33 = *(MEMORY[0x1E695EFD0] + 16);
      *&v104.a = v32;
      *&v104.c = v33;
      v34 = *(MEMORY[0x1E695EFD0] + 32);
      *&v104.tx = v34;
      *&v103.a = v32;
      *&v103.c = v33;
      *&v103.tx = v34;
      *&v102.a = v32;
      *&v102.c = v33;
      *&v102.tx = v34;
      *&v101.a = v32;
      *&v101.c = v33;
      *&v101.tx = v34;
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v35 = v30 * 0.5;
      v82 = v16;
      v81 = v21;
      if (width * sx >= height * sy)
      {
        v117.origin.x = v16;
        v117.origin.y = v17;
        v117.size.width = v19;
        v117.size.height = v21;
        CGRectDivide(v117, &slice, &remainder, v21 * 0.5, CGRectMinYEdge);
        v51 = sx - sy / width * height;
        v52 = fmax(sy / width, v51 * v35 / height);
        v53 = sy / width * 0.5 * v31;
        v54 = v79 + v51 * 0.5;
        v98 = v104;
        CGAffineTransformTranslate(&v104, &v98, v80, v54);
        v97 = v104;
        CGAffineTransformScale(&v98, &v97, sy / width, -v52);
        v104 = v98;
        v97 = v98;
        CGAffineTransformTranslate(&v98, &v97, -x, -y);
        v104 = v98;
        v98 = v103;
        CGAffineTransformTranslate(&v103, &v98, v80, v54);
        v97 = v103;
        CGAffineTransformScale(&v98, &v97, sy / width, v53);
        v103 = v98;
        v97 = v98;
        CGAffineTransformTranslate(&v98, &v97, -x, -y);
        v103 = v98;
        v55 = v79 + (sx + sy / width * height) * 0.5;
        v98 = v102;
        CGAffineTransformTranslate(&v102, &v98, v80, v55);
        v97 = v102;
        CGAffineTransformScale(&v98, &v97, sy / width, -v52);
        v102 = v98;
        v97 = v98;
        CGAffineTransformTranslate(&v98, &v97, -x, -(y + height));
        v102 = v98;
        v98 = v101;
        CGAffineTransformTranslate(&v101, &v98, v80, v55);
        v97 = v101;
        CGAffineTransformScale(&v98, &v97, sy / width, v53);
        v101 = v98;
        v97 = v98;
        v40 = -x;
        v41 = -(y + height);
      }

      else
      {
        v116.size.width = v19;
        v85 = v32;
        v86 = v33;
        v116.origin.x = v16;
        v116.origin.y = v17;
        v116.size.height = v21;
        v84 = v34;
        CGRectDivide(v116, &slice, &remainder, v19 * 0.5, CGRectMinXEdge);
        v36 = sy - sx / height * width;
        v37 = fmax(sx / height, v36 * v35 / width);
        v78 = sx / height * 0.5 * v31;
        v38 = v22 + v36 * 0.5;
        *&v98.a = v85;
        *&v98.c = v86;
        *&v98.tx = v84;
        CGAffineTransformTranslate(&v104, &v98, v80 + v36 * 0.5, v23);
        v97 = v104;
        CGAffineTransformScale(&v98, &v97, -v37, sx / height);
        v104 = v98;
        v97 = v98;
        CGAffineTransformTranslate(&v98, &v97, -x, -y);
        v104 = v98;
        *&v98.a = v85;
        *&v98.c = v86;
        *&v98.tx = v84;
        CGAffineTransformTranslate(&v103, &v98, v38, v23);
        v97 = v103;
        CGAffineTransformScale(&v98, &v97, v78, sx / height);
        v103 = v98;
        v97 = v98;
        CGAffineTransformTranslate(&v98, &v97, -x, -y);
        v103 = v98;
        v39 = v80 + (sy + sx / height * width) * 0.5;
        *&v98.a = v85;
        *&v98.c = v86;
        *&v98.tx = v84;
        CGAffineTransformTranslate(&v102, &v98, v39, v23);
        v97 = v102;
        CGAffineTransformScale(&v98, &v97, -v37, sx / height);
        v102 = v98;
        v97 = v98;
        CGAffineTransformTranslate(&v98, &v97, -(x + width), -y);
        v102 = v98;
        *&v98.a = v85;
        *&v98.c = v86;
        *&v98.tx = v84;
        CGAffineTransformTranslate(&v101, &v98, v39, v23);
        v97 = v101;
        CGAffineTransformScale(&v98, &v97, v78, sx / height);
        v101 = v98;
        v97 = v98;
        v40 = -(x + width);
        v41 = -y;
      }

      CGAffineTransformTranslate(&v98, &v97, v40, v41);
      v101 = v98;
      v56 = [v7 imageByClampingToRect:{v87, v88, v89, v90}];
      v98 = v104;
      v57 = [v56 imageByApplyingTransform:&v98];

      v58 = [v7 imageByCroppingToRect:{x, y, width, height}];
      v98 = v103;
      v59 = [v58 imageByApplyingTransform:&v98];
      v60 = [v59 imageByCompositingOverImage:v57];

      v61 = [v60 imageByClampingToRect:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
      v62 = [v61 imageByApplyingFilter:@"CIExposureAdjust" withInputParameters:v29];

      v63 = [v62 imageByApplyingGaussianBlurWithSigma:v83];
      v64 = [v63 imageByCroppingToRect:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];

      v65 = [v7 imageByClampingToRect:{v87, v88, v89, v90}];
      v98 = v102;
      v66 = [v65 imageByApplyingTransform:&v98];

      v67 = [v7 imageByCroppingToRect:{x, y, width, height}];
      v98 = v101;
      v68 = [v67 imageByApplyingTransform:&v98];
      v69 = [v68 imageByCompositingOverImage:v66];

      v70 = [v69 imageByClampingToRect:{remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height}];
      v71 = [v70 imageByApplyingFilter:@"CIExposureAdjust" withInputParameters:v29];

      v72 = [v71 imageByApplyingGaussianBlurWithSigma:v83];
      v73 = [v72 imageByCroppingToRect:{remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height}];

      v74 = [v73 imageByCompositingOverImage:v64];
      v48 = [v74 imageByCroppingToRect:{v82, v17, v19, v81}];

      goto LABEL_16;
    }

    v49 = *(MEMORY[0x1E695EFD0] + 16);
    *&v104.a = *MEMORY[0x1E695EFD0];
    *&v104.c = v49;
    *&v104.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v103.a = *&v104.a;
    *&v103.c = v49;
    *&v103.tx = *&v104.tx;
    CGAffineTransformTranslate(&v104, &v103, v22, v23);
    v102 = v104;
    CGAffineTransformScale(&v103, &v102, sy / width, sx / height);
    v104 = v103;
    v102 = v103;
    CGAffineTransformTranslate(&v103, &v102, -x, -y);
    v104 = v103;
    v50 = [v7 imageByApplyingTransform:&v103];
    v45 = [v50 imageByApplyingFilter:@"CIExposureAdjust" withInputParameters:v29];

    v46 = [v45 imageByApplyingGaussianBlurWithSigma:v27];
    v48 = [v46 imageByCroppingToRect:{v16, v17, v19, v21}];
  }

  else
  {
    v105[0] = @"inputWidth";
    v42 = MEMORY[0x1E696AD98];
    [(PXStorySmartGradientAdjustment *)self targetSize];
    v29 = [v42 numberWithDouble:?];
    v106[0] = v29;
    v105[1] = @"inputHeight";
    v43 = MEMORY[0x1E696AD98];
    [(PXStorySmartGradientAdjustment *)self targetSize];
    v45 = [v43 numberWithDouble:v44];
    v106[1] = v45;
    v105[2] = @"inputReturnSmartColor";
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXStorySmartGradientAdjustment useSmartColor](self, "useSmartColor")}];
    v106[2] = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];
    v48 = [v7 imageByApplyingFilter:@"CISmartGradient" withInputParameters:v47];
  }

LABEL_16:

  return v48;
}

@end