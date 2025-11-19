@interface _PIParallaxLayerStackDebugImageCollector
- (id)resultLayersWithRenderer:(id)a3;
- (void)prepareImagesForItem:(id)a3 renderer:(id)a4 layout:(id)a5 style:(id)a6 inputImage:(id)a7 matteImage:(id)a8 infillImage:(id)a9 foregroundImage:(id)a10 backgroundImage:(id)a11;
- (void)renderImagesWithRenderer:(id)a3;
@end

@implementation _PIParallaxLayerStackDebugImageCollector

- (id)resultLayersWithRenderer:(id)a3
{
  v4 = a3;
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputBuffer];

  if (v5)
  {
    v6 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputBuffer];
    v7 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputImage];
    v8 = [v4 layerForBuffer:v6 image:v7 zPosition:@"debugInput" identifier:-100.0];

    if (v8)
    {
      [v58 addObject:v8];
    }

    v9 = -101;
  }

  else
  {
    v9 = -100;
  }

  v10 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteBuffer];

  if (v10)
  {
    v11 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteBuffer];
    v12 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteImage];
    v13 = [v4 layerForBuffer:v11 image:v12 zPosition:@"debugMatte" identifier:v9];

    if (v13)
    {
      [v58 addObject:v13];
    }

    --v9;
  }

  v14 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropBuffer];

  if (v14)
  {
    v15 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropBuffer];
    v16 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropImage];
    v17 = [v4 layerForBuffer:v15 image:v16 zPosition:@"debugMatteCrop" identifier:v9];

    if (v17)
    {
      [v58 addObject:v17];
    }

    --v9;
  }

  v18 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceBuffer];

  if (v18)
  {
    v19 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceBuffer];
    v20 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceImage];
    v21 = [v4 layerForBuffer:v19 image:v20 zPosition:@"debugLocalConfidence" identifier:v9];

    if (v21)
    {
      [v58 addObject:v21];
    }

    --v9;
  }

  v22 = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapBuffer];

  if (v22)
  {
    v23 = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapBuffer];
    v24 = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapImage];
    v25 = [v4 layerForBuffer:v23 image:v24 zPosition:@"debugConfidenceMap" identifier:v9];

    if (v25)
    {
      [v58 addObject:v25];
    }

    --v9;
  }

  v26 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillBuffer];

  if (v26)
  {
    v27 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillBuffer];
    v28 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillImage];
    v29 = [v4 layerForBuffer:v27 image:v28 zPosition:@"debugInfill" identifier:v9];

    if (v29)
    {
      [v58 addObject:v29];
    }

    --v9;
  }

  v30 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutBuffer];

  if (v30)
  {
    v31 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutBuffer];
    v32 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutImage];
    v33 = [v4 layerForBuffer:v31 image:v32 zPosition:@"debugLayout" identifier:v9];

    if (v33)
    {
      [v58 addObject:v33];
    }

    --v9;
  }

  v34 = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewBuffer];

  if (v34)
  {
    v35 = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewBuffer];
    v36 = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewImage];
    v37 = [v4 layerForBuffer:v35 image:v36 zPosition:@"debugPreview" identifier:v9];

    if (v37)
    {
      [v58 addObject:v37];
    }

    --v9;
  }

  v38 = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisBuffer];

  if (v38)
  {
    v39 = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisBuffer];
    v40 = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisImage];
    v41 = [v4 layerForBuffer:v39 image:v40 zPosition:@"debugColorAnalysis" identifier:v9];

    if (v41)
    {
      [v58 addObject:v41];
    }

    --v9;
  }

  v42 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutBuffers];
  v43 = [v42 count];

  if (v43)
  {
    v44 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutBuffers];
    v45 = [v44 count];

    if (v45)
    {
      v46 = 0;
      v47 = v9 + -8.0;
      do
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"debugLayoutIntermediate_%d", v46];
        v49 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutBuffers];
        v50 = [v49 objectAtIndexedSubscript:v46];
        v51 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutImages];
        v52 = [v51 objectAtIndexedSubscript:v46];
        v53 = v4;
        v54 = [v4 layerForBuffer:v50 image:v52 zPosition:v48 identifier:v47];

        if (v54)
        {
          [v58 addObject:v54];
        }

        ++v46;
        v55 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutBuffers];
        v56 = [v55 count];

        v4 = v53;
      }

      while (v46 < v56);
    }
  }

  return v58;
}

- (void)renderImagesWithRenderer:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputImage];

  if (v5)
  {
    v6 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputImage];
    v64 = 0;
    v7 = [v4 newRenderedPixelBufferFromImage:v6 hasAlpha:0 error:&v64];
    v5 = v64;
    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugInputBuffer:v7];
  }

  v8 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteImage];

  if (v8)
  {
    v9 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteImage];
    v63 = 0;
    v10 = [v4 newRenderedPixelBufferFromImage:v9 hasAlpha:0 error:&v63];
    v11 = v63;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugMatteBuffer:v10];
    v5 = v11;
  }

  v12 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropImage];

  if (v12)
  {
    v13 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropImage];
    v62 = 0;
    v14 = [v4 newRenderedPixelBufferFromImage:v13 hasAlpha:0 error:&v62];
    v15 = v62;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugMatteCropBuffer:v14];
    v5 = v15;
  }

  v16 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceImage];

  if (v16)
  {
    v17 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceImage];
    v61 = 0;
    v18 = [v4 newRenderedPixelBufferFromImage:v17 hasAlpha:0 error:&v61];
    v19 = v61;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugLocalConfidenceBuffer:v18];
    v5 = v19;
  }

  v20 = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapImage];

  if (v20)
  {
    v21 = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapImage];
    v60 = 0;
    v22 = [v4 newRenderedPixelBufferFromImage:v21 hasAlpha:0 error:&v60];
    v23 = v60;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugConfidenceMapBuffer:v22];
    v5 = v23;
  }

  v24 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillImage];

  if (v24)
  {
    v25 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillImage];
    v59 = 0;
    v26 = [v4 newRenderedPixelBufferFromImage:v25 hasAlpha:0 error:&v59];
    v27 = v59;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugInfillBuffer:v26];
    v5 = v27;
  }

  v28 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutImage];

  if (v28)
  {
    v29 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutImage];
    v58 = 0;
    v30 = [v4 newRenderedPixelBufferFromImage:v29 hasAlpha:0 error:&v58];
    v31 = v58;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugLayoutBuffer:v30];
    v5 = v31;
  }

  v32 = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewImage];

  if (v32)
  {
    v33 = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewImage];
    v57 = 0;
    v34 = [v4 newRenderedPixelBufferFromImage:v33 hasAlpha:0 error:&v57];
    v35 = v57;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugPreviewBuffer:v34];
    v5 = v35;
  }

  v36 = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisImage];

  if (v36)
  {
    v37 = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisImage];
    v56 = 0;
    v38 = [v4 newRenderedPixelBufferFromImage:v37 hasAlpha:0 error:&v56];
    v39 = v56;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugColorAnalysisBuffer:v38];
    v5 = v39;
  }

  v40 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutImages];

  if (v40)
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutImages];
    v43 = [v42 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v53;
      do
      {
        v46 = 0;
        v47 = v5;
        do
        {
          if (*v53 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v48 = *(*(&v52 + 1) + 8 * v46);
          v51 = 0;
          v49 = [v4 newRenderedPixelBufferFromImage:v48 hasAlpha:0 error:&v51];
          v5 = v51;

          [v41 addObject:v49];
          ++v46;
          v47 = v5;
        }

        while (v44 != v46);
        v44 = [v42 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v44);
    }

    v50 = [v41 copy];
    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugIntermediateLayoutBuffers:v50];
  }
}

- (void)prepareImagesForItem:(id)a3 renderer:(id)a4 layout:(id)a5 style:(id)a6 inputImage:(id)a7 matteImage:(id)a8 infillImage:(id)a9 foregroundImage:(id)a10 backgroundImage:(id)a11
{
  v163[2] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v149 = a4;
  v17 = a5;
  v148 = a6;
  v150 = a7;
  v143 = a8;
  v147 = a9;
  v146 = a10;
  v18 = v16;
  v19 = a11;
  v20 = [v16 regions];
  v21 = [v20 faceRegions];
  [v20 preferredCropRect];
  v151 = v23;
  v153 = v22;
  v139 = v25;
  v141 = v24;
  [v20 acceptableCropRect];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [v20 gazeAreaRect];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [v16 settlingEffectNormalizedBounds];
  v140 = [PISegmentationHelper debugImageWithInputImage:v150 layout:v17 faceRects:v21 saliencyPreferrectRect:v153 saliencyAcceptableRect:v151 gazeAreaRect:v141 settlingEffectRect:v139, v27, v29, v31, v33, v35, v37, v39, v41, v42, v43, v44, v45];

  v160 = 0;
  v142 = v19;
  v46 = [v149 newRenderedPixelBufferFromImage:v19 hasAlpha:0 error:&v160];
  v47 = v160;
  [(_PIParallaxLayerStackDebugImageCollector *)self setFlattenedBackgroundForDebugPreview:v46];

  v48 = 0x1E695F000uLL;
  v49 = MEMORY[0x1E695F658];
  v50 = [(_PIParallaxLayerStackDebugImageCollector *)self flattenedBackgroundForDebugPreview];
  v51 = [v49 imageWithNUImageBuffer:v50];

  v159 = 0;
  v52 = v18;
  v53 = [v149 newRenderedPixelBufferFromImage:v146 hasAlpha:1 error:&v159];
  v137 = v159;

  [(_PIParallaxLayerStackDebugImageCollector *)self setFlattenedForegroundForDebugPreview:v53];
  v54 = MEMORY[0x1E695F658];
  v55 = [(_PIParallaxLayerStackDebugImageCollector *)self flattenedForegroundForDebugPreview];
  v56 = [v54 imageWithCVPixelBuffer:{objc_msgSend(v55, "CVPixelBuffer")}];

  v138 = v51;
  v136 = v56;
  v135 = [PISegmentationHelper debugPreviewRenderWithBackground:v51 foreground:v56 layout:v17 style:v148];
  v57 = [v18 colorAnalysis];
  v154 = v17;
  [v17 visibleFrame];
  v134 = [PISegmentationHelper debugImageForColorAnalysis:v57 inputImage:v150 visibleFrame:?];

  v58 = [v18 segmentationConfidenceMap];

  if (v58)
  {
    v59 = MEMORY[0x1E695F658];
    v60 = [v18 segmentationConfidenceMap];
    v61 = [v59 imageWithNUImageBuffer:v60];

    if (([v18 classification] - 3) <= 1)
    {
      v62 = [PISegmentationHelper invertImage:v61];

      v61 = v62;
    }
  }

  else
  {
    v61 = 0;
  }

  v152 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v64 = [v18 originalLayout];
  v65 = [v64 portraitLayout];
  v66 = [v65 debugLayouts];
  v133 = v61;
  if (!v66)
  {
    goto LABEL_13;
  }

  v67 = v66;
  v68 = v63;
  v69 = [v52 originalLayout];
  v70 = [v69 portraitLayout];
  v71 = [v70 debugLayouts];
  v72 = [v71 count];

  if (!v72)
  {
    v48 = 0x1E695F000;
    v63 = v68;
    goto LABEL_14;
  }

  v73 = [v52 originalLayout];
  v129 = [v73 portraitLayout];
  v74 = [v129 debugLayouts];
  v75 = [v74 firstObject];
  v163[0] = v75;
  v76 = [v52 originalLayout];
  v77 = [v76 portraitLayout];
  v78 = [v77 debugLayouts];
  v79 = [v78 lastObject];
  v163[1] = v79;
  v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2];

  v64 = [v52 originalLayout];
  v65 = [v64 landscapeLayout];
  v80 = [v65 debugLayouts];
  if (!v80)
  {
    v63 = v131;
    goto LABEL_12;
  }

  v81 = v80;
  v82 = [v52 originalLayout];
  v83 = [v82 landscapeLayout];
  v84 = [v83 debugLayouts];
  v85 = [v84 count];

  if (v85)
  {
    v128 = [v52 originalLayout];
    v65 = [v128 landscapeLayout];
    v130 = [v65 debugLayouts];
    v127 = [v130 firstObject];
    v162[0] = v127;
    v126 = [v52 originalLayout];
    v86 = [v126 landscapeLayout];
    v87 = [v86 debugLayouts];
    v88 = [v87 lastObject];
    v162[1] = v88;
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:2];
    v90 = [v131 arrayByAddingObjectsFromArray:v89];

    v63 = v90;
    v64 = v128;

LABEL_12:
    v48 = 0x1E695F000uLL;
LABEL_13:

    goto LABEL_14;
  }

  v63 = v131;
  v48 = 0x1E695F000;
LABEL_14:
  v91 = v52;
  v92 = v143;
  v93 = v92;
  if (!v92)
  {
    v94 = [*(v48 + 1624) blackImage];
    [v150 extent];
    v93 = [v94 imageByCroppingToRect:?];
  }

  v144 = v92;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v95 = v63;
  v96 = [v95 countByEnumeratingWithState:&v155 objects:v161 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v156;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v156 != v98)
        {
          objc_enumerationMutation(v95);
        }

        v100 = *(*(&v155 + 1) + 8 * i);
        if (v100)
        {
          v101 = [v20 faceRegions];
          [v20 preferredCropRect];
          v103 = v102;
          v105 = v104;
          v107 = v106;
          v109 = v108;
          [v20 acceptableCropRect];
          v111 = v110;
          v113 = v112;
          v115 = v114;
          v117 = v116;
          [v91 settlingEffectNormalizedBounds];
          v122 = [PISegmentationHelper debugImageWithInputImage:v93 finalLayout:v154 intermediateLayout:v100 faceRects:v101 saliencyPreferrectRect:v103 saliencyAcceptableRect:v105 settlingEffectRect:v107, v109, v111, v113, v115, v117, v118, v119, v120, v121];

          [v152 addObject:v122];
        }
      }

      v97 = [v95 countByEnumeratingWithState:&v155 objects:v161 count:16];
    }

    while (v97);
  }

  [v154 visibleFrame];
  [v154 imageSize];
  [v154 imageSize];
  NURectNormalize();
  [v144 extent];
  NURectDenormalize();
  v123 = [v144 imageByCroppingToRect:?];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugInputImage:v150];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugMatteImage:v144];
  v132 = v123;
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugMatteCropImage:v123];
  if (v144)
  {
    v124 = [PISegmentationHelper localConfidenceImage:v144];
    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugLocalConfidenceImage:v124];
  }

  else
  {
    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugLocalConfidenceImage:0];
  }

  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugConfidenceMapImage:v133];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugInfillImage:v147];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugLayoutImage:v140];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugPreviewImage:v135];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugColorAnalysisImage:v134];
  v125 = [v152 copy];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugIntermediateLayoutImages:v125];
}

@end