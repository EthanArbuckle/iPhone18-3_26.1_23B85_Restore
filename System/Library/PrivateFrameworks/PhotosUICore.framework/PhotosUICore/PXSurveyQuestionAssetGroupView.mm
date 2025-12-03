@interface PXSurveyQuestionAssetGroupView
- (NSMutableArray)imageViews;
- (OS_dispatch_queue)imageViewsQueue;
- (PXSurveyQuestionAssetGroupView)initWithAssetCollection:(id)collection customMaximumPreviewAssetCount:(id)count keyAssetLocalIdentifier:(id)identifier;
- (PXSurveyQuestionAssetGroupViewDelegate)delegate;
- (double)minXPositionForViewPosition:(unsigned __int8)position totalNumberOfViews:(unsigned __int8)views;
- (double)minYPositionForViewPosition:(unsigned __int8)position totalNumberOfViews:(unsigned __int8)views;
- (id)_arrangeAssetsForDisplay:(id)display;
- (id)_imageViewForPosition:(unsigned __int8)position totalViewCount:(unsigned __int8)count;
- (id)validCustomMaximumPreviewAssetCountForCustomMaximumPreviewAssetCount:(id)count;
- (unsigned)_getTotalViews;
- (unsigned)getHorizontalViewCountForTotalNumberOfViews:(unsigned __int8)views;
- (unsigned)getVerticalViewCountForTotalNumberOfViews:(unsigned __int8)views;
- (void)_beginImageFetchFromCollection;
- (void)_handleViewTap;
- (void)_loadAndApplyImagesFromAssets:(id)assets;
- (void)_setupMetadataView;
- (void)_setupViews;
- (void)setFrame:(CGRect)frame;
- (void)setFrameForSubview:(id)subview inPosition:(unsigned __int8)position;
@end

@implementation PXSurveyQuestionAssetGroupView

- (PXSurveyQuestionAssetGroupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)minYPositionForViewPosition:(unsigned __int8)position totalNumberOfViews:(unsigned __int8)views
{
  positionCopy = position;
  v6 = [(PXSurveyQuestionAssetGroupView *)self getVerticalViewCountForTotalNumberOfViews:views];
  result = 0.0;
  if (positionCopy > 6)
  {
    if ((positionCopy - 7) >= 3)
    {
      return result;
    }

    [(PXSurveyQuestionAssetGroupView *)self frame];
    v10 = v9 / 1.5;
    imagePadding = self->_imagePadding;
  }

  else
  {
    if ((positionCopy - 5) < 2)
    {
LABEL_6:
      [(PXSurveyQuestionAssetGroupView *)self frame];
      return v8 / 3.0 + self->_imagePadding * 0.5;
    }

    if (positionCopy == 3)
    {
      if (v6 != 2)
      {
        return result;
      }
    }

    else
    {
      if (positionCopy != 4)
      {
        return result;
      }

      if (v6 != 2)
      {
        goto LABEL_6;
      }
    }

    [(PXSurveyQuestionAssetGroupView *)self frame];
    imagePadding = v12 * 0.5;
    v10 = self->_imagePadding * 0.5;
  }

  return imagePadding + v10;
}

- (double)minXPositionForViewPosition:(unsigned __int8)position totalNumberOfViews:(unsigned __int8)views
{
  positionCopy = position;
  v6 = [(PXSurveyQuestionAssetGroupView *)self getHorizontalViewCountForTotalNumberOfViews:views];
  result = 0.0;
  if (positionCopy <= 9)
  {
    if (((1 << positionCopy) & 0x124) != 0)
    {
      if (v6 == 3)
      {
        [(PXSurveyQuestionAssetGroupView *)self frame];
        return v12 / 3.0 + self->_imagePadding * 0.5;
      }

      if (v6 != 2)
      {
LABEL_8:
        [(PXSurveyQuestionAssetGroupView *)self frame];
        v9 = v8 / 1.5;
        imagePadding = self->_imagePadding;
        return imagePadding + v9;
      }

LABEL_11:
      [(PXSurveyQuestionAssetGroupView *)self frame];
      imagePadding = v11 * 0.5;
      v9 = self->_imagePadding * 0.5;
      return imagePadding + v9;
    }

    if (((1 << positionCopy) & 0x248) != 0)
    {
      if (v6 == 2)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (positionCopy == 4 && v6 == 2)
    {
      goto LABEL_11;
    }
  }

  return result;
}

- (void)setFrameForSubview:(id)subview inPosition:(unsigned __int8)position
{
  subviewCopy = subview;
  [subviewCopy bounds];
  v5 = v4;
  [subviewCopy bounds];
  [subviewCopy setFrame:{0.0, 0.0, v5}];
}

- (unsigned)getHorizontalViewCountForTotalNumberOfViews:(unsigned __int8)views
{
  if (views == 9)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (views >= 5u)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (views >= 2u)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

- (unsigned)getVerticalViewCountForTotalNumberOfViews:(unsigned __int8)views
{
  if (views == 9)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (views == 4)
  {
    v3 = 2;
  }

  if (views < 3u)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (id)_imageViewForPosition:(unsigned __int8)position totalViewCount:(unsigned __int8)count
{
  countCopy = count;
  positionCopy = position;
  v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v9 = [(PXSurveyQuestionAssetGroupView *)self getHorizontalViewCountForTotalNumberOfViews:countCopy];
  v10 = [(PXSurveyQuestionAssetGroupView *)self getVerticalViewCountForTotalNumberOfViews:countCopy];
  [(PXSurveyQuestionAssetGroupView *)self frame];
  v12 = v11;
  if (v9 != 1)
  {
    v12 = v11 / v9 + self->_imagePadding * -0.5;
  }

  [(PXSurveyQuestionAssetGroupView *)self frame];
  if (v10)
  {
    v14 = v13 / v10;
  }

  else
  {
    v14 = v13 / 0.0 + self->_imagePadding * -0.5;
  }

  [(PXSurveyQuestionAssetGroupView *)self minXPositionForViewPosition:positionCopy totalNumberOfViews:countCopy];
  v16 = v15;
  [(PXSurveyQuestionAssetGroupView *)self minYPositionForViewPosition:positionCopy totalNumberOfViews:countCopy];
  [v8 setFrame:{v16, v17, v12, v14}];

  return v8;
}

- (void)_loadAndApplyImagesFromAssets:(id)assets
{
  assetsCopy = assets;
  presentedAssetIds = [(PXSurveyQuestionAssetGroupView *)self presentedAssetIds];
  [presentedAssetIds removeAllObjects];

  assetCollection = [(PXSurveyQuestionAssetGroupView *)self assetCollection];
  photoLibrary = [assetCollection photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v9 = [MEMORY[0x1E6978630] fetchAssetsWithUUIDs:assetsCopy options:librarySpecificFetchOptions];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke;
  v10[3] = &unk_1E773FD18;
  v10[4] = self;
  [v9 enumerateObjectsUsingBlock:v10];
}

void __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v7 = [*(a1 + 32) imageViewsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_2;
  block[3] = &unk_1E77458F8;
  v18 = v20;
  v19 = a3;
  block[4] = *(a1 + 32);
  v17 = v6;
  v8 = v6;
  dispatch_sync(v7, block);

  v9 = dispatch_get_global_queue(25, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_3;
  v12[3] = &unk_1E77458F8;
  v10 = *(a1 + 32);
  v14 = v20;
  v15 = a3;
  v12[4] = v10;
  v13 = v5;
  v11 = v5;
  dispatch_group_notify(v8, v9, v12);

  _Block_object_dispose(v20, 8);
}

void __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_2(void *a1)
{
  v2 = a1[7];
  *(*(a1[6] + 8) + 24) = v2 < [*(a1[4] + 448) count];
  v3 = a1[5];

  dispatch_group_leave(v3);
}

void __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_3(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v18 = v4;
    v19 = v3;
    v20 = v1;
    v21 = v2;
    v6 = objc_alloc_init(MEMORY[0x1E6978860]);
    v7 = [*(a1[4] + 448) objectAtIndexedSubscript:a1[7]];
    v8 = a1[5];
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_4;
    v15[3] = &unk_1E773FCF0;
    v13 = a1[5];
    v15[4] = a1[4];
    v16 = v13;
    v17 = v7;
    v14 = v7;
    [v6 requestImageForAsset:v8 targetSize:1 contentMode:0 options:v15 resultHandler:{v10, v12}];
  }
}

void __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) imageViewsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_5;
  block[3] = &unk_1E774C620;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v5;
  dispatch_sync(v4, block);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_6;
  v7[3] = &unk_1E774C620;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __64__PXSurveyQuestionAssetGroupView__loadAndApplyImagesFromAssets___block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) presentedAssetIds];
  v2 = [*(a1 + 40) localIdentifier];
  [v3 addObject:v2];
}

- (id)_arrangeAssetsForDisplay:(id)display
{
  v23[2] = *MEMORY[0x1E69E9840];
  displayCopy = display;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([displayCopy count] < 3 || objc_msgSend(displayCopy, "count") == 4 || objc_msgSend(displayCopy, "count") == 9)
  {
    v5 = displayCopy;

    v4 = v5;
    goto LABEL_5;
  }

  firstObject = [displayCopy firstObject];
  [v4 addObject:firstObject];

  [displayCopy removeObjectAtIndex:0];
  lastObject = 0;
  if ([displayCopy count] >= 2)
  {
    lastObject = [displayCopy lastObject];
    [displayCopy removeLastObject];
  }

  if ([displayCopy count] >= 4)
  {
    v9 = [displayCopy objectAtIndexedSubscript:0];
    v23[0] = v9;
    v10 = [displayCopy objectAtIndexedSubscript:1];
    v23[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    [v4 addObjectsFromArray:v11];

    if ([displayCopy count] >= 9)
    {
      v12 = ([displayCopy count] >> 1) - 1;
      v13 = [displayCopy objectAtIndexedSubscript:?];
      v22[0] = v13;
      v14 = [displayCopy objectAtIndexedSubscript:v12];
      v22[1] = v14;
      v15 = [displayCopy objectAtIndexedSubscript:v12];
      v22[2] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
      [v4 addObjectsFromArray:v16];
    }

    v17 = [displayCopy objectAtIndexedSubscript:{objc_msgSend(displayCopy, "count") - 2}];
    v18 = [displayCopy objectAtIndexedSubscript:{objc_msgSend(displayCopy, "count", v17) - 1}];
    v21[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v4 addObjectsFromArray:v19];

    if (!lastObject)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v20 = displayCopy;

  v4 = v20;
  if (lastObject)
  {
LABEL_16:
    [v4 addObject:lastObject];
  }

LABEL_17:

LABEL_5:

  return v4;
}

- (void)_beginImageFetchFromCollection
{
  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PXSurveyQuestionAssetGroupView__beginImageFetchFromCollection__block_invoke;
  block[3] = &unk_1E774B248;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__PXSurveyQuestionAssetGroupView__beginImageFetchFromCollection__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6978830]);
  [v2 setFetchLimit:9];
  [v2 setIncludeHiddenAssets:0];
  [v2 setIncludeAllBurstAssets:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__173608;
  v13 = __Block_byref_object_dispose__173609;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [*(a1 + 32) keyAssetLocalIdentifier];

  if (v3)
  {
    v4 = v10[5];
    v5 = [*(a1 + 32) keyAssetLocalIdentifier];
    [v4 addObject:v5];
  }

  else
  {
    v5 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(*(a1 + 32) + 440) options:v2];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PXSurveyQuestionAssetGroupView__beginImageFetchFromCollection__block_invoke_211;
    v8[3] = &unk_1E773FCC8;
    v8[4] = &v9;
    [v5 enumerateObjectsUsingBlock:v8];
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 _arrangeAssetsForDisplay:v10[5]];
  [v6 _loadAndApplyImagesFromAssets:v7];

  _Block_object_dispose(&v9, 8);
}

void __64__PXSurveyQuestionAssetGroupView__beginImageFetchFromCollection__block_invoke_211(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

- (void)_handleViewTap
{
  delegate = [(PXSurveyQuestionAssetGroupView *)self delegate];
  [delegate px_surveyQuestionAssetGroupViewWasTapped:self];
}

- (void)_setupMetadataView
{
  v67[2] = *MEMORY[0x1E69E9840];
  metadataView = [(PXSurveyQuestionAssetGroupView *)self metadataView];
  superview = [metadataView superview];

  if (!superview)
  {
    metadataView2 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
    [(PXSurveyQuestionAssetGroupView *)self addSubview:metadataView2];

    metadataView3 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
    layer = [metadataView3 layer];
    [layer setZPosition:1.79769313e308];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    locationLabel = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
    [locationLabel setTextColor:whiteColor];

    v10 = *MEMORY[0x1E69DB970];
    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB970]];
    locationLabel2 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
    [locationLabel2 setFont:v11];

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    dateRangeLabel = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
    [dateRangeLabel setTextColor:whiteColor2];

    v15 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:v10];
    dateRangeLabel2 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
    [dateRangeLabel2 setFont:v15];

    metadataView4 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
    [metadataView4 addSubview:self->_locationLabel];

    metadataView5 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
    [metadataView5 addSubview:self->_dateRangeLabel];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v67[0] = [clearColor CGColor];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v21 = [blackColor colorWithAlphaComponent:0.8];
    v67[1] = [v21 CGColor];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    metadataViewGradient = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [metadataViewGradient setColors:v22];

    [(PXSurveyQuestionAssetGroupView *)self bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    metadataViewGradient2 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [metadataViewGradient2 setFrame:{v25, v27, v29, v31}];

    metadataViewGradient3 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [metadataViewGradient3 setLocations:&unk_1F19111D0];

    metadataViewGradient4 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [metadataViewGradient4 setZPosition:1000.0];

    layer2 = [(PXSurveyQuestionAssetGroupView *)self layer];
    metadataViewGradient5 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [layer2 addSublayer:metadataViewGradient5];
  }

  [(PXSurveyQuestionAssetGroupView *)self bounds];
  v38 = v37 * 0.666;
  [(PXSurveyQuestionAssetGroupView *)self bounds];
  v40 = v39;
  [(PXSurveyQuestionAssetGroupView *)self bounds];
  v42 = v41 / 3.0;
  metadataView6 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
  [metadataView6 setFrame:{0.0, v38, v40, v42}];

  delegate = [(PXSurveyQuestionAssetGroupView *)self delegate];
  v45 = [delegate px_surveyQuestionAssetGroupViewMetadataLocationString:self];
  locationLabel3 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
  [locationLabel3 setText:v45];

  delegate2 = [(PXSurveyQuestionAssetGroupView *)self delegate];
  v48 = [delegate2 px_surveyQuestionAssetGroupViewMetadataDateRangeStringWithFormatter:self->_dateFormatter assetGroupView:self];
  dateRangeLabel3 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
  [dateRangeLabel3 setText:v48];

  locationLabel4 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
  text = [locationLabel4 text];
  if ([text length])
  {
    goto LABEL_6;
  }

  delegate3 = [(PXSurveyQuestionAssetGroupView *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    locationLabel4 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonExhaustiveMomentLabelingNoLocation", @"PhotosUICore");
    text = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
    [text setText:locationLabel4];
LABEL_6:
  }

  metadataView7 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
  [metadataView7 bounds];
  v56 = v55 + -40.0;
  metadataView8 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
  [metadataView8 bounds];
  v59 = v58 + -20.0;
  dateRangeLabel4 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
  [dateRangeLabel4 setFrame:{10.0, v56, v59, 40.0}];

  dateRangeLabel5 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
  [dateRangeLabel5 frame];
  v63 = v62 + -20.0;
  [(PXSurveyQuestionAssetGroupView *)self bounds];
  v65 = v64 + -20.0;
  locationLabel5 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
  [locationLabel5 setFrame:{10.0, v63, v65, 40.0}];
}

- (void)_setupViews
{
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(PXSurveyQuestionAssetGroupView *)self setBackgroundColor:systemGroupedBackgroundColor];

  _getTotalViews = [(PXSurveyQuestionAssetGroupView *)self _getTotalViews];
  v5 = dispatch_group_create();
  if (_getTotalViews)
  {
    v6 = 1;
    do
    {
      dispatch_group_enter(v5);
      v7 = [(PXSurveyQuestionAssetGroupView *)self _imageViewForPosition:v6 totalViewCount:_getTotalViews];
      [v7 setContentMode:2];
      [v7 setClipsToBounds:1];
      if (v6)
      {
        [MEMORY[0x1E69DC888] secondarySystemFillColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] quaternaryLabelColor];
      }
      v8 = ;
      [v7 setBackgroundColor:v8];

      imageViewsQueue = [(PXSurveyQuestionAssetGroupView *)self imageViewsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PXSurveyQuestionAssetGroupView__setupViews__block_invoke;
      block[3] = &unk_1E774A1B8;
      block[4] = self;
      v13 = v7;
      v14 = v5;
      v10 = v7;
      dispatch_sync(imageViewsQueue, block);

      ++v6;
    }

    while (_getTotalViews >= v6);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PXSurveyQuestionAssetGroupView__setupViews__block_invoke_3;
  v11[3] = &unk_1E774C648;
  v11[4] = self;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v11);
  [(PXSurveyQuestionAssetGroupView *)self _setupMetadataView];
}

void __45__PXSurveyQuestionAssetGroupView__setupViews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageViews];
  [v2 addObject:*(a1 + 40)];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PXSurveyQuestionAssetGroupView__setupViews__block_invoke_2;
  block[3] = &unk_1E774A1B8;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__PXSurveyQuestionAssetGroupView__setupViews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (unsigned)_getTotalViews
{
  customMaximumPreviewAssetCount = self->_customMaximumPreviewAssetCount;
  if (customMaximumPreviewAssetCount)
  {
    return [(NSNumber *)customMaximumPreviewAssetCount intValue];
  }

  if ([(PHAssetCollection *)self->_assetCollection estimatedAssetCount]< 2)
  {
    return 1;
  }

  if ([(PHAssetCollection *)self->_assetCollection estimatedAssetCount]< 4)
  {
    return 2;
  }

  if ([(PHAssetCollection *)self->_assetCollection estimatedAssetCount]>= 9)
  {
    return 9;
  }

  return 4;
}

- (NSMutableArray)imageViews
{
  imageViews = self->_imageViews;
  if (!imageViews)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_imageViews;
    self->_imageViews = v4;

    imageViews = self->_imageViews;
  }

  return imageViews;
}

- (OS_dispatch_queue)imageViewsQueue
{
  imageViewsQueue = self->_imageViewsQueue;
  if (!imageViewsQueue)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v5 = dispatch_queue_create("com.apple.photos.ui.photosChallenge.imageViewsQueue", v4);
    v6 = self->_imageViewsQueue;
    self->_imageViewsQueue = v5;

    imageViewsQueue = self->_imageViewsQueue;
  }

  return imageViewsQueue;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PXSurveyQuestionAssetGroupView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v18.receiver = self;
  v18.super_class = PXSurveyQuestionAssetGroupView;
  [(PXSurveyQuestionAssetGroupView *)&v18 setFrame:x, y, width, height];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  if (!CGRectEqualToRect(v19, v20))
  {
    imageViewsQueue = [(PXSurveyQuestionAssetGroupView *)self imageViewsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PXSurveyQuestionAssetGroupView_setFrame___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_sync(imageViewsQueue, block);
  }
}

void __43__PXSurveyQuestionAssetGroupView_setFrame___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 448) count])
  {
    [*(*(a1 + 32) + 448) enumerateObjectsUsingBlock:&__block_literal_global_173628];
    [*(*(a1 + 32) + 448) removeAllObjects];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PXSurveyQuestionAssetGroupView_setFrame___block_invoke_3;
  block[3] = &unk_1E774C648;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)validCustomMaximumPreviewAssetCountForCustomMaximumPreviewAssetCount:(id)count
{
  countCopy = count;
  v4 = countCopy;
  if (countCopy)
  {
    intValue = [countCopy intValue];
    if (intValue <= 9 && ((1 << intValue) & 0x216) != 0)
    {
      v6 = v4;
      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PXSurveyQuestionAssetGroupView] invalid customMaximumPreviewAssetCount input. Must be 1, 2, 4, or 9.", v8, 2u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (PXSurveyQuestionAssetGroupView)initWithAssetCollection:(id)collection customMaximumPreviewAssetCount:(id)count keyAssetLocalIdentifier:(id)identifier
{
  collectionCopy = collection;
  countCopy = count;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = PXSurveyQuestionAssetGroupView;
  v12 = [(PXSurveyQuestionAssetGroupView *)&v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollection, collection);
    v13->_imagePadding = 2.0;
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    presentedAssetIds = v13->_presentedAssetIds;
    v13->_presentedAssetIds = v14;

    v16 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v13->_dateFormatter;
    v13->_dateFormatter = v16;

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [(NSDateFormatter *)v13->_dateFormatter setLocale:currentLocale];

    [(NSDateFormatter *)v13->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)v13->_dateFormatter setTimeStyle:0];
    v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
    metadataView = v13->_metadataView;
    v13->_metadataView = v19;

    layer = [MEMORY[0x1E6979380] layer];
    metadataViewGradient = v13->_metadataViewGradient;
    v13->_metadataViewGradient = layer;

    v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    locationLabel = v13->_locationLabel;
    v13->_locationLabel = v23;

    v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dateRangeLabel = v13->_dateRangeLabel;
    v13->_dateRangeLabel = v25;

    v27 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v13 action:sel__handleViewTap];
    [(PXSurveyQuestionAssetGroupView *)v13 addGestureRecognizer:v27];
    v28 = [(PXSurveyQuestionAssetGroupView *)v13 validCustomMaximumPreviewAssetCountForCustomMaximumPreviewAssetCount:countCopy];
    customMaximumPreviewAssetCount = v13->_customMaximumPreviewAssetCount;
    v13->_customMaximumPreviewAssetCount = v28;

    objc_storeStrong(&v13->_keyAssetLocalIdentifier, identifier);
  }

  return v13;
}

@end