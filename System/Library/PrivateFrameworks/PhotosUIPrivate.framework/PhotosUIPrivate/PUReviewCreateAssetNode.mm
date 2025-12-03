@interface PUReviewCreateAssetNode
- (PUReviewCreateAssetNode)initWithInputAsset:(id)asset imageInfoNode:(id)node renderImageInfoNode:(id)infoNode renderImageDataNode:(id)dataNode videoURLNode:(id)lNode videoAssetNode:(id)assetNode renderVideoURLNode:(id)rLNode renderVideoAssetNode:(id)self0 adjustmentURLNode:(id)self1;
- (void)run;
@end

@implementation PUReviewCreateAssetNode

- (void)run
{
  reviewAsset = self->_reviewAsset;
  self->_reviewAsset = 0;

  inputAsset = [(PUReviewCreateAssetNode *)self inputAsset];
  url = [(PUReviewImageURLNode *)self->_imageInfoNode providedFullsizeImageURL];
  imageDataURL = [(PUImageInfoNode *)self->_renderImageInfoNode imageDataURL];
  providedVideoURL = [(PUReviewVideoURLNode *)self->_videoURLNode providedVideoURL];
  videoAsset = [(PUVideoAssetNode *)self->_videoAssetNode videoAsset];
  videoURL = [(PUVideoURLExportNode *)self->_renderVideoURLNode videoURL];
  videoAsset2 = [(PUVideoAssetNode *)self->_renderVideoAssetNode videoAsset];
  adjustmentURL = [(PUAdjustmentURLNode *)self->_adjustmentURLNode adjustmentURL];
  pixelWidth = [inputAsset pixelWidth];
  pixelHeight = [inputAsset pixelHeight];
  v10 = !self->_renderImageInfoNode && !self->_renderImageDataNode && !self->_renderVideoURLNode && self->_renderVideoAssetNode == 0;
  v11 = pixelWidth;
  v12 = pixelHeight;
  v55 = videoAsset;
  if ([inputAsset mediaType] == 1)
  {
    if (v10)
    {
      v13 = CGImageSourceCreateWithURL(url, 0);
      if (!v13)
      {
LABEL_16:
        v27 = v11;
        v28 = v12;
LABEL_20:
        v33 = videoAsset;
        if (v33)
        {
          goto LABEL_30;
        }

        v32 = providedVideoURL;
        if (!providedVideoURL)
        {
          goto LABEL_30;
        }

LABEL_29:
        v33 = [MEMORY[0x1E6987E28] assetWithURL:v32];
        goto LABEL_30;
      }

      v14 = v13;
      v15 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
      firstObject = v15;
      if (v15)
      {
        v65 = 0;
        v66[0] = 0;
        v64 = 0;
        MEMORY[0x1B8C6C120](v15, v66, &v65, &v64);
        v17 = v66[0];
        v52 = v65;
        v54 = providedVideoURL;
        v18 = v64;
        [v52 unsignedIntegerValue];
        [v18 unsignedIntegerValue];
        [v17 shortValue];

        PLOrientationTransformImageSize();
        v11 = v19;
        v12 = v20;

        providedVideoURL = v54;
      }

      CFRelease(v14);
LABEL_15:

      videoAsset = v55;
      goto LABEL_16;
    }

    renderImageDataNode = self->_renderImageDataNode;
    if (!renderImageDataNode)
    {
      goto LABEL_26;
    }

    [(PUImageDataRenderNode *)renderImageDataNode renderedImageSize];
LABEL_25:
    v11 = v30;
    v12 = v31;
LABEL_26:
    v27 = v11;
    v28 = v12;
    goto LABEL_27;
  }

  if ([inputAsset mediaType] == 2)
  {
    if (v10)
    {
      v21 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:videoAsset];
      firstObject = [v21 firstObject];

      if (firstObject)
      {
        [firstObject naturalSize];
        v23 = v22;
        v25 = v24;
        v62 = 0u;
        v63 = 0u;
        [firstObject preferredTransform];
        v26 = v25 * 0.0 + 0.0 * v23;
        v11 = fabs(v26);
        v12 = v11;
      }

      goto LABEL_15;
    }

    renderVideoURLNode = self->_renderVideoURLNode;
    if (!renderVideoURLNode)
    {
      goto LABEL_26;
    }

    [(PUVideoURLExportNode *)renderVideoURLNode renderedVideoSize];
    goto LABEL_25;
  }

  v27 = v11;
  v28 = v12;
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_27:
  v33 = videoAsset2;
  if (!v33)
  {
    v32 = videoURL;
    if (videoURL)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v61 = 0uLL;
  *&v62 = 0;
  if (v33 && ([v33 duration], (BYTE12(v61) & 0x1D) == 1))
  {
    *&time.value = v61;
    time.epoch = v62;
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    [inputAsset duration];
  }

  v36 = Seconds;
  playbackStyle = [inputAsset playbackStyle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v28;
    v53 = v27;
    v38 = providedVideoURL;
    v39 = [objc_alloc(MEMORY[0x1E69C0660]) initWithURL:adjustmentURL];
    v40 = inputAsset;
    providedPreviewImage = [v40 providedPreviewImage];
    [v40 duration];
    v43 = playbackStyle != 4 || v36 == v42;
    if (!v43 || playbackStyle == 5)
    {
      v50 = imageDataURL;
      v45 = videoURL;
      if (!videoURL)
      {
        v45 = v38;
      }

      path = [v45 path];
      PLPreviewImageAndDurationForVideoAtPath();
      v47 = providedPreviewImage;

      providedPreviewImage = v47;
      v44 = v50;
    }

    else
    {
      v44 = imageDataURL;
    }

    imageDataURL = v44;
    v48 = [[PUReviewAsset alloc] initWithReviewAsset:v40 baseImageURL:url renderedImageURL:v44 baseVideoURL:v38 renderedVideoURL:videoURL previewImage:providedPreviewImage pixelWidth:v36 pixelHeight:v53 assetAdjustments:v51 duration:v39];
    v49 = self->_reviewAsset;
    self->_reviewAsset = v48;

    [(PXRunNode *)self completeWithError:0];
    providedVideoURL = v38;
  }
}

- (PUReviewCreateAssetNode)initWithInputAsset:(id)asset imageInfoNode:(id)node renderImageInfoNode:(id)infoNode renderImageDataNode:(id)dataNode videoURLNode:(id)lNode videoAssetNode:(id)assetNode renderVideoURLNode:(id)rLNode renderVideoAssetNode:(id)self0 adjustmentURLNode:(id)self1
{
  assetCopy = asset;
  nodeCopy = node;
  nodeCopy2 = node;
  infoNodeCopy = infoNode;
  infoNodeCopy2 = infoNode;
  dataNodeCopy = dataNode;
  dataNodeCopy2 = dataNode;
  lNodeCopy = lNode;
  lNodeCopy2 = lNode;
  assetNodeCopy = assetNode;
  assetNodeCopy2 = assetNode;
  rLNodeCopy = rLNode;
  videoAssetNodeCopy = videoAssetNode;
  uRLNodeCopy = uRLNode;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = v25;
  if (nodeCopy2)
  {
    [v25 addObject:nodeCopy2];
  }

  if (infoNodeCopy2)
  {
    [v26 addObject:infoNodeCopy2];
  }

  if (dataNodeCopy2)
  {
    [v26 addObject:dataNodeCopy2];
  }

  if (lNodeCopy2)
  {
    [v26 addObject:lNodeCopy2];
  }

  if (assetNodeCopy2)
  {
    [v26 addObject:assetNodeCopy2];
  }

  if (rLNodeCopy)
  {
    [v26 addObject:rLNodeCopy];
  }

  if (videoAssetNodeCopy)
  {
    [v26 addObject:videoAssetNodeCopy];
  }

  if (uRLNodeCopy)
  {
    [v26 addObject:uRLNodeCopy];
  }

  v39.receiver = self;
  v39.super_class = PUReviewCreateAssetNode;
  v27 = [(PXRunNode *)&v39 initWithDependencies:v26];
  if (v27)
  {
    if (!assetCopy || !nodeCopy2 && !infoNodeCopy2 && !dataNodeCopy2 && !lNodeCopy2 && !rLNodeCopy && !uRLNodeCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v27 file:@"PUReviewCreateAssetNode.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"inputAsset && (imageInfoNode || renderImageInfoNode || renderImageDataNode || videoURLNode || renderVideoURLNode || adjustmentURLNode)"}];
    }

    objc_storeStrong(&v27->_inputAsset, asset);
    objc_storeStrong(&v27->_imageInfoNode, nodeCopy);
    objc_storeStrong(&v27->_renderImageInfoNode, infoNodeCopy);
    objc_storeStrong(&v27->_renderImageDataNode, dataNodeCopy);
    objc_storeStrong(&v27->_videoURLNode, lNodeCopy);
    objc_storeStrong(&v27->_videoAssetNode, assetNodeCopy);
    objc_storeStrong(&v27->_renderVideoURLNode, rLNode);
    objc_storeStrong(&v27->_renderVideoAssetNode, videoAssetNode);
    objc_storeStrong(&v27->_adjustmentURLNode, uRLNode);
    v28 = v27;
  }

  return v27;
}

@end