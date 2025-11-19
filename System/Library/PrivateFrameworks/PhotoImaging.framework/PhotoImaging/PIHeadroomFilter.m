@interface PIHeadroomFilter
- (CGRect)extendedRect;
- (id)outputImage;
@end

@implementation PIHeadroomFilter

- (CGRect)extendedRect
{
  x = self->_extendedRect.origin.x;
  y = self->_extendedRect.origin.y;
  width = self->_extendedRect.size.width;
  height = self->_extendedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)outputImage
{
  v119[2] = *MEMORY[0x1E69E9840];
  v3 = +[PIHeadroomSettings sharedInstance];
  [v3 blurRadius];
  v5 = v4;
  [v3 blurMaskTopLocation];
  v7 = v6;
  [v3 falloffHeight];
  v9 = v8;
  [v3 gradientHeight];
  v11 = v10;
  [v3 gradientWhite];
  v100 = v12;
  [v3 highKeyGradientWhite];
  v99 = v13;
  [v3 bottomGradientAlpha];
  alpha = v14;
  [v3 bottomGradientTopLocation];
  v103 = v15;
  [v3 bottomGradientBottomLocation];
  v105 = v16;
  [v3 topGradientAlpha];
  v107 = v17;
  [v3 topGradientTopLocation];
  v109 = v18;
  [v3 topGradientBottomLocation];
  v20 = v19;
  v21 = [v3 useSoftLightBlendingModeForTopGradient];
  [(CIImage *)self->_inputImage extent];
  v23 = v22;
  v24 = self->_extendedRect.size.height - v22;
  [(CIImage *)self->_inputImage extent];
  v26 = v25;
  v28 = [(CIImage *)self->_inputImage imageByCroppingToRect:0.0, v27 - v24];
  v29 = [v28 imageByApplyingOrientation:4];
  [v29 extent];
  CGAffineTransformMakeTranslation(&v113, 0.0, v23 - v30);
  v31 = [v29 imageByApplyingTransform:&v113];

  v32 = [v31 imageByCompositingOverImage:self->_inputImage];
  v33 = v32;
  if (self->_useBlur)
  {
    v89 = v20;
    v94 = v21;
    v97 = v31;
    v98 = v28;
    v34 = [MEMORY[0x1E69B3A10] extendedSRGBColorSpace];
    v35 = [v34 CGColorSpace];

    v36 = [v33 imageByColorMatchingWorkingSpaceToColorSpace:v35];

    v37 = [MEMORY[0x1E695F648] linearGradientFilter];
    v38 = v9 * v23;
    v39 = v23 - v9 * v23;
    [v37 setPoint0:{0.0, v39}];
    [v37 setPoint1:{0.0, v23 + v24 * (1.0 - v7)}];
    v40 = [MEMORY[0x1E695F610] clearColor];
    [v37 setColor0:v40];

    v41 = [MEMORY[0x1E695F610] greenColor];
    [v37 setColor1:v41];

    v95 = v37;
    v42 = [v37 outputImage];
    v112 = v35;
    v43 = [v42 imageByColorMatchingWorkingSpaceToColorSpace:v35];

    v44 = v24 + v38;
    v93 = v43;
    v45 = [v43 imageByCroppingToRect:{0.0, v39, self->_extendedRect.size.width, v24 + v38}];
    v46 = [v36 imageByCroppingToRect:{0.0, v39, self->_extendedRect.size.width, v24 + v38}];
    v47 = [v46 imageByClampingToExtent];
    v92 = v45;
    v119[0] = v45;
    v48 = *MEMORY[0x1E695FB10];
    v118[0] = @"inputMask";
    v118[1] = v48;
    v49 = MEMORY[0x1E696AD98];
    [(PIHeadroomFilter *)self renderScale];
    v51 = [v49 numberWithDouble:(v5 + v5) * v50];
    v119[1] = v51;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:2];
    v53 = [v47 imageByApplyingFilter:@"CIMaskedVariableBlur" withInputParameters:v52];
    v91 = v46;
    [v46 extent];
    v54 = [v53 imageByCroppingToRect:?];

    v90 = v54;
    v96 = v36;
    v111 = [v54 imageByCompositingOverImage:v36];
    v55 = [(PIHeadroomFilter *)self primaryGradientColor];
    CopyWithAlpha = CGColorCreateCopyWithAlpha([v55 CGColor], alpha);

    if (!CopyWithAlpha)
    {
      v57 = [(PIHeadroomFilter *)self useHighKeyStyle];
      v58 = v100;
      if (v57)
      {
        v58 = v99;
      }

      CopyWithAlpha = CGColorCreateGenericGrayGamma2_2(v58, 1.0);
    }

    v59 = CGColorCreateCopyWithAlpha(CopyWithAlpha, 0.0);
    v60 = [MEMORY[0x1E695F610] colorWithCGColor:CopyWithAlpha];
    v61 = [MEMORY[0x1E695F610] colorWithCGColor:v59];
    v62 = [MEMORY[0x1E695F648] linearGradientFilter];
    v63 = v23 + v24;
    [v62 setPoint0:{0.0, v63 + -(v103 * v44) * v11}];
    [v62 setPoint1:{0.0, v39 + v44 * (1.0 - v11 * v105)}];
    v106 = v60;
    [v62 setColor0:v60];
    v104 = v61;
    [v62 setColor1:v61];
    v64 = CGColorCreateCopyWithAlpha(CopyWithAlpha, v107);
    v65 = CGColorCreateCopyWithAlpha(v64, 0.0);
    v66 = [MEMORY[0x1E695F610] colorWithCGColor:v64];
    v67 = [MEMORY[0x1E695F610] colorWithCGColor:v65];
    v68 = [MEMORY[0x1E695F648] linearGradientFilter];
    [v68 setPoint0:{0.0, v63 + -(v109 * v44) * v11}];
    [v68 setPoint1:{0.0, v39 + v44 * (1.0 - v11 * v89)}];
    v110 = v66;
    [v68 setColor0:v66];
    v108 = v67;
    [v68 setColor1:v67];
    CGColorRelease(CopyWithAlpha);
    CGColorRelease(v59);
    CGColorRelease(v64);
    CGColorRelease(v65);
    v69 = [v62 outputImage];
    v70 = [v69 imageByCroppingToRect:{0.0, v39, v26, v44}];

    v71 = [v68 outputImage];
    v72 = [v71 imageByCroppingToRect:{0.0, v39, v26, v44}];

    v73 = [v70 imageByColorMatchingWorkingSpaceToColorSpace:v112];

    v74 = [v72 imageByColorMatchingWorkingSpaceToColorSpace:v112];

    if ([(PIHeadroomFilter *)self isInactive])
    {
      v116[0] = @"inputRVector";
      alphaa = [MEMORY[0x1E695F688] vectorWithX:0.406691223 Y:0.114257611 Z:0.0115343947 W:0.0];
      v117[0] = alphaa;
      v116[1] = @"inputGVector";
      v75 = [MEMORY[0x1E695F688] vectorWithX:0.0339641571 Y:0.487021983 Z:0.0115343947 W:0.0];
      v117[1] = v75;
      v116[2] = @"inputBVector";
      v76 = [MEMORY[0x1E695F688] vectorWithX:0.0339641571 Y:0.114257611 Z:0.384298772 W:0.0];
      v117[2] = v76;
      v116[3] = @"inputAVector";
      v77 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
      v117[3] = v77;
      v116[4] = @"inputBiasVector";
      v78 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
      v117[4] = v78;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:5];

      v80 = [v73 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v79];

      v81 = [v74 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v79];

      v73 = v80;
      v74 = v81;
    }

    v31 = v97;
    v82 = [v73 imageByCompositingOverImage:v111];
    v83 = v82;
    if (v94)
    {
      v114 = *MEMORY[0x1E695FA48];
      v115 = v82;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
      v85 = [v74 imageByApplyingFilter:@"CISoftLightBlendMode" withInputParameters:v84];
    }

    else
    {
      v85 = [v74 imageByCompositingOverImage:v82];
    }

    v28 = v98;
    v87 = [v85 imageByColorMatchingColorSpaceToWorkingSpace:v112];

    v86 = v96;
  }

  else
  {
    v86 = v32;
    v87 = v86;
  }

  return v87;
}

@end