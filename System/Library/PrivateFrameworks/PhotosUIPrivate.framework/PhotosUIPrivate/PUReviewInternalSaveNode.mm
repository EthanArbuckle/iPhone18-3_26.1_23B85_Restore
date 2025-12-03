@interface PUReviewInternalSaveNode
- (CGSize)baseImageSize;
- (CGSize)renderedImageSize;
- (CGSize)renderedVideoSize;
- (PUReviewInternalSaveNode)initWithDirectory:(id)directory imageDataNode:(id)node imageRenderNode:(id)renderNode videoURLNode:(id)lNode videoRenderNode:(id)videoRenderNode;
- (double)_baseDuration;
- (id)_exportProperties;
- (int64_t)_adjustmentBaseVersion;
- (int64_t)_baseExifOrientation;
- (void)run;
@end

@implementation PUReviewInternalSaveNode

- (CGSize)renderedImageSize
{
  width = self->_renderedImageSize.width;
  height = self->_renderedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)baseImageSize
{
  width = self->_baseImageSize.width;
  height = self->_baseImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)renderedVideoSize
{
  width = self->_renderedVideoSize.width;
  height = self->_renderedVideoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)run
{
  v118 = *MEMORY[0x1E69E9840];
  imageDataURL = self->_imageDataURL;
  self->_imageDataURL = 0;

  self->_imageExifOrientation = 0;
  videoURL = self->_videoURL;
  self->_videoURL = 0;

  adjustmentURL = self->_adjustmentURL;
  self->_adjustmentURL = 0;

  v6 = MEMORY[0x1E695F060];
  v7 = *MEMORY[0x1E695F060];
  self->_baseImageSize = *MEMORY[0x1E695F060];
  self->_renderedImageSize = v7;
  directory = [(PUReviewInternalSaveNode *)self directory];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v113 = 0;
  [defaultManager createDirectoryAtURL:directory withIntermediateDirectories:1 attributes:0 error:&v113];
  v10 = v113;

  v98 = v10;
  if (v10)
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v115 = directory;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Failed to create working directory for saving at URL %@", buf, 0xCu);
    }
  }

  imageDataNode = [(PUReviewInternalSaveNode *)self imageDataNode];
  videoURLNode = [(PUReviewInternalSaveNode *)self videoURLNode];
  imageRenderNode = [(PUReviewInternalSaveNode *)self imageRenderNode];
  videoRenderNode = [(PUReviewInternalSaveNode *)self videoRenderNode];
  imageDataURL = [imageDataNode imageDataURL];
  v16 = imageDataURL;
  v17 = off_1E7B6E000;
  if (imageDataURL)
  {
    pathExtension = [imageDataURL pathExtension];
    v19 = [PUReviewAsset fileURLForFullsizeImageInDirectory:directory extension:pathExtension];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v112 = 0;
    v93 = v19;
    v21 = [defaultManager2 copyItemAtURL:v16 toURL:v19 error:&v112];
    v22 = v112;

    if ((v21 & 1) == 0)
    {
      v23 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v115 = v16;
        v116 = 2112;
        v117 = 0;
        _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, "Failed to link image from %@ to %@", buf, 0x16u);
      }
    }

    v17 = off_1E7B6E000;
  }

  else
  {
    v93 = 0;
  }

  v24 = *v6;
  v25 = v6[1];
  imageData = [imageRenderNode imageData];
  [imageRenderNode baseImageSize];
  v28 = v27;
  v30 = v29;
  [imageRenderNode renderedImageSize];
  v32 = v31;
  v34 = v33;
  v105 = videoRenderNode;
  v99 = imageData;
  v97 = imageDataNode;
  v95 = v16;
  v96 = imageRenderNode;
  if (imageData)
  {
    v35 = directory;
    v36 = imageDataNode;
    _exportProperties = [(PUReviewInternalSaveNode *)self _exportProperties];
    v38 = objc_alloc_init(MEMORY[0x1E69BE650]);
    compositionController = [imageRenderNode compositionController];
    v110 = 0;
    v111 = 0;
    v40 = [v38 dataFromCompositionController:compositionController outFormatIdentifier:&v111 outFormatVersion:&v110 exportProperties:_exportProperties];
    v101 = v111;
    v100 = v110;

    v103 = v40;
    if (!v40)
    {
      asset = [v36 asset];
      v56 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        compositionController2 = [imageRenderNode compositionController];
        *buf = 138412546;
        v115 = asset;
        v116 = 2112;
        v117 = compositionController2;
        _os_log_impl(&dword_1B36F3000, v56, OS_LOG_TYPE_ERROR, "Error generating the adjustments data for asset:%@ compositionController:%@", buf, 0x16u);
      }

      [(PXRunNode *)self cancel];
      v41 = 0;
      v103 = 0;
      v58 = 0;
      v43 = v24;
      v42 = v25;
      v17 = off_1E7B6E000;
      directory = v35;
      videoRenderNode = v105;
      goto LABEL_31;
    }

    v41 = [(__objc2_class *)v17[151] fileURLForFullsizeRenderImageInDirectory:v35 extension:@"jpg"];
    [v99 writeToURL:v41 atomically:1];
    v42 = v34;
    v43 = v32;
    v24 = v28;
    v25 = v30;
    imageDataNode = v36;
LABEL_18:

    if (imageDataNode)
    {
      v54 = imageDataNode;
    }

    else
    {
      v54 = videoURLNode;
    }

    _exportProperties = [v54 asset];
    directory = v35;
    v59 = [_exportProperties playbackVariation] - 1;
    videoRenderNode = v105;
    if (v59 > 2)
    {
      v60 = 0;
    }

    else
    {
      v60 = dword_1B3D0D680[v59];
    }

    _adjustmentBaseVersion = [(PUReviewInternalSaveNode *)self _adjustmentBaseVersion];
    v38 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:v101 formatVersion:v100 data:v103 baseVersion:_adjustmentBaseVersion editorBundleID:0 renderTypes:v60];
    propertyListDictionary = [v38 propertyListDictionary];
    if (propertyListDictionary)
    {
      v58 = [(__objc2_class *)v17[151] fileURLForAdjustmentsInDirectory:directory];
      [propertyListDictionary writeToURL:v58 atomically:1];
    }

    else
    {
      v58 = 0;
    }

    v32 = v43;
    v34 = v42;
LABEL_31:

    goto LABEL_32;
  }

  if (videoRenderNode)
  {
    v44 = MEMORY[0x1E69BE360];
    compositionController3 = [videoRenderNode compositionController];
    [v44 synchronousInputSizeForCompositionController:compositionController3];
    v47 = v46;
    v49 = v48;

    [videoRenderNode renderedVideoSize];
    v32 = v50;
    v34 = v51;
    _exportProperties = [(PUReviewInternalSaveNode *)self _exportProperties];
    v38 = objc_alloc_init(MEMORY[0x1E69BE650]);
    compositionController4 = [videoRenderNode compositionController];
    v108 = 0;
    v109 = 0;
    v53 = [v38 dataFromCompositionController:compositionController4 outFormatIdentifier:&v109 outFormatVersion:&v108 exportProperties:_exportProperties];
    v101 = v109;
    v100 = v108;

    v103 = v53;
    if (!v53)
    {
      v90 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        videoURL = [videoRenderNode videoURL];
        compositionController5 = [videoRenderNode compositionController];
        *buf = 138412546;
        v115 = videoURL;
        v116 = 2112;
        v117 = compositionController5;
        _os_log_impl(&dword_1B36F3000, v90, OS_LOG_TYPE_ERROR, "Error generating the adjustments data for video:%@ compositionController:%@", buf, 0x16u);

        videoRenderNode = v105;
      }

      [(PXRunNode *)self cancel];
      v41 = 0;
      v103 = 0;
      v58 = 0;
      v43 = v24;
      v42 = v25;
      v17 = off_1E7B6E000;
      goto LABEL_31;
    }

    v35 = directory;
    v41 = 0;
    v42 = v34;
    v43 = v32;
    v24 = v47;
    v25 = v49;
    v17 = off_1E7B6E000;
    goto LABEL_18;
  }

  v41 = 0;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v58 = 0;
  v43 = v24;
  v42 = v25;
LABEL_32:
  videoURL2 = [videoURLNode videoURL];
  asset2 = [videoURLNode asset];
  isLivePhoto = [asset2 isLivePhoto];

  v102 = directory;
  if (videoURL2)
  {
    v66 = v17[151];
    if (isLivePhoto)
    {
      v67 = [(__objc2_class *)v17[151] fileURLForFullsizeVideoComplementInDirectory:directory];
    }

    else
    {
      pathExtension2 = [videoURL2 pathExtension];
      v67 = [(__objc2_class *)v66 fileURLForFullsizeVideoInDirectory:directory extension:pathExtension2];
    }

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v107 = 0;
    v70 = [defaultManager3 copyItemAtURL:videoURL2 toURL:v67 error:&v107];
    v71 = v107;

    videoRenderNode = v105;
    if ((v70 & 1) == 0)
    {
      v72 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v115 = videoURL2;
        v116 = 2112;
        v117 = v67;
        _os_log_impl(&dword_1B36F3000, v72, OS_LOG_TYPE_ERROR, "Failed to link video from %@ to %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v67 = 0;
  }

  videoURL3 = [videoRenderNode videoURL];
  if (videoURL3)
  {
    v74 = v17[151];
    if (isLivePhoto)
    {
      [(__objc2_class *)v74 fileURLForFullsizeRenderVideoComplementInDirectory:v102];
    }

    else
    {
      [(__objc2_class *)v74 fileURLForFullsizeRenderVideoInDirectory:v102];
    }
    v75 = ;
    defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
    v106 = 0;
    v77 = [defaultManager4 copyItemAtURL:videoURL3 toURL:v75 error:&v106];
    v78 = v106;

    if ((v77 & 1) == 0)
    {
      v79 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v115 = videoURL3;
        v116 = 2112;
        v117 = v75;
        _os_log_impl(&dword_1B36F3000, v79, OS_LOG_TYPE_ERROR, "Failed to link video from %@ to %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v75 = 0;
  }

  v80 = self->_imageDataURL;
  self->_imageDataURL = v41;
  v81 = v41;

  self->_imageExifOrientation = 1;
  providedFullsizeImageURL = self->_providedFullsizeImageURL;
  self->_providedFullsizeImageURL = v94;
  v83 = v94;

  providedVideoURL = self->_providedVideoURL;
  self->_providedVideoURL = v67;
  v85 = v67;

  v86 = self->_videoURL;
  self->_videoURL = v75;
  v87 = v75;

  v88 = self->_adjustmentURL;
  self->_adjustmentURL = v58;
  v89 = v58;

  self->_baseImageSize.width = v24;
  self->_baseImageSize.height = v25;
  self->_renderedImageSize.width = v43;
  self->_renderedImageSize.height = v42;
  self->_renderedVideoSize.width = v32;
  self->_renderedVideoSize.height = v34;
  [(PXRunNode *)self completeWithError:0];
}

- (id)_exportProperties
{
  imageRenderNode = [(PUReviewInternalSaveNode *)self imageRenderNode];
  [imageRenderNode baseImageSize];
  v5 = llround(v4);
  v7 = llround(v6);
  _baseExifOrientation = [(PUReviewInternalSaveNode *)self _baseExifOrientation];
  [(PUReviewInternalSaveNode *)self _baseDuration];
  v9 = [MEMORY[0x1E69BE640] exportPropertiesWithImageWidth:v7 imageHeight:v5 exifOrientation:_baseExifOrientation duration:?];

  return v9;
}

- (int64_t)_adjustmentBaseVersion
{
  imageDataNode = [(PUReviewInternalSaveNode *)self imageDataNode];
  version = [imageDataNode version];

  if (version == 8)
  {
    return 1;
  }

  imageDataNode2 = [(PUReviewInternalSaveNode *)self imageDataNode];
  v7 = [imageDataNode2 version] == 0;

  return 2 * v7;
}

- (double)_baseDuration
{
  imageDataNode = [(PUReviewInternalSaveNode *)self imageDataNode];
  asset = [imageDataNode asset];

  if ([asset isLivePhoto])
  {
    if (asset)
    {
      [asset photoIrisVideoDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    goto LABEL_8;
  }

  v4 = 0.0;
  if ([asset mediaType] == 2)
  {
    [asset duration];
LABEL_8:
    v4 = Seconds;
  }

  return v4;
}

- (int64_t)_baseExifOrientation
{
  imageDataNode = [(PUReviewInternalSaveNode *)self imageDataNode];
  imageExifOrientation = [imageDataNode imageExifOrientation];
  if ([imageDataNode version] == 1)
  {
    asset = [imageDataNode asset];
    imageExifOrientation = [asset originalEXIFOrientation];
  }

  return imageExifOrientation;
}

- (PUReviewInternalSaveNode)initWithDirectory:(id)directory imageDataNode:(id)node imageRenderNode:(id)renderNode videoURLNode:(id)lNode videoRenderNode:(id)videoRenderNode
{
  directoryCopy = directory;
  nodeCopy = node;
  renderNodeCopy = renderNode;
  lNodeCopy = lNode;
  obj = videoRenderNode;
  videoRenderNodeCopy = videoRenderNode;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = v17;
  if (nodeCopy)
  {
    [v17 addObject:{nodeCopy, obj, directoryCopy}];
  }

  if (renderNodeCopy)
  {
    [v18 addObject:renderNodeCopy];
  }

  if (lNodeCopy)
  {
    [v18 addObject:lNodeCopy];
  }

  if (videoRenderNodeCopy)
  {
    [v18 addObject:videoRenderNodeCopy];
  }

  v25.receiver = self;
  v25.super_class = PUReviewInternalSaveNode;
  v19 = [(PXRunNode *)&v25 initWithDependencies:v18, obj];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_directory, directory);
    objc_storeStrong(&v20->_imageDataNode, node);
    objc_storeStrong(&v20->_imageRenderNode, renderNode);
    objc_storeStrong(&v20->_videoURLNode, lNode);
    objc_storeStrong(&v20->_videoRenderNode, obja);
  }

  return v20;
}

@end