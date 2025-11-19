@interface PUReviewInternalSaveNode
- (CGSize)baseImageSize;
- (CGSize)renderedImageSize;
- (CGSize)renderedVideoSize;
- (PUReviewInternalSaveNode)initWithDirectory:(id)a3 imageDataNode:(id)a4 imageRenderNode:(id)a5 videoURLNode:(id)a6 videoRenderNode:(id)a7;
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
  v8 = [(PUReviewInternalSaveNode *)self directory];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v113 = 0;
  [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v113];
  v10 = v113;

  v98 = v10;
  if (v10)
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v115 = v8;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Failed to create working directory for saving at URL %@", buf, 0xCu);
    }
  }

  v12 = [(PUReviewInternalSaveNode *)self imageDataNode];
  v104 = [(PUReviewInternalSaveNode *)self videoURLNode];
  v13 = [(PUReviewInternalSaveNode *)self imageRenderNode];
  v14 = [(PUReviewInternalSaveNode *)self videoRenderNode];
  v15 = [v12 imageDataURL];
  v16 = v15;
  v17 = off_1E7B6E000;
  if (v15)
  {
    v18 = [v15 pathExtension];
    v19 = [PUReviewAsset fileURLForFullsizeImageInDirectory:v8 extension:v18];

    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v112 = 0;
    v93 = v19;
    v21 = [v20 copyItemAtURL:v16 toURL:v19 error:&v112];
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
  v26 = [v13 imageData];
  [v13 baseImageSize];
  v28 = v27;
  v30 = v29;
  [v13 renderedImageSize];
  v32 = v31;
  v34 = v33;
  v105 = v14;
  v99 = v26;
  v97 = v12;
  v95 = v16;
  v96 = v13;
  if (v26)
  {
    v35 = v8;
    v36 = v12;
    v37 = [(PUReviewInternalSaveNode *)self _exportProperties];
    v38 = objc_alloc_init(MEMORY[0x1E69BE650]);
    v39 = [v13 compositionController];
    v110 = 0;
    v111 = 0;
    v40 = [v38 dataFromCompositionController:v39 outFormatIdentifier:&v111 outFormatVersion:&v110 exportProperties:v37];
    v101 = v111;
    v100 = v110;

    v103 = v40;
    if (!v40)
    {
      v55 = [v36 asset];
      v56 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = [v13 compositionController];
        *buf = 138412546;
        v115 = v55;
        v116 = 2112;
        v117 = v57;
        _os_log_impl(&dword_1B36F3000, v56, OS_LOG_TYPE_ERROR, "Error generating the adjustments data for asset:%@ compositionController:%@", buf, 0x16u);
      }

      [(PXRunNode *)self cancel];
      v41 = 0;
      v103 = 0;
      v58 = 0;
      v43 = v24;
      v42 = v25;
      v17 = off_1E7B6E000;
      v8 = v35;
      v14 = v105;
      goto LABEL_31;
    }

    v41 = [(__objc2_class *)v17[151] fileURLForFullsizeRenderImageInDirectory:v35 extension:@"jpg"];
    [v99 writeToURL:v41 atomically:1];
    v42 = v34;
    v43 = v32;
    v24 = v28;
    v25 = v30;
    v12 = v36;
LABEL_18:

    if (v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v104;
    }

    v37 = [v54 asset];
    v8 = v35;
    v59 = [v37 playbackVariation] - 1;
    v14 = v105;
    if (v59 > 2)
    {
      v60 = 0;
    }

    else
    {
      v60 = dword_1B3D0D680[v59];
    }

    v61 = [(PUReviewInternalSaveNode *)self _adjustmentBaseVersion];
    v38 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:v101 formatVersion:v100 data:v103 baseVersion:v61 editorBundleID:0 renderTypes:v60];
    v62 = [v38 propertyListDictionary];
    if (v62)
    {
      v58 = [(__objc2_class *)v17[151] fileURLForAdjustmentsInDirectory:v8];
      [v62 writeToURL:v58 atomically:1];
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

  if (v14)
  {
    v44 = MEMORY[0x1E69BE360];
    v45 = [v14 compositionController];
    [v44 synchronousInputSizeForCompositionController:v45];
    v47 = v46;
    v49 = v48;

    [v14 renderedVideoSize];
    v32 = v50;
    v34 = v51;
    v37 = [(PUReviewInternalSaveNode *)self _exportProperties];
    v38 = objc_alloc_init(MEMORY[0x1E69BE650]);
    v52 = [v14 compositionController];
    v108 = 0;
    v109 = 0;
    v53 = [v38 dataFromCompositionController:v52 outFormatIdentifier:&v109 outFormatVersion:&v108 exportProperties:v37];
    v101 = v109;
    v100 = v108;

    v103 = v53;
    if (!v53)
    {
      v90 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v91 = [v14 videoURL];
        v92 = [v14 compositionController];
        *buf = 138412546;
        v115 = v91;
        v116 = 2112;
        v117 = v92;
        _os_log_impl(&dword_1B36F3000, v90, OS_LOG_TYPE_ERROR, "Error generating the adjustments data for video:%@ compositionController:%@", buf, 0x16u);

        v14 = v105;
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

    v35 = v8;
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
  v63 = [v104 videoURL];
  v64 = [v104 asset];
  v65 = [v64 isLivePhoto];

  v102 = v8;
  if (v63)
  {
    v66 = v17[151];
    if (v65)
    {
      v67 = [(__objc2_class *)v17[151] fileURLForFullsizeVideoComplementInDirectory:v8];
    }

    else
    {
      v68 = [v63 pathExtension];
      v67 = [(__objc2_class *)v66 fileURLForFullsizeVideoInDirectory:v8 extension:v68];
    }

    v69 = [MEMORY[0x1E696AC08] defaultManager];
    v107 = 0;
    v70 = [v69 copyItemAtURL:v63 toURL:v67 error:&v107];
    v71 = v107;

    v14 = v105;
    if ((v70 & 1) == 0)
    {
      v72 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v115 = v63;
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

  v73 = [v14 videoURL];
  if (v73)
  {
    v74 = v17[151];
    if (v65)
    {
      [(__objc2_class *)v74 fileURLForFullsizeRenderVideoComplementInDirectory:v102];
    }

    else
    {
      [(__objc2_class *)v74 fileURLForFullsizeRenderVideoInDirectory:v102];
    }
    v75 = ;
    v76 = [MEMORY[0x1E696AC08] defaultManager];
    v106 = 0;
    v77 = [v76 copyItemAtURL:v73 toURL:v75 error:&v106];
    v78 = v106;

    if ((v77 & 1) == 0)
    {
      v79 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v115 = v73;
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
  v3 = [(PUReviewInternalSaveNode *)self imageRenderNode];
  [v3 baseImageSize];
  v5 = llround(v4);
  v7 = llround(v6);
  v8 = [(PUReviewInternalSaveNode *)self _baseExifOrientation];
  [(PUReviewInternalSaveNode *)self _baseDuration];
  v9 = [MEMORY[0x1E69BE640] exportPropertiesWithImageWidth:v7 imageHeight:v5 exifOrientation:v8 duration:?];

  return v9;
}

- (int64_t)_adjustmentBaseVersion
{
  v3 = [(PUReviewInternalSaveNode *)self imageDataNode];
  v4 = [v3 version];

  if (v4 == 8)
  {
    return 1;
  }

  v6 = [(PUReviewInternalSaveNode *)self imageDataNode];
  v7 = [v6 version] == 0;

  return 2 * v7;
}

- (double)_baseDuration
{
  v2 = [(PUReviewInternalSaveNode *)self imageDataNode];
  v3 = [v2 asset];

  if ([v3 isLivePhoto])
  {
    if (v3)
    {
      [v3 photoIrisVideoDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    goto LABEL_8;
  }

  v4 = 0.0;
  if ([v3 mediaType] == 2)
  {
    [v3 duration];
LABEL_8:
    v4 = Seconds;
  }

  return v4;
}

- (int64_t)_baseExifOrientation
{
  v2 = [(PUReviewInternalSaveNode *)self imageDataNode];
  v3 = [v2 imageExifOrientation];
  if ([v2 version] == 1)
  {
    v4 = [v2 asset];
    v3 = [v4 originalEXIFOrientation];
  }

  return v3;
}

- (PUReviewInternalSaveNode)initWithDirectory:(id)a3 imageDataNode:(id)a4 imageRenderNode:(id)a5 videoURLNode:(id)a6 videoRenderNode:(id)a7
{
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  obj = a7;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = v17;
  if (v13)
  {
    [v17 addObject:{v13, obj, v24}];
  }

  if (v14)
  {
    [v18 addObject:v14];
  }

  if (v15)
  {
    [v18 addObject:v15];
  }

  if (v16)
  {
    [v18 addObject:v16];
  }

  v25.receiver = self;
  v25.super_class = PUReviewInternalSaveNode;
  v19 = [(PXRunNode *)&v25 initWithDependencies:v18, obj];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_directory, a3);
    objc_storeStrong(&v20->_imageDataNode, a4);
    objc_storeStrong(&v20->_imageRenderNode, a5);
    objc_storeStrong(&v20->_videoURLNode, a6);
    objc_storeStrong(&v20->_videoRenderNode, obja);
  }

  return v20;
}

@end