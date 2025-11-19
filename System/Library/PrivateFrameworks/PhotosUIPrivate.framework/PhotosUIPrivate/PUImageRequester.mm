@interface PUImageRequester
- (CGSize)_lastRequestedImageSize;
- (CGSize)imageTargetSize;
- (CGSize)targetSize;
- (PUImageRequester)init;
- (PUImageRequester)initWithMediaProvider:(id)a3 asset:(id)a4 requiresFullQualityImage:(BOOL)a5;
- (id)imageByAddingWallpaperCropRectDiagnosticsForAsset:(id)a3 sourceImage:(id)a4;
- (void)_assertInsideChangesBlock;
- (void)_didChange;
- (void)_handleResultOfFullSizeImageDataRequestWithID:(int)a3 imageData:(id)a4 imageURL:(id)a5 dataUTI:(id)a6 orientation:(int64_t)a7 info:(id)a8;
- (void)_handleResultOfImageRequestWithID:(int)a3 asset:(id)a4 targetSize:(CGSize)a5 image:(id)a6 info:(id)a7;
- (void)_produceDebugImage;
- (void)_update;
- (void)_updateResult;
- (void)_willChange;
- (void)cancelAllImageRequests;
- (void)dealloc;
- (void)handlePreloadedImage:(id)a3;
- (void)performChanges:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setAsset:(id)a3;
- (void)setError:(id)a3;
- (void)setFullSizeImageData:(id)a3;
- (void)setFullSizeImageURL:(id)a3;
- (void)setGainMapImage:(CGImage *)a3;
- (void)setGainMapValue:(float)a3;
- (void)setImage:(id)a3;
- (void)setImageIsFullQuality:(BOOL)a3;
- (void)setIncludeGainMap:(BOOL)a3;
- (void)setNetworkAccessAllowed:(BOOL)a3;
- (void)setRequestFullSizeImageDataUTTypes:(id)a3;
- (void)setRequestHDR:(BOOL)a3;
- (void)setResult:(id)a3;
- (void)setTargetSize:(CGSize)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateIfNeeded;
@end

@implementation PUImageRequester

- (CGSize)_lastRequestedImageSize
{
  width = self->__lastRequestedImageSize.width;
  height = self->__lastRequestedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)imageTargetSize
{
  width = self->_imageTargetSize.width;
  height = self->_imageTargetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_produceDebugImage
{
  v153 = *MEMORY[0x1E69E9840];
  v3 = +[PUOneUpSettings sharedInstance];
  if (!-[PUImageRequester imageIsFullQuality](self, "imageIsFullQuality") || ([v3 showSaliencyRects] & 1) == 0 && (objc_msgSend(v3, "showFacesRect") & 1) == 0 && (objc_msgSend(v3, "showFacesTorsosRects") & 1) == 0 && (objc_msgSend(v3, "showObjectRects") & 1) == 0 && (objc_msgSend(v3, "showWallpaperCropRect") & 1) == 0 && !objc_msgSend(v3, "showGazeRects"))
  {
    goto LABEL_71;
  }

  v4 = [(PUImageRequester *)self asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_71;
  }

  v6 = [(PUImageRequester *)self asset];
  v7 = [(PUImageRequester *)self image];
  [v7 size];
  v142 = v8;
  [v7 size];
  v10 = v9;
  v11 = v7;
  v12 = v11;
  if ([v3 showSaliencyRects])
  {
    [v6 preferredCropRect];
    v12 = v11;
    if (__38__PUImageRequester__produceDebugImage__block_invoke(v13, v14, v15, v16))
    {
      PXRectFlippedVertically();
      PXRectDenormalize();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = [MEMORY[0x1E69DC888] redColor];
      v12 = [v11 px_debugImageWithStrokeRect:v25 color:@"Preferred" text:{v18, v20, v22, v24}];
    }

    [v6 acceptableCropRect];
    if (__38__PUImageRequester__produceDebugImage__block_invoke(v26, v27, v28, v29))
    {
      PXRectFlippedVertically();
      PXRectDenormalize();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [MEMORY[0x1E69DC888] orangeColor];
      v39 = [v12 px_debugImageWithStrokeRect:v38 color:@"Acceptable" text:{v31, v33, v35, v37}];

      v12 = v39;
    }
  }

  if ([v3 showFacesRect])
  {
    [v6 normalizedFaceAreaRect];
    if (__38__PUImageRequester__produceDebugImage__block_invoke(v40, v41, v42, v43))
    {
      PXRectDenormalize();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = [MEMORY[0x1E69DC888] blueColor];
      v53 = [v12 px_debugImageWithStrokeRect:v52 color:@"Faces Area" text:{v45, v47, v49, v51}];

      v54 = +[PUOneUpSettings sharedInstance];
      v55 = [v54 showPaddedFacesRect];

      if (v55)
      {
        PXRectScaleFromCenter();
        v158.origin.x = 0.0;
        v158.origin.y = 0.0;
        v158.size.width = v142;
        v158.size.height = v10;
        v155 = CGRectIntersection(v154, v158);
        x = v155.origin.x;
        y = v155.origin.y;
        width = v155.size.width;
        height = v155.size.height;
        v60 = [MEMORY[0x1E69DC888] cyanColor];
        v12 = [v53 px_debugImageWithStrokeRect:v60 color:@"Scaled Faces Area" text:{x, y, width, height}];
      }

      else
      {
        v12 = v53;
      }
    }
  }

  v140 = v3;
  v137 = self;
  v135 = v11;
  v136 = v6;
  if ([v3 showObjectRects])
  {
    v61 = [v6 sceneClassifications];
    v62 = objc_alloc_init(MEMORY[0x1E69C0850]);
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v63 = v61;
    v64 = [v63 countByEnumeratingWithState:&v147 objects:v152 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v148;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v148 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = *(*(&v147 + 1) + 8 * i);
          v69 = [v62 nodeRefForExtendedSceneClassId:{objc_msgSend(v68, "extendedSceneIdentifier")}];
          [v68 boundingBox];
          if (v69)
          {
            v74 = v70;
            v75 = v71;
            v76 = v72;
            v77 = v73;
            [v68 confidence];
            v79 = v78;
            PFSceneTaxonomyNodeHighRecallThreshold();
            if (v79 >= v80)
            {
              v156.origin.x = v74;
              v156.origin.y = v75;
              v156.size.width = v76;
              v156.size.height = v77;
              if (!CGRectIsNull(v156))
              {
                v81 = PFSceneTaxonomyNodeName();
                PXRectFlippedVertically();
                PXRectDenormalize();
                v83 = v82;
                v85 = v84;
                v87 = v86;
                v89 = v88;
                v90 = [MEMORY[0x1E69DC888] redColor];
                v91 = [v12 px_debugImageWithStrokeRect:v90 color:v81 text:{v83, v85, v87, v89}];

                v12 = v91;
              }
            }
          }
        }

        v65 = [v63 countByEnumeratingWithState:&v147 objects:v152 count:16];
      }

      while (v65);
    }

    v3 = v140;
    self = v137;
    v11 = v135;
  }

  if ([v3 showBestSquareRect])
  {
    [v6 bestCropRectForAspectRatio:0 verticalContentMode:2 cropMode:1.0];
    if (__38__PUImageRequester__produceDebugImage__block_invoke(v92, v93, v94, v95))
    {
      PXRectDenormalize();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      v103 = v102;
      v104 = [MEMORY[0x1E69DC888] greenColor];
      v105 = [v12 px_debugImageWithStrokeRect:v104 color:@"Best Square Crop Rect" text:{v97, v99, v101, v103}];

      v12 = v105;
    }
  }

  if (([v3 showFacesTorsosRects] & 1) == 0 && !objc_msgSend(v3, "showGazeRects"))
  {
    goto LABEL_68;
  }

  v106 = [v6 photoLibrary];
  v107 = [v106 librarySpecificFetchOptions];

  [v107 setWantsIncrementalChangeDetails:0];
  [v107 setIncludeTorsoAndFaceDetectionData:1];
  v108 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v107 setIncludedDetectionTypes:v108];

  v109 = [MEMORY[0x1E69787C8] fetchFacesInAsset:v6 options:v107];
  if (![v109 count])
  {
    goto LABEL_67;
  }

  v133 = v109;
  v134 = v107;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = v109;
  v110 = [obj countByEnumeratingWithState:&v143 objects:v151 count:16];
  if (!v110)
  {
    goto LABEL_66;
  }

  v111 = v110;
  v112 = 0;
  v113 = *v144;
  v139 = *v144;
  do
  {
    for (j = 0; j != v111; ++j)
    {
      if (*v144 != v113)
      {
        objc_enumerationMutation(obj);
      }

      v115 = *(*(&v143 + 1) + 8 * j);
      if ([v3 showFacesTorsosRects])
      {
        [v115 centerX];
        if (v116 <= 0.0)
        {
          [v115 bodyCenterX];
          if (v125 > 0.0)
          {
            [v115 bodyCenterY];
            goto LABEL_50;
          }
        }

        else
        {
          [v115 centerY];
          v118 = v117;
          [v115 bodyCenterX];
          if (v119 <= 0.0)
          {
            if (v118 > 0.0)
            {
              v121 = 0;
              goto LABEL_56;
            }
          }

          else
          {
            [v115 bodyCenterY];
            v121 = v120 > 0.0;
            if (v118 > 0.0 && v120 > 0.0)
            {
              v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FT%d", v112];
              v123 = [MEMORY[0x1E69DC888] greenColor];
              v124 = [MEMORY[0x1E69DC888] cyanColor];
              v121 = 1;
              goto LABEL_57;
            }

            if (v118 > 0.0)
            {
LABEL_56:
              v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"F%d", v112];
              v123 = [MEMORY[0x1E69DC888] magentaColor];
              v124 = 0;
LABEL_57:
              [v115 size];
              [v115 centerX];
              [v115 centerX];
              [v115 centerY];
              [v115 centerY];
              PXRectWithEdges();
              PXRectDenormalize();
              v128 = [v12 px_debugImageWithStrokeRect:v123 color:v122 text:?];

              v12 = v128;
              if (v121)
              {
LABEL_58:
                [v115 bodyHeight];
                [v115 bodyWidth];
                [v115 bodyCenterX];
                [v115 bodyCenterX];
                [v115 bodyCenterY];
                [v115 bodyCenterY];
                PXRectWithEdges();
                PXRectDenormalize();
                [v12 px_debugImageWithStrokeRect:v124 color:v122 text:?];
                v12 = v126 = v12;
LABEL_59:

                v128 = v12;
              }

              v12 = v128;
              v113 = v139;
              v3 = v140;
              goto LABEL_61;
            }

LABEL_50:
            if (v120 > 0.0)
            {
              v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"T%d", v112];
              v124 = [MEMORY[0x1E69DC888] orangeColor];
              v123 = 0;
              goto LABEL_58;
            }
          }
        }

        v126 = [MEMORY[0x1E696AAA8] currentHandler];
        v127 = [v115 localIdentifier];
        [v126 handleFailureInMethod:a2 object:v137 file:@"PUImageRequester.m" lineNumber:659 description:{@"Face %@ is missing face and torso", v127}];

        v122 = 0;
        v123 = 0;
        v124 = 0;
        goto LABEL_59;
      }

LABEL_61:
      if ([v3 showGazeRects])
      {
        [v115 gazeRect];
        v159.origin.x = -1.0;
        v159.origin.y = -1.0;
        v159.size.width = -1.0;
        v159.size.height = -1.0;
        if (!CGRectEqualToRect(v157, v159))
        {
          v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"G%d", v112];
          v130 = [MEMORY[0x1E69DC888] brownColor];
          [v115 gazeRect];
          PXRectFlippedVertically();
          PXRectDenormalize();
          v131 = [v12 px_debugImageWithStrokeRect:v130 color:v129 text:?];

          v12 = v131;
        }
      }

      ++v112;
    }

    v111 = [obj countByEnumeratingWithState:&v143 objects:v151 count:16];
  }

  while (v111);
LABEL_66:

  self = v137;
  v11 = v135;
  v6 = v136;
  v109 = v133;
  v107 = v134;
LABEL_67:

LABEL_68:
  if ([v3 showWallpaperCropRect])
  {
    v132 = [(PUImageRequester *)self imageByAddingWallpaperCropRectDiagnosticsForAsset:v6 sourceImage:v12];

    v12 = v132;
  }

  [(PUImageRequester *)self setImage:v12];

LABEL_71:
}

BOOL __38__PUImageRequester__produceDebugImage__block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  if (CGRectIsInfinite(v9))
  {
    return 0;
  }

  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return !CGRectIsEmpty(v10);
}

- (void)_handleResultOfFullSizeImageDataRequestWithID:(int)a3 imageData:(id)a4 imageURL:(id)a5 dataUTI:(id)a6 orientation:(int64_t)a7 info:(id)a8
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([(PUImageRequester *)self currentFullSizeImageDataRequestID]== a3)
  {
    [(PUImageRequester *)self setCurrentFullSizeImageDataRequestID:0];
    if (v12 | v13)
    {
      v28 = v14;
      if (v14)
      {
        v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:v14];
      }

      else
      {
        v15 = 0;
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = [(PUImageRequester *)self requestFullSizeImageDataUTTypes];
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
LABEL_8:
        v20 = 0;
        while (1)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v33 + 1) + 8 * v20)];
          v22 = [v15 conformsToType:v21];

          if (v22)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v18)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }

        if (v12)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __110__PUImageRequester__handleResultOfFullSizeImageDataRequestWithID_imageData_imageURL_dataUTI_orientation_info___block_invoke;
          v31[3] = &unk_1E7B80C38;
          v31[4] = self;
          v12 = v12;
          v32 = v12;
          [(PUImageRequester *)self performChanges:v31];

          v13 = v27;
          v14 = v28;
          goto LABEL_24;
        }

        v14 = v28;
        if (v27)
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __110__PUImageRequester__handleResultOfFullSizeImageDataRequestWithID_imageData_imageURL_dataUTI_orientation_info___block_invoke_2;
          v29[3] = &unk_1E7B80C38;
          v29[4] = self;
          v13 = v27;
          v30 = v13;
          [(PUImageRequester *)self performChanges:v29];

          goto LABEL_23;
        }
      }

      else
      {
LABEL_14:

        v23 = [v15 conformsToType:*MEMORY[0x1E6982F88]];
        v24 = PLOneUpGetLog();
        v14 = v28;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [(PUImageRequester *)self asset];
          *buf = 138412546;
          v38 = v28;
          v39 = 2112;
          v40 = v25;
          _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, "got non-supported data %@ for %@", buf, 0x16u);
        }

        if (v23)
        {
          v26 = [(PUImageRequester *)self fullSizeDataRepeatRequestCoalescer];
          [v26 inputEvent];
        }
      }
    }

    v13 = 0;
LABEL_23:
    v12 = 0;
  }

LABEL_24:
}

- (void)_handleResultOfImageRequestWithID:(int)a3 asset:(id)a4 targetSize:(CGSize)a5 image:(id)a6 info:(id)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([(PUImageRequester *)self _currentImageRequestID]== a3)
  {
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    if ([v16 BOOLValue])
    {
      v17 = 0;
    }

    else
    {
      v18 = [v15 objectForKeyedSubscript:*MEMORY[0x1E6978E58]];
      v17 = [v18 BOOLValue] ^ 1;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__PUImageRequester__handleResultOfImageRequestWithID_asset_targetSize_image_info___block_invoke;
    v19[3] = &unk_1E7B775D8;
    v20 = v14;
    v21 = self;
    v26 = v17;
    v22 = v15;
    v23 = v13;
    v24 = width;
    v25 = height;
    [(PUImageRequester *)self performChanges:v19];
    [(PUImageRequester *)self _update];
  }
}

void __82__PUImageRequester__handleResultOfImageRequestWithID_asset_targetSize_image_info___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) image];
    if (v2)
    {
      v3 = v2;
      [*(a1 + 32) size];
      v4 = [*(a1 + 40) image];
      [v4 size];
      if (PFSizeLargerThanSize() & 1) != 0 || ([*(a1 + 40) imageIsPlaceholder])
      {
      }

      else
      {
        if ((*(a1 + 80) & 1) == 0)
        {

          goto LABEL_7;
        }

        v8 = [*(a1 + 40) imageIsFullQuality];

        if (v8)
        {
          goto LABEL_8;
        }
      }
    }

    v5 = [*(a1 + 48) objectForKeyedSubscript:@"PHImageResultIsPlaceholderKey"];
    v6 = [v5 BOOLValue];

    [*(a1 + 40) setImageIsPlaceholder:v6];
    [*(a1 + 40) setImage:*(a1 + 32)];
    [*(a1 + 40) setImageAsset:*(a1 + 56)];
    [*(a1 + 40) setImageTargetSize:{*(a1 + 64), *(a1 + 72)}];
    v7 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E6978E00]];
    [*(a1 + 40) setGainMapImage:v7];

    v3 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E6978E08]];
    [v3 floatValue];
    [*(a1 + 40) setGainMapValue:?];
LABEL_7:

LABEL_8:
    [*(a1 + 40) setImageIsFullQuality:*(a1 + 80)];
  }

  v9 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  [*(a1 + 40) setError:v9];
}

- (void)cancelAllImageRequests
{
  v3 = [(PUImageRequester *)self _currentImageRequestID];
  if (v3)
  {
    v4 = v3;
    [(PUImageRequester *)self _setLastRequestedImageSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v5 = [(PUImageRequester *)self mediaProvider];
    [v5 cancelImageRequest:v4];

    [(PUImageRequester *)self _setCurrentImageRequestID:0];
  }

  v6 = [(PUImageRequester *)self currentFullSizeImageDataRequestID];
  if (v6)
  {
    v7 = v6;
    v8 = [(PUImageRequester *)self mediaProvider];
    [v8 cancelImageRequest:v7];

    [(PUImageRequester *)self setCurrentFullSizeImageDataRequestID:0];
  }
}

- (void)setResult:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_result != v5)
  {
    objc_storeStrong(&self->_result, a3);
    v6 = PLOneUpGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%@ produced result: %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(PUImageRequester *)self observers];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) imageRequester:self didProduceResult:v5];
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_updateResult
{
  v9 = objc_alloc_init(_PUImageRequesterResult);
  v3 = [(PUImageRequester *)self currentRequestStartDate];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5;

    [(_PUImageRequesterResult *)v9 setTimeIntervalSinceRequest:v6];
  }

  [(PUImageRequester *)self imageTargetSize];
  [(_PUImageRequesterResult *)v9 setTargetSize:?];
  v7 = [(PUImageRequester *)self image];
  [(_PUImageRequesterResult *)v9 setImage:v7];

  [(_PUImageRequesterResult *)v9 setImageIsFullQuality:[(PUImageRequester *)self imageIsFullQuality]];
  [(_PUImageRequesterResult *)v9 setGainMapImage:[(PUImageRequester *)self gainMapImage]];
  [(PUImageRequester *)self gainMapValue];
  [(_PUImageRequesterResult *)v9 setGainMapValue:?];
  v8 = [(PUImageRequester *)self imageAsset];
  [(_PUImageRequesterResult *)v9 setAsset:v8];

  [(PUImageRequester *)self setResult:v9];
}

- (void)_update
{
  v5 = [(PUImageRequester *)self asset];
  [(PUImageRequester *)self targetSize];
  v8 = v7;
  v9 = v6;
  if (v7 == *MEMORY[0x1E695F060] && v6 == *(MEMORY[0x1E695F060] + 8))
  {
    [(PUImageRequester *)self cancelAllImageRequests];
    goto LABEL_56;
  }

  v11 = [(PUImageRequester *)self requestFullSizeImageDataUTTypes];
  if ([v11 count])
  {
    v12 = [(PUImageRequester *)self fullSizeImageData];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v14 = [(PUImageRequester *)self fullSizeImageURL];
      v13 = v14 == 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = [(PUImageRequester *)self fullSizeImageData];

  v16 = [(PUImageRequester *)self currentFullSizeImageDataRequestID];
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v2 = [(PUImageRequester *)self fullSizeImageData];
    if (v2)
    {
      v17 = 0;
    }

    else
    {
      v18 = [(PUImageRequester *)self fullSizeImageURL];
      if (!v18)
      {
        v20 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v3 = v18;
      v17 = 1;
    }
  }

  v19 = [(PUImageRequester *)self image];
  v20 = v19 != 0;

  if (v17)
  {
  }

  if (!v16)
  {
    goto LABEL_21;
  }

LABEL_22:
  v21 = v15 == 0;
  [(PUImageRequester *)self _lastRequestedImageSize];
  if (v8 > v23 || v9 > v22)
  {
    v25 = [(PUImageRequester *)self image];
    [v25 size];
    v27 = v26;
    v29 = v28;
    [v25 scale];
    v31 = v9 > v29 * v30;
    if (v8 > v27 * v30)
    {
      v31 = 1;
    }

    if (v25)
    {
      v32 = v31;
    }

    else
    {
      v32 = 1;
    }

    if ([(PUImageRequester *)self includeGainMap])
    {
      v33 = [(PUImageRequester *)self gainMapImage]== 0;
    }

    else
    {
      v33 = 0;
    }

    v24 = v32 | v33;
  }

  else
  {
    v24 = 0;
  }

  v34 = v21 & ~v20;
  v35 = [(PUImageRequester *)self useLowMemoryMode];
  if (objc_opt_respondsToSelector())
  {
    v36 = [v5 needsDeferredProcessing];
  }

  else
  {
    v36 = 1;
  }

  v37 = [(PUImageRequester *)self includeGainMap];
  if ((v34 & v24) == 1)
  {
    v38 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v38 setAllowPlaceholder:1];
    [v38 setNetworkAccessAllowed:{-[PUImageRequester isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
    [v38 setAllowSecondaryDegradedImage:1];
    [v38 setUseLowMemoryMode:v35];
    [v38 setDeliveryMode:{-[PUImageRequester requiresFullQualityImage](self, "requiresFullQualityImage")}];
    [v38 setIncludeHDRGainMap:{-[PUImageRequester includeGainMap](self, "includeGainMap")}];
    [v38 setIncludeHDRGainMapInIntermediateImage:v37 & v36];
    [v38 setPreferHDR:{-[PUImageRequester requestHDR](self, "requestHDR")}];
    [(PUImageRequester *)self targetHDRHeadroom];
    [v38 setTargetHDRHeadroom:?];
    [v38 setDownloadIntent:3];
    [v38 setDownloadPriority:{-[PUImageRequester highPriorityRequest](self, "highPriorityRequest") ^ 1}];
    v39 = [(PUImageRequester *)self asset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v40 = v39;

      if (v40 && PHSensitiveContentAnalysisAvailable() && [v40 mediaType] == 2 && objc_msgSend(MEMORY[0x1E6978AB0], "assetNeedsVideoSensitivityProcessing:", v40))
      {
        [v38 setAvoidDisplayingProgressUpdates:1];
      }
    }

    else
    {

      v40 = 0;
    }

    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v41 = [(PUImageRequester *)self _currentImageRequestID];
    v42 = [(PUImageRequester *)self mediaProvider];
    [v42 cancelImageRequest:v41];

    [(PUImageRequester *)self _setCurrentImageRequestID:*(v62 + 6)];
    [(PUImageRequester *)self _setLastRequestedImageSize:v8, v9];
    v43 = [MEMORY[0x1E695DF00] date];
    [(PUImageRequester *)self setCurrentRequestStartDate:v43];

    objc_initWeak(&location, self);
    v44 = [(PUImageRequester *)self mediaProvider];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __27__PUImageRequester__update__block_invoke;
    v56[3] = &unk_1E7B77510;
    objc_copyWeak(v59, &location);
    v58 = &v61;
    v57 = v5;
    v59[1] = *&v8;
    v59[2] = *&v9;
    v45 = [v44 requestImageForAsset:v57 targetSize:1 contentMode:v38 options:v56 resultHandler:{v8, v9}];
    *(v62 + 6) = v45;

    [(PUImageRequester *)self _setCurrentImageRequestID:*(v62 + 6)];
    objc_destroyWeak(v59);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v61, 8);
  }

  if (v13)
  {
    v46 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v46 setNetworkAccessAllowed:{-[PUImageRequester isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
    [v46 setUseLowMemoryMode:v35];
    [v46 setIncludeHDRGainMap:{-[PUImageRequester includeGainMap](self, "includeGainMap")}];
    [v46 setIncludeHDRGainMapInIntermediateImage:v37 & v36];
    [v46 setDownloadIntent:3];
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v47 = +[PUOneUpSettings sharedInstance];
    v48 = [v47 enableFigPhotoTiledLayer];
    if ([v47 forceURLWithFigPhotoTiledLayer])
    {
      if (v48)
      {
LABEL_50:
        objc_initWeak(&location, self);
        [v46 setDeliveryMode:1];
        v49 = [(PUImageRequester *)self mediaProvider];
        v50 = v54;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __27__PUImageRequester__update__block_invoke_3;
        v54[3] = &unk_1E7B77560;
        objc_copyWeak(&v55, &location);
        v54[4] = &v61;
        v51 = [v49 requestImageURLForAsset:v5 options:v46 resultHandler:v54];
LABEL_55:
        *(v62 + 6) = v51;

        objc_destroyWeak(v50 + 5);
        objc_destroyWeak(&location);
        [(PUImageRequester *)self setCurrentFullSizeImageDataRequestID:*(v62 + 6)];

        _Block_object_dispose(&v61, 8);
        goto LABEL_56;
      }
    }

    else if (v48 && [v47 useURLForLargePhotosWithFigPhotoTiledLayer] && objc_msgSend(v5, "originalFilesize") > 0x3200000)
    {
      goto LABEL_50;
    }

    objc_initWeak(&location, self);
    v49 = [(PUImageRequester *)self mediaProvider];
    v50 = v52;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __27__PUImageRequester__update__block_invoke_5;
    v52[3] = &unk_1E7B775B0;
    objc_copyWeak(&v53, &location);
    v52[4] = &v61;
    v51 = [v49 requestImageDataForAsset:v5 options:v46 resultHandler:v52];
    goto LABEL_55;
  }

LABEL_56:
  [(PUImageRequester *)self _updateResult];
}

void __27__PUImageRequester__update__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v10, (a1 + 48));
  v7 = *(a1 + 32);
  v11 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v10);
}

void __27__PUImageRequester__update__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__PUImageRequester__update__block_invoke_4;
  v10[3] = &unk_1E7B77538;
  v11 = v6;
  v7 = v6;
  objc_copyWeak(&v14, (a1 + 40));
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v14);
}

void __27__PUImageRequester__update__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __27__PUImageRequester__update__block_invoke_6;
  v16[3] = &unk_1E7B77588;
  objc_copyWeak(v21, (a1 + 40));
  v12 = *(a1 + 32);
  v17 = v9;
  v18 = v10;
  v21[1] = a4;
  v19 = v11;
  v20 = v12;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  objc_destroyWeak(v21);
}

void __27__PUImageRequester__update__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleResultOfFullSizeImageDataRequestWithID:*(*(*(a1 + 56) + 8) + 24) imageData:*(a1 + 32) imageURL:0 dataUTI:*(a1 + 40) orientation:*(a1 + 72) info:*(a1 + 48)];
}

void __27__PUImageRequester__update__block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E28]];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E10]];
  v3 = [v2 integerValue];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleResultOfFullSizeImageDataRequestWithID:*(*(*(a1 + 48) + 8) + 24) imageData:0 imageURL:*(a1 + 40) dataUTI:v5 orientation:v3 info:*(a1 + 32)];
}

void __27__PUImageRequester__update__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleResultOfImageRequestWithID:*(*(*(a1 + 56) + 8) + 24) asset:*(a1 + 32) targetSize:*(a1 + 40) image:*(a1 + 48) info:{*(a1 + 72), *(a1 + 80)}];
}

- (void)setFullSizeImageURL:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_fullSizeImageURL != v5)
  {
    objc_storeStrong(&self->_fullSizeImageURL, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(PUImageRequester *)self observers];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) imageRequesterDidUpdateFullSizeImageData:self];
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setFullSizeImageData:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_fullSizeImageData != v5)
  {
    objc_storeStrong(&self->_fullSizeImageData, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(PUImageRequester *)self observers];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) imageRequesterDidUpdateFullSizeImageData:self];
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setImageIsFullQuality:(BOOL)a3
{
  v3 = a3;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_imageIsFullQuality != v3)
  {
    self->_imageIsFullQuality = v3;
    v5 = [MEMORY[0x1E69C3970] sharedInstance];
    v6 = [v5 canShowInternalUI];

    if (v6)
    {
      [(PUImageRequester *)self _produceDebugImage];
    }

    [(PUImageRequester *)self _invalidateResult];
  }
}

- (void)setGainMapValue:(float)a3
{
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_gainMapValue = a3;

    [(PUImageRequester *)self _invalidateResult];
  }
}

- (void)setGainMapImage:(CGImage *)a3
{
  [(PUImageRequester *)self _assertInsideChangesBlock];
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != a3)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = a3;
    CGImageRetain(a3);

    [(PUImageRequester *)self _invalidateResult];
  }
}

- (void)setError:(id)a3
{
  v5 = a3;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  error = self->_error;
  v7 = v5;
  v9 = v7;
  if (error == v7)
  {
  }

  else
  {
    v8 = [(NSError *)v7 isEqual:error];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_error, a3);
      [(PUImageRequester *)self _invalidateResult];
    }
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_image != v5)
  {
    objc_storeStrong(&self->_image, a3);
    [(PUImageRequester *)self _invalidateResult];
  }
}

- (void)handlePreloadedImage:(id)a3
{
  v6 = a3;
  [v6 size];
  v4 = [(PUImageRequester *)self image];
  [v4 size];
  if ((PFSizeLargerThanSize() & 1) != 0 || [(PUImageRequester *)self imageIsPlaceholder])
  {
    v5 = [(PUImageRequester *)self imageIsFullQuality];

    if (!v5)
    {
      [(PUImageRequester *)self setImageIsPlaceholder:0];
      [(PUImageRequester *)self setImage:v6];
    }
  }

  else
  {
  }
}

- (void)setRequestHDR:(BOOL)a3
{
  if (self->_requestHDR != a3)
  {
    self->_requestHDR = a3;
    [(PUImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setIncludeGainMap:(BOOL)a3
{
  if (self->_includeGainMap != a3)
  {
    self->_includeGainMap = a3;
    [(PUImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setNetworkAccessAllowed:(BOOL)a3
{
  if (self->_networkAccessAllowed != a3)
  {
    self->_networkAccessAllowed = a3;
    [(PUImageRequester *)self cancelAllImageRequests];
  }
}

- (void)setRequestFullSizeImageDataUTTypes:(id)a3
{
  v8 = a3;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  v5 = self->_requestFullSizeImageDataUTTypes;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_requestFullSizeImageDataUTTypes, a3);
      [(PUImageRequester *)self _invalidateImageRequest];
    }
  }
}

- (void)setTargetSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (width != self->_targetSize.width || height != self->_targetSize.height)
  {
    self->_targetSize.width = width;
    self->_targetSize.height = height;

    [(PUImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_asset != v5)
  {
    objc_storeStrong(&self->_asset, a3);
    [(PUImageRequester *)self _invalidateImageRequest];
  }
}

- (void)_assertInsideChangesBlock
{
  if ([(PUImageRequester *)self _changeCount]<= 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:163 description:@"not within a change block"];
  }
}

- (void)_didChange
{
  v3 = [(PUImageRequester *)self _changeCount]- 1;
  [(PUImageRequester *)self _setChangeCount:v3];
  if (!v3)
  {

    [(PUImageRequester *)self updateIfNeeded];
  }
}

- (void)_willChange
{
  v3 = [(PUImageRequester *)self _changeCount]+ 1;

  [(PUImageRequester *)self _setChangeCount:v3];
}

- (void)updateIfNeeded
{
  if ([(PUImageRequester *)self _needsUpdate])
  {
    [(PUImageRequester *)self _setNeedsUpdate:0];

    [(PUImageRequester *)self _update];
  }
}

- (void)performChanges:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"changes != NULL"}];
  }

  [(PUImageRequester *)self _willChange];
  v6[2]();
  [(PUImageRequester *)self _didChange];
}

- (void)unregisterObserver:(id)a3
{
  v7 = a3;
  v5 = [(PUImageRequester *)self observers];
  if (([v5 containsObject:v7] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:119 description:{@"Attempting to remove unknown observer: ", v7}];
  }

  [v5 removeObject:v7];
}

- (void)registerObserver:(id)a3
{
  v7 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:111 description:{@"observer does not conform to PUImageRequesterObserver: %@", v7}];
  }

  v5 = [(PUImageRequester *)self observers];
  [v5 addObject:v7];
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  v3.receiver = self;
  v3.super_class = PUImageRequester;
  [(PUImageRequester *)&v3 dealloc];
}

- (PUImageRequester)initWithMediaProvider:(id)a3 asset:(id)a4 requiresFullQualityImage:(BOOL)a5
{
  v10 = a3;
  v11 = a4;
  v20.receiver = self;
  v20.super_class = PUImageRequester;
  v12 = [(PUImageRequester *)&v20 init];
  if (v12)
  {
    if (v10)
    {
      if (v11)
      {
LABEL_4:
        v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        observers = v12->_observers;
        v12->_observers = v13;

        objc_storeStrong(&v12->_mediaProvider, a3);
        objc_storeStrong(&v12->_asset, a4);
        *&v12->_useLowMemoryMode = 256;
        v12->_requiresFullQualityImage = a5;
        *&v12->_currentFullSizeImageDataRequestID = 0;
        v15 = [MEMORY[0x1E69C44E8] rateLimitingCoalescerWithRate:2.0];
        fullSizeDataRepeatRequestCoalescer = v12->_fullSizeDataRepeatRequestCoalescer;
        v12->_fullSizeDataRepeatRequestCoalescer = v15;

        [(PXEventCoalescer *)v12->_fullSizeDataRepeatRequestCoalescer registerObserver:v12];
        goto LABEL_5;
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:v12 file:@"PUImageRequester.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

      if (v11)
      {
        goto LABEL_4;
      }
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:v12 file:@"PUImageRequester.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

    goto LABEL_4;
  }

LABEL_5:

  return v12;
}

- (PUImageRequester)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:77 description:{@"%s is not available as initializer", "-[PUImageRequester init]"}];

  abort();
}

- (id)imageByAddingWallpaperCropRectDiagnosticsForAsset:(id)a3 sourceImage:(id)a4
{
  v5 = a3;
  v6 = a4;
  PFDeviceScreenSize();
  v8 = v7;
  v10 = v9;
  [v6 size];
  [v6 size];
  [v5 pixelWidth];
  [v5 pixelHeight];
  v49 = 0;
  PFDeviceLockScreenFocusAreaRectNormalized();
  v46 = v10;
  v47 = v8;
  [v5 suggestedCropForTargetSize:&v49 withFocusRegion:v8 andOutputCropScore:{v10, v11, v12, v13, v14}];
  if (__38__PUImageRequester__produceDebugImage__block_invoke(v15, v16, v17, v18))
  {
    PXRectNormalize();
    PXRectDenormalize();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wallpaper w/ FocusRegion %.3f", v49];
    v28 = [MEMORY[0x1E69DC888] systemYellowColor];
    v29 = [v6 px_debugImageWithStrokeRect:v28 color:v27 text:{v20, v22, v24, v26}];

    v6 = v29;
  }

  v48 = 0;
  [v5 suggestedCropForTargetSize:&v48 withFocusRegion:v47 andOutputCropScore:{v46, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  if (__38__PUImageRequester__produceDebugImage__block_invoke(v30, v31, v32, v33))
  {
    PXRectNormalize();
    PXRectDenormalize();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wallpaper %.3f", v48];
    v43 = [MEMORY[0x1E69DC888] systemBlueColor];
    v44 = [v6 px_debugImageWithStrokeRect:v43 color:v42 text:{v35, v37, v39, v41}];

    v6 = v44;
  }

  return v6;
}

@end