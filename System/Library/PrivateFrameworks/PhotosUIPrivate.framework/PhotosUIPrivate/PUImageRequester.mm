@interface PUImageRequester
- (CGSize)_lastRequestedImageSize;
- (CGSize)imageTargetSize;
- (CGSize)targetSize;
- (PUImageRequester)init;
- (PUImageRequester)initWithMediaProvider:(id)provider asset:(id)asset requiresFullQualityImage:(BOOL)image;
- (id)imageByAddingWallpaperCropRectDiagnosticsForAsset:(id)asset sourceImage:(id)image;
- (void)_assertInsideChangesBlock;
- (void)_didChange;
- (void)_handleResultOfFullSizeImageDataRequestWithID:(int)d imageData:(id)data imageURL:(id)l dataUTI:(id)i orientation:(int64_t)orientation info:(id)info;
- (void)_handleResultOfImageRequestWithID:(int)d asset:(id)asset targetSize:(CGSize)size image:(id)image info:(id)info;
- (void)_produceDebugImage;
- (void)_update;
- (void)_updateResult;
- (void)_willChange;
- (void)cancelAllImageRequests;
- (void)dealloc;
- (void)handlePreloadedImage:(id)image;
- (void)performChanges:(id)changes;
- (void)registerObserver:(id)observer;
- (void)setAsset:(id)asset;
- (void)setError:(id)error;
- (void)setFullSizeImageData:(id)data;
- (void)setFullSizeImageURL:(id)l;
- (void)setGainMapImage:(CGImage *)image;
- (void)setGainMapValue:(float)value;
- (void)setImage:(id)image;
- (void)setImageIsFullQuality:(BOOL)quality;
- (void)setIncludeGainMap:(BOOL)map;
- (void)setNetworkAccessAllowed:(BOOL)allowed;
- (void)setRequestFullSizeImageDataUTTypes:(id)types;
- (void)setRequestHDR:(BOOL)r;
- (void)setResult:(id)result;
- (void)setTargetSize:(CGSize)size;
- (void)unregisterObserver:(id)observer;
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

  asset = [(PUImageRequester *)self asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_71;
  }

  asset2 = [(PUImageRequester *)self asset];
  image = [(PUImageRequester *)self image];
  [image size];
  v142 = v8;
  [image size];
  v10 = v9;
  v11 = image;
  v12 = v11;
  if ([v3 showSaliencyRects])
  {
    [asset2 preferredCropRect];
    v12 = v11;
    if (__38__PUImageRequester__produceDebugImage__block_invoke(v13, v14, v15, v16))
    {
      PXRectFlippedVertically();
      PXRectDenormalize();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      redColor = [MEMORY[0x1E69DC888] redColor];
      v12 = [v11 px_debugImageWithStrokeRect:redColor color:@"Preferred" text:{v18, v20, v22, v24}];
    }

    [asset2 acceptableCropRect];
    if (__38__PUImageRequester__produceDebugImage__block_invoke(v26, v27, v28, v29))
    {
      PXRectFlippedVertically();
      PXRectDenormalize();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      orangeColor = [MEMORY[0x1E69DC888] orangeColor];
      v39 = [v12 px_debugImageWithStrokeRect:orangeColor color:@"Acceptable" text:{v31, v33, v35, v37}];

      v12 = v39;
    }
  }

  if ([v3 showFacesRect])
  {
    [asset2 normalizedFaceAreaRect];
    if (__38__PUImageRequester__produceDebugImage__block_invoke(v40, v41, v42, v43))
    {
      PXRectDenormalize();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      blueColor = [MEMORY[0x1E69DC888] blueColor];
      v53 = [v12 px_debugImageWithStrokeRect:blueColor color:@"Faces Area" text:{v45, v47, v49, v51}];

      v54 = +[PUOneUpSettings sharedInstance];
      showPaddedFacesRect = [v54 showPaddedFacesRect];

      if (showPaddedFacesRect)
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
        cyanColor = [MEMORY[0x1E69DC888] cyanColor];
        v12 = [v53 px_debugImageWithStrokeRect:cyanColor color:@"Scaled Faces Area" text:{x, y, width, height}];
      }

      else
      {
        v12 = v53;
      }
    }
  }

  v140 = v3;
  selfCopy = self;
  v135 = v11;
  v136 = asset2;
  if ([v3 showObjectRects])
  {
    sceneClassifications = [asset2 sceneClassifications];
    v62 = objc_alloc_init(MEMORY[0x1E69C0850]);
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v63 = sceneClassifications;
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
                redColor2 = [MEMORY[0x1E69DC888] redColor];
                v91 = [v12 px_debugImageWithStrokeRect:redColor2 color:v81 text:{v83, v85, v87, v89}];

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
    self = selfCopy;
    v11 = v135;
  }

  if ([v3 showBestSquareRect])
  {
    [asset2 bestCropRectForAspectRatio:0 verticalContentMode:2 cropMode:1.0];
    if (__38__PUImageRequester__produceDebugImage__block_invoke(v92, v93, v94, v95))
    {
      PXRectDenormalize();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      v103 = v102;
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      v105 = [v12 px_debugImageWithStrokeRect:greenColor color:@"Best Square Crop Rect" text:{v97, v99, v101, v103}];

      v12 = v105;
    }
  }

  if (([v3 showFacesTorsosRects] & 1) == 0 && !objc_msgSend(v3, "showGazeRects"))
  {
    goto LABEL_68;
  }

  photoLibrary = [asset2 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  v109 = [MEMORY[0x1E69787C8] fetchFacesInAsset:asset2 options:librarySpecificFetchOptions];
  if (![v109 count])
  {
    goto LABEL_67;
  }

  v133 = v109;
  v134 = librarySpecificFetchOptions;
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
              v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FT%d", v112];
              greenColor2 = [MEMORY[0x1E69DC888] greenColor];
              cyanColor2 = [MEMORY[0x1E69DC888] cyanColor];
              v121 = 1;
              goto LABEL_57;
            }

            if (v118 > 0.0)
            {
LABEL_56:
              v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"F%d", v112];
              greenColor2 = [MEMORY[0x1E69DC888] magentaColor];
              cyanColor2 = 0;
LABEL_57:
              [v115 size];
              [v115 centerX];
              [v115 centerX];
              [v115 centerY];
              [v115 centerY];
              PXRectWithEdges();
              PXRectDenormalize();
              v128 = [v12 px_debugImageWithStrokeRect:greenColor2 color:v112 text:?];

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
                [v12 px_debugImageWithStrokeRect:cyanColor2 color:v112 text:?];
                v12 = currentHandler = v12;
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
              v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"T%d", v112];
              cyanColor2 = [MEMORY[0x1E69DC888] orangeColor];
              greenColor2 = 0;
              goto LABEL_58;
            }
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        localIdentifier = [v115 localIdentifier];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PUImageRequester.m" lineNumber:659 description:{@"Face %@ is missing face and torso", localIdentifier}];

        v112 = 0;
        greenColor2 = 0;
        cyanColor2 = 0;
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
          v1122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"G%d", v112];
          brownColor = [MEMORY[0x1E69DC888] brownColor];
          [v115 gazeRect];
          PXRectFlippedVertically();
          PXRectDenormalize();
          v131 = [v12 px_debugImageWithStrokeRect:brownColor color:v1122 text:?];

          v12 = v131;
        }
      }

      ++v112;
    }

    v111 = [obj countByEnumeratingWithState:&v143 objects:v151 count:16];
  }

  while (v111);
LABEL_66:

  self = selfCopy;
  v11 = v135;
  asset2 = v136;
  v109 = v133;
  librarySpecificFetchOptions = v134;
LABEL_67:

LABEL_68:
  if ([v3 showWallpaperCropRect])
  {
    v132 = [(PUImageRequester *)self imageByAddingWallpaperCropRectDiagnosticsForAsset:asset2 sourceImage:v12];

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

- (void)_handleResultOfFullSizeImageDataRequestWithID:(int)d imageData:(id)data imageURL:(id)l dataUTI:(id)i orientation:(int64_t)orientation info:(id)info
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  lCopy = l;
  iCopy = i;
  if ([(PUImageRequester *)self currentFullSizeImageDataRequestID]== d)
  {
    [(PUImageRequester *)self setCurrentFullSizeImageDataRequestID:0];
    if (dataCopy | lCopy)
    {
      v28 = iCopy;
      if (iCopy)
      {
        v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:iCopy];
      }

      else
      {
        v15 = 0;
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      requestFullSizeImageDataUTTypes = [(PUImageRequester *)self requestFullSizeImageDataUTTypes];
      v17 = [requestFullSizeImageDataUTTypes countByEnumeratingWithState:&v33 objects:v41 count:16];
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
            objc_enumerationMutation(requestFullSizeImageDataUTTypes);
          }

          v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v33 + 1) + 8 * v20)];
          v22 = [v15 conformsToType:v21];

          if (v22)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [requestFullSizeImageDataUTTypes countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v18)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }

        if (dataCopy)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __110__PUImageRequester__handleResultOfFullSizeImageDataRequestWithID_imageData_imageURL_dataUTI_orientation_info___block_invoke;
          v31[3] = &unk_1E7B80C38;
          v31[4] = self;
          dataCopy = dataCopy;
          v32 = dataCopy;
          [(PUImageRequester *)self performChanges:v31];

          lCopy = v27;
          iCopy = v28;
          goto LABEL_24;
        }

        iCopy = v28;
        if (v27)
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __110__PUImageRequester__handleResultOfFullSizeImageDataRequestWithID_imageData_imageURL_dataUTI_orientation_info___block_invoke_2;
          v29[3] = &unk_1E7B80C38;
          v29[4] = self;
          lCopy = v27;
          v30 = lCopy;
          [(PUImageRequester *)self performChanges:v29];

          goto LABEL_23;
        }
      }

      else
      {
LABEL_14:

        v23 = [v15 conformsToType:*MEMORY[0x1E6982F88]];
        v24 = PLOneUpGetLog();
        iCopy = v28;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          asset = [(PUImageRequester *)self asset];
          *buf = 138412546;
          v38 = v28;
          v39 = 2112;
          v40 = asset;
          _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, "got non-supported data %@ for %@", buf, 0x16u);
        }

        if (v23)
        {
          fullSizeDataRepeatRequestCoalescer = [(PUImageRequester *)self fullSizeDataRepeatRequestCoalescer];
          [fullSizeDataRepeatRequestCoalescer inputEvent];
        }
      }
    }

    lCopy = 0;
LABEL_23:
    dataCopy = 0;
  }

LABEL_24:
}

- (void)_handleResultOfImageRequestWithID:(int)d asset:(id)asset targetSize:(CGSize)size image:(id)image info:(id)info
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  imageCopy = image;
  infoCopy = info;
  if ([(PUImageRequester *)self _currentImageRequestID]== d)
  {
    v16 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    if ([v16 BOOLValue])
    {
      v17 = 0;
    }

    else
    {
      v18 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E58]];
      v17 = [v18 BOOLValue] ^ 1;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__PUImageRequester__handleResultOfImageRequestWithID_asset_targetSize_image_info___block_invoke;
    v19[3] = &unk_1E7B775D8;
    v20 = imageCopy;
    selfCopy = self;
    v26 = v17;
    v22 = infoCopy;
    v23 = assetCopy;
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
  _currentImageRequestID = [(PUImageRequester *)self _currentImageRequestID];
  if (_currentImageRequestID)
  {
    v4 = _currentImageRequestID;
    [(PUImageRequester *)self _setLastRequestedImageSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    mediaProvider = [(PUImageRequester *)self mediaProvider];
    [mediaProvider cancelImageRequest:v4];

    [(PUImageRequester *)self _setCurrentImageRequestID:0];
  }

  currentFullSizeImageDataRequestID = [(PUImageRequester *)self currentFullSizeImageDataRequestID];
  if (currentFullSizeImageDataRequestID)
  {
    v7 = currentFullSizeImageDataRequestID;
    mediaProvider2 = [(PUImageRequester *)self mediaProvider];
    [mediaProvider2 cancelImageRequest:v7];

    [(PUImageRequester *)self setCurrentFullSizeImageDataRequestID:0];
  }
}

- (void)setResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (self->_result != resultCopy)
  {
    objc_storeStrong(&self->_result, result);
    v6 = PLOneUpGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v19 = 2112;
      v20 = resultCopy;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%@ produced result: %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    observers = [(PUImageRequester *)self observers];
    v8 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(observers);
          }

          [*(*(&v12 + 1) + 8 * i) imageRequester:self didProduceResult:resultCopy];
        }

        v9 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_updateResult
{
  v9 = objc_alloc_init(_PUImageRequesterResult);
  currentRequestStartDate = [(PUImageRequester *)self currentRequestStartDate];
  if (currentRequestStartDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:currentRequestStartDate];
    v6 = v5;

    [(_PUImageRequesterResult *)v9 setTimeIntervalSinceRequest:v6];
  }

  [(PUImageRequester *)self imageTargetSize];
  [(_PUImageRequesterResult *)v9 setTargetSize:?];
  image = [(PUImageRequester *)self image];
  [(_PUImageRequesterResult *)v9 setImage:image];

  [(_PUImageRequesterResult *)v9 setImageIsFullQuality:[(PUImageRequester *)self imageIsFullQuality]];
  [(_PUImageRequesterResult *)v9 setGainMapImage:[(PUImageRequester *)self gainMapImage]];
  [(PUImageRequester *)self gainMapValue];
  [(_PUImageRequesterResult *)v9 setGainMapValue:?];
  imageAsset = [(PUImageRequester *)self imageAsset];
  [(_PUImageRequesterResult *)v9 setAsset:imageAsset];

  [(PUImageRequester *)self setResult:v9];
}

- (void)_update
{
  asset = [(PUImageRequester *)self asset];
  [(PUImageRequester *)self targetSize];
  v8 = v7;
  v9 = v6;
  if (v7 == *MEMORY[0x1E695F060] && v6 == *(MEMORY[0x1E695F060] + 8))
  {
    [(PUImageRequester *)self cancelAllImageRequests];
    goto LABEL_56;
  }

  requestFullSizeImageDataUTTypes = [(PUImageRequester *)self requestFullSizeImageDataUTTypes];
  if ([requestFullSizeImageDataUTTypes count])
  {
    fullSizeImageData = [(PUImageRequester *)self fullSizeImageData];
    if (fullSizeImageData)
    {
      v13 = 0;
    }

    else
    {
      fullSizeImageURL = [(PUImageRequester *)self fullSizeImageURL];
      v13 = fullSizeImageURL == 0;
    }
  }

  else
  {
    v13 = 0;
  }

  fullSizeImageData2 = [(PUImageRequester *)self fullSizeImageData];

  currentFullSizeImageDataRequestID = [(PUImageRequester *)self currentFullSizeImageDataRequestID];
  if (currentFullSizeImageDataRequestID)
  {
    v17 = 0;
  }

  else
  {
    fullSizeImageData3 = [(PUImageRequester *)self fullSizeImageData];
    if (fullSizeImageData3)
    {
      v17 = 0;
    }

    else
    {
      fullSizeImageURL2 = [(PUImageRequester *)self fullSizeImageURL];
      if (!fullSizeImageURL2)
      {
        v20 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v3 = fullSizeImageURL2;
      v17 = 1;
    }
  }

  image = [(PUImageRequester *)self image];
  v20 = image != 0;

  if (v17)
  {
  }

  if (!currentFullSizeImageDataRequestID)
  {
    goto LABEL_21;
  }

LABEL_22:
  v21 = fullSizeImageData2 == 0;
  [(PUImageRequester *)self _lastRequestedImageSize];
  if (v8 > v23 || v9 > v22)
  {
    image2 = [(PUImageRequester *)self image];
    [image2 size];
    v27 = v26;
    v29 = v28;
    [image2 scale];
    v31 = v9 > v29 * v30;
    if (v8 > v27 * v30)
    {
      v31 = 1;
    }

    if (image2)
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
  useLowMemoryMode = [(PUImageRequester *)self useLowMemoryMode];
  if (objc_opt_respondsToSelector())
  {
    needsDeferredProcessing = [asset needsDeferredProcessing];
  }

  else
  {
    needsDeferredProcessing = 1;
  }

  includeGainMap = [(PUImageRequester *)self includeGainMap];
  if ((v34 & v24) == 1)
  {
    v38 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v38 setAllowPlaceholder:1];
    [v38 setNetworkAccessAllowed:{-[PUImageRequester isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
    [v38 setAllowSecondaryDegradedImage:1];
    [v38 setUseLowMemoryMode:useLowMemoryMode];
    [v38 setDeliveryMode:{-[PUImageRequester requiresFullQualityImage](self, "requiresFullQualityImage")}];
    [v38 setIncludeHDRGainMap:{-[PUImageRequester includeGainMap](self, "includeGainMap")}];
    [v38 setIncludeHDRGainMapInIntermediateImage:includeGainMap & needsDeferredProcessing];
    [v38 setPreferHDR:{-[PUImageRequester requestHDR](self, "requestHDR")}];
    [(PUImageRequester *)self targetHDRHeadroom];
    [v38 setTargetHDRHeadroom:?];
    [v38 setDownloadIntent:3];
    [v38 setDownloadPriority:{-[PUImageRequester highPriorityRequest](self, "highPriorityRequest") ^ 1}];
    asset2 = [(PUImageRequester *)self asset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v40 = asset2;

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
    _currentImageRequestID = [(PUImageRequester *)self _currentImageRequestID];
    mediaProvider = [(PUImageRequester *)self mediaProvider];
    [mediaProvider cancelImageRequest:_currentImageRequestID];

    [(PUImageRequester *)self _setCurrentImageRequestID:*(v62 + 6)];
    [(PUImageRequester *)self _setLastRequestedImageSize:v8, v9];
    date = [MEMORY[0x1E695DF00] date];
    [(PUImageRequester *)self setCurrentRequestStartDate:date];

    objc_initWeak(&location, self);
    mediaProvider2 = [(PUImageRequester *)self mediaProvider];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __27__PUImageRequester__update__block_invoke;
    v56[3] = &unk_1E7B77510;
    objc_copyWeak(v59, &location);
    v58 = &v61;
    v57 = asset;
    v59[1] = *&v8;
    v59[2] = *&v9;
    v45 = [mediaProvider2 requestImageForAsset:v57 targetSize:1 contentMode:v38 options:v56 resultHandler:{v8, v9}];
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
    [v46 setUseLowMemoryMode:useLowMemoryMode];
    [v46 setIncludeHDRGainMap:{-[PUImageRequester includeGainMap](self, "includeGainMap")}];
    [v46 setIncludeHDRGainMapInIntermediateImage:includeGainMap & needsDeferredProcessing];
    [v46 setDownloadIntent:3];
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v47 = +[PUOneUpSettings sharedInstance];
    enableFigPhotoTiledLayer = [v47 enableFigPhotoTiledLayer];
    if ([v47 forceURLWithFigPhotoTiledLayer])
    {
      if (enableFigPhotoTiledLayer)
      {
LABEL_50:
        objc_initWeak(&location, self);
        [v46 setDeliveryMode:1];
        mediaProvider3 = [(PUImageRequester *)self mediaProvider];
        v50 = v54;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __27__PUImageRequester__update__block_invoke_3;
        v54[3] = &unk_1E7B77560;
        objc_copyWeak(&v55, &location);
        v54[4] = &v61;
        v51 = [mediaProvider3 requestImageURLForAsset:asset options:v46 resultHandler:v54];
LABEL_55:
        *(v62 + 6) = v51;

        objc_destroyWeak(v50 + 5);
        objc_destroyWeak(&location);
        [(PUImageRequester *)self setCurrentFullSizeImageDataRequestID:*(v62 + 6)];

        _Block_object_dispose(&v61, 8);
        goto LABEL_56;
      }
    }

    else if (enableFigPhotoTiledLayer && [v47 useURLForLargePhotosWithFigPhotoTiledLayer] && objc_msgSend(asset, "originalFilesize") > 0x3200000)
    {
      goto LABEL_50;
    }

    objc_initWeak(&location, self);
    mediaProvider3 = [(PUImageRequester *)self mediaProvider];
    v50 = v52;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __27__PUImageRequester__update__block_invoke_5;
    v52[3] = &unk_1E7B775B0;
    objc_copyWeak(&v53, &location);
    v52[4] = &v61;
    v51 = [mediaProvider3 requestImageDataForAsset:asset options:v46 resultHandler:v52];
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

- (void)setFullSizeImageURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_fullSizeImageURL != lCopy)
  {
    objc_storeStrong(&self->_fullSizeImageURL, l);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    observers = [(PUImageRequester *)self observers];
    v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(observers);
          }

          [*(*(&v11 + 1) + 8 * i) imageRequesterDidUpdateFullSizeImageData:self];
        }

        v8 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setFullSizeImageData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_fullSizeImageData != dataCopy)
  {
    objc_storeStrong(&self->_fullSizeImageData, data);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    observers = [(PUImageRequester *)self observers];
    v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(observers);
          }

          [*(*(&v11 + 1) + 8 * i) imageRequesterDidUpdateFullSizeImageData:self];
        }

        v8 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setImageIsFullQuality:(BOOL)quality
{
  qualityCopy = quality;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_imageIsFullQuality != qualityCopy)
  {
    self->_imageIsFullQuality = qualityCopy;
    mEMORY[0x1E69C3970] = [MEMORY[0x1E69C3970] sharedInstance];
    canShowInternalUI = [mEMORY[0x1E69C3970] canShowInternalUI];

    if (canShowInternalUI)
    {
      [(PUImageRequester *)self _produceDebugImage];
    }

    [(PUImageRequester *)self _invalidateResult];
  }
}

- (void)setGainMapValue:(float)value
{
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_gainMapValue = value;

    [(PUImageRequester *)self _invalidateResult];
  }
}

- (void)setGainMapImage:(CGImage *)image
{
  [(PUImageRequester *)self _assertInsideChangesBlock];
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != image)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = image;
    CGImageRetain(image);

    [(PUImageRequester *)self _invalidateResult];
  }
}

- (void)setError:(id)error
{
  errorCopy = error;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  error = self->_error;
  v7 = errorCopy;
  v9 = v7;
  if (error == v7)
  {
  }

  else
  {
    v8 = [(NSError *)v7 isEqual:error];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_error, error);
      [(PUImageRequester *)self _invalidateResult];
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    [(PUImageRequester *)self _invalidateResult];
  }
}

- (void)handlePreloadedImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  image = [(PUImageRequester *)self image];
  [image size];
  if ((PFSizeLargerThanSize() & 1) != 0 || [(PUImageRequester *)self imageIsPlaceholder])
  {
    imageIsFullQuality = [(PUImageRequester *)self imageIsFullQuality];

    if (!imageIsFullQuality)
    {
      [(PUImageRequester *)self setImageIsPlaceholder:0];
      [(PUImageRequester *)self setImage:imageCopy];
    }
  }

  else
  {
  }
}

- (void)setRequestHDR:(BOOL)r
{
  if (self->_requestHDR != r)
  {
    self->_requestHDR = r;
    [(PUImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setIncludeGainMap:(BOOL)map
{
  if (self->_includeGainMap != map)
  {
    self->_includeGainMap = map;
    [(PUImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setNetworkAccessAllowed:(BOOL)allowed
{
  if (self->_networkAccessAllowed != allowed)
  {
    self->_networkAccessAllowed = allowed;
    [(PUImageRequester *)self cancelAllImageRequests];
  }
}

- (void)setRequestFullSizeImageDataUTTypes:(id)types
{
  typesCopy = types;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  v5 = self->_requestFullSizeImageDataUTTypes;
  v6 = v5;
  if (v5 == typesCopy)
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_requestFullSizeImageDataUTTypes, types);
      [(PUImageRequester *)self _invalidateImageRequest];
    }
  }
}

- (void)setTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (width != self->_targetSize.width || height != self->_targetSize.height)
  {
    self->_targetSize.width = width;
    self->_targetSize.height = height;

    [(PUImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  [(PUImageRequester *)self _assertInsideChangesBlock];
  if (self->_asset != assetCopy)
  {
    objc_storeStrong(&self->_asset, asset);
    [(PUImageRequester *)self _invalidateImageRequest];
  }
}

- (void)_assertInsideChangesBlock
{
  if ([(PUImageRequester *)self _changeCount]<= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:163 description:@"not within a change block"];
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

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  if (!changesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"changes != NULL"}];
  }

  [(PUImageRequester *)self _willChange];
  changesCopy[2]();
  [(PUImageRequester *)self _didChange];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(PUImageRequester *)self observers];
  if (([observers containsObject:observerCopy] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:119 description:{@"Attempting to remove unknown observer: ", observerCopy}];
  }

  [observers removeObject:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:111 description:{@"observer does not conform to PUImageRequesterObserver: %@", observerCopy}];
  }

  observers = [(PUImageRequester *)self observers];
  [observers addObject:observerCopy];
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  v3.receiver = self;
  v3.super_class = PUImageRequester;
  [(PUImageRequester *)&v3 dealloc];
}

- (PUImageRequester)initWithMediaProvider:(id)provider asset:(id)asset requiresFullQualityImage:(BOOL)image
{
  providerCopy = provider;
  assetCopy = asset;
  v20.receiver = self;
  v20.super_class = PUImageRequester;
  v12 = [(PUImageRequester *)&v20 init];
  if (v12)
  {
    if (providerCopy)
    {
      if (assetCopy)
      {
LABEL_4:
        weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        observers = v12->_observers;
        v12->_observers = weakObjectsHashTable;

        objc_storeStrong(&v12->_mediaProvider, provider);
        objc_storeStrong(&v12->_asset, asset);
        *&v12->_useLowMemoryMode = 256;
        v12->_requiresFullQualityImage = image;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v12 file:@"PUImageRequester.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

      if (assetCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v12 file:@"PUImageRequester.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

    goto LABEL_4;
  }

LABEL_5:

  return v12;
}

- (PUImageRequester)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageRequester.m" lineNumber:77 description:{@"%s is not available as initializer", "-[PUImageRequester init]"}];

  abort();
}

- (id)imageByAddingWallpaperCropRectDiagnosticsForAsset:(id)asset sourceImage:(id)image
{
  assetCopy = asset;
  imageCopy = image;
  PFDeviceScreenSize();
  v8 = v7;
  v10 = v9;
  [imageCopy size];
  [imageCopy size];
  [assetCopy pixelWidth];
  [assetCopy pixelHeight];
  v49 = 0;
  PFDeviceLockScreenFocusAreaRectNormalized();
  v46 = v10;
  v47 = v8;
  [assetCopy suggestedCropForTargetSize:&v49 withFocusRegion:v8 andOutputCropScore:{v10, v11, v12, v13, v14}];
  if (__38__PUImageRequester__produceDebugImage__block_invoke(v15, v16, v17, v18))
  {
    PXRectNormalize();
    PXRectDenormalize();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wallpaper w/ FocusRegion %.3f", v49];
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    v29 = [imageCopy px_debugImageWithStrokeRect:systemYellowColor color:v27 text:{v20, v22, v24, v26}];

    imageCopy = v29;
  }

  v48 = 0;
  [assetCopy suggestedCropForTargetSize:&v48 withFocusRegion:v47 andOutputCropScore:{v46, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  if (__38__PUImageRequester__produceDebugImage__block_invoke(v30, v31, v32, v33))
  {
    PXRectNormalize();
    PXRectDenormalize();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wallpaper %.3f", v48];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v44 = [imageCopy px_debugImageWithStrokeRect:systemBlueColor color:v42 text:{v35, v37, v39, v41}];

    imageCopy = v44;
  }

  return imageCopy;
}

@end