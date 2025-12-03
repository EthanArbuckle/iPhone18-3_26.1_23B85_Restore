@interface _PIParallaxLayerStackDebugImageCollector
- (id)resultLayersWithRenderer:(id)renderer;
- (void)prepareImagesForItem:(id)item renderer:(id)renderer layout:(id)layout style:(id)style inputImage:(id)image matteImage:(id)matteImage infillImage:(id)infillImage foregroundImage:(id)self0 backgroundImage:(id)self1;
- (void)renderImagesWithRenderer:(id)renderer;
@end

@implementation _PIParallaxLayerStackDebugImageCollector

- (id)resultLayersWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  debugInputBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputBuffer];

  if (debugInputBuffer)
  {
    debugInputBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputBuffer];
    debugInputImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputImage];
    v8 = [rendererCopy layerForBuffer:debugInputBuffer2 image:debugInputImage zPosition:@"debugInput" identifier:-100.0];

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

  debugMatteBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteBuffer];

  if (debugMatteBuffer)
  {
    debugMatteBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteBuffer];
    debugMatteImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteImage];
    v13 = [rendererCopy layerForBuffer:debugMatteBuffer2 image:debugMatteImage zPosition:@"debugMatte" identifier:v9];

    if (v13)
    {
      [v58 addObject:v13];
    }

    --v9;
  }

  debugMatteCropBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropBuffer];

  if (debugMatteCropBuffer)
  {
    debugMatteCropBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropBuffer];
    debugMatteCropImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropImage];
    v17 = [rendererCopy layerForBuffer:debugMatteCropBuffer2 image:debugMatteCropImage zPosition:@"debugMatteCrop" identifier:v9];

    if (v17)
    {
      [v58 addObject:v17];
    }

    --v9;
  }

  debugLocalConfidenceBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceBuffer];

  if (debugLocalConfidenceBuffer)
  {
    debugLocalConfidenceBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceBuffer];
    debugLocalConfidenceImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceImage];
    v21 = [rendererCopy layerForBuffer:debugLocalConfidenceBuffer2 image:debugLocalConfidenceImage zPosition:@"debugLocalConfidence" identifier:v9];

    if (v21)
    {
      [v58 addObject:v21];
    }

    --v9;
  }

  debugConfidenceMapBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapBuffer];

  if (debugConfidenceMapBuffer)
  {
    debugConfidenceMapBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapBuffer];
    debugConfidenceMapImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapImage];
    v25 = [rendererCopy layerForBuffer:debugConfidenceMapBuffer2 image:debugConfidenceMapImage zPosition:@"debugConfidenceMap" identifier:v9];

    if (v25)
    {
      [v58 addObject:v25];
    }

    --v9;
  }

  debugInfillBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillBuffer];

  if (debugInfillBuffer)
  {
    debugInfillBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillBuffer];
    debugInfillImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillImage];
    v29 = [rendererCopy layerForBuffer:debugInfillBuffer2 image:debugInfillImage zPosition:@"debugInfill" identifier:v9];

    if (v29)
    {
      [v58 addObject:v29];
    }

    --v9;
  }

  debugLayoutBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutBuffer];

  if (debugLayoutBuffer)
  {
    debugLayoutBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutBuffer];
    debugLayoutImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutImage];
    v33 = [rendererCopy layerForBuffer:debugLayoutBuffer2 image:debugLayoutImage zPosition:@"debugLayout" identifier:v9];

    if (v33)
    {
      [v58 addObject:v33];
    }

    --v9;
  }

  debugPreviewBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewBuffer];

  if (debugPreviewBuffer)
  {
    debugPreviewBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewBuffer];
    debugPreviewImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewImage];
    v37 = [rendererCopy layerForBuffer:debugPreviewBuffer2 image:debugPreviewImage zPosition:@"debugPreview" identifier:v9];

    if (v37)
    {
      [v58 addObject:v37];
    }

    --v9;
  }

  debugColorAnalysisBuffer = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisBuffer];

  if (debugColorAnalysisBuffer)
  {
    debugColorAnalysisBuffer2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisBuffer];
    debugColorAnalysisImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisImage];
    v41 = [rendererCopy layerForBuffer:debugColorAnalysisBuffer2 image:debugColorAnalysisImage zPosition:@"debugColorAnalysis" identifier:v9];

    if (v41)
    {
      [v58 addObject:v41];
    }

    --v9;
  }

  debugIntermediateLayoutBuffers = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutBuffers];
  v43 = [debugIntermediateLayoutBuffers count];

  if (v43)
  {
    debugIntermediateLayoutBuffers2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutBuffers];
    v45 = [debugIntermediateLayoutBuffers2 count];

    if (v45)
    {
      v46 = 0;
      v47 = v9 + -8.0;
      do
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"debugLayoutIntermediate_%d", v46];
        debugIntermediateLayoutBuffers3 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutBuffers];
        v50 = [debugIntermediateLayoutBuffers3 objectAtIndexedSubscript:v46];
        debugIntermediateLayoutImages = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutImages];
        v52 = [debugIntermediateLayoutImages objectAtIndexedSubscript:v46];
        v53 = rendererCopy;
        v54 = [rendererCopy layerForBuffer:v50 image:v52 zPosition:v48 identifier:v47];

        if (v54)
        {
          [v58 addObject:v54];
        }

        ++v46;
        debugIntermediateLayoutBuffers4 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutBuffers];
        v56 = [debugIntermediateLayoutBuffers4 count];

        rendererCopy = v53;
      }

      while (v46 < v56);
    }
  }

  return v58;
}

- (void)renderImagesWithRenderer:(id)renderer
{
  v66 = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
  debugInputImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputImage];

  if (debugInputImage)
  {
    debugInputImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInputImage];
    v64 = 0;
    v7 = [rendererCopy newRenderedPixelBufferFromImage:debugInputImage2 hasAlpha:0 error:&v64];
    debugInputImage = v64;
    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugInputBuffer:v7];
  }

  debugMatteImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteImage];

  if (debugMatteImage)
  {
    debugMatteImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteImage];
    v63 = 0;
    v10 = [rendererCopy newRenderedPixelBufferFromImage:debugMatteImage2 hasAlpha:0 error:&v63];
    v11 = v63;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugMatteBuffer:v10];
    debugInputImage = v11;
  }

  debugMatteCropImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropImage];

  if (debugMatteCropImage)
  {
    debugMatteCropImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugMatteCropImage];
    v62 = 0;
    v14 = [rendererCopy newRenderedPixelBufferFromImage:debugMatteCropImage2 hasAlpha:0 error:&v62];
    v15 = v62;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugMatteCropBuffer:v14];
    debugInputImage = v15;
  }

  debugLocalConfidenceImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceImage];

  if (debugLocalConfidenceImage)
  {
    debugLocalConfidenceImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLocalConfidenceImage];
    v61 = 0;
    v18 = [rendererCopy newRenderedPixelBufferFromImage:debugLocalConfidenceImage2 hasAlpha:0 error:&v61];
    v19 = v61;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugLocalConfidenceBuffer:v18];
    debugInputImage = v19;
  }

  debugConfidenceMapImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapImage];

  if (debugConfidenceMapImage)
  {
    debugConfidenceMapImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugConfidenceMapImage];
    v60 = 0;
    v22 = [rendererCopy newRenderedPixelBufferFromImage:debugConfidenceMapImage2 hasAlpha:0 error:&v60];
    v23 = v60;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugConfidenceMapBuffer:v22];
    debugInputImage = v23;
  }

  debugInfillImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillImage];

  if (debugInfillImage)
  {
    debugInfillImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugInfillImage];
    v59 = 0;
    v26 = [rendererCopy newRenderedPixelBufferFromImage:debugInfillImage2 hasAlpha:0 error:&v59];
    v27 = v59;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugInfillBuffer:v26];
    debugInputImage = v27;
  }

  debugLayoutImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutImage];

  if (debugLayoutImage)
  {
    debugLayoutImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugLayoutImage];
    v58 = 0;
    v30 = [rendererCopy newRenderedPixelBufferFromImage:debugLayoutImage2 hasAlpha:0 error:&v58];
    v31 = v58;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugLayoutBuffer:v30];
    debugInputImage = v31;
  }

  debugPreviewImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewImage];

  if (debugPreviewImage)
  {
    debugPreviewImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugPreviewImage];
    v57 = 0;
    v34 = [rendererCopy newRenderedPixelBufferFromImage:debugPreviewImage2 hasAlpha:0 error:&v57];
    v35 = v57;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugPreviewBuffer:v34];
    debugInputImage = v35;
  }

  debugColorAnalysisImage = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisImage];

  if (debugColorAnalysisImage)
  {
    debugColorAnalysisImage2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugColorAnalysisImage];
    v56 = 0;
    v38 = [rendererCopy newRenderedPixelBufferFromImage:debugColorAnalysisImage2 hasAlpha:0 error:&v56];
    v39 = v56;

    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugColorAnalysisBuffer:v38];
    debugInputImage = v39;
  }

  debugIntermediateLayoutImages = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutImages];

  if (debugIntermediateLayoutImages)
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    debugIntermediateLayoutImages2 = [(_PIParallaxLayerStackDebugImageCollector *)self debugIntermediateLayoutImages];
    v43 = [debugIntermediateLayoutImages2 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v53;
      do
      {
        v46 = 0;
        v47 = debugInputImage;
        do
        {
          if (*v53 != v45)
          {
            objc_enumerationMutation(debugIntermediateLayoutImages2);
          }

          v48 = *(*(&v52 + 1) + 8 * v46);
          v51 = 0;
          v49 = [rendererCopy newRenderedPixelBufferFromImage:v48 hasAlpha:0 error:&v51];
          debugInputImage = v51;

          [v41 addObject:v49];
          ++v46;
          v47 = debugInputImage;
        }

        while (v44 != v46);
        v44 = [debugIntermediateLayoutImages2 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v44);
    }

    v50 = [v41 copy];
    [(_PIParallaxLayerStackDebugImageCollector *)self setDebugIntermediateLayoutBuffers:v50];
  }
}

- (void)prepareImagesForItem:(id)item renderer:(id)renderer layout:(id)layout style:(id)style inputImage:(id)image matteImage:(id)matteImage infillImage:(id)infillImage foregroundImage:(id)self0 backgroundImage:(id)self1
{
  v163[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  rendererCopy = renderer;
  layoutCopy = layout;
  styleCopy = style;
  imageCopy = image;
  matteImageCopy = matteImage;
  infillImageCopy = infillImage;
  foregroundImageCopy = foregroundImage;
  v18 = itemCopy;
  backgroundImageCopy = backgroundImage;
  regions = [itemCopy regions];
  faceRegions = [regions faceRegions];
  [regions preferredCropRect];
  v151 = v23;
  v153 = v22;
  v139 = v25;
  v141 = v24;
  [regions acceptableCropRect];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [regions gazeAreaRect];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [itemCopy settlingEffectNormalizedBounds];
  v140 = [PISegmentationHelper debugImageWithInputImage:imageCopy layout:layoutCopy faceRects:faceRegions saliencyPreferrectRect:v153 saliencyAcceptableRect:v151 gazeAreaRect:v141 settlingEffectRect:v139, v27, v29, v31, v33, v35, v37, v39, v41, v42, v43, v44, v45];

  v160 = 0;
  v142 = backgroundImageCopy;
  v46 = [rendererCopy newRenderedPixelBufferFromImage:backgroundImageCopy hasAlpha:0 error:&v160];
  v47 = v160;
  [(_PIParallaxLayerStackDebugImageCollector *)self setFlattenedBackgroundForDebugPreview:v46];

  v48 = 0x1E695F000uLL;
  v49 = MEMORY[0x1E695F658];
  flattenedBackgroundForDebugPreview = [(_PIParallaxLayerStackDebugImageCollector *)self flattenedBackgroundForDebugPreview];
  v51 = [v49 imageWithNUImageBuffer:flattenedBackgroundForDebugPreview];

  v159 = 0;
  v52 = v18;
  v53 = [rendererCopy newRenderedPixelBufferFromImage:foregroundImageCopy hasAlpha:1 error:&v159];
  v137 = v159;

  [(_PIParallaxLayerStackDebugImageCollector *)self setFlattenedForegroundForDebugPreview:v53];
  v54 = MEMORY[0x1E695F658];
  flattenedForegroundForDebugPreview = [(_PIParallaxLayerStackDebugImageCollector *)self flattenedForegroundForDebugPreview];
  v56 = [v54 imageWithCVPixelBuffer:{objc_msgSend(flattenedForegroundForDebugPreview, "CVPixelBuffer")}];

  v138 = v51;
  v136 = v56;
  v135 = [PISegmentationHelper debugPreviewRenderWithBackground:v51 foreground:v56 layout:layoutCopy style:styleCopy];
  colorAnalysis = [v18 colorAnalysis];
  v154 = layoutCopy;
  [layoutCopy visibleFrame];
  v134 = [PISegmentationHelper debugImageForColorAnalysis:colorAnalysis inputImage:imageCopy visibleFrame:?];

  segmentationConfidenceMap = [v18 segmentationConfidenceMap];

  if (segmentationConfidenceMap)
  {
    v59 = MEMORY[0x1E695F658];
    segmentationConfidenceMap2 = [v18 segmentationConfidenceMap];
    v61 = [v59 imageWithNUImageBuffer:segmentationConfidenceMap2];

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
  originalLayout = [v18 originalLayout];
  portraitLayout = [originalLayout portraitLayout];
  debugLayouts = [portraitLayout debugLayouts];
  v133 = v61;
  if (!debugLayouts)
  {
    goto LABEL_13;
  }

  v67 = debugLayouts;
  v68 = v63;
  originalLayout2 = [v52 originalLayout];
  portraitLayout2 = [originalLayout2 portraitLayout];
  debugLayouts2 = [portraitLayout2 debugLayouts];
  v72 = [debugLayouts2 count];

  if (!v72)
  {
    v48 = 0x1E695F000;
    v63 = v68;
    goto LABEL_14;
  }

  originalLayout3 = [v52 originalLayout];
  portraitLayout3 = [originalLayout3 portraitLayout];
  debugLayouts3 = [portraitLayout3 debugLayouts];
  firstObject = [debugLayouts3 firstObject];
  v163[0] = firstObject;
  originalLayout4 = [v52 originalLayout];
  portraitLayout4 = [originalLayout4 portraitLayout];
  debugLayouts4 = [portraitLayout4 debugLayouts];
  lastObject = [debugLayouts4 lastObject];
  v163[1] = lastObject;
  v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2];

  originalLayout = [v52 originalLayout];
  portraitLayout = [originalLayout landscapeLayout];
  debugLayouts5 = [portraitLayout debugLayouts];
  if (!debugLayouts5)
  {
    v63 = v131;
    goto LABEL_12;
  }

  v81 = debugLayouts5;
  originalLayout5 = [v52 originalLayout];
  landscapeLayout = [originalLayout5 landscapeLayout];
  debugLayouts6 = [landscapeLayout debugLayouts];
  v85 = [debugLayouts6 count];

  if (v85)
  {
    originalLayout6 = [v52 originalLayout];
    portraitLayout = [originalLayout6 landscapeLayout];
    debugLayouts7 = [portraitLayout debugLayouts];
    firstObject2 = [debugLayouts7 firstObject];
    v162[0] = firstObject2;
    originalLayout7 = [v52 originalLayout];
    landscapeLayout2 = [originalLayout7 landscapeLayout];
    debugLayouts8 = [landscapeLayout2 debugLayouts];
    lastObject2 = [debugLayouts8 lastObject];
    v162[1] = lastObject2;
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:2];
    v90 = [v131 arrayByAddingObjectsFromArray:v89];

    v63 = v90;
    originalLayout = originalLayout6;

LABEL_12:
    v48 = 0x1E695F000uLL;
LABEL_13:

    goto LABEL_14;
  }

  v63 = v131;
  v48 = 0x1E695F000;
LABEL_14:
  v91 = v52;
  v92 = matteImageCopy;
  v93 = v92;
  if (!v92)
  {
    blackImage = [*(v48 + 1624) blackImage];
    [imageCopy extent];
    v93 = [blackImage imageByCroppingToRect:?];
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
          faceRegions2 = [regions faceRegions];
          [regions preferredCropRect];
          v103 = v102;
          v105 = v104;
          v107 = v106;
          v109 = v108;
          [regions acceptableCropRect];
          v111 = v110;
          v113 = v112;
          v115 = v114;
          v117 = v116;
          [v91 settlingEffectNormalizedBounds];
          v121 = [PISegmentationHelper debugImageWithInputImage:v93 finalLayout:v154 intermediateLayout:v100 faceRects:faceRegions2 saliencyPreferrectRect:v103 saliencyAcceptableRect:v105 settlingEffectRect:v107, v109, v111, v113, v115, v117, v118, v119, v120, v121];

          [v152 addObject:v121];
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
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugInputImage:imageCopy];
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
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugInfillImage:infillImageCopy];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugLayoutImage:v140];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugPreviewImage:v135];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugColorAnalysisImage:v134];
  v125 = [v152 copy];
  [(_PIParallaxLayerStackDebugImageCollector *)self setDebugIntermediateLayoutImages:v125];
}

@end