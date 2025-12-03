@interface PXSettingsTimelineInspectorViewController
- (CGSize)widgetSize;
- (PXSettingsTimelineInspectorViewController)initWithWidgetSizeClass:(unint64_t)class timeline:(id)timeline dataSource:(id)source;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (void)displayFilteredContentIndex:(unint64_t)index;
- (void)displaySliderTime:(id)time;
- (void)displayTimelineEntry:(id)entry;
- (void)handleTap:(id)tap;
- (void)sliderValueChanged:(id)changed;
- (void)switchValueChanged:(id)changed;
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

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  v16.receiver = self;
  v16.super_class = PXSettingsTimelineInspectorViewController;
  v5 = [(UIViewController *)&v16 px_diagnosticsItemProvidersForPoint:space inCoordinateSpace:point.x, point.y];
  v6 = [v5 mutableCopy];

  assetByAssetLocalIdentifier = [(PXSettingsTimelineInspectorViewController *)self assetByAssetLocalIdentifier];
  entryInDisplay = [(PXSettingsTimelineInspectorViewController *)self entryInDisplay];
  assetLocalIdentifier = [entryInDisplay assetLocalIdentifier];
  v10 = [assetByAssetLocalIdentifier objectForKeyedSubscript:assetLocalIdentifier];

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

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  imageView = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [tapCopy locationInView:imageView];
  v6 = v5;

  imageView2 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [imageView2 frame];
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
      entryInDisplay = [(PXSettingsTimelineInspectorViewController *)self entryInDisplay];
      v14 = [v10 objectAtIndex:v11];

      if (entryInDisplay == v14)
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
      timeSlider = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
      *&v19 = v17;
      [timeSlider setValue:v19];
    }

    else
    {
      startTime = [v16 startTime];
      [(PXSettingsTimelineInspectorViewController *)self displaySliderTime:startTime];

      timeSlider = [v16 startTime];
      currentTime = [(PXSettingsTimelineInspectorViewController *)self currentTime];
      [timeSlider timeIntervalSinceDate:currentTime];
      v23 = v22;
      timeSlider2 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
      *&v25 = v23;
      [timeSlider2 setValue:v25];
    }
  }
}

- (void)switchValueChanged:(id)changed
{
  -[PXSettingsTimelineInspectorViewController setShowFilteredContent:](self, "setShowFilteredContent:", [changed isOn]);
  timeSlider = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider setMinimumValue:0.0];

  timeSlider2 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider2 setValue:0.0];

  if ([(PXSettingsTimelineInspectorViewController *)self showFilteredContent])
  {
    filteredContent = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
    v7 = [filteredContent count] - 1;

    timeSlider3 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
    *&v9 = v7;
    [timeSlider3 setMaximumValue:v9];

    filteredContent2 = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
    firstObject = [filteredContent2 firstObject];

    [(PXSettingsTimelineInspectorViewController *)self displayFilteredContentIndex:0];
  }

  else
  {
    timeline = [(PXSettingsTimelineInspectorViewController *)self timeline];
    lastObject = [timeline lastObject];
    endTime = [lastObject endTime];
    currentTime = [(PXSettingsTimelineInspectorViewController *)self currentTime];
    [endTime timeIntervalSinceDate:currentTime];
    v16 = v15 + -1.0;
    timeSlider4 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
    *&v18 = v16;
    [timeSlider4 setMaximumValue:v18];

    timeline2 = [(PXSettingsTimelineInspectorViewController *)self timeline];
    firstObject = [timeline2 firstObject];

    currentTime2 = [(PXSettingsTimelineInspectorViewController *)self currentTime];
    [(PXSettingsTimelineInspectorViewController *)self displaySliderTime:currentTime2];
  }

  [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:firstObject];
}

- (void)sliderValueChanged:(id)changed
{
  v27 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if ([(PXSettingsTimelineInspectorViewController *)self showFilteredContent])
  {
    [changedCopy value];
    v6 = v5;
    filteredContent = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
    v8 = [filteredContent objectAtIndex:v6];
    [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:v8];

    [(PXSettingsTimelineInspectorViewController *)self displayFilteredContentIndex:v6];
  }

  else
  {
    currentTime = [(PXSettingsTimelineInspectorViewController *)self currentTime];
    v21 = changedCopy;
    [changedCopy value];
    v11 = [currentTime dateByAddingTimeInterval:v10];

    [(PXSettingsTimelineInspectorViewController *)self displaySliderTime:v11];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    timeline = [(PXSettingsTimelineInspectorViewController *)self timeline];
    v13 = [timeline countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(timeline);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          startTime = [v17 startTime];
          endTime = [v17 endTime];
          v20 = [v11 px_isBetweenDate:startTime andDate:endTime];

          if (v20)
          {
            [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:v17];
            goto LABEL_13;
          }
        }

        v14 = [timeline countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    changedCopy = v21;
  }
}

- (void)displayFilteredContentIndex:(unint64_t)index
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = index + 1;
  filteredContent = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
  v6 = [v4 stringWithFormat:@"%lu of %lu", v5, objc_msgSend(filteredContent, "count")];
  sliderValueLabel = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel setText:v6];
}

- (void)displaySliderTime:(id)time
{
  v4 = MEMORY[0x1E696AB78];
  timeCopy = time;
  v10 = objc_alloc_init(v4);
  [v10 setDateFormat:@"yyyy-MM-dd HH:mm"];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v10 stringFromDate:timeCopy];

  v8 = [v6 stringWithFormat:@"%@ (Local Time)", v7];
  sliderValueLabel = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel setText:v8];
}

- (void)displayTimelineEntry:(id)entry
{
  v31 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  entryInDisplay = [(PXSettingsTimelineInspectorViewController *)self entryInDisplay];

  if (entryInDisplay != entryCopy)
  {
    [(PXSettingsTimelineInspectorViewController *)self setEntryInDisplay:entryCopy];
    entryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", entryCopy];
    entryInfoTextView = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
    [entryInfoTextView setText:entryCopy];

    assetLocalIdentifier = [entryCopy assetLocalIdentifier];
    if (![assetLocalIdentifier length])
    {
      librarySpecificFetchOptions = PLMemoriesGetLog();
      if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = entryCopy;
        _os_log_impl(&dword_1A3C1C000, librarySpecificFetchOptions, OS_LOG_TYPE_ERROR, "[TimelineInspector] TimelineEntry has nil assetLocalIdentifier: %@", buf, 0xCu);
      }

      goto LABEL_10;
    }

    assetByAssetLocalIdentifier = [(PXSettingsTimelineInspectorViewController *)self assetByAssetLocalIdentifier];
    librarySpecificFetchOptions = [assetByAssetLocalIdentifier objectForKeyedSubscript:assetLocalIdentifier];

    if (!librarySpecificFetchOptions)
    {
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

      v28 = *MEMORY[0x1E6978C90];
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [librarySpecificFetchOptions setFetchPropertySets:v12];

      v13 = MEMORY[0x1E6978630];
      v27 = assetLocalIdentifier;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      v15 = [v13 fetchAssetsWithLocalIdentifiers:v14 options:librarySpecificFetchOptions];
      firstObject = [v15 firstObject];

      if (!firstObject)
      {
        v22 = PLMemoriesGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = entryCopy;
          _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "[TimelineInspector] key asset is nil for entry: %@", buf, 0xCu);
        }

        goto LABEL_7;
      }

      assetByAssetLocalIdentifier2 = [(PXSettingsTimelineInspectorViewController *)self assetByAssetLocalIdentifier];
      [assetByAssetLocalIdentifier2 setObject:firstObject forKeyedSubscript:assetLocalIdentifier];

      librarySpecificFetchOptions = firstObject;
    }

    [(PXSettingsTimelineInspectorViewController *)self widgetSize];
    v19 = v18 + v18;
    [(PXSettingsTimelineInspectorViewController *)self widgetSize];
    v21 = v20 + v20;
    v22 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v22 setDeliveryMode:1];
    [v22 setResizeMode:1];
    defaultManager = [MEMORY[0x1E6978860] defaultManager];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__PXSettingsTimelineInspectorViewController_displayTimelineEntry___block_invoke;
    v24[3] = &unk_1E7745FC0;
    v25 = entryCopy;
    selfCopy = self;
    [defaultManager requestImageForAsset:librarySpecificFetchOptions targetSize:0 contentMode:v22 options:v24 resultHandler:{v19, v21}];

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
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  windows = [mEMORY[0x1E69DC668] windows];
  firstObject = [windows firstObject];

  windowScene = [firstObject windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v9 = v8;

  px_screen = [(PXSettingsTimelineInspectorViewController *)self px_screen];
  [px_screen bounds];
  v12 = v11;
  v14 = v13;

  [firstObject safeAreaInsets];
  v16 = v9 + v15;
  [firstObject safeAreaInsets];
  v18 = v17;
  imageView = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [imageView setFrame:{0.0, v16, v12, v12}];

  timeSlider = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider setFrame:{0.0, 0.0, v12 + -60.0, 35.0}];

  v21 = v12 * 0.5;
  timeSlider2 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider2 frame];
  v24 = v14 - v18 - v23;
  timeSlider3 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider3 setCenter:{v21, v24}];

  timeSlider4 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider4 frame];
  v28 = v27;
  sliderValueLabel = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel setFrame:{0.0, 0.0, v28, 30.0}];

  timeSlider5 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider5 center];
  v32 = v31;
  timeSlider6 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider6 frame];
  MinY = CGRectGetMinY(v71);
  sliderValueLabel2 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel2 frame];
  v37 = MinY - v36 * 0.5 + -20.0;
  sliderValueLabel3 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel3 setCenter:{v32, v37}];

  sliderValueLabel4 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel4 frame];
  v40 = CGRectGetMinY(v72);
  sliderValueLabel5 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel5 frame];
  v43 = v40 - v42 + -5.0;

  sliderValueLabel6 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel6 frame];
  MinX = CGRectGetMinX(v73);
  sliderValueLabel7 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel7 frame];
  v48 = v47 * 3.0 * 0.25;
  showFilteredContentLabel = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [showFilteredContentLabel setFrame:{MinX, v43, v48, 30.0}];

  showFilteredContentLabel2 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [showFilteredContentLabel2 frame];
  MaxX = CGRectGetMaxX(v74);
  sliderValueLabel8 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel8 frame];
  v54 = v53 * 0.25;
  showFilteredContentSwitch = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [showFilteredContentSwitch setFrame:{MaxX, v43, v54, 30.0}];

  showFilteredContentLabel3 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [showFilteredContentLabel3 frame];
  v57 = CGRectGetMinY(v75);
  imageView2 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [imageView2 frame];
  v59 = v57 - CGRectGetMaxY(v76) + -10.0;

  sliderValueLabel9 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel9 frame];
  v62 = v61;
  entryInfoTextView = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [entryInfoTextView setFrame:{0.0, 0.0, v62, v59}];

  sliderValueLabel10 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel10 center];
  v66 = v65;
  showFilteredContentLabel4 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [showFilteredContentLabel4 frame];
  v68 = CGRectGetMinY(v77) - v59 * 0.5 + -10.0;
  entryInfoTextView2 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [entryInfoTextView2 setCenter:{v66, v68}];
}

- (void)viewDidLoad
{
  v63.receiver = self;
  v63.super_class = PXSettingsTimelineInspectorViewController;
  [(PXSettingsTimelineInspectorViewController *)&v63 viewDidLoad];
  navigationController = [(PXSettingsTimelineInspectorViewController *)self navigationController];
  [navigationController setDelegate:self];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(PXSettingsTimelineInspectorViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  date = [MEMORY[0x1E695DF00] date];
  [(PXSettingsTimelineInspectorViewController *)self setCurrentTime:date];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PXSettingsTimelineInspectorViewController *)self setAssetByAssetLocalIdentifier:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(PXSettingsTimelineInspectorViewController *)self setImageView:v8];

  imageView = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [imageView setContentMode:1];

  imageView2 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [imageView2 setUserInteractionEnabled:1];

  view2 = [(PXSettingsTimelineInspectorViewController *)self view];
  imageView3 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [view2 addSubview:imageView3];

  v13 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
  imageView4 = [(PXSettingsTimelineInspectorViewController *)self imageView];
  [imageView4 addGestureRecognizer:v13];

  v15 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(PXSettingsTimelineInspectorViewController *)self setEntryInfoTextView:v15];

  entryInfoTextView = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [entryInfoTextView setTextAlignment:0];

  entryInfoTextView2 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [entryInfoTextView2 setEditable:0];

  v18 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  entryInfoTextView3 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [entryInfoTextView3 setFont:v18];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  entryInfoTextView4 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [entryInfoTextView4 setTextColor:labelColor];

  view3 = [(PXSettingsTimelineInspectorViewController *)self view];
  entryInfoTextView5 = [(PXSettingsTimelineInspectorViewController *)self entryInfoTextView];
  [view3 addSubview:entryInfoTextView5];

  v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(PXSettingsTimelineInspectorViewController *)self setSliderValueLabel:v24];

  sliderValueLabel = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [sliderValueLabel setTextAlignment:1];

  view4 = [(PXSettingsTimelineInspectorViewController *)self view];
  sliderValueLabel2 = [(PXSettingsTimelineInspectorViewController *)self sliderValueLabel];
  [view4 addSubview:sliderValueLabel2];

  v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(PXSettingsTimelineInspectorViewController *)self setShowFilteredContentLabel:v28];

  showFilteredContentLabel = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [showFilteredContentLabel setTextAlignment:1];

  filteredContent = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
  v31 = [filteredContent count] != 0;
  showFilteredContentLabel2 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [showFilteredContentLabel2 setEnabled:v31];

  showFilteredContentLabel3 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  if ([showFilteredContentLabel3 isEnabled])
  {
    v34 = @"Show Filtered Content";
  }

  else
  {
    v34 = @"No Filtered Content";
  }

  showFilteredContentLabel4 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [showFilteredContentLabel4 setText:v34];

  view5 = [(PXSettingsTimelineInspectorViewController *)self view];
  showFilteredContentLabel5 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentLabel];
  [view5 addSubview:showFilteredContentLabel5];

  v38 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  [(PXSettingsTimelineInspectorViewController *)self setShowFilteredContentSwitch:v38];

  showFilteredContentSwitch = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [showFilteredContentSwitch setOn:0];

  filteredContent2 = [(PXSettingsTimelineInspectorViewController *)self filteredContent];
  v41 = [filteredContent2 count] != 0;
  showFilteredContentSwitch2 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [showFilteredContentSwitch2 setEnabled:v41];

  showFilteredContentSwitch3 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [showFilteredContentSwitch3 addTarget:self action:sel_switchValueChanged_ forControlEvents:4096];

  view6 = [(PXSettingsTimelineInspectorViewController *)self view];
  showFilteredContentSwitch4 = [(PXSettingsTimelineInspectorViewController *)self showFilteredContentSwitch];
  [view6 addSubview:showFilteredContentSwitch4];

  v46 = objc_alloc_init(MEMORY[0x1E69DCF60]);
  [(PXSettingsTimelineInspectorViewController *)self setTimeSlider:v46];

  timeSlider = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider addTarget:self action:sel_sliderValueChanged_ forControlEvents:4096];

  timeSlider2 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider2 setMinimumValue:0.0];

  timeline = [(PXSettingsTimelineInspectorViewController *)self timeline];
  lastObject = [timeline lastObject];
  endTime = [lastObject endTime];
  currentTime = [(PXSettingsTimelineInspectorViewController *)self currentTime];
  [endTime timeIntervalSinceDate:currentTime];
  v54 = v53 + -1.0;
  timeSlider3 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  *&v56 = v54;
  [timeSlider3 setMaximumValue:v56];

  timeSlider4 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [timeSlider4 setValue:0.0];

  view7 = [(PXSettingsTimelineInspectorViewController *)self view];
  timeSlider5 = [(PXSettingsTimelineInspectorViewController *)self timeSlider];
  [view7 addSubview:timeSlider5];

  timeline2 = [(PXSettingsTimelineInspectorViewController *)self timeline];
  firstObject = [timeline2 firstObject];
  [(PXSettingsTimelineInspectorViewController *)self displayTimelineEntry:firstObject];

  currentTime2 = [(PXSettingsTimelineInspectorViewController *)self currentTime];
  [(PXSettingsTimelineInspectorViewController *)self displaySliderTime:currentTime2];
}

- (PXSettingsTimelineInspectorViewController)initWithWidgetSizeClass:(unint64_t)class timeline:(id)timeline dataSource:(id)source
{
  timelineCopy = timeline;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = PXSettingsTimelineInspectorViewController;
  v11 = [(PXSettingsTimelineInspectorViewController *)&v19 init];
  v12 = v11;
  if (v11)
  {
    p_widgetSize = &v11->_widgetSize;
    [PXTimelineSize widgetSizeForSizeClass:class];
    *&p_widgetSize->width = v14;
    v12->_widgetSize.height = v15;
    objc_storeStrong(&v12->_timeline, timeline);
    filteredContent = [sourceCopy filteredContent];
    filteredContent = v12->_filteredContent;
    v12->_filteredContent = filteredContent;
  }

  return v12;
}

@end