@interface PUReviewCreateAssetNode
- (PUReviewCreateAssetNode)initWithInputAsset:(id)a3 imageInfoNode:(id)a4 renderImageInfoNode:(id)a5 renderImageDataNode:(id)a6 videoURLNode:(id)a7 videoAssetNode:(id)a8 renderVideoURLNode:(id)a9 renderVideoAssetNode:(id)a10 adjustmentURLNode:(id)a11;
- (void)run;
@end

@implementation PUReviewCreateAssetNode

- (void)run
{
  reviewAsset = self->_reviewAsset;
  self->_reviewAsset = 0;

  v4 = [(PUReviewCreateAssetNode *)self inputAsset];
  url = [(PUReviewImageURLNode *)self->_imageInfoNode providedFullsizeImageURL];
  v5 = [(PUImageInfoNode *)self->_renderImageInfoNode imageDataURL];
  v6 = [(PUReviewVideoURLNode *)self->_videoURLNode providedVideoURL];
  v7 = [(PUVideoAssetNode *)self->_videoAssetNode videoAsset];
  v59 = [(PUVideoURLExportNode *)self->_renderVideoURLNode videoURL];
  v57 = [(PUVideoAssetNode *)self->_renderVideoAssetNode videoAsset];
  v56 = [(PUAdjustmentURLNode *)self->_adjustmentURLNode adjustmentURL];
  v8 = [v4 pixelWidth];
  v9 = [v4 pixelHeight];
  v10 = !self->_renderImageInfoNode && !self->_renderImageDataNode && !self->_renderVideoURLNode && self->_renderVideoAssetNode == 0;
  v11 = v8;
  v12 = v9;
  v55 = v7;
  if ([v4 mediaType] == 1)
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
        v33 = v7;
        if (v33)
        {
          goto LABEL_30;
        }

        v32 = v6;
        if (!v6)
        {
          goto LABEL_30;
        }

LABEL_29:
        v33 = [MEMORY[0x1E6987E28] assetWithURL:v32];
        goto LABEL_30;
      }

      v14 = v13;
      v15 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
      v16 = v15;
      if (v15)
      {
        v65 = 0;
        v66[0] = 0;
        v64 = 0;
        MEMORY[0x1B8C6C120](v15, v66, &v65, &v64);
        v17 = v66[0];
        v52 = v65;
        v54 = v6;
        v18 = v64;
        [v52 unsignedIntegerValue];
        [v18 unsignedIntegerValue];
        [v17 shortValue];

        PLOrientationTransformImageSize();
        v11 = v19;
        v12 = v20;

        v6 = v54;
      }

      CFRelease(v14);
LABEL_15:

      v7 = v55;
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

  if ([v4 mediaType] == 2)
  {
    if (v10)
    {
      v21 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v7];
      v16 = [v21 firstObject];

      if (v16)
      {
        [v16 naturalSize];
        v23 = v22;
        v25 = v24;
        v62 = 0u;
        v63 = 0u;
        [v16 preferredTransform];
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
  v33 = v57;
  if (!v33)
  {
    v32 = v59;
    if (v59)
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
    [v4 duration];
  }

  v36 = Seconds;
  v37 = [v4 playbackStyle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v28;
    v53 = v27;
    v38 = v6;
    v39 = [objc_alloc(MEMORY[0x1E69C0660]) initWithURL:v56];
    v40 = v4;
    v41 = [v40 providedPreviewImage];
    [v40 duration];
    v43 = v37 != 4 || v36 == v42;
    if (!v43 || v37 == 5)
    {
      v50 = v5;
      v45 = v59;
      if (!v59)
      {
        v45 = v38;
      }

      v46 = [v45 path];
      PLPreviewImageAndDurationForVideoAtPath();
      v47 = v41;

      v41 = v47;
      v44 = v50;
    }

    else
    {
      v44 = v5;
    }

    v5 = v44;
    v48 = [[PUReviewAsset alloc] initWithReviewAsset:v40 baseImageURL:url renderedImageURL:v44 baseVideoURL:v38 renderedVideoURL:v59 previewImage:v41 pixelWidth:v36 pixelHeight:v53 assetAdjustments:v51 duration:v39];
    v49 = self->_reviewAsset;
    self->_reviewAsset = v48;

    [(PXRunNode *)self completeWithError:0];
    v6 = v38;
  }
}

- (PUReviewCreateAssetNode)initWithInputAsset:(id)a3 imageInfoNode:(id)a4 renderImageInfoNode:(id)a5 renderImageDataNode:(id)a6 videoURLNode:(id)a7 videoAssetNode:(id)a8 renderVideoURLNode:(id)a9 renderVideoAssetNode:(id)a10 adjustmentURLNode:(id)a11
{
  v38 = a3;
  v33 = a4;
  v17 = a4;
  v34 = a5;
  v18 = a5;
  v35 = a6;
  v19 = a6;
  v36 = a7;
  v20 = a7;
  v37 = a8;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = v25;
  if (v17)
  {
    [v25 addObject:v17];
  }

  if (v18)
  {
    [v26 addObject:v18];
  }

  if (v19)
  {
    [v26 addObject:v19];
  }

  if (v20)
  {
    [v26 addObject:v20];
  }

  if (v21)
  {
    [v26 addObject:v21];
  }

  if (v22)
  {
    [v26 addObject:v22];
  }

  if (v23)
  {
    [v26 addObject:v23];
  }

  if (v24)
  {
    [v26 addObject:v24];
  }

  v39.receiver = self;
  v39.super_class = PUReviewCreateAssetNode;
  v27 = [(PXRunNode *)&v39 initWithDependencies:v26];
  if (v27)
  {
    if (!v38 || !v17 && !v18 && !v19 && !v20 && !v22 && !v24)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:a2 object:v27 file:@"PUReviewCreateAssetNode.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"inputAsset && (imageInfoNode || renderImageInfoNode || renderImageDataNode || videoURLNode || renderVideoURLNode || adjustmentURLNode)"}];
    }

    objc_storeStrong(&v27->_inputAsset, a3);
    objc_storeStrong(&v27->_imageInfoNode, v33);
    objc_storeStrong(&v27->_renderImageInfoNode, v34);
    objc_storeStrong(&v27->_renderImageDataNode, v35);
    objc_storeStrong(&v27->_videoURLNode, v36);
    objc_storeStrong(&v27->_videoAssetNode, v37);
    objc_storeStrong(&v27->_renderVideoURLNode, a9);
    objc_storeStrong(&v27->_renderVideoAssetNode, a10);
    objc_storeStrong(&v27->_adjustmentURLNode, a11);
    v28 = v27;
  }

  return v27;
}

@end