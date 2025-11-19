@interface PISegmentationHelper
+ (BOOL)layoutConfigurationValidForVisibleFrame:(CGRect)a3 layoutConfiguration:(id)a4;
+ (BOOL)matteHistogramIndicatesSubjectDetected:(id)a3;
+ (BOOL)topEdgeHasNoContactWithInspectionMatte:(id)a3 context:(id)a4;
+ (CGRect)_computeAvoidingRect:(CGRect)a3 imageSize:(CGSize)a4 maxYMotion:(double)a5 segmentationMatte:(id)a6 layoutConfiguration:(id)a7 context:(id)a8;
+ (CGRect)computeCenterZoomAreaWithMidpoint:(double)a3 visibleFrame:(CGRect)a4 segmentationMatte:(id)a5 layoutConfiguration:(id)a6 context:(id)a7;
+ (CGRect)scaleRect:(CGRect)a3 scaleFactor:(double)a4 scaleCenter:(CGPoint)a5;
+ (PISegmentationBimodalScore)bimodalScoreForHistogram:(id)a3;
+ (PISegmentationClockOverlapResult)computeClockLayerOrderWithAdaptiveTimeRect:(SEL)a3 visibleFrame:(CGRect)a4 segmentationMatte:(CGRect)a5 layoutConfiguration:(id)a6 context:(id)a7 interactive:(id)a8;
+ (PISegmentationClockOverlapResult)computeClockLayerOrderWithVisibleFrame:(SEL)a3 segmentationMatte:(CGRect)a4 layoutConfiguration:(id)a5 context:(id)a6 interactive:(id)a7;
+ (PISegmentationInactiveResult)computeInactiveFrameWithVisibleFrame:(SEL)a3 imageSize:(CGRect)a4 canUpdateVisibleRect:(CGSize)a5 considerHeadroom:(BOOL)a6 segmentationMatte:(BOOL)a7 layoutConfiguration:(id)a8 context:(id)a9;
+ (double)_computeHeadroomZoomFactorWithVisibleFrame:(CGRect)a3 scaleCenter:(CGPoint)a4 initialOverlap:(PISegmentationClockOverlapResult *)a5 matte:(id)a6 layoutConfiguration:(id)a7 context:(id)a8;
+ (double)computeAlphaCoverageWithRect:(CGRect)a3 foregroundImage:(id)a4 context:(id)a5;
+ (double)computeAvoidOverlapYOffsetWithVisibleFrame:(CGRect)a3 imageSize:(CGSize)a4 segmentationMatte:(id)a5 layoutConfiguration:(id)a6 outputUnsafeOverlap:(double *)a7 context:(id)a8;
+ (double)computeHeadroomZoomFactorWithVisibleFrame:(CGRect)a3 zoomTowardsTop:(BOOL *)a4 matte:(id)a5 layoutConfiguration:(id)a6 context:(id)a7;
+ (double)computeMatteCoverageWithRect:(CGRect)a3 segmentationMatte:(id)a4 context:(id)a5;
+ (double)computeStretchOverlapYOffsetWithVisibleFrame:(CGRect)a3 imageSize:(CGSize)a4 segmentationMatte:(id)a5 classicOverlap:(BOOL)a6 layoutConfiguration:(id)a7 context:(id)a8;
+ (double)computeTargetOverlapYOffsetWithVisibleFrame:(CGRect)a3 imageSize:(CGSize)a4 segmentationMatte:(id)a5 layoutConfiguration:(id)a6 context:(id)a7;
+ (float)groundedScoreForSegmentationMatte:(id)a3 context:(id)a4;
+ (float)localConfidenceScoreForLocalConfidenceImage:(id)a3 extent:(CGRect)a4 context:(id)a5;
+ (id)backgroundForImage:(id)a3 matte:(id)a4;
+ (id)backgroundForImage:(id)a3 matte:(id)a4 infill:(id)a5;
+ (id)debugImageForColorAnalysis:(id)a3 inputImage:(id)a4 visibleFrame:(CGRect)a5;
+ (id)debugImageWithInputImage:(double)a3 finalLayout:(double)a4 intermediateLayout:(double)a5 faceRects:(double)a6 saliencyPreferrectRect:(double)a7 saliencyAcceptableRect:(double)a8 settlingEffectRect:(double)a9;
+ (id)debugImageWithInputImage:(double)a3 layout:(double)a4 faceRects:(double)a5 saliencyPreferrectRect:(double)a6 saliencyAcceptableRect:(double)a7 gazeAreaRect:(double)a8 settlingEffectRect:(double)a9;
+ (id)debugImageWithInputImage:(id)a3 fullSize:(CGSize)a4 debugRects:(id)a5 label:(id)a6;
+ (id)debugPreviewRenderWithBackground:(id)a3 foreground:(id)a4 layout:(id)a5 style:(id)a6;
+ (id)dilateMask:(id)a3 withRadius:(double)a4;
+ (id)erodeMask:(id)a3 withRadius:(double)a4;
+ (id)foregroundForImage:(id)a3 matte:(id)a4;
+ (id)imageFromImageLayer:(id)a3;
+ (id)imageWithColor:(id)a3 extent:(CGRect)a4;
+ (id)infillMaskForSegmentationMatte:(id)a3;
+ (id)invertImage:(id)a3;
+ (id)localConfidenceImage:(id)a3;
+ (id)openMask:(id)a3 withRadius:(double)a4;
+ (id)thresholdImage:(id)a3 withThreshold:(double)a4;
+ (id)upsampleBackgroundImage:(id)a3 toSize:(CGSize)a4;
+ (id)upsampleMatteImage:(id)a3 guideImage:(id)a4;
@end

@implementation PISegmentationHelper

+ (id)debugImageForColorAnalysis:(id)a3 inputImage:(id)a4 visibleFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v58 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  v13 = 0;
  if (v10 && v11)
  {
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v46 = height;
    v60.size.height = height;
    v61 = CGRectInset(v60, 50.0, 50.0);
    v14 = v61.origin.x;
    v15 = floor(width / 10.0);
    v16 = round(v15 * 0.25);
    v17 = v15 + v61.origin.y;
    [v10 backgroundLuminance];
    v19 = [MEMORY[0x1E695F610] colorWithRed:v18 green:v18 blue:v18];
    v20 = drawCircle(v12, v19, @"bg lum", v14, v17, v16);

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v47 = v10;
    v21 = [v10 backgroundColors];
    v22 = [v21 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v53;
      v25 = 1;
      v26 = v14;
      do
      {
        v27 = 0;
        v28 = v25;
        v29 = v20;
        do
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = v15 + v26;
          v30 = [MEMORY[0x1E695F610] colorWithCGColor:{objc_msgSend(*(*(&v52 + 1) + 8 * v27), "CGColor")}];
          v25 = v28 + 1;
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bg col %ld", v28];
          v20 = drawCircle(v29, v30, v31, v26, v17, v16);

          ++v27;
          v28 = v25;
          v29 = v20;
        }

        while (v23 != v27);
        v23 = [v21 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v23);
    }

    v32 = v15 + v17;
    [v47 foregroundLuminance];
    v34 = [MEMORY[0x1E695F610] colorWithRed:v33 green:v33 blue:v33];
    v12 = drawCircle(v20, v34, @"fg lum", v14, v32, v16);

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = [v47 foregroundColors];
    v36 = [v35 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v49;
      v39 = 1;
      do
      {
        v40 = 0;
        v41 = v12;
        v42 = v39;
        do
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v14 = v15 + v14;
          v43 = [MEMORY[0x1E695F610] colorWithCGColor:{objc_msgSend(*(*(&v48 + 1) + 8 * v40), "CGColor")}];
          v39 = v42 + 1;
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fg col %ld", v42];
          v12 = drawCircle(v41, v43, v44, v14, v32, v16);

          ++v40;
          v41 = v12;
          v42 = v39;
        }

        while (v37 != v40);
        v37 = [v35 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v37);
    }

    v13 = [v12 imageByCroppingToRect:{x, y, width, v46}];
    v10 = v47;
  }

  return v13;
}

+ (id)debugPreviewRenderWithBackground:(id)a3 foreground:(id)a4 layout:(id)a5 style:(id)a6
{
  v115 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  v14 = [v13 CGColorSpace];

  v15 = v10;
  v16 = [v9 imageByColorMatchingWorkingSpaceToColorSpace:v14];
  v17 = [v15 imageByColorMatchingWorkingSpaceToColorSpace:v14];

  [v11 timeFrame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v11 visibleFrame];
  v30 = v19 - v29;
  v31 = 0.0;
  v32 = 0.0;
  if (v27 != 0.0)
  {
    v30 = v30 / v27;
    v32 = v23 / v27;
  }

  v33 = v21 - v26;
  if (v28 != 0.0)
  {
    v33 = v33 / v28;
    v31 = v25 / v28;
  }

  [v16 extent];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v16;
  v43 = [v11 clockLayerOrder];
  v44 = *MEMORY[0x1E69C0BA0];

  v45 = v42;
  if (v43 == v44)
  {
    v46 = [v17 imageByCompositingOverImage:v42];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = v42;
    }

    v45 = v48;
  }

  v49 = +[PIGlobalSettings globalSettings];
  v50 = [v49 segmentationDebugPreviewDisableClock];

  if ((v50 & 1) == 0)
  {
    v107 = v42;
    v108 = v17;
    v109 = v14;
    v110 = v15;
    v111 = v9;
    v51 = [v12 clockFont];
    v52 = v51;
    v53 = @"SF Soft Time";
    if (v51)
    {
      v53 = v51;
    }

    v54 = v53;
    v55 = *MEMORY[0x1E6965790];
    v56 = *MEMORY[0x1E6965860];
    v113.a = *MEMORY[0x1E6965790];
    v113.b = v56;
    *&v114.a = v54;
    *&v114.b = @"Semibold";
    v57 = CTFontDescriptorCreateWithAttributes([MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:2]);
    v112 = v12;
    if (!v57)
    {
      v60 = 0;
LABEL_30:
      v68 = v35 + v30 * v39;
      v69 = v37 + v33 * v41;
      v70 = v31 * v41;

      v71 = [v12 clockColor];
      v72 = MEMORY[0x1E695F610];
      if (v71)
      {
        v73 = [v12 clockColor];
        v74 = [v72 colorWithCGColor:{objc_msgSend(v73, "CGColor")}];
      }

      else
      {
        v74 = [MEMORY[0x1E695F610] whiteColor];
      }

      v75 = v68 + v32 * v39 * 0.5;
      v76 = MEMORY[0x1E695F648];
      v77 = v74;
      v78 = v60;
      v79 = [v76 textImageGeneratorFilter];
      [v79 setText:@"9:41"];
      [v79 setFontName:v78];
      LODWORD(v80) = 1121714176;
      [v79 setFontSize:v80];
      v81 = CTFontCreateWithName(v78, 110.0, 0);

      CapHeight = CTFontGetCapHeight(v81);
      CFRelease(v81);
      v83 = v70 / CapHeight;
      *&v83 = v70 / CapHeight;
      [v79 setScaleFactor:v83];
      v84 = [v79 outputImage];
      v85 = [MEMORY[0x1E695F658] imageWithColor:v77];

      [v84 extent];
      v86 = [v85 imageByCroppingToRect:?];

      v87 = [MEMORY[0x1E695F648] blendWithMaskFilter];
      [v87 setInputImage:v86];
      v88 = [v84 imageByApplyingFilter:@"CIColorInvert"];
      [v87 setMaskImage:v88];

      [v87 setBackgroundImage:0];
      v89 = [v87 outputImage];
      [v89 extent];
      memset(&v114, 0, sizeof(v114));
      CGAffineTransformMakeTranslation(&v114, v75 - (v90 + v91 * 0.5), v69 + v70 * 0.5 - (v92 + v93 * 0.5));
      v113 = v114;
      v94 = [v89 imageByApplyingTransform:&v113];

      v95 = [v94 imageByCompositingOverImage:v45];
      v96 = v95;
      if (v95)
      {
        v97 = v95;
      }

      else
      {
        v97 = v45;
      }

      v98 = v97;

      v45 = v98;
      v9 = v111;
      v12 = v112;
      v14 = v109;
      v15 = v110;
      v42 = v107;
      v17 = v108;
      goto LABEL_37;
    }

    v58 = v57;
    v59 = *MEMORY[0x1E6965808];
    v60 = CTFontDescriptorCopyAttribute(v57, *MEMORY[0x1E6965808]);
    if (!v60)
    {
      MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v58, [MEMORY[0x1E695DFD8] setWithObject:v55]);
      if (MatchingFontDescriptors)
      {
        v62 = MatchingFontDescriptors;
        Count = CFArrayGetCount(MatchingFontDescriptors);
        if (Count)
        {
          v64 = Count;
          if (Count == 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v62, 0);
            v60 = CTFontDescriptorCopyAttribute(ValueAtIndex, v59);
LABEL_28:
            CFRelease(v62);
            goto LABEL_29;
          }

          if (Count >= 1)
          {
            v66 = 0;
            while (1)
            {
              v67 = CFArrayGetValueAtIndex(v62, v66);
              v60 = CTFontDescriptorCopyAttribute(v67, v59);
              if ([v60 rangeOfString:@"Semibold" options:391] != 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              if (v64 == ++v66)
              {
                v60 = 0;
                break;
              }
            }

            v12 = v112;
            goto LABEL_28;
          }
        }

        v60 = 0;
        goto LABEL_28;
      }

      v60 = 0;
    }

LABEL_29:
    CFRelease(v58);
    goto LABEL_30;
  }

LABEL_37:
  v99 = [v11 clockLayerOrder];
  v100 = *MEMORY[0x1E69C0B98];

  if (v99 == v100)
  {
    v101 = [v17 imageByCompositingOverImage:v45];
    v102 = v101;
    if (v101)
    {
      v103 = v101;
    }

    else
    {
      v103 = v45;
    }

    v104 = v103;

    v45 = v104;
  }

  v105 = [v45 imageByColorMatchingColorSpaceToWorkingSpace:v14];

  return v105;
}

+ (id)debugImageWithInputImage:(double)a3 finalLayout:(double)a4 intermediateLayout:(double)a5 faceRects:(double)a6 saliencyPreferrectRect:(double)a7 saliencyAcceptableRect:(double)a8 settlingEffectRect:(double)a9
{
  v133 = *MEMORY[0x1E69E9840];
  v118 = a11;
  v117 = a12;
  v115 = a13;
  v23 = a14;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = v23;
  v25 = [obj countByEnumeratingWithState:&v128 objects:v132 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v129;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v129 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v128 + 1) + 8 * i);
        v31 = MEMORY[0x1E69C0798];
        [v30 rectValue];
        [v31 inflatePersonFaceRect:?];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v40 = +[PIDebugRect inflatedFaceColor];
        v41 = [PIDebugRect debugRectWithRect:v40 color:0 label:v33, v35, v37, v39];
        [v24 addObject:v41];

        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"f%d", v27];
        [v30 rectValue];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v51 = +[PIDebugRect faceColor];
        v52 = [PIDebugRect debugRectWithRect:v51 color:v42 label:v44, v46, v48, v50];
        [v24 addObject:v52];

        v27 = (v27 + 1);
      }

      v26 = [obj countByEnumeratingWithState:&v128 objects:v132 count:16];
    }

    while (v26);
  }

  v53 = +[PIDebugRect saliencyPreferredColor];
  v54 = [PIDebugRect debugRectWithRect:v53 color:@"saliency preferred" label:a2, a3, a4, a5];
  [v24 addObject:v54];

  v55 = +[PIDebugRect saliencyAcceptableColor];
  v56 = [PIDebugRect debugRectWithRect:v55 color:@"saliency acceptable" label:a6, a7, a8, a9];
  [v24 addObject:v56];

  v135.origin.x = a15;
  v135.origin.y = a16;
  v135.size.width = a17;
  v135.size.height = a18;
  if (!CGRectIsNull(v135))
  {
    v57 = +[PIDebugRect settlingEffectColor];
    v58 = [PIDebugRect debugRectWithRect:v57 color:@"settling effect" label:a15, a16, a17, a18];
    [v24 addObject:v58];
  }

  v59 = *MEMORY[0x1E695EFF8];
  v126 = *(MEMORY[0x1E695EFF8] + 8);
  [v117 imageSize];
  v61 = v60;
  v63 = v62;
  [v115 visibleRect];
  v120 = v64;
  v122 = v65;
  v67 = v66;
  v124 = v68;
  [v117 timeFrame];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  [v117 visibleFrame];
  v81 = v70 - v80;
  v82 = 0.0;
  v83 = 0.0;
  if (v78 != 0.0)
  {
    v81 = v81 / v78;
    v83 = v74 / v78;
  }

  v84 = v72 - v77;
  if (v79 != 0.0)
  {
    v84 = v84 / v79;
    v82 = v76 / v79;
  }

  v85 = v122 + v84 * v124;
  v86 = v120 + v81 * v67 - v59;
  v87 = 0.0;
  v88 = 0.0;
  if (v61 != 0.0)
  {
    v86 = v86 / v61;
    v88 = v67 * v83 / v61;
  }

  v89 = v85 - v126;
  if (v63 != 0.0)
  {
    v89 = v89 / v63;
    v87 = v124 * v82 / v63;
  }

  v90 = +[PIDebugRect datetimeColor];
  v91 = [PIDebugRect debugRectWithRect:v90 color:@"time" label:v86, v89, v88, v87];
  [v24 addObject:v91];

  [v115 inactiveRect];
  v96 = v95 - v59;
  v97 = 0.0;
  v98 = 0.0;
  if (v61 != 0.0)
  {
    v96 = v96 / v61;
    v98 = v93 / v61;
  }

  v99 = v92 - v126;
  if (v63 != 0.0)
  {
    v99 = v99 / v63;
    v97 = v94 / v63;
  }

  v100 = +[PIDebugRect inactiveColor];
  v101 = [PIDebugRect debugRectWithRect:v100 color:@"inactive" label:v96, v99, v98, v97];
  [v24 addObject:v101];

  v102 = v120 - v59;
  v103 = 0.0;
  v104 = 0.0;
  if (v61 != 0.0)
  {
    v102 = v102 / v61;
    v104 = v67 / v61;
  }

  v105 = v122 - v126;
  if (v63 != 0.0)
  {
    v105 = v105 / v63;
    v103 = v124 / v63;
  }

  v106 = +[PIDebugRect visibleColor];
  v107 = [PIDebugRect debugRectWithRect:v106 color:@"visible" label:v102, v105, v104, v103];
  [v24 addObject:v107];

  v108 = [v115 debugDescription];
  v109 = [a1 debugImageWithInputImage:v118 fullSize:v24 debugRects:v108 label:{v61, v63}];

  return v109;
}

+ (id)debugImageWithInputImage:(double)a3 layout:(double)a4 faceRects:(double)a5 saliencyPreferrectRect:(double)a6 saliencyAcceptableRect:(double)a7 gazeAreaRect:(double)a8 settlingEffectRect:(double)a9
{
  v235 = *MEMORY[0x1E69E9840];
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = MEMORY[0x1E69C07A8];
  v219 = v29;
  [v29 extent];
  v35 = v34;
  v37 = v36;
  v38 = [v30 configuration];
  [v38 screenSize];
  [v33 bestFaceRectWithImageSize:v31 deviceSize:v35 faceRegions:{v37, v39, v40}];
  v42 = v41;
  v222 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v210 = v44;
  v216 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v44 + v48);
  v49 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24);
  obja = v49;
  v50 = MEMORY[0x1E69C06A0];
  v51 = [v30 configuration];
  [v30 imageSize];
  v53 = v52;
  [v30 imageSize];
  v55 = [v50 bestAdaptiveCropRectForPosterClassification:1 layoutConfiguration:v51 sourcePixelWidth:v53 sourcePixelHeight:v54 sourcePreferredCropRectNormalized:a2 sourceAcceptableCropRectNormalized:a3 sourceFaceAreaRectNormalized:{a4, a5, a6, a7, a8, a9, *&v42, *&v216, *&v46, *&v48}];

  v215 = v55;
  [v55 visibleRect];
  v212 = v57;
  v213 = v56;
  v214 = v58;
  v211 = v49 - (v59 + v58);
  v60 = [v30 configuration];
  [v60 screenSize];
  v62 = v61;
  v63 = [v30 configuration];
  [v63 screenSize];
  v65 = v62 / v64;
  v203 = v62 / v64;

  [v30 imageSize];
  v67 = v66;
  [v30 imageSize];
  v209 = v46;
  [PIPNCropUtilitiesWrapper bestCropVariantFromSignalsWithAspectRatio:v67 sourcePixelWidth:v68 sourcePixelHeight:v65 acceptableCropRect:a6 preferredCropRect:a7 normalizedFaceAreaRect:a8 gazeAreaRect:a9, *&a2, *&a3, *&a4, *&a5, *&v222, *&v216, *&v46, *&v48, *&a14, *&a15, *&a16, *&a17];
  v207 = v70;
  v208 = v69;
  v205 = v71;
  v73 = v72;
  v74 = MEMORY[0x1E69C06A0];
  [v30 imageSize];
  v76 = v75;
  v217 = v30;
  [v30 imageSize];
  v78 = v73;
  [v74 bestCropRectV2ForAspectRatio:v76 sourcePixelWidth:v77 sourcePixelHeight:0 sourceEssentialAreaRect:v203 sourceSecondaryEssentialAreaRect:a6 outputCropScore:{a7, a8, a9, *&a2, *&a3, *&a4, *&a5}];
  v202 = v80;
  v204 = v79;
  v206 = obja - (v205 + v73);
  v82 = v81;
  v230 = 0u;
  v231 = 0u;
  v201 = obja - (v83 + v81);
  v232 = 0u;
  v233 = 0u;
  obj = v31;
  v84 = [obj countByEnumeratingWithState:&v230 objects:v234 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = 0;
    v87 = *v231;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v231 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v89 = *(*(&v230 + 1) + 8 * i);
        v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"f%d", v86];
        [v89 rectValue];
        v92 = v91;
        v94 = v93;
        v96 = v95;
        v98 = v97;
        v99 = +[PIDebugRect faceColor];
        v100 = [PIDebugRect debugRectWithRect:v99 color:v90 label:v92, v94, v96, v98];
        [v32 addObject:v100];

        v86 = (v86 + 1);
      }

      v85 = [obj countByEnumeratingWithState:&v230 objects:v234 count:16];
    }

    while (v85);
  }

  v101 = +[PIDebugRect saliencyPreferredColor];
  v102 = [PIDebugRect debugRectWithRect:v101 color:@"saliency preferred" label:a2, a3, a4, a5];
  [v32 addObject:v102];

  v103 = +[PIDebugRect saliencyAcceptableColor];
  v104 = [PIDebugRect debugRectWithRect:v103 color:@"saliency acceptable" label:a6, a7, a8, a9];
  [v32 addObject:v104];

  v105 = +[PIDebugRect faceUnionColor];
  v106 = [PIDebugRect debugRectWithRect:v105 color:@"face union" label:v222, v210, v209, v48];
  [v32 addObject:v106];

  v107 = +[PIDebugRect gazeAreaRectColor];
  v108 = [PIDebugRect debugRectWithRect:v107 color:@"gaze area" label:a14, a15, a16, a17];
  [v32 addObject:v108];

  v109 = +[PIDebugRect v2CropColor];
  v110 = [PIDebugRect debugRectWithRect:v109 color:@"bestCropRectV2" label:v204, v201, v202, v82];
  [v32 addObject:v110];

  v111 = +[PIDebugRect smartCropColor];
  v112 = [PIDebugRect debugRectWithRect:v111 color:@"smart crop" label:v208, v206, v207, v78];
  [v32 addObject:v112];

  v113 = +[PIDebugRect metadataColor];
  v114 = [PIDebugRect debugRectWithRect:v113 color:@"metadata" label:v213, v211, v212, v214];
  [v32 addObject:v114];

  v237.origin.x = a18;
  v237.origin.y = a19;
  v237.size.width = a20;
  v237.size.height = a21;
  if (!CGRectIsNull(v237))
  {
    v115 = +[PIDebugRect settlingEffectColor];
    v116 = [PIDebugRect debugRectWithRect:v115 color:@"settling effect" label:a18, a19, a20, a21];
    [v32 addObject:v116];
  }

  v118 = *MEMORY[0x1E695EFF8];
  v117 = *(MEMORY[0x1E695EFF8] + 8);
  [v217 imageSize];
  v120 = v119;
  v122 = v121;
  [v217 inactiveFrame];
  v127 = v126 - v118;
  v128 = 0.0;
  v129 = 0.0;
  if (v120 != 0.0)
  {
    v127 = v127 / v120;
    v129 = v124 / v120;
  }

  v130 = v123 - v117;
  if (v122 != 0.0)
  {
    v130 = v130 / v122;
    v128 = v125 / v122;
  }

  v131 = +[PIDebugRect inactiveColor];
  v132 = [PIDebugRect debugRectWithRect:v131 color:@"inactive" label:v127, v130, v129, v128];
  [v32 addObject:v132];

  [v217 timeFrame];
  v137 = v136 - v118;
  v138 = 0.0;
  v139 = 0.0;
  if (v120 != 0.0)
  {
    v137 = v137 / v120;
    v139 = v134 / v120;
  }

  v140 = v133 - v117;
  if (v122 != 0.0)
  {
    v140 = v140 / v122;
    v138 = v135 / v122;
  }

  v141 = +[PIDebugRect datetimeColor];
  v142 = [PIDebugRect debugRectWithRect:v141 color:@"time" label:v137, v140, v139, v138];
  [v32 addObject:v142];

  [v217 visibleFrame];
  v147 = v146 - v118;
  v148 = 0.0;
  v149 = 0.0;
  if (v120 != 0.0)
  {
    v147 = v147 / v120;
    v149 = v144 / v120;
  }

  v150 = v143 - v117;
  if (v122 != 0.0)
  {
    v150 = v150 / v122;
    v148 = v145 / v122;
  }

  v151 = +[PIDebugRect visibleColor];
  v152 = [PIDebugRect debugRectWithRect:v151 color:@"visible" label:v147, v150, v149, v148];
  [v32 addObject:v152];

  [v217 adaptiveVisibleFrame];
  v157 = v156 - v118;
  v158 = 0.0;
  v159 = 0.0;
  if (v120 != 0.0)
  {
    v157 = v157 / v120;
    v159 = v154 / v120;
  }

  v160 = v153 - v117;
  if (v122 != 0.0)
  {
    v160 = v160 / v122;
    v158 = v155 / v122;
  }

  v161 = +[PIDebugRect adaptiveColor];
  v162 = [PIDebugRect debugRectWithRect:v161 color:@"adaptive" label:v157, v160, v159, v158];
  [v32 addObject:v162];

  [v217 adaptiveInactiveTopFrame];
  v167 = v166 - v118;
  v168 = 0.0;
  v169 = 0.0;
  if (v120 != 0.0)
  {
    v167 = v167 / v120;
    v169 = v164 / v120;
  }

  v170 = v163 - v117;
  if (v122 != 0.0)
  {
    v170 = v170 / v122;
    v168 = v165 / v122;
  }

  v171 = +[PIDebugRect inactiveColor];
  v172 = [PIDebugRect debugRectWithRect:v171 color:@"adaptive-inactive" label:v167, v170, v169, v168];
  [v32 addObject:v172];

  [v217 maxClockShift];
  v174 = v173;
  [v217 timeFrame];
  v179 = v178 - v118;
  v180 = 0.0;
  v181 = 0.0;
  if (v120 != 0.0)
  {
    v179 = v179 / v120;
    v181 = v176 / v120;
  }

  v182 = v175 - v117;
  if (v122 != 0.0)
  {
    v182 = v182 / v122;
    v180 = v177 / v122;
  }

  v183 = v182 - v174;
  v184 = v174 + v180;
  v185 = +[PIDebugRect stretchColor];
  v186 = [PIDebugRect debugRectWithRect:v185 color:@"stretched time" label:v179, v183, v181, v184];
  [v32 addObject:v186];

  v187 = [v217 layoutVariant];
  if (v187 > 4)
  {
    v188 = 0;
  }

  else
  {
    v188 = off_1E82AAAF8[v187];
  }

  v189 = MEMORY[0x1E696AEC0];
  [v217 maxClockShift];
  v191 = v190;
  [v215 adaptiveHeadroom];
  v193 = v192;
  [v217 deviceResolution];
  v195 = v194;
  [v217 deviceResolution];
  v197 = [v189 stringWithFormat:@"type: %@. stretch: %f. adaptive headroom: %f. Device %d x %d", v188, v191, v193, v195, v196];
  v198 = [a1 debugImageWithInputImage:v219 fullSize:v32 debugRects:v197 label:{v120, v122}];

  return v198;
}

+ (id)debugImageWithInputImage:(id)a3 fullSize:(CGSize)a4 debugRects:(id)a5 label:(id)a6
{
  height = a4.height;
  width = a4.width;
  v82 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v70 = a6;
  [v10 extent];
  v12 = height * *MEMORY[0x1E69C0C68];
  v14 = *MEMORY[0x1E69C0C68] * v13;
  memset(&v80, 0, sizeof(v80));
  CGAffineTransformMakeScale(&v80, width / v15, v12 / v14);
  v79 = v80;
  v71 = v10;
  v16 = [v10 imageByApplyingTransform:&v79];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v11;
  v17 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v76;
    v20 = 0x1E82A7000uLL;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v76 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v75 + 1) + 8 * i);
        [v22 geometry];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [v16 extent];
        v33 = v31 + v24 * v32;
        v36 = v34 + v26 * v35;
        v37 = v28 * v32;
        v38 = v30 * v35;
        v39 = [v22 color];
        v40 = [v22 label];
        v41 = v16;
        v42 = v39;
        v43 = v40;
        v44 = [*(v20 + 4016) framedRectImageWithCGRect:v42 color:v33 borderWidth:{v36, v37, v38, 5.0}];
        v45 = v44;
        v16 = v41;
        if (v44)
        {
          v16 = [v44 imageByCompositingOverImage:v41];
        }

        if (v43)
        {
          v46 = createLabelImage(v43, v42, v33, v36);
          v47 = v46;
          if (v46)
          {
            v48 = [v46 imageByCompositingOverImage:v16];
            v49 = v16;
            v50 = v18;
            v51 = v19;
            v52 = v20;
            v53 = v48;

            v54 = v53;
            v20 = v52;
            v19 = v51;
            v18 = v50;
            v16 = v54;
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v18);
  }

  v55 = +[PIDebugRect labelColor];
  v56 = *MEMORY[0x1E695EFF8];
  v57 = *(MEMORY[0x1E695EFF8] + 8);
  v58 = createLabelImage(v70, v55, *MEMORY[0x1E695EFF8], v57);

  memset(&v79, 0, sizeof(v79));
  [v16 extent];
  v60 = v59;
  [v58 extent];
  CGAffineTransformMakeTranslation(&v79, v60 - v61, 0.0);
  v74 = v79;
  v62 = [v58 imageByApplyingTransform:&v74];

  v63 = [v62 imageByCompositingOverImage:v16];
  v64 = v63;
  if (v63)
  {
    v65 = v63;
  }

  else
  {
    v65 = v16;
  }

  v66 = v65;

  v73 = v80;
  memset(&v74, 0, sizeof(v74));
  CGAffineTransformInvert(&v74, &v73);
  v73 = v74;
  v67 = [v66 imageByApplyingTransform:&v73];

  v68 = [v67 imageByCroppingToRect:{v56, v57, width, v12}];

  return v68;
}

+ (PISegmentationInactiveResult)computeInactiveFrameWithVisibleFrame:(SEL)a3 imageSize:(CGRect)a4 canUpdateVisibleRect:(CGSize)a5 considerHeadroom:(BOOL)a6 segmentationMatte:(BOOL)a7 layoutConfiguration:(id)a8 context:(id)a9
{
  v13 = a6;
  height = a5.height;
  width = a5.width;
  v16 = a4.size.height;
  v17 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = v23;
  if (v21)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  v104 = *MEMORY[0x1E69C0BA8];
  retstr->var0.origin.x = x;
  retstr->var0.origin.y = y;
  retstr->var0.size.width = v17;
  retstr->var0.size.height = v16;
  retstr->var1.origin.x = x;
  retstr->var1.origin.y = y;
  retstr->var1.size.width = v17;
  retstr->var1.size.height = v16;
  v27 = *MEMORY[0x1E69C0BB0];
  memset(&v117, 0, sizeof(v117));
  CGAffineTransformMakeTranslation(&v117, -(x + v17 * 0.5), -y);
  memset(&v116, 0, sizeof(v116));
  v100 = v27;
  CGAffineTransformMakeScale(&v116, v27, v27);
  memset(&v115, 0, sizeof(v115));
  CGAffineTransformMakeTranslation(&v115, x + v17 * 0.5, y);
  memset(&v114, 0, sizeof(v114));
  t1 = v117;
  t2 = v116;
  CGAffineTransformConcat(&v113, &t1, &t2);
  t1 = v115;
  CGAffineTransformConcat(&v114, &v113, &t1);
  v118.origin.x = 0.0;
  v118.origin.y = 0.0;
  v118.size.width = width;
  v118.size.height = height;
  v128.origin.x = x;
  v128.origin.y = y;
  v128.size.width = v17;
  v128.size.height = v16;
  v28 = CGRectContainsRect(v118, v128);
  v29 = height * *MEMORY[0x1E69C0C68];
  v103 = height;
  if (v28 || !a7)
  {
    v29 = height;
  }

  v107 = x;
  rect1 = v29;
  v113 = v114;
  v119.origin.x = x;
  v119.origin.y = y;
  v119.size.width = v17;
  v119.size.height = v16;
  v120 = CGRectApplyAffineTransform(v119, &v113);
  v30 = v120.origin.x;
  v31 = v120.origin.y;
  v32 = v120.size.width;
  v33 = v120.size.height;
  if (v26 == 1)
  {
    [PISegmentationHelper _computeAvoidingRect:v21 imageSize:v22 maxYMotion:v24 segmentationMatte:v120.origin.x layoutConfiguration:v120.origin.y context:v120.size.width, v120.size.height, width, v103, v104];
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
  }

  v121.origin.x = 0.0;
  v121.origin.y = 0.0;
  v121.size.width = width;
  v121.size.height = rect1;
  v129.origin.x = v30;
  v129.origin.y = v31;
  v129.size.width = v32;
  v129.size.height = v33;
  if (!CGRectContainsRect(v121, v129))
  {
    v96 = v31;
    v97 = v30;
    v98 = v33;
    v99 = v32;
    v38 = width;
    if (v13)
    {
      memset(&v113, 0, sizeof(v113));
      CGAffineTransformMakeScale(&v113, 1.0 / v100, 1.0 / v100);
      memset(&t1, 0, sizeof(t1));
      v110 = v117;
      v109 = v113;
      CGAffineTransformConcat(&t2, &v110, &v109);
      v110 = v115;
      CGAffineTransformConcat(&t1, &t2, &v110);
      t2 = t1;
      v39 = v107;
      v122.origin.x = v107;
      v122.origin.y = y;
      v122.size.width = v17;
      v122.size.height = v16;
      v123 = CGRectApplyAffineTransform(v122, &t2);
      v93 = v123.origin.y;
      v94 = v123.origin.x;
      v91 = v123.size.width;
      v101 = v123.size.height;
      v40 = v16;
      v41 = v17;
      v42 = y;
      if (v26)
      {
        [PISegmentationHelper _computeAvoidingRect:v21 imageSize:v22 maxYMotion:v24 segmentationMatte:v107 layoutConfiguration:y context:v17, v16, v38, v103, v104, v16];
        v39 = v43;
        v42 = v44;
        v41 = v45;
        v40 = v46;
      }

      v124.origin.x = 0.0;
      v124.origin.y = 0.0;
      v124.size.width = v38;
      v124.size.height = rect1;
      v47 = v39;
      v48 = v42;
      v49 = v41;
      v50 = v40;
      if (CGRectContainsRect(v124, *(&v42 - 1)))
      {
        retstr->var0.origin.x = v94;
        retstr->var0.origin.y = v93;
        retstr->var0.size.width = v91;
        retstr->var0.size.height = v101;
        retstr->var1.origin.x = v39;
        retstr->var1.origin.y = v48;
        retstr->var1.size.width = v49;
        retstr->var1.size.height = v50;
        goto LABEL_61;
      }
    }

    v51 = v107;
    v52 = y;
    v102 = v17;
    v95 = v16;
    if (v26)
    {
      [PISegmentationHelper _computeAvoidingRect:v21 imageSize:v22 maxYMotion:v24 segmentationMatte:v107 layoutConfiguration:y context:v17, v16, v38, v103, v104];
      v51 = v53;
      v52 = v54;
      v56 = v55;
      v125.size.width = v38;
      v58 = v57;
      v125.origin.x = 0.0;
      v125.origin.y = 0.0;
      v105 = v125.size.width;
      v125.size.height = rect1;
      v130.origin.x = v51;
      v130.origin.y = v52;
      v130.size.width = v56;
      v130.size.height = v58;
      if (CGRectContainsRect(v125, v130))
      {
        retstr->var1.origin.x = v51;
        retstr->var1.origin.y = v52;
        retstr->var1.size.width = v56;
        goto LABEL_60;
      }

      v95 = v58;
      v102 = v56;
      v38 = v105;
    }

    v106 = v51;
    v92 = v17;
    v60 = v98;
    v59 = v99;
    v61 = v98 + v96;
    v62 = v38;
    if (v99 + v97 >= v38)
    {
      v63 = v38 + 0.0;
    }

    else
    {
      v63 = v99 + v97;
    }

    v64 = fmax(v63, 0.0);
    if (v61 >= rect1)
    {
      v65 = rect1 + 0.0;
    }

    else
    {
      v65 = v98 + v96;
    }

    v66 = v97 + v64 - (v99 + v97);
    v67 = v96 + fmax(v65, 0.0) - v61;
    if (v66 >= v38)
    {
      v66 = v38 + 0.0;
    }

    v68 = fmax(v66, 0.0);
    if (v67 >= rect1)
    {
      v69 = rect1 + 0.0;
    }

    else
    {
      v69 = v67;
    }

    v70 = fmax(v69, 0.0);
    v126.origin.x = 0.0;
    v126.origin.y = 0.0;
    v126.size.width = v38;
    v126.size.height = rect1;
    v71 = v68;
    v72 = v70;
    if (CGRectContainsRect(v126, *(&v59 - 2)) && v68 == v97)
    {
      retstr->var1.origin.x = v68;
      retstr->var1.origin.y = v70;
      retstr->var1.size.width = v99;
      retstr->var1.size.height = v98;
      goto LABEL_61;
    }

    v74 = v102;
    v75 = v52 + v95;
    if (v106 + v102 >= v38)
    {
      v76 = v38 + 0.0;
    }

    else
    {
      v76 = v106 + v102;
    }

    v77 = fmax(v76, 0.0);
    if (v75 >= rect1)
    {
      v78 = rect1 + 0.0;
    }

    else
    {
      v78 = v52 + v95;
    }

    v79 = v106 + v77 - (v106 + v102);
    v80 = v52 + fmax(v78, 0.0) - v75;
    if (v79 >= v38)
    {
      v79 = v38 + 0.0;
    }

    v81 = v102;
    v82 = fmax(v79, 0.0);
    if (v80 >= rect1)
    {
      v83 = rect1 + 0.0;
    }

    else
    {
      v83 = v80;
    }

    v58 = v95;
    v84 = fmax(v83, 0.0);
    v127.origin.x = 0.0;
    v127.origin.y = 0.0;
    v127.size.width = v62;
    v127.size.height = rect1;
    v85 = v82;
    v86 = v84;
    v87 = v95;
    if (CGRectContainsRect(v127, *(&v74 - 2)) && v82 == v106)
    {
      retstr->var1.origin.x = v82;
      retstr->var1.origin.y = v84;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_275_10504);
      }

      v81 = v92;
      v58 = v16;
      v89 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v113.a) = 0;
        _os_log_debug_impl(&dword_1C7694000, v89, OS_LOG_TYPE_DEBUG, "Unable to calculate a new inactiveRect; falling back to visible frame", &v113, 2u);
      }

      retstr->var1.origin.x = v107;
      retstr->var1.origin.y = y;
    }

    retstr->var1.size.width = v81;
LABEL_60:
    retstr->var1.size.height = v58;
    goto LABEL_61;
  }

  retstr->var1.origin.x = v30;
  retstr->var1.origin.y = v31;
  retstr->var1.size.width = v32;
  retstr->var1.size.height = v33;
LABEL_61:

  return result;
}

+ (CGRect)_computeAvoidingRect:(CGRect)a3 imageSize:(CGSize)a4 maxYMotion:(double)a5 segmentationMatte:(id)a6 layoutConfiguration:(id)a7 context:(id)a8
{
  height = a4.height;
  width = a4.width;
  v13 = a3.size.height;
  v14 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v47 = *MEMORY[0x1E69E9840];
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v17)
  {
    v32 = NUAssertLogger_10509();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "segmentationMatte != nil"];
      LODWORD(v46.a) = 138543362;
      *(&v46.a + 4) = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v46, 0xCu);
    }

    v34 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v36 = NUAssertLogger_10509();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v37)
      {
        v40 = dispatch_get_specific(*v34);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        LODWORD(v46.a) = 138543618;
        *(&v46.a + 4) = v40;
        WORD2(v46.b) = 2114;
        *(&v46.b + 6) = v44;
        _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v46, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      LODWORD(v46.a) = 138543362;
      *(&v46.a + 4) = v39;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v46, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v20 = v19;
  [PISegmentationHelper computeAvoidOverlapYOffsetWithVisibleFrame:v17 imageSize:v18 segmentationMatte:0 layoutConfiguration:v19 outputUnsafeOverlap:x context:y, v14, v13, width, height];
  v22 = fmin(v21, 0.0);
  memset(&v46, 0, sizeof(v46));
  if (v22 <= -a5)
  {
    v23 = a5;
  }

  else
  {
    v23 = -v22;
  }

  CGAffineTransformMakeTranslation(&v46, 0.0, v23);
  v45 = v46;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = v14;
  v48.size.height = v13;
  v49 = CGRectApplyAffineTransform(v48, &v45);
  v24 = v49.origin.x;
  v25 = v49.origin.y;
  v26 = v49.size.width;
  v27 = v49.size.height;

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

+ (CGRect)computeCenterZoomAreaWithMidpoint:(double)a3 visibleFrame:(CGRect)a4 segmentationMatte:(id)a5 layoutConfiguration:(id)a6 context:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a5;
  v14 = a7;
  v15 = [MEMORY[0x1E695F648] columnAverageFilter];
  [v15 setInputImage:v13];
  [v15 setExtent:{x, y, width, height}];
  v16 = [v15 outputImage];
  [v16 extent];
  v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(4 * vcvtpd_s64_f64(v17))];
  v19 = [v18 mutableBytes];
  v20 = [v18 length];
  [v16 extent];
  [v14 render:v16 toBitmap:v19 rowBytes:v20 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:?];
  v21 = [v18 copy];

  v22 = [v21 length];
  v23 = v22 / 4;
  v24 = [v21 bytes];
  v25 = vcvtmd_s64_f64(width);
  v26 = vcvtmd_s64_f64(a3 - x);
  if (v26 < 1)
  {
LABEL_12:
    v27 = -1;
  }

  else
  {
    v27 = v26;
    while (1)
    {
      if (v23 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v23;
      }

      v29 = 0.0;
      if (v22 >= 4)
      {
        v30 = v24;
        v31 = v28;
        do
        {
          v32 = *v30++;
          v29 = v29 + v32;
          --v31;
        }

        while (v31);
      }

      v33 = v29 / v28;
      if (v33 < 0.015)
      {
        break;
      }

      v34 = __OFSUB__(v27--, 1);
      if ((v27 < 0) ^ v34 | (v27 == 0))
      {
        goto LABEL_12;
      }
    }
  }

  if (v26 >= v25)
  {
    goto LABEL_27;
  }

  v35 = v25 >= v23 ? v22 / 4 : v25;
  v36 = v26;
  v37 = v35 - v26;
  v38 = (v24 + 4 * v26);
  while (1)
  {
    v39 = 0.0;
    if (v36 < v23)
    {
      v40 = v38;
      v41 = v37;
      do
      {
        v42 = *v40++;
        v39 = v39 + v42;
        --v41;
      }

      while (v41);
    }

    v43 = v39 / (v35 - v36);
    if (v43 < 0.015)
    {
      break;
    }

    ++v36;
    --v37;
    ++v38;
    if (v36 == v25)
    {
      goto LABEL_27;
    }
  }

  if (v27 == -1 || v36 == -1)
  {
LABEL_27:
    v44 = *MEMORY[0x1E695F050];
    v46 = *(MEMORY[0x1E695F050] + 8);
    v45 = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v44 = x + v27;
    v45 = (v36 - v27);
    v46 = 0.0;
  }

  v47 = v44;
  v48 = v46;
  v49 = v45;
  v50 = height;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

+ (double)computeHeadroomZoomFactorWithVisibleFrame:(CGRect)a3 zoomTowardsTop:(BOOL *)a4 matte:(id)a5 layoutConfiguration:(id)a6 context:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  memset(v35, 0, sizeof(v35));
  [PISegmentationHelper computeClockLayerOrderWithVisibleFrame:v15 segmentationMatte:v16 layoutConfiguration:v17 context:0 interactive:x, y, width, height];
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MaxY = CGRectGetMaxY(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v20 = CGRectGetMidX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinY = CGRectGetMinY(v39);
  v22 = 0;
  v32 = v22;
  v33 = *(v35 + 8);
  v34 = 0;
  if (a1)
  {
    [a1 _computeHeadroomZoomFactorWithVisibleFrame:&v32 scaleCenter:v15 initialOverlap:v16 matte:v17 layoutConfiguration:x context:{y, width, height, MidX, MaxY}];
    v24 = v23;
    v29 = *&v35[0];
    v30 = *(v35 + 8);
    v31 = *(&v35[1] + 1);
    [a1 _computeHeadroomZoomFactorWithVisibleFrame:&v29 scaleCenter:v15 initialOverlap:v16 matte:v17 layoutConfiguration:x context:{y, width, height, v20, MinY}];
    v26 = *&v35[0];
  }

  else
  {

    v26 = *&v35[0];
    v29 = *&v35[0];
    v30 = *(v35 + 8);
    v31 = *(&v35[1] + 1);
    v24 = 0.0;
    v25 = 0.0;
  }

  *a4 = v24 > v25;
  if (v24 >= v25)
  {
    v27 = v24;
  }

  else
  {
    v27 = v25;
  }

  return v27;
}

+ (double)_computeHeadroomZoomFactorWithVisibleFrame:(CGRect)a3 scaleCenter:(CGPoint)a4 initialOverlap:(PISegmentationClockOverlapResult *)a5 matte:(id)a6 layoutConfiguration:(id)a7 context:(id)a8
{
  v41 = a5;
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v14 = a8;
  [MEMORY[0x1E69C0798] targetZoomFactorLimitWithLayoutType:{objc_msgSend(MEMORY[0x1E69C07A8], "layoutTypeFromLayoutConfiguration:", v13)}];
  v16 = v15;
  v17 = v41->var0;
  v18 = 0;
  v19 = v16 + -1.0;
  while (1)
  {
    v20 = v18 + 1;
    v21 = (v18 + 1) / 5.0 * v19 + 1.0;
    [a1 scaleRect:x scaleFactor:y scaleCenter:{width, height, 1.0 / v21, a4.x, a4.y, v41}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v17;
    memset(buf, 0, sizeof(buf));
    [PISegmentationHelper computeClockLayerOrderWithVisibleFrame:v12 segmentationMatte:v13 layoutConfiguration:v14 context:0 interactive:v23, v25, v27, v29];
    v17 = 0;

    if (([v30 isEqualToString:0] & 1) == 0)
    {
      break;
    }

    ++v18;
    if (v20 == 5)
    {
      v30 = 0;
      v31 = 0;
      v21 = -1.0;
      goto LABEL_22;
    }
  }

  v31 = *buf;

  v32 = v18 / 5.0 * v19 + 1.0;
  v33 = 3;
  do
  {
    [a1 scaleRect:x scaleFactor:y scaleCenter:{width, height, 1.0 / ((v21 + v32) * 0.5), a4.x, a4.y}];
    memset(buf, 0, sizeof(buf));
    [PISegmentationHelper computeClockLayerOrderWithVisibleFrame:v12 segmentationMatte:v13 layoutConfiguration:v14 context:0 interactive:?];
    v34 = [0 isEqualToString:v30];
    v35 = 0;
    if (v34)
    {
      v36 = v30;
    }

    else
    {
      v36 = v31;
    }

    if (v34)
    {
      v30 = v35;
    }

    else
    {
      v31 = v35;
    }

    if (v34)
    {
      v32 = (v21 + v32) * 0.5;
    }

    else
    {
      v21 = (v21 + v32) * 0.5;
    }

    --v33;
  }

  while (v33);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_275_10504);
  }

  v37 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
    *buf = 138413058;
    *&buf[4] = v39;
    *&buf[12] = 2112;
    *&buf[14] = v40;
    *&buf[22] = 2112;
    *&buf[24] = v30;
    v47 = 2112;
    v48 = v31;
    _os_log_debug_impl(&dword_1C7694000, v37, OS_LOG_TYPE_DEBUG, "Pixel-based headroom zoom final range %@,%@: %@,%@", buf, 0x2Au);
  }

  if ([v30 isEqualToString:*MEMORY[0x1E69C0B98]])
  {
    v21 = v32;
  }

LABEL_22:

  return v21;
}

+ (CGRect)scaleRect:(CGRect)a3 scaleFactor:(double)a4 scaleCenter:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  height = a3.size.height;
  width = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, -a5.x, -a5.y);
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, a4, a4);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeTranslation(&v16, x, y);
  memset(&v15, 0, sizeof(v15));
  t1 = v18;
  v12 = v17;
  CGAffineTransformConcat(&v14, &t1, &v12);
  t1 = v16;
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v19.origin.x = v11;
  v19.origin.y = v10;
  v19.size.width = width;
  v19.size.height = height;
  return CGRectApplyAffineTransform(v19, &v14);
}

+ (double)computeStretchOverlapYOffsetWithVisibleFrame:(CGRect)a3 imageSize:(CGSize)a4 segmentationMatte:(id)a5 classicOverlap:(BOOL)a6 layoutConfiguration:(id)a7 context:(id)a8
{
  v10 = a6;
  height = a4.height;
  width = a4.width;
  v13 = a3.size.height;
  v14 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = 0.0;
  if ([a1 layoutConfigurationValidForVisibleFrame:v19 layoutConfiguration:{x, y, v14, v13}])
  {
    v22 = [v18 imageByCroppingToRect:{0.0, 0.0, width, height}];

    [v19 timeOverlapCheckTop];
    v24 = v23;
    v97 = v25;
    r2 = v13;
    v27 = v26;
    v29 = v28;
    [v19 timeOverlapCheckBottom];
    v94 = v31;
    v95 = v30;
    v33 = v32;
    v35 = v34;
    v92 = x + v24 * v14;
    v36 = v27;
    v100 = y + v27 * r2;
    v96 = v29;
    [v22 extent];
    v102.origin.y = 0.0;
    v102.origin.x = v92;
    v102.size.width = v14 * v97;
    v89 = x;
    v105.origin.x = x;
    v105.origin.y = y;
    v90 = v14;
    v105.size.width = v14;
    v105.size.height = r2;
    v103 = CGRectIntersection(v102, v105);
    v37 = imageDataOfRowAverages(v20, v22, v103.origin.x, v103.origin.y, v103.size.width, v103.size.height);
    v38 = [v37 length];
    v39 = v38;
    if (v38 >= 0)
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 + 3;
    }

    v41 = [v37 bytes];
    v42 = [MEMORY[0x1E69C07A0] systemParameters];
    [v42 targetBottomOverlap];
    v93 = v43;

    v44 = [MEMORY[0x1E69C07A0] systemParameters];
    [v44 maxBottomOverlap];
    v91 = v45;

    v46 = r2;
    [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:0 isInteractive:{v92, v100, v14 * v97, r2 * v29}];
    v101 = v47;
    v48 = 0;
    if (v39 < 4)
    {
      goto LABEL_39;
    }

    v49 = 0;
    v48 = 0;
    v50 = v40 >> 2;
    v98 = 1.0;
    v88 = 1.0 / r2;
    while (1)
    {
      if (v10)
      {
        v51 = v36 - v88;
        v52 = v33 - v88;
        v53 = v94;
        v54 = v95;
        v55 = v35;
      }

      else
      {
        [v19 stretchedTimeOverlapCheckTop:v49 visibleFrame:{v89, y, v90, r2}];
        v51 = v56;
        v96 = v57;
        v46 = r2;
        [v19 stretchedTimeOverlapCheckBottom:v49 visibleFrame:{v89, y, v90, r2}];
        v54 = v58;
        v52 = v59;
        v53 = v60;
        v55 = v61;
      }

      v62 = vcvtmd_s64_f64(v46 * v52);
      v63 = v62 + vcvtmd_s64_f64(v46 * v55);
      if (v63 >= v50)
      {
        v64 = v50;
      }

      else
      {
        v64 = v63;
      }

      v65 = 0.0;
      v66 = 0.0;
      v67 = v64 - v62;
      if (v64 > v62)
      {
        v68 = v64 - v62;
        v69 = (v41 + 4 * v62);
        do
        {
          v70 = *v69++;
          v66 = v66 + v70;
          --v68;
        }

        while (v68);
      }

      v71 = vcvtmd_s64_f64(v46 * v51);
      v72 = v71 + vcvtmd_s64_f64(v46 * v96);
      if (v72 >= v50)
      {
        v73 = v50;
      }

      else
      {
        v73 = v72;
      }

      v74 = v73 - v71;
      if (v73 > v71)
      {
        v75 = v73 - v71;
        v65 = 0.0;
        v76 = (v41 + 4 * v71);
        do
        {
          v77 = *v76++;
          v65 = v65 + v77;
          --v75;
        }

        while (v75);
      }

      v78 = v66 / v67;
      v79 = v78;
      v80 = v65 / v74;
      v81 = v80;
      v82 = vabdd_f64(v79, v93);
      v83 = v79 > 0.01;
      if (v101 <= v81)
      {
        v83 = 0;
      }

      v84 = v98;
      v85 = v82 < v98;
      if (v83 && v85)
      {
        v84 = v82;
      }

      v98 = v84;
      if (v83 && v85)
      {
        v48 = v49;
      }

      if (v93 <= v79 && v91 > v79 && v101 > v81)
      {
        break;
      }

      v104.origin.x = v54;
      v104.origin.y = v52;
      v104.size.width = v53;
      v104.size.height = v55;
      if (CGRectIsNull(v104))
      {
        goto LABEL_39;
      }

      [v19 maxStrechAmountNormalized];
      if (v46 * v86 < v49 || v101 < v81)
      {
        if (v48)
        {
          v49 = v48;
        }

        break;
      }

      v35 = v55;
      v94 = v53;
      v95 = v54;
      v33 = v52;
      v36 = v51;
      if (++v49 == v50)
      {
        goto LABEL_39;
      }
    }

    if (!v49)
    {
LABEL_39:
      v49 = v48;
    }

    v21 = v49;

    v18 = v22;
  }

  return v21;
}

+ (double)computeAvoidOverlapYOffsetWithVisibleFrame:(CGRect)a3 imageSize:(CGSize)a4 segmentationMatte:(id)a5 layoutConfiguration:(id)a6 outputUnsafeOverlap:(double *)a7 context:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v103 = *MEMORY[0x1E69E9840];
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (!v16)
  {
    v86 = NUAssertLogger_10509();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "segmentationMatte != nil"];
      *buf = 138543362;
      v100 = v87;
      _os_log_error_impl(&dword_1C7694000, v86, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v88 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v90 = NUAssertLogger_10509();
    v91 = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v91)
      {
        v94 = dispatch_get_specific(*v88);
        v95 = MEMORY[0x1E696AF00];
        v96 = v94;
        v97 = [v95 callStackSymbols];
        v98 = [v97 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v100 = v94;
        v101 = 2114;
        v102 = v98;
        _os_log_error_impl(&dword_1C7694000, v90, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v91)
    {
      v92 = [MEMORY[0x1E696AF00] callStackSymbols];
      v93 = [v92 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v100 = v93;
      _os_log_error_impl(&dword_1C7694000, v90, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v19 = v18;
  v20 = 0.0;
  if ([a1 layoutConfigurationValidForVisibleFrame:v17 layoutConfiguration:{x, y, width, height}])
  {
    [v17 timeOverlapCheckBottom];
    v22 = x + v21 * width;
    v24 = width * v23;
    [v16 extent];
    v26 = imageDataOfRowAverages(v19, v16, v22, 0.0, v24, v25);
    v27 = [v26 length];
    if (v27 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 3;
    }

    v29 = v28 >> 2;
    v30 = [v26 bytes];
    v31 = vcvtmd_s64_f64(height);
    [v17 unsafeRect];
    v33 = vcvtmd_s64_f64(height * v32);
    v35 = vcvtmd_s64_f64(height * v34);
    if (v28 >> 2 >= y)
    {
      v36 = y;
    }

    else
    {
      v36 = v28 >> 2;
    }

    v37 = v36 & ~(v36 >> 31);
    v38 = -1.0;
    v39 = 0;
    if ((v37 + v31) >= v28 >> 2)
    {
      v55 = 0;
      v44 = 10.0;
    }

    else
    {
      v40 = v33 + v35 + v37;
      v41 = v33 + v37;
      v42 = -v41;
      v43 = (v30 + 4 * v41);
      v44 = 10.0;
      v45 = v36 & ~(v36 >> 31);
      while (1)
      {
        if (v29 >= v40)
        {
          v46 = v40;
        }

        else
        {
          v46 = v29;
        }

        v47 = v45 + v33;
        v48 = v45 + v33 + v35;
        if (v48 >= v29)
        {
          v48 = v28 >> 2;
        }

        v49 = 0.0;
        if (v47 < v48)
        {
          v50 = v46 + v42;
          v51 = v43;
          do
          {
            v52 = *v51++;
            v49 = v49 + v52;
            --v50;
          }

          while (v50);
        }

        v53 = v49 / (v48 - v47);
        v54 = v53;
        if (v54 < 0.01)
        {
          break;
        }

        if (v44 > v54)
        {
          v39 = v45 - v37;
        }

        ++v45;
        if (v44 > v54)
        {
          v44 = v54;
        }

        ++v40;
        --v42;
        ++v43;
        if (v45 >= v29 - v31)
        {
          v55 = 0;
          goto LABEL_28;
        }
      }

      v55 = v45 - v37;
      v38 = v54;
    }

LABEL_28:
    if (v36 < 1)
    {
LABEL_43:
      v71 = 0;
      v72 = 0;
      v73 = v55 != 0;
      v69 = -1.0;
    }

    else
    {
      v56 = v33 + v35 + v37;
      v57 = v33 + v37;
      v58 = -v57;
      v59 = (v30 + 4 * v57);
      v60 = v36 & ~(v36 >> 31);
      while (1)
      {
        if (v29 >= v56)
        {
          v61 = v56;
        }

        else
        {
          v61 = v29;
        }

        v62 = v60 + v33;
        v63 = v60 + v33 + v35;
        if (v63 >= v29)
        {
          v63 = v28 >> 2;
        }

        v64 = 0.0;
        if (v62 < v63)
        {
          v65 = v61 + v58;
          v66 = v59;
          do
          {
            v67 = *v66++;
            v64 = v64 + v67;
            --v65;
          }

          while (v65);
        }

        v68 = v64 / (v63 - v62);
        v69 = v68;
        if (v69 < 0.01)
        {
          break;
        }

        if (v44 > v69)
        {
          v39 = v60 - v37;
          v44 = v69;
        }

        --v56;
        --v59;
        ++v58;
        if (v60-- <= 1)
        {
          goto LABEL_43;
        }
      }

      v72 = v60 - v37;
      v71 = v72 != 0;
      v73 = v55 != 0;
      if (v72 && v55)
      {
        if (v72 >= 0)
        {
          v84 = v72;
        }

        else
        {
          v84 = -v72;
        }

        if (v55 >= 0)
        {
          v85 = v55;
        }

        else
        {
          v85 = -v55;
        }

        if (v84 < v85)
        {
          v38 = v69;
          v55 = v72;
        }

        if (!a7)
        {
          goto LABEL_59;
        }

LABEL_58:
        *a7 = v38;
LABEL_59:
        v20 = v55;

        goto LABEL_60;
      }
    }

    if (!v73)
    {
      v38 = v69;
      v55 = v72;
    }

    if (!v73 && !v71)
    {
      v38 = v44;
      v55 = v39;
      if (v44 >= 0.5)
      {
        v74 = v37 + v33;
        if ((v74 + v35) >= v29)
        {
          v75 = v28 >> 2;
        }

        else
        {
          v75 = v74 + v35;
        }

        v76 = 0.0;
        v77 = v75 - v74;
        if (v75 > v74)
        {
          v78 = v74 - v75;
          v79 = (v30 + 4 * v74);
          do
          {
            v80 = *v79++;
            v76 = v76 + v80;
          }

          while (!__CFADD__(v78++, 1));
        }

        v55 = 0;
        v82 = v76 / v77;
        v38 = v82;
      }
    }

    if (!a7)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_60:

  return v20;
}

+ (double)computeTargetOverlapYOffsetWithVisibleFrame:(CGRect)a3 imageSize:(CGSize)a4 segmentationMatte:(id)a5 layoutConfiguration:(id)a6 context:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = 0.0;
  if ([a1 layoutConfigurationValidForVisibleFrame:v15 layoutConfiguration:{x, y, width, height}])
  {
    [v15 timeOverlapCheckBottom];
    v19 = v18;
    v123 = v20;
    v125 = v15;
    [v15 timeOverlapCheckTop];
    v22 = v21;
    v24 = x + v23 * width;
    v124 = y + v21 * height;
    v26 = width * v25;
    v28 = height * v27;
    [v14 extent];
    v127 = v16;
    v128 = v14;
    v30 = imageDataOfRowAverages(v16, v14, v24, 0.0, v26, v29);
    v31 = [v30 length];
    if (v31 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 + 3;
    }

    v33 = v32 >> 2;
    v126 = v30;
    v34 = [v30 bytes];
    v35 = vcvtmd_s64_f64(height);
    v36 = vcvtmd_s64_f64(height * v19);
    v37 = vcvtmd_s64_f64(height * v123);
    v38 = vcvtmd_s64_f64(height * v22);
    v39 = vcvtmd_s64_f64(v28);
    v40 = [MEMORY[0x1E69C07A0] systemParameters];
    [v40 targetBottomOverlap];
    v42 = v41;

    v43 = [MEMORY[0x1E69C07A0] systemParameters];
    [v43 maxBottomOverlap];
    v45 = v44;

    [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:0 isInteractive:{v24, v124, v26, v28}];
    if (v32 >> 2 >= y)
    {
      v47 = y;
    }

    else
    {
      v47 = v32 >> 2;
    }

    v48 = v47 & ~(v47 >> 31);
    v49 = &qword_1C7845000;
    if (v48 + v35 >= v32 >> 2)
    {
      v84 = 0;
      v50 = 0;
      v61 = 1.0;
      v53 = v36;
      v15 = v125;
    }

    else
    {
      v50 = 0;
      v51 = v36;
      v52 = v33 - v35;
      v53 = v36;
      v54 = v36 + v37 + v48;
      v55 = v36 + v48;
      v56 = -v55;
      v57 = (v34 + 4 * v55);
      v58 = v38 + v39 + v48;
      v59 = v38 + v48;
      v60 = -v59;
      v61 = 1.0;
      v62 = v47 & ~(v47 >> 31);
      v63 = (v34 + 4 * v59);
      v15 = v125;
      while (1)
      {
        if (v33 >= v58)
        {
          v64 = v58;
        }

        else
        {
          v64 = v33;
        }

        if (v33 >= v54)
        {
          v65 = v54;
        }

        else
        {
          v65 = v33;
        }

        v66 = v62 + v51;
        v67 = v62 + v51 + v37;
        if (v67 >= v33)
        {
          v67 = v33;
        }

        v68 = 0.0;
        v69 = 0.0;
        if (v66 < v67)
        {
          v70 = v65 + v56;
          v71 = v57;
          do
          {
            v72 = *v71++;
            v69 = v69 + v72;
            --v70;
          }

          while (v70);
        }

        v73 = v62 + v38;
        if ((v62 + v38 + v39) >= v33)
        {
          v74 = v33;
        }

        else
        {
          v74 = v62 + v38 + v39;
        }

        if (v73 < v74)
        {
          v75 = v64 + v60;
          v68 = 0.0;
          v76 = v63;
          do
          {
            v77 = *v76++;
            v68 = v68 + v77;
            --v75;
          }

          while (v75);
        }

        v78 = v69 / (v67 - v66);
        v79 = v78;
        v80 = v68 / (v74 - v73);
        v81 = v80;
        v82 = vabdd_f64(v79, v42);
        v83 = v46 > v81 && v79 > 0.01;
        v84 = v62 - v48;
        if (v83 && v82 < v61)
        {
          v61 = v82;
          v50 = v62 - v48;
        }

        if (v42 <= v79 && v45 > v79 && v46 > v81 && v82 < 0.01)
        {
          break;
        }

        ++v62;
        ++v54;
        --v56;
        ++v57;
        ++v58;
        --v60;
        ++v63;
        if (v62 >= v52)
        {
          v84 = 0;
          break;
        }
      }

      v49 = &qword_1C7845000;
    }

    v14 = v128;
    if (v47 < 1)
    {
LABEL_71:
      v117 = 0;
    }

    else
    {
      v85 = v53;
      v86 = v38;
      v87 = v53 + v37 + v48;
      v88 = v53 + v48;
      v89 = -v88;
      v90 = (v34 + 4 * v88);
      v91 = v38 + v39 + v48;
      v92 = v38 + v48;
      v93 = -v92;
      v94 = *(v49 + 77);
      v95 = v48;
      v96 = (v34 + 4 * v92);
      while (1)
      {
        if (v33 >= v91)
        {
          v97 = v91;
        }

        else
        {
          v97 = v33;
        }

        if (v33 >= v87)
        {
          v98 = v87;
        }

        else
        {
          v98 = v33;
        }

        v99 = v95 + v85;
        v100 = v95 + v85 + v37;
        if (v100 >= v33)
        {
          v100 = v33;
        }

        v101 = 0.0;
        v102 = 0.0;
        if (v99 < v100)
        {
          v103 = v98 + v89;
          v104 = v90;
          do
          {
            v105 = *v104++;
            v102 = v102 + v105;
            --v103;
          }

          while (v103);
        }

        v106 = v95 + v86;
        v107 = v95 + v86 + v39;
        if (v107 >= v33)
        {
          v107 = v33;
        }

        if (v106 < v107)
        {
          v108 = v97 + v93;
          v101 = 0.0;
          v109 = v96;
          do
          {
            v110 = *v109++;
            v101 = v101 + v110;
            --v108;
          }

          while (v108);
        }

        v111 = v102 / (v100 - v99);
        v112 = v111;
        v113 = v101 / (v107 - v106);
        v114 = v113;
        v115 = vabdd_f64(v112, v42);
        v116 = v46 > v114 && v112 > v94;
        v117 = v95 - v48;
        v118 = v116 && v115 < v61;
        if (v118)
        {
          v50 = v95 - v48;
        }

        if (v42 <= v112 && v45 > v112 && v46 > v114 && v115 < v94)
        {
          break;
        }

        if (v118)
        {
          v61 = v115;
        }

        --v87;
        --v90;
        --v91;
        --v96;
        ++v89;
        ++v93;
        if (v95-- <= 1)
        {
          goto LABEL_71;
        }
      }
    }

    if (v84)
    {
      v120 = 1;
    }

    else
    {
      v120 = v117 == 0;
    }

    if (!v120)
    {
      v50 = v117;
    }

    if (v117)
    {
      v121 = 1;
    }

    else
    {
      v121 = v84 == 0;
    }

    if (!v121)
    {
      v50 = v84;
    }

    v17 = v50;

    v16 = v127;
  }

  return v17;
}

+ (BOOL)layoutConfigurationValidForVisibleFrame:(CGRect)a3 layoutConfiguration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a4 timeRect];
  v9 = x + v8 * width;
  v11 = y + v10 * height;
  v13 = width * v12;
  v15 = height * v14;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;

  return CGRectContainsRect(*&v16, *&v9);
}

+ (double)computeMatteCoverageWithRect:(CGRect)a3 segmentationMatte:(id)a4 context:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = [a4 imageByCroppingToRect:{x, y, width, height}];
  v12 = [MEMORY[0x1E695F648] areaAverageFilter];
  [v12 setInputImage:v11];
  [v12 setExtent:{x, y, width, height}];
  v16 = 0.0;
  v13 = [v12 outputImage];
  [v10 render:v13 toBitmap:&v16 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];

  v14 = v16;
  return v14;
}

+ (double)computeAlphaCoverageWithRect:(CGRect)a3 foregroundImage:(id)a4 context:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = [a4 imageByCroppingToRect:{x, y, width, height}];
  v12 = [MEMORY[0x1E695F648] areaAverageFilter];
  [v12 setInputImage:v11];
  [v12 setExtent:{x, y, width, height}];
  v15 = 0;
  v16 = 0;
  v13 = [v12 outputImage];
  [v10 render:v13 toBitmap:&v15 rowBytes:16 bounds:*MEMORY[0x1E695F918] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];

  LODWORD(height) = HIDWORD(v16);
  return *&height;
}

+ (PISegmentationClockOverlapResult)computeClockLayerOrderWithAdaptiveTimeRect:(SEL)a3 visibleFrame:(CGRect)a4 segmentationMatte:(CGRect)a5 layoutConfiguration:(id)a6 context:(id)a7 interactive:(id)a8
{
  v9 = a9;
  height = a5.size.height;
  width = a5.size.width;
  x = a5.origin.x;
  y = a5.origin.y;
  v14 = a4.size.height;
  v15 = a4.size.width;
  v16 = a4.origin.y;
  v17 = a4.origin.x;
  v65 = a6;
  v19 = a8;
  v20 = a7;
  [v20 timeOverlapCheckBottomForTimeRect:{v17, v16, v15, v14}];
  v22 = v21;
  v24 = v23;
  v61 = v26;
  v62 = v25;
  [v20 timeOverlapCheckTopForTimeRect:{v17, v16, v15, v14}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = x + v22 * width;
  v36 = y + v24 * height;
  v37 = width * v62;
  v38 = x + v28 * width;
  v39 = y + v30 * height;
  v40 = width * v32;
  v41 = height * v34;
  [PISegmentationHelper computeMatteCoverageWithRect:v65 segmentationMatte:v19 context:v35, v36, v37, height * v61];
  v43 = v42;
  v44 = *MEMORY[0x1E69C0B98];
  v45 = [MEMORY[0x1E69C07A0] systemParameters];
  [v45 maxBottomOverlap];
  v47 = v46;

  v48 = MEMORY[0x1E69C0BA0];
  v49 = v44;
  if (v43 > v47)
  {
    v49 = *MEMORY[0x1E69C0BA0];
  }

  [PISegmentationHelper computeMatteCoverageWithRect:v65 segmentationMatte:v19 context:v38, v39, v40, v41];
  v51 = v50;
  [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:0 isInteractive:{v38, v39, v40, v41}];
  if (v51 > v52)
  {
    v53 = *v48;

    v49 = v53;
  }

  v54 = [MEMORY[0x1E69C07A8] clockIntersectionFromTopRectMatteCoverage:v51 bottomRectMatteCoverage:v43];
  [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:1 isInteractive:{v38, v39, v40, v41}];
  v56 = v55;
  v57 = v44;
  if (v51 > v56)
  {
    v58 = *v48;

    v54 = 3;
    v57 = v58;
  }

  if (v9)
  {
    v59 = v57;
  }

  else
  {
    v59 = v49;
  }

  retstr->var0 = v59;
  retstr->var1 = v54;
  retstr->var2 = v43;
  retstr->var3 = v51;

  return result;
}

+ (PISegmentationClockOverlapResult)computeClockLayerOrderWithVisibleFrame:(SEL)a3 segmentationMatte:(CGRect)a4 layoutConfiguration:(id)a5 context:(id)a6 interactive:(id)a7
{
  v8 = a8;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v57 = a5;
  v16 = a7;
  v17 = a6;
  [v17 timeOverlapCheckBottom];
  v55 = y + v19 * height;
  v56 = x + v18 * width;
  v53 = height * v21;
  v54 = width * v20;
  [v17 timeOverlapCheckTop];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = x + v23 * width;
  v31 = y + v25 * height;
  v32 = width * v27;
  v33 = height * v29;
  [PISegmentationHelper computeMatteCoverageWithRect:v57 segmentationMatte:v16 context:v56, v55, v54, v53];
  v35 = v34;
  v36 = *MEMORY[0x1E69C0B98];
  v37 = [MEMORY[0x1E69C07A0] systemParameters];
  [v37 maxBottomOverlap];
  v39 = v38;

  v40 = MEMORY[0x1E69C0BA0];
  v41 = v36;
  if (v35 > v39)
  {
    v41 = *MEMORY[0x1E69C0BA0];
  }

  [PISegmentationHelper computeMatteCoverageWithRect:v57 segmentationMatte:v16 context:v30, v31, v32, v33];
  v43 = v42;
  [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:0 isInteractive:{v30, v31, v32, v33}];
  if (v43 > v44)
  {
    v45 = *v40;

    v41 = v45;
  }

  v46 = [MEMORY[0x1E69C07A8] clockIntersectionFromTopRectMatteCoverage:v43 bottomRectMatteCoverage:v35];
  [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:1 isInteractive:{v30, v31, v32, v33}];
  v48 = v47;
  v49 = v36;
  if (v43 > v48)
  {
    v50 = *v40;

    v46 = 3;
    v49 = v50;
  }

  if (v8)
  {
    v51 = v49;
  }

  else
  {
    v51 = v41;
  }

  retstr->var0 = v51;
  retstr->var1 = v46;
  retstr->var2 = v35;
  retstr->var3 = v43;

  return result;
}

+ (BOOL)topEdgeHasNoContactWithInspectionMatte:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11 + -5.0;
  v13 = [MEMORY[0x1E695F648] areaAverageFilter];
  [v13 setInputImage:v6];

  [v13 setExtent:{v8, v12, v10, 5.0}];
  v14 = [v13 outputImage];
  v16 = 0.0;
  [v5 render:v14 toBitmap:&v16 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:{*MEMORY[0x1E69BDDA8], *(MEMORY[0x1E69BDDA8] + 8), *(MEMORY[0x1E69BDDA8] + 16), *(MEMORY[0x1E69BDDA8] + 24)}];

  LOBYTE(v5) = v16 < 0.025;
  return v5;
}

+ (float)groundedScoreForSegmentationMatte:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 extent];
  v8 = v7;
  v10 = v9 + v7 * 0.0;
  v13 = v11 + v12 * 0.0;
  v14 = v12 * 0.05;
  v15 = [MEMORY[0x1E695F648] areaAverageFilter];
  [v15 setInputImage:v6];

  [v15 setExtent:{v10, v13, v8, v14}];
  v16 = [v15 outputImage];
  v18 = 0;
  [v5 render:v16 toBitmap:&v18 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:{*MEMORY[0x1E69BDDA8], *(MEMORY[0x1E69BDDA8] + 8), *(MEMORY[0x1E69BDDA8] + 16), *(MEMORY[0x1E69BDDA8] + 24)}];

  LODWORD(v8) = v18;
  return *&v8;
}

+ (id)localConfidenceImage:(id)a3
{
  v3 = a3;
  v4 = [v3 imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&unk_1F471FF28];
  v5 = [v3 imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&unk_1F471FF50];

  v6 = [v5 imageByApplyingFilter:@"CIColorInvert"];

  v7 = [MEMORY[0x1E695F648] multiplyCompositingFilter];
  [v7 setInputImage:v4];
  [v7 setBackgroundImage:v6];
  v8 = [v7 outputImage];
  v9 = [PISegmentationHelper openMask:v8 withRadius:10.0];

  return v9;
}

+ (float)localConfidenceScoreForLocalConfidenceImage:(id)a3 extent:(CGRect)a4 context:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = MEMORY[0x1E695F648];
  v11 = a5;
  v12 = a3;
  v13 = [v10 areaAverageFilter];
  [v13 setInputImage:v12];

  [v13 setExtent:{x, y, width, height}];
  v14 = [v13 outputImage];
  v16 = 0.0;
  [v11 render:v14 toBitmap:&v16 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:{*MEMORY[0x1E69BDDA8], *(MEMORY[0x1E69BDDA8] + 8), *(MEMORY[0x1E69BDDA8] + 16), *(MEMORY[0x1E69BDDA8] + 24)}];

  *&height = 1.0 - v16;
  return *&height;
}

+ (PISegmentationBimodalScore)bimodalScoreForHistogram:(id)a3
{
  if (a3)
  {
    v3 = a3;
    [v3 threshold:0.03];
    *&v4 = v4;
    v21 = 1.0 - *&v4;
    [v3 threshold:0.97];
    v6 = v5;

    v7 = v21;
    v8 = v6;
    v9 = fmaxf(fminf(v8 * 4.0, 1.0), 0.0);
    v10.f32[0] = v21;
    v10.f32[1] = (v21 + v8) + -0.5;
    v11 = vmul_f32(v10, 0x4000000040800000);
    __asm { FMOV            V3.2S, #1.0 }

    v17 = vmaxnm_f32(vminnm_f32(v11, _D3), 0);
    __asm { FMOV            V5.2S, #3.0 }

    v19 = vmul_f32(vmul_f32(v17, v17), vmla_f32(_D5, 0xC0000000C0000000, v17));
    v20 = vmuls_lane_f32(((v9 * v9) * ((v9 * -2.0) + 3.0)) * v19.f32[0], v19, 1);
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
    v20 = 0.0;
  }

  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v20;
  return result;
}

+ (BOOL)matteHistogramIndicatesSubjectDetected:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [a3 threshold:0.6];
  return v3 > 0.02;
}

+ (id)upsampleBackgroundImage:(id)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    [v6 extent];
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, width / v8, height / v9);
    v12 = v13;
    v10 = [v7 imageByApplyingTransform:&v12 highQualityDownsample:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)upsampleMatteImage:(id)a3 guideImage:(id)a4
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    [v5 extent];
    v8 = v7;
    v10 = v9;
    [v6 extent];
    if (v8 != v12 || v10 != v11)
    {
      v18[0] = @"inputSmallImage";
      v18[1] = @"inputSpatialSigma";
      v19[0] = v5;
      v19[1] = &unk_1F471F660;
      v18[2] = @"inputLumaSigma";
      v19[2] = &unk_1F471F670;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v15 = [v6 imageByApplyingFilter:@"CIEdgePreserveUpsampleFilter" withInputParameters:v14];

      v16 = [v15 imageByClampingToExtent];
      [v15 extent];
      v5 = [v16 imageByCroppingToRect:?];
    }
  }

  return v5;
}

+ (id)backgroundForImage:(id)a3 matte:(id)a4 infill:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 infillMaskForSegmentationMatte:a4];
  [v9 extent];
  v13 = [a1 upsampleBackgroundImage:v10 toSize:{v11, v12}];

  [v9 extent];
  v16 = [a1 upsampleBackgroundImage:v8 toSize:{v14, v15}];

  v17 = [MEMORY[0x1E695F648] blendWithMaskFilter];
  [v17 setBackgroundImage:v9];

  [v17 setInputImage:v16];
  [v17 setMaskImage:v13];
  v18 = [v17 outputImage];

  return v18;
}

+ (id)backgroundForImage:(id)a3 matte:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 extent];
  v10 = [a1 upsampleBackgroundImage:v6 toSize:{v8, v9}];

  v11 = [MEMORY[0x1E695F648] blendWithMaskFilter];
  [v11 setBackgroundImage:v7];

  [v11 setInputImage:0];
  [v11 setMaskImage:v10];
  v12 = [v11 outputImage];

  return v12;
}

+ (id)foregroundForImage:(id)a3 matte:(id)a4
{
  v6 = a3;
  v7 = [a1 upsampleMatteImage:a4 guideImage:v6];
  v8 = [MEMORY[0x1E695F648] blendWithMaskFilter];
  [v8 setBackgroundImage:0];
  [v8 setInputImage:v6];

  [v8 setMaskImage:v7];
  v9 = [v8 outputImage];

  return v9;
}

+ (id)invertImage:(id)a3
{
  v3 = MEMORY[0x1E695F648];
  v4 = a3;
  v5 = [v3 colorInvertFilter];
  [v5 setInputImage:v4];

  v6 = [v5 outputImage];

  return v6;
}

+ (id)openMask:(id)a3 withRadius:(double)a4
{
  v5 = a3;
  [v5 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 imageByClampingToExtent];

  v15 = [MEMORY[0x1E695F648] morphologyMinimumFilter];
  *&a4 = a4;
  LODWORD(v16) = LODWORD(a4);
  [v15 setRadius:v16];
  [v15 setInputImage:v14];
  v17 = [MEMORY[0x1E695F648] morphologyMaximumFilter];
  v18 = [v15 outputImage];
  [v17 setInputImage:v18];

  LODWORD(v19) = LODWORD(a4);
  [v17 setRadius:v19];
  v20 = [v17 outputImage];
  v21 = [v20 imageByCroppingToRect:{v7, v9, v11, v13}];

  return v21;
}

+ (id)erodeMask:(id)a3 withRadius:(double)a4
{
  v5 = MEMORY[0x1E695F648];
  v6 = a3;
  v7 = [v5 morphologyMinimumFilter];
  *&v8 = a4;
  [v7 setRadius:v8];
  [v7 setInputImage:v6];
  v9 = [v7 outputImage];
  [v6 extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [v9 imageByCroppingToRect:{v11, v13, v15, v17}];

  return v18;
}

+ (id)dilateMask:(id)a3 withRadius:(double)a4
{
  v5 = MEMORY[0x1E695F648];
  v6 = a3;
  v7 = [v5 morphologyMaximumFilter];
  *&v8 = a4;
  [v7 setRadius:v8];
  [v7 setInputImage:v6];
  v9 = [v7 outputImage];
  [v6 extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [v9 imageByCroppingToRect:{v11, v13, v15, v17}];

  return v18;
}

+ (id)thresholdImage:(id)a3 withThreshold:(double)a4
{
  v5 = MEMORY[0x1E695F648];
  v6 = a3;
  v7 = [v5 colorThresholdFilter];
  *&v8 = a4;
  [v7 setThreshold:v8];
  [v7 setInputImage:v6];

  v9 = [v7 outputImage];

  return v9;
}

+ (id)imageWithColor:(id)a3 extent:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = MEMORY[0x1E695F648];
  v9 = a3;
  v10 = [v8 filterWithName:@"CIConstantColorGenerator"];
  [v10 setValue:v9 forKey:*MEMORY[0x1E695FA78]];

  v11 = [v10 outputImage];
  v12 = [v11 imageByCroppingToRect:{x, y, width, height}];

  return v12;
}

+ (id)infillMaskForSegmentationMatte:(id)a3
{
  v3 = a3;
  v4 = [PISegmentationHelper thresholdImage:v3 withThreshold:0.1];
  v5 = +[PIGlobalSettings globalSettings];
  [v5 segmentationInfillDilationPercent];
  v7 = v6;

  if (v7 > 0.0)
  {
    [v3 extent];
    if (v8 >= v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    v11 = [PISegmentationHelper dilateMask:v4 withRadius:v7 * v10];

    v4 = v11;
  }

  return v4;
}

+ (id)imageFromImageLayer:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 image];

  v7 = CVBufferCopyAttachment(v6, *MEMORY[0x1E6965CC0], 0);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isEqualToString:*MEMORY[0x1E6965CD0]];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v9 ^ 1u];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695F9C8]];
  }

  v11 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v6 options:v5];

  return v11;
}

@end