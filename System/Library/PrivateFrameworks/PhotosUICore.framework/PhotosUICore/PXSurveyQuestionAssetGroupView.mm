@interface PXSurveyQuestionAssetGroupView
- (NSMutableArray)imageViews;
- (OS_dispatch_queue)imageViewsQueue;
- (PXSurveyQuestionAssetGroupView)initWithAssetCollection:(id)a3 customMaximumPreviewAssetCount:(id)a4 keyAssetLocalIdentifier:(id)a5;
- (PXSurveyQuestionAssetGroupViewDelegate)delegate;
- (double)minXPositionForViewPosition:(unsigned __int8)a3 totalNumberOfViews:(unsigned __int8)a4;
- (double)minYPositionForViewPosition:(unsigned __int8)a3 totalNumberOfViews:(unsigned __int8)a4;
- (id)_arrangeAssetsForDisplay:(id)a3;
- (id)_imageViewForPosition:(unsigned __int8)a3 totalViewCount:(unsigned __int8)a4;
- (id)validCustomMaximumPreviewAssetCountForCustomMaximumPreviewAssetCount:(id)a3;
- (unsigned)_getTotalViews;
- (unsigned)getHorizontalViewCountForTotalNumberOfViews:(unsigned __int8)a3;
- (unsigned)getVerticalViewCountForTotalNumberOfViews:(unsigned __int8)a3;
- (void)_beginImageFetchFromCollection;
- (void)_handleViewTap;
- (void)_loadAndApplyImagesFromAssets:(id)a3;
- (void)_setupMetadataView;
- (void)_setupViews;
- (void)setFrame:(CGRect)a3;
- (void)setFrameForSubview:(id)a3 inPosition:(unsigned __int8)a4;
@end

@implementation PXSurveyQuestionAssetGroupView

- (PXSurveyQuestionAssetGroupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)minYPositionForViewPosition:(unsigned __int8)a3 totalNumberOfViews:(unsigned __int8)a4
{
  v4 = a3;
  v6 = [(PXSurveyQuestionAssetGroupView *)self getVerticalViewCountForTotalNumberOfViews:a4];
  result = 0.0;
  if (v4 > 6)
  {
    if ((v4 - 7) >= 3)
    {
      return result;
    }

    [(PXSurveyQuestionAssetGroupView *)self frame];
    v10 = v9 / 1.5;
    imagePadding = self->_imagePadding;
  }

  else
  {
    if ((v4 - 5) < 2)
    {
LABEL_6:
      [(PXSurveyQuestionAssetGroupView *)self frame];
      return v8 / 3.0 + self->_imagePadding * 0.5;
    }

    if (v4 == 3)
    {
      if (v6 != 2)
      {
        return result;
      }
    }

    else
    {
      if (v4 != 4)
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

- (double)minXPositionForViewPosition:(unsigned __int8)a3 totalNumberOfViews:(unsigned __int8)a4
{
  v4 = a3;
  v6 = [(PXSurveyQuestionAssetGroupView *)self getHorizontalViewCountForTotalNumberOfViews:a4];
  result = 0.0;
  if (v4 <= 9)
  {
    if (((1 << v4) & 0x124) != 0)
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

    if (((1 << v4) & 0x248) != 0)
    {
      if (v6 == 2)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (v4 == 4 && v6 == 2)
    {
      goto LABEL_11;
    }
  }

  return result;
}

- (void)setFrameForSubview:(id)a3 inPosition:(unsigned __int8)a4
{
  v6 = a3;
  [v6 bounds];
  v5 = v4;
  [v6 bounds];
  [v6 setFrame:{0.0, 0.0, v5}];
}

- (unsigned)getHorizontalViewCountForTotalNumberOfViews:(unsigned __int8)a3
{
  if (a3 == 9)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3 >= 5u)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (a3 >= 2u)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

- (unsigned)getVerticalViewCountForTotalNumberOfViews:(unsigned __int8)a3
{
  if (a3 == 9)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 4)
  {
    v3 = 2;
  }

  if (a3 < 3u)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (id)_imageViewForPosition:(unsigned __int8)a3 totalViewCount:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v9 = [(PXSurveyQuestionAssetGroupView *)self getHorizontalViewCountForTotalNumberOfViews:v4];
  v10 = [(PXSurveyQuestionAssetGroupView *)self getVerticalViewCountForTotalNumberOfViews:v4];
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

  [(PXSurveyQuestionAssetGroupView *)self minXPositionForViewPosition:v5 totalNumberOfViews:v4];
  v16 = v15;
  [(PXSurveyQuestionAssetGroupView *)self minYPositionForViewPosition:v5 totalNumberOfViews:v4];
  [v8 setFrame:{v16, v17, v12, v14}];

  return v8;
}

- (void)_loadAndApplyImagesFromAssets:(id)a3
{
  v4 = a3;
  v5 = [(PXSurveyQuestionAssetGroupView *)self presentedAssetIds];
  [v5 removeAllObjects];

  v6 = [(PXSurveyQuestionAssetGroupView *)self assetCollection];
  v7 = [v6 photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  v9 = [MEMORY[0x1E6978630] fetchAssetsWithUUIDs:v4 options:v8];

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

- (id)_arrangeAssetsForDisplay:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 count] < 3 || objc_msgSend(v3, "count") == 4 || objc_msgSend(v3, "count") == 9)
  {
    v5 = v3;

    v4 = v5;
    goto LABEL_5;
  }

  v7 = [v3 firstObject];
  [v4 addObject:v7];

  [v3 removeObjectAtIndex:0];
  v8 = 0;
  if ([v3 count] >= 2)
  {
    v8 = [v3 lastObject];
    [v3 removeLastObject];
  }

  if ([v3 count] >= 4)
  {
    v9 = [v3 objectAtIndexedSubscript:0];
    v23[0] = v9;
    v10 = [v3 objectAtIndexedSubscript:1];
    v23[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    [v4 addObjectsFromArray:v11];

    if ([v3 count] >= 9)
    {
      v12 = ([v3 count] >> 1) - 1;
      v13 = [v3 objectAtIndexedSubscript:?];
      v22[0] = v13;
      v14 = [v3 objectAtIndexedSubscript:v12];
      v22[1] = v14;
      v15 = [v3 objectAtIndexedSubscript:v12];
      v22[2] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
      [v4 addObjectsFromArray:v16];
    }

    v17 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 2}];
    v18 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count", v17) - 1}];
    v21[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v4 addObjectsFromArray:v19];

    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v20 = v3;

  v4 = v20;
  if (v8)
  {
LABEL_16:
    [v4 addObject:v8];
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
  v3 = [(PXSurveyQuestionAssetGroupView *)self delegate];
  [v3 px_surveyQuestionAssetGroupViewWasTapped:self];
}

- (void)_setupMetadataView
{
  v67[2] = *MEMORY[0x1E69E9840];
  v3 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
    [(PXSurveyQuestionAssetGroupView *)self addSubview:v5];

    v6 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
    v7 = [v6 layer];
    [v7 setZPosition:1.79769313e308];

    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
    [v9 setTextColor:v8];

    v10 = *MEMORY[0x1E69DB970];
    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB970]];
    v12 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
    [v12 setFont:v11];

    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v14 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
    [v14 setTextColor:v13];

    v15 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:v10];
    v16 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
    [v16 setFont:v15];

    v17 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
    [v17 addSubview:self->_locationLabel];

    v18 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
    [v18 addSubview:self->_dateRangeLabel];

    v19 = [MEMORY[0x1E69DC888] clearColor];
    v67[0] = [v19 CGColor];
    v20 = [MEMORY[0x1E69DC888] blackColor];
    v21 = [v20 colorWithAlphaComponent:0.8];
    v67[1] = [v21 CGColor];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    v23 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [v23 setColors:v22];

    [(PXSurveyQuestionAssetGroupView *)self bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [v32 setFrame:{v25, v27, v29, v31}];

    v33 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [v33 setLocations:&unk_1F19111D0];

    v34 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [v34 setZPosition:1000.0];

    v35 = [(PXSurveyQuestionAssetGroupView *)self layer];
    v36 = [(PXSurveyQuestionAssetGroupView *)self metadataViewGradient];
    [v35 addSublayer:v36];
  }

  [(PXSurveyQuestionAssetGroupView *)self bounds];
  v38 = v37 * 0.666;
  [(PXSurveyQuestionAssetGroupView *)self bounds];
  v40 = v39;
  [(PXSurveyQuestionAssetGroupView *)self bounds];
  v42 = v41 / 3.0;
  v43 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
  [v43 setFrame:{0.0, v38, v40, v42}];

  v44 = [(PXSurveyQuestionAssetGroupView *)self delegate];
  v45 = [v44 px_surveyQuestionAssetGroupViewMetadataLocationString:self];
  v46 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
  [v46 setText:v45];

  v47 = [(PXSurveyQuestionAssetGroupView *)self delegate];
  v48 = [v47 px_surveyQuestionAssetGroupViewMetadataDateRangeStringWithFormatter:self->_dateFormatter assetGroupView:self];
  v49 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
  [v49 setText:v48];

  v50 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
  v51 = [v50 text];
  if ([v51 length])
  {
    goto LABEL_6;
  }

  v52 = [(PXSurveyQuestionAssetGroupView *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v50 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonExhaustiveMomentLabelingNoLocation", @"PhotosUICore");
    v51 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
    [v51 setText:v50];
LABEL_6:
  }

  v54 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
  [v54 bounds];
  v56 = v55 + -40.0;
  v57 = [(PXSurveyQuestionAssetGroupView *)self metadataView];
  [v57 bounds];
  v59 = v58 + -20.0;
  v60 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
  [v60 setFrame:{10.0, v56, v59, 40.0}];

  v61 = [(PXSurveyQuestionAssetGroupView *)self dateRangeLabel];
  [v61 frame];
  v63 = v62 + -20.0;
  [(PXSurveyQuestionAssetGroupView *)self bounds];
  v65 = v64 + -20.0;
  v66 = [(PXSurveyQuestionAssetGroupView *)self locationLabel];
  [v66 setFrame:{10.0, v63, v65, 40.0}];
}

- (void)_setupViews
{
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(PXSurveyQuestionAssetGroupView *)self setBackgroundColor:v3];

  v4 = [(PXSurveyQuestionAssetGroupView *)self _getTotalViews];
  v5 = dispatch_group_create();
  if (v4)
  {
    v6 = 1;
    do
    {
      dispatch_group_enter(v5);
      v7 = [(PXSurveyQuestionAssetGroupView *)self _imageViewForPosition:v6 totalViewCount:v4];
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

      v9 = [(PXSurveyQuestionAssetGroupView *)self imageViewsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PXSurveyQuestionAssetGroupView__setupViews__block_invoke;
      block[3] = &unk_1E774A1B8;
      block[4] = self;
      v13 = v7;
      v14 = v5;
      v10 = v7;
      dispatch_sync(v9, block);

      ++v6;
    }

    while (v4 >= v6);
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v16 = [(PXSurveyQuestionAssetGroupView *)self imageViewsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PXSurveyQuestionAssetGroupView_setFrame___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_sync(v16, block);
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

- (id)validCustomMaximumPreviewAssetCountForCustomMaximumPreviewAssetCount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
    if (v5 <= 9 && ((1 << v5) & 0x216) != 0)
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

- (PXSurveyQuestionAssetGroupView)initWithAssetCollection:(id)a3 customMaximumPreviewAssetCount:(id)a4 keyAssetLocalIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = PXSurveyQuestionAssetGroupView;
  v12 = [(PXSurveyQuestionAssetGroupView *)&v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollection, a3);
    v13->_imagePadding = 2.0;
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    presentedAssetIds = v13->_presentedAssetIds;
    v13->_presentedAssetIds = v14;

    v16 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v13->_dateFormatter;
    v13->_dateFormatter = v16;

    v18 = [MEMORY[0x1E695DF58] currentLocale];
    [(NSDateFormatter *)v13->_dateFormatter setLocale:v18];

    [(NSDateFormatter *)v13->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)v13->_dateFormatter setTimeStyle:0];
    v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
    metadataView = v13->_metadataView;
    v13->_metadataView = v19;

    v21 = [MEMORY[0x1E6979380] layer];
    metadataViewGradient = v13->_metadataViewGradient;
    v13->_metadataViewGradient = v21;

    v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    locationLabel = v13->_locationLabel;
    v13->_locationLabel = v23;

    v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dateRangeLabel = v13->_dateRangeLabel;
    v13->_dateRangeLabel = v25;

    v27 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v13 action:sel__handleViewTap];
    [(PXSurveyQuestionAssetGroupView *)v13 addGestureRecognizer:v27];
    v28 = [(PXSurveyQuestionAssetGroupView *)v13 validCustomMaximumPreviewAssetCountForCustomMaximumPreviewAssetCount:v10];
    customMaximumPreviewAssetCount = v13->_customMaximumPreviewAssetCount;
    v13->_customMaximumPreviewAssetCount = v28;

    objc_storeStrong(&v13->_keyAssetLocalIdentifier, a5);
  }

  return v13;
}

@end