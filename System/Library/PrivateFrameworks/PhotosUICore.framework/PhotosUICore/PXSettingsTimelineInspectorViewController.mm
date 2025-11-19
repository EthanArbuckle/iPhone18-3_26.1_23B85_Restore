@interface PXSettingsTimelineInspectorViewController
- (CGSize)widgetSize;
- (PXSettingsTimelineInspectorViewController)initWithWidgetSizeClass:(unint64_t)a3 timeline:(id)a4 dataSource:(id)a5;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (void)displayFilteredContentIndex:(unint64_t)a3;
- (void)displaySliderTime:(id)a3;
- (void)displayTimelineEntry:(id)a3;
- (void)handleTap:(id)a3;
- (void)sliderValueChanged:(id)a3;
- (void)switchValueChanged:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PXSettingsTimelineInspectorViewController

- (CGSize)widgetSize
{
  width = self->_widgetSize.width;
  height = self->_widgetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  v16.receiver = self;
  v16.super_class = PXSettingsTimelineInspectorViewController;
  v5 = [(UIViewController *)&v16 px_diagnosticsItemProvidersForPoint:a4 inCoordinateSpace:a3.x, a3.y];
  v6 = [v5 mutableCopy];

  v7 = [(PXSettingsTimelineInspectorViewController *)self assetByAssetLocalIdentifier];
  v8 = [(PXSettingsTimelineInspectorViewController *)self entryInDisplay];
  v9 = [v8 assetLocalIdentifier];
  v10 = [v7 objectForKeyedSubscript:v9];

  v11 = objc_alloc_init(PXDiagnosticsItemProvider);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__PXSettingsTimelineInspectorViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
  v14[3] = &unk_1E774BB70;
  v15 = v10;
  v12 = v10;
  [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierAsset" loadHandler:v14];
  [v6 addObject:v11];

  return v6;
}

- (void)handleTap:(id)a3
{
  v26 = a3;
  v4 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [v26 locationInView:v4];
  v6 = v5;

  v7 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [v7 frame];
  v9 = v8;

  if ([(PXSettingsTimelineInspectorViewController *)self showFilteredContent])
  {
    [(PXSettingsTimelineInspectorViewController *)self filteredContent];
  }

  else
  {
    [(PXSettingsTimelineInspectorViewController *)self timeline];
  }
  v10 = ;
  if ([v10 count])
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [(PXSettingsTimelineInspectorViewController *)self entryInDisplay];
      v14 = [v10 objectAtIndex:v11];

      if (v13 == v14)
      {
        v12 = v11;
      }

      ++v11;
    }

    while (v11 < [v10 count]);
  }

  else
  {
    v12 = 0;
  }

  if (v6 > v9 * 0.5)
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v12 - 1;
  }

  if (v15 < [v10 count])
  {
    v16 = [v10 objectAtIndex:v15];
    [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:v16];
    if ([(PXSettingsTimelineInspectorViewController *)self showFilteredContent])
    {
      [(PXSettingsTimelineInspectorViewController *)self displayFilteredContentIndex:v15];
      v17 = v15;
      v18 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
      *&v19 = v17;
      [v18 setValue:v19];
    }

    else
    {
      v20 = [v16 startTime];
      [(PXSettingsTimelineInspectorViewController *)self displaySliderTime:v20];

      v18 = [v16 startTime];
      v21 = [(PXSettingsTimelineInspectorViewController *)self currentTime];
      [v18 timeIntervalSinceDate:v21];
      v23 = v22;
      v24 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
      *&v25 = v23;
      [v24 setValue:v25];
    }
  }
}

- (void)switchValueChanged:(id)a3
{
  -[PXSettingsTimelineInspectorViewController setShowFilteredContent:](self, "setShowFilteredContent:", [a3 isOn]);
  v4 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v4 setMinimumValue:0.0];

  v5 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v5 setValue:0.0];

  if ([(PXSettingsTimelineInspectorViewController *)self showFilteredContent])
  {
    v6 = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
    v7 = [v6 count] - 1;

    v8 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
    *&v9 = v7;
    [v8 setMaximumValue:v9];

    v10 = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
    v21 = [v10 firstObject];

    [(PXSettingsTimelineInspectorViewController *)self displayFilteredContentIndex:0];
  }

  else
  {
    v11 = [(PXSettingsTimelineInspectorViewController *)self timeline];
    v12 = [v11 lastObject];
    v13 = [v12 endTime];
    v14 = [(PXSettingsTimelineInspectorViewController *)self currentTime];
    [v13 timeIntervalSinceDate:v14];
    v16 = v15 + -1.0;
    v17 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
    *&v18 = v16;
    [v17 setMaximumValue:v18];

    v19 = [(PXSettingsTimelineInspectorViewController *)self timeline];
    v21 = [v19 firstObject];

    v20 = [(PXSettingsTimelineInspectorViewController *)self currentTime];
    [(PXSettingsTimelineInspectorViewController *)self displaySliderTime:v20];
  }

  [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:v21];
}

- (void)sliderValueChanged:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PXSettingsTimelineInspectorViewController *)self showFilteredContent])
  {
    [v4 value];
    v6 = v5;
    v7 = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
    v8 = [v7 objectAtIndex:v6];
    [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:v8];

    [(PXSettingsTimelineInspectorViewController *)self displayFilteredContentIndex:v6];
  }

  else
  {
    v9 = [(PXSettingsTimelineInspectorViewController *)self currentTime];
    v21 = v4;
    [v4 value];
    v11 = [v9 dateByAddingTimeInterval:v10];

    [(PXSettingsTimelineInspectorViewController *)self displaySliderTime:v11];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(PXSettingsTimelineInspectorViewController *)self timeline];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 startTime];
          v19 = [v17 endTime];
          v20 = [v11 px_isBetweenDate:v18 andDate:v19];

          if (v20)
          {
            [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:v17];
            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v4 = v21;
  }
}

- (void)displayFilteredContentIndex:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3 + 1;
  v8 = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
  v6 = [v4 stringWithFormat:@"%lu of %lu", v5, objc_msgSend(v8, "count")];
  v7 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v7 setText:v6];
}

- (void)displaySliderTime:(id)a3
{
  v4 = MEMORY[0x1E696AB78];
  v5 = a3;
  v10 = objc_alloc_init(v4);
  [v10 setDateFormat:@"yyyy-MM-dd HH:mm"];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v10 stringFromDate:v5];

  v8 = [v6 stringWithFormat:@"%@ (Local Time)", v7];
  v9 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v9 setText:v8];
}

- (void)displayTimelineEntry:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXSettingsTimelineInspectorViewController *)self entryInDisplay];

  if (v5 != v4)
  {
    [(PXSettingsTimelineInspectorViewController *)self setEntryInDisplay:v4];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4];
    v7 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
    [v7 setText:v6];

    v8 = [v4 assetLocalIdentifier];
    if (![v8 length])
    {
      v10 = PLMemoriesGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "[TimelineInspector] TimelineEntry has nil assetLocalIdentifier: %@", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v9 = [(PXSettingsTimelineInspectorViewController *)self assetByAssetLocalIdentifier];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (!v10)
    {
      v11 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v10 = [v11 librarySpecificFetchOptions];

      v28 = *MEMORY[0x1E6978C90];
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [v10 setFetchPropertySets:v12];

      v13 = MEMORY[0x1E6978630];
      v27 = v8;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      v15 = [v13 fetchAssetsWithLocalIdentifiers:v14 options:v10];
      v16 = [v15 firstObject];

      if (!v16)
      {
        v22 = PLMemoriesGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v4;
          _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "[TimelineInspector] key asset is nil for entry: %@", buf, 0xCu);
        }

        goto LABEL_7;
      }

      v17 = [(PXSettingsTimelineInspectorViewController *)self assetByAssetLocalIdentifier];
      [v17 setObject:v16 forKeyedSubscript:v8];

      v10 = v16;
    }

    [(PXSettingsTimelineInspectorViewController *)self widgetSize];
    v19 = v18 + v18;
    [(PXSettingsTimelineInspectorViewController *)self widgetSize];
    v21 = v20 + v20;
    v22 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v22 setDeliveryMode:1];
    [v22 setResizeMode:1];
    v23 = [MEMORY[0x1E6978860] defaultManager];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__PXSettingsTimelineInspectorViewController_displayTimelineEntry___block_invoke;
    v24[3] = &unk_1E7745FC0;
    v25 = v4;
    v26 = self;
    [v23 requestImageForAsset:v10 targetSize:0 contentMode:v22 options:v24 resultHandler:{v19, v21}];

LABEL_7:
LABEL_10:
  }
}

void __66__PXSettingsTimelineInspectorViewController_displayTimelineEntry___block_invoke(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) entryInDisplay];

  if (v3 == v4)
  {
    v6 = [*(a1 + 40) assetByAssetLocalIdentifier];
    v7 = [*(a1 + 40) entryInDisplay];
    v8 = [v7 assetLocalIdentifier];
    v9 = [v6 objectForKeyedSubscript:v8];

    v10 = [v9 pixelWidth];
    v11 = [v9 pixelHeight];
    [v43 size];
    v13 = v12;
    [v43 size];
    v15 = v14;
    v16 = [*(a1 + 32) suggestedCrop];

    if (!v16)
    {
      [*(a1 + 40) widgetSize];
      v17 = [PXTimelineCrop cropForAsset:v9 withTargetSize:?];
      [*(a1 + 32) setSuggestedCrop:v17];
    }

    v18 = [*(a1 + 32) suggestedCrop];
    [v18 cropRect];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [*(a1 + 40) strokeRectFromCropRect:v20 originalImageRect:v22 targetImageRect:{v24, v26, 0.0, 0.0, v10, v11, 0, 0, v13, v15}];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = MEMORY[0x1E696AEC0];
    [*(a1 + 40) widgetSize];
    v36 = NSStringFromCGSize(v45);
    v37 = [*(a1 + 32) suggestedCrop];
    [v37 cropScore];
    v39 = [v35 stringWithFormat:@"%@ %.4f", v36, v38];

    v40 = [MEMORY[0x1E69DC888] systemGreenColor];
    v41 = [v43 px_debugImageWithStrokeRect:v40 color:v39 text:{v28, v30, v32, v34}];

    v42 = [*(a1 + 40) imageView];
    [v42 setImage:v41];

    v5 = v41;
  }

  else
  {
    v5 = v43;
  }
}

- (void)viewWillLayoutSubviews
{
  v70.receiver = self;
  v70.super_class = PXSettingsTimelineInspectorViewController;
  [(PXSettingsTimelineInspectorViewController *)&v70 viewWillLayoutSubviews];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 windows];
  v5 = [v4 firstObject];

  v6 = [v5 windowScene];
  v7 = [v6 statusBarManager];
  [v7 statusBarFrame];
  v9 = v8;

  v10 = [(PXSettingsTimelineInspectorViewController *)self px_screen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  [v5 safeAreaInsets];
  v16 = v9 + v15;
  [v5 safeAreaInsets];
  v18 = v17;
  v19 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [v19 setFrame:{0.0, v16, v12, v12}];

  v20 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v20 setFrame:{0.0, 0.0, v12 + -60.0, 35.0}];

  v21 = v12 * 0.5;
  v22 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v22 frame];
  v24 = v14 - v18 - v23;
  v25 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v25 setCenter:{v21, v24}];

  v26 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v26 frame];
  v28 = v27;
  v29 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v29 setFrame:{0.0, 0.0, v28, 30.0}];

  v30 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v30 center];
  v32 = v31;
  v33 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v33 frame];
  MinY = CGRectGetMinY(v71);
  v35 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v35 frame];
  v37 = MinY - v36 * 0.5 + -20.0;
  v38 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v38 setCenter:{v32, v37}];

  v39 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v39 frame];
  v40 = CGRectGetMinY(v72);
  v41 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v41 frame];
  v43 = v40 - v42 + -5.0;

  v44 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v44 frame];
  MinX = CGRectGetMinX(v73);
  v46 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v46 frame];
  v48 = v47 * 3.0 * 0.25;
  v49 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [v49 setFrame:{MinX, v43, v48, 30.0}];

  v50 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [v50 frame];
  MaxX = CGRectGetMaxX(v74);
  v52 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v52 frame];
  v54 = v53 * 0.25;
  v55 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [v55 setFrame:{MaxX, v43, v54, 30.0}];

  v56 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [v56 frame];
  v57 = CGRectGetMinY(v75);
  v58 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [v58 frame];
  v59 = v57 - CGRectGetMaxY(v76) + -10.0;

  v60 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v60 frame];
  v62 = v61;
  v63 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [v63 setFrame:{0.0, 0.0, v62, v59}];

  v64 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v64 center];
  v66 = v65;
  v67 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [v67 frame];
  v68 = CGRectGetMinY(v77) - v59 * 0.5 + -10.0;
  v69 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [v69 setCenter:{v66, v68}];
}

- (void)viewDidLoad
{
  v63.receiver = self;
  v63.super_class = PXSettingsTimelineInspectorViewController;
  [(PXSettingsTimelineInspectorViewController *)&v63 viewDidLoad];
  v3 = [(PXSettingsTimelineInspectorViewController *)self navigationController];
  [v3 setDelegate:self];

  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [(PXSettingsTimelineInspectorViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x1E695DF00] date];
  [(PXSettingsTimelineInspectorViewController *)self setCurrentTime:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PXSettingsTimelineInspectorViewController *)self setAssetByAssetLocalIdentifier:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(PXSettingsTimelineInspectorViewController *)self setImageView:v8];

  v9 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [v9 setContentMode:1];

  v10 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [v10 setUserInteractionEnabled:1];

  v11 = [(PXSettingsTimelineInspectorViewController *)self view];
  v12 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [v11 addSubview:v12];

  v13 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
  v14 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [v14 addGestureRecognizer:v13];

  v15 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(PXSettingsTimelineInspectorViewController *)self setEntryInfoTextView:v15];

  v16 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [v16 setTextAlignment:0];

  v17 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [v17 setEditable:0];

  v18 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  v19 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [v19 setFont:v18];

  v20 = [MEMORY[0x1E69DC888] labelColor];
  v21 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [v21 setTextColor:v20];

  v22 = [(PXSettingsTimelineInspectorViewController *)self view];
  v23 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [v22 addSubview:v23];

  v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(PXSettingsTimelineInspectorViewController *)self setSliderValueLabel:v24];

  v25 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v25 setTextAlignment:1];

  v26 = [(PXSettingsTimelineInspectorViewController *)self view];
  v27 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [v26 addSubview:v27];

  v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(PXSettingsTimelineInspectorViewController *)self setShowFilteredContentLabel:v28];

  v29 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [v29 setTextAlignment:1];

  v30 = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
  v31 = [v30 count] != 0;
  v32 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [v32 setEnabled:v31];

  v33 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  if ([v33 isEnabled])
  {
    v34 = @"Show Filtered Content";
  }

  else
  {
    v34 = @"No Filtered Content";
  }

  v35 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [v35 setText:v34];

  v36 = [(PXSettingsTimelineInspectorViewController *)self view];
  v37 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [v36 addSubview:v37];

  v38 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  [(PXSettingsTimelineInspectorViewController *)self setShowFilteredContentSwitch:v38];

  v39 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [v39 setOn:0];

  v40 = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
  v41 = [v40 count] != 0;
  v42 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [v42 setEnabled:v41];

  v43 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [v43 addTarget:self action:sel_switchValueChanged_ forControlEvents:4096];

  v44 = [(PXSettingsTimelineInspectorViewController *)self view];
  v45 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [v44 addSubview:v45];

  v46 = objc_alloc_init(MEMORY[0x1E69DCF60]);
  [(PXSettingsTimelineInspectorViewController *)self setTimeSlider:v46];

  v47 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v47 addTarget:self action:sel_sliderValueChanged_ forControlEvents:4096];

  v48 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v48 setMinimumValue:0.0];

  v49 = [(PXSettingsTimelineInspectorViewController *)self timeline];
  v50 = [v49 lastObject];
  v51 = [v50 endTime];
  v52 = [(PXSettingsTimelineInspectorViewController *)self currentTime];
  [v51 timeIntervalSinceDate:v52];
  v54 = v53 + -1.0;
  v55 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  *&v56 = v54;
  [v55 setMaximumValue:v56];

  v57 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v57 setValue:0.0];

  v58 = [(PXSettingsTimelineInspectorViewController *)self view];
  v59 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [v58 addSubview:v59];

  v60 = [(PXSettingsTimelineInspectorViewController *)self timeline];
  v61 = [v60 firstObject];
  [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:v61];

  v62 = [(PXSettingsTimelineInspectorViewController *)self currentTime];
  [(PXSettingsTimelineInspectorViewController *)self displaySliderTime:v62];
}

- (PXSettingsTimelineInspectorViewController)initWithWidgetSizeClass:(unint64_t)a3 timeline:(id)a4 dataSource:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PXSettingsTimelineInspectorViewController;
  v11 = [(PXSettingsTimelineInspectorViewController *)&v19 init];
  v12 = v11;
  if (v11)
  {
    p_widgetSize = &v11->_widgetSize;
    [PXTimelineSize widgetSizeForSizeClass:a3];
    *&p_widgetSize->width = v14;
    v12->_widgetSize.height = v15;
    objc_storeStrong(&v12->_timeline, a4);
    v16 = [v10 filteredContent];
    filteredContent = v12->_filteredContent;
    v12->_filteredContent = v16;
  }

  return v12;
}

@end