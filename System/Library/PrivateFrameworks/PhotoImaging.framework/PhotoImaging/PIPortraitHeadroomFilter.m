@interface PIPortraitHeadroomFilter
- (CGRect)extendedRect;
- (id)outputImage;
@end

@implementation PIPortraitHeadroomFilter

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
  v3 = +[PIHeadroomSettings sharedInstance];
  [(CIImage *)self->_inputImage extent];
  v5 = v4;
  [(CIImage *)self->_inputImage extent];
  v7 = v6;
  p_extendedRect = &self->_extendedRect;
  v9 = self->_extendedRect.size.height - v5;
  [(CIImage *)self->_inputImage extent];
  v11 = v10;
  v13 = v12;
  [(CIImage *)self->_matteImage extent];
  memset(&v94, 0, sizeof(v94));
  CGAffineTransformMakeScale(&v94, v11 / v14, v11 / v14);
  matteImage = self->_matteImage;
  v93 = v94;
  v16 = [(CIImage *)matteImage imageByApplyingTransform:&v93];
  if (self->_classification - 3 <= 1)
  {
    v17 = [MEMORY[0x1E695F648] colorInvertFilter];
    [v17 setInputImage:v16];
    v18 = [v17 outputImage];

    v16 = v18;
  }

  v19 = v13 - v9;
  v20 = [(CIImage *)self->_inputImage imageByCroppingToRect:0.0, v19, v11, v9];
  v21 = [v16 imageByCroppingToRect:{0.0, v19, v11, v9}];
  v22 = objc_alloc_init(PISegmentationInfillFilter);
  [(PISegmentationInfillFilter *)v22 setInfillAlgorithm:4];
  [(PISegmentationInfillFilter *)v22 setInputImage:v20];
  v91 = v21;
  [(PISegmentationInfillFilter *)v22 setInputMatteImage:v21];
  if (self->_matteImage && !self->_skipInpaint)
  {
    v23 = [(PISegmentationInfillFilter *)v22 outputImage];
  }

  else
  {
    v23 = v20;
  }

  v24 = v23;
  v25 = [v23 imageByApplyingOrientation:4];
  CGAffineTransformMakeScale(&v93, 1.0, 3.0);
  v26 = [v25 imageByApplyingTransform:&v93];

  [v26 extent];
  CGAffineTransformMakeTranslation(&v93, 0.0, v5 - v27 + -1.0);
  v28 = [v26 imageByApplyingTransform:&v93];

  v90 = v28;
  v29 = [(CIImage *)self->_inputImage imageByCompositingOverImage:v28];
  v30 = [v29 imageByCroppingToRect:{p_extendedRect->origin.x, self->_extendedRect.origin.y, self->_extendedRect.size.width, self->_extendedRect.size.height}];

  if (self->_colorAnalysisOnly)
  {
    v31 = v30;
  }

  else
  {
    v89 = v30;
    v86 = v24;
    v32 = [MEMORY[0x1E695F658] blackImage];
    v33 = [v16 imageByCompositingOverImage:v32];
    v34 = [v33 imageByCroppingToRect:{p_extendedRect->origin.x, self->_extendedRect.origin.y, self->_extendedRect.size.width, self->_extendedRect.size.height}];

    v88 = v16;
    if ([v3 useLinearBlur])
    {
      v35 = [MEMORY[0x1E695F648] smoothLinearGradientFilter];
      [v3 depthBottom];
      *&v36 = v36;
      [v35 setPoint0:{0.0, v5 * *&v36}];
      [v3 depthTop];
      *&v37 = v37;
      [v35 setPoint1:{0.0, v5 * *&v37}];
      v38 = [MEMORY[0x1E695F610] blackColor];
      [v35 setColor0:v38];

      v39 = [MEMORY[0x1E695F610] whiteColor];
      [v35 setColor1:v39];
    }

    else
    {
      v35 = [MEMORY[0x1E695F648] radialGradientFilter];
      v40 = [MEMORY[0x1E695F610] blackColor];
      [v35 setColor0:v40];

      v41 = [MEMORY[0x1E695F610] whiteColor];
      [v35 setColor1:v41];

      if (v7 >= v5)
      {
        v42 = v7;
      }

      else
      {
        v42 = v5;
      }

      v43 = v42;
      v44 = v43 * 0.25;
      [v35 setCenter:{self->_extendedRect.size.width * 0.5, -(v43 * 0.25)}];
      v45 = v5;
      [v3 depthBottom];
      v47 = v46;
      [v3 center];
      v49 = v47 + v48;
      *&v49 = v49;
      *&v49 = v44 + (v45 * *&v49);
      [v35 setRadius0:v49];
      [v3 depthTop];
      v51 = v50;
      [v3 center];
      v53 = v51 + v52;
      *&v53 = v53;
      *&v53 = v44 + (v45 * *&v53);
      [v35 setRadius1:v53];
    }

    v30 = v89;
    v85 = v35;
    v54 = [v35 outputImage];
    [v89 extent];
    v55 = [v54 imageByCroppingToRect:?];

    [v3 aperture];
    v56 = [v55 _imageByApplyingGamma:?];

    if (v34)
    {
      [v34 extent];
      v58 = [PISegmentationHelper erodeMask:v34 withRadius:v57 * 0.00125];

      v59 = [MEMORY[0x1E695F608] subtract];
      v60 = [v59 applyWithForeground:v58 background:v56];

      v56 = v60;
    }

    v87 = v20;
    v61 = [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffectApplyBlurMap"];
    [v61 setValue:v89 forKey:@"inputImage"];
    v84 = v56;
    [v61 setValue:v56 forKey:@"inputBlurMap"];
    [v61 setValue:&unk_1F471F650 forKey:@"inputAperture"];
    v62 = MEMORY[0x1E696AD98];
    [v3 noise];
    v63 = [v62 numberWithDouble:?];
    [v61 setValue:v63 forKey:@"inputLumaNoiseScale"];

    hdrGainMap = self->_hdrGainMap;
    if (hdrGainMap)
    {
      [(CIImage *)hdrGainMap extent];
      memset(&v93, 0, sizeof(v93));
      CGAffineTransformMakeScale(&v93, v11 / v65, v11 / v65);
      v66 = self->_hdrGainMap;
      v92 = v93;
      v67 = [(CIImage *)v66 imageByApplyingTransform:&v92];
      v68 = [v67 imageByCroppingToRect:{0.0, v19, v11, v9}];
      v69 = [v68 imageByApplyingOrientation:4];
      CGAffineTransformMakeScale(&v92, 1.0, 3.0);
      v70 = [v69 imageByApplyingTransform:&v92];

      [v70 extent];
      CGAffineTransformMakeTranslation(&v92, 0.0, v5 - v71 + -1.0);
      v72 = [v70 imageByApplyingTransform:&v92];

      v73 = [v67 imageByCompositingOverImage:v72];
      v74 = [v73 imageByCroppingToRect:{p_extendedRect->origin.x, p_extendedRect->origin.y, p_extendedRect->size.width, p_extendedRect->size.height}];

      v30 = v89;
      [v61 setValue:v74 forKey:@"inputGainMap"];
    }

    v75 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:&cfstr_Phg6eg1wbwv0ys options:1];
    v76 = CGImageMetadataCreateFromXMPData(v75);
    [v61 setValue:v76 forKey:@"inputAuxDataMetadata"];
    v77 = [v61 outputImage];
    CFRelease(v76);
    v78 = [MEMORY[0x1E695F648] vignetteEffectFilter];
    [v78 setInputImage:v77];
    [v78 setCenter:{p_extendedRect->size.width * 0.5, 0.0}];
    [v3 vignetteRad];
    *&v80 = v80;
    v79 = v5;
    *&v80 = v79 * *&v80;
    [v78 setRadius:v80];
    [v3 vignetteIntensity];
    *&v81 = v81;
    [v78 setIntensity:v81];
    [v3 vignetteFalloff];
    *&v82 = v82;
    [v78 setFalloff:v82];
    v31 = [v78 outputImage];

    v20 = v87;
    v16 = v88;
    v24 = v86;
  }

  return v31;
}

@end