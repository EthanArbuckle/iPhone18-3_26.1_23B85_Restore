@interface SearchUIMapCardSectionView
+ (id)_postalAddressFromPlacemark:(id)placemark;
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (double)requestedMapHeight;
- (id)_clLocationFromSFLatLng:(id)lng;
- (id)setupContentView;
- (void)_updateSnapshot;
- (void)_updateSnapshotWithSize:(CGSize)size;
- (void)dealloc;
- (void)sendMapFeedbackWithTriggerEvent:(unint64_t)event placemarkData:(id)data;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIMapCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  [v3 setSpacing:0.0];
  [v3 setAxis:1];
  v4 = objc_opt_new();
  [(SearchUIMapCardSectionView *)self setSnapshotView:v4];

  snapshotView = [(SearchUIMapCardSectionView *)self snapshotView];
  [snapshotView setPlaceholderVisibility:1];

  snapshotView2 = [(SearchUIMapCardSectionView *)self snapshotView];
  [v3 addArrangedSubview:snapshotView2];

  v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__mapButtonPressed];
  [(SearchUIMapCardSectionView *)self setTapRecognizer:v7];

  snapshotView3 = [(SearchUIMapCardSectionView *)self snapshotView];
  tapRecognizer = [(SearchUIMapCardSectionView *)self tapRecognizer];
  [snapshotView3 addGestureRecognizer:tapRecognizer];

  v10 = objc_opt_new();
  [v10 setSpacing:10.0];
  [v10 setAlignment:2];
  [v10 setLayoutMarginsRelativeArrangement:1];
  [v10 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  [(SearchUIMapCardSectionView *)self setLabelsStackView:v10];
  [v3 addArrangedSubview:v10];
  v11 = objc_opt_new();
  footnoteFont = [MEMORY[0x1E69D9138] footnoteFont];
  [v11 setFont:footnoteFont];

  [SearchUIAutoLayout requireIntrinsicSizeForView:v11];
  [(SearchUIMapCardSectionView *)self setFootnoteDescriptorLabel:v11];
  [v10 addArrangedSubview:v11];
  v13 = objc_opt_new();
  subheadFont = [MEMORY[0x1E69D9138] subheadFont];
  [v13 setFont:subheadFont];

  [(SearchUIMapCardSectionView *)self setFootnoteLabel:v13];
  [v10 addArrangedSubview:v13];
  [(SearchUIMapCardSectionView *)self setClipsToBounds:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateSnapshot name:*MEMORY[0x1E69DEA38] object:0];

  return v3;
}

- (void)_updateSnapshot
{
  snapshotView = [(SearchUIMapCardSectionView *)self snapshotView];
  [snapshotView frame];
  [(SearchUIMapCardSectionView *)self _updateSnapshotWithSize:v3, v4];
}

- (void)_updateSnapshotWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v95 = *MEMORY[0x1E69E9840];
  mapSnapshotter = [(SearchUIMapCardSectionView *)self mapSnapshotter];
  [mapSnapshotter cancel];

  v6 = objc_opt_new();
  snapshotView = [(SearchUIMapCardSectionView *)self snapshotView];
  [snapshotView setTlkImage:v6];

  section = [(SearchUICardSectionView *)self section];
  if (section)
  {
    [(SearchUIMapCardSectionView *)self requestedMapHeight];
    if (height == v8)
    {
      boundingMapRegion = [section boundingMapRegion];
      v72 = objc_opt_new();
      [v72 setSize:{width, height}];
      v76 = objc_opt_new();
      v77 = objc_opt_new();
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = [section pins];
      v9 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
      if (v9)
      {
        v10 = *v90;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v90 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v89 + 1) + 8 * i);
            v13 = objc_alloc_init(MEMORY[0x1E696F348]);
            label = [v12 label];
            [v13 setTitle:label];

            location = [v12 location];
            v16 = [(SearchUIMapCardSectionView *)self _clLocationFromSFLatLng:location];
            [v16 coordinate];
            [v13 setCoordinate:?];

            [v76 addObject:v13];
            v17 = [objc_alloc(MEMORY[0x1E696F2C8]) initWithAnnotation:v13 reuseIdentifier:0];
            pinText = [v12 pinText];
            [v17 setGlyphText:pinText];

            systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
            [v17 setMarkerTintColor:systemRedColor];

            systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
            [v17 setGlyphTintColor:systemBackgroundColor];

            [v77 addObject:v17];
          }

          v9 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
        }

        while (v9);
      }

      reverseObjectEnumerator = [v77 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      [v72 setAnnotationViews:allObjects];

      if (boundingMapRegion && ([boundingMapRegion altitudeInMeters], v23 == 0.0))
      {
        [boundingMapRegion northLat];
        v41 = v40;
        [boundingMapRegion southLat];
        v43 = v42;
        [boundingMapRegion eastLng];
        v45 = v44;
        [boundingMapRegion westLng];
        v47 = v45 - v46;
        if (v45 - v46 >= 0.0)
        {
          v48 = 0.0;
        }

        else
        {
          v48 = 360.0;
        }

        [boundingMapRegion northLat];
        v50 = v49;
        [boundingMapRegion eastLng];
        v51 = v41 - v43;
        v53 = v52 + (v47 + v48) * -0.5;
        v54 = 0.0;
        if (v53 <= -180.0)
        {
          v54 = 360.0;
        }

        v55 = CLLocationCoordinate2DMake(v50 + v51 * -0.5, v53 + v54);
        [v72 setRegion:{v55.latitude, v55.longitude, v51, v47 + v48}];
      }

      else
      {
        location2 = [section location];

        if (location2)
        {
          location3 = [section location];
          v26 = [(SearchUIMapCardSectionView *)self _clLocationFromSFLatLng:location3];
          [v26 coordinate];
          v28 = v27;
          v30 = v29;

          MEMORY[0x1DA748270](v28, v30, 500.0, 500.0);
          [v72 setRegion:?];
        }

        else
        {
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v31 = v76;
          v32 = [v31 countByEnumeratingWithState:&v85 objects:v93 count:16];
          if (v32)
          {
            v33 = *v86;
            y = INFINITY;
            v35 = -INFINITY;
            v36 = -INFINITY;
            x = INFINITY;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v86 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                [*(*(&v85 + 1) + 8 * j) coordinate];
                v39 = MKMapPointForCoordinate(v96);
                if (v39.x < x)
                {
                  x = v39.x;
                }

                if (v39.y < y)
                {
                  y = v39.y;
                }

                if (v39.x >= v36)
                {
                  v36 = v39.x;
                }

                if (v39.y >= v35)
                {
                  v35 = v39.y;
                }
              }

              v32 = [v31 countByEnumeratingWithState:&v85 objects:v93 count:16];
            }

            while (v32);
          }

          else
          {
            y = INFINITY;
            v35 = -INFINITY;
            v36 = -INFINITY;
            x = INFINITY;
          }

          pins = [section pins];
          firstObject = [pins firstObject];
          pinText2 = [firstObject pinText];
          v59 = pinText2 == 0;

          v60 = v36 - x;
          v61 = v35 - y;
          v62 = -0.2;
          if (!v59)
          {
            v62 = -0.5;
          }

          v63 = v60 * v62;
          v64 = v61 * v62;
          v65 = x;
          v66 = y;
          v97 = MKMapRectInset(*(&v60 - 2), v63, v64);
          [v72 setMapRect:{v97.origin.x, v97.origin.y, v97.size.width, v97.size.height}];
        }
      }

      [boundingMapRegion altitudeInMeters];
      if (v67 != 0.0)
      {
        [boundingMapRegion altitudeInMeters];
        v69 = v68;
        camera = [v72 camera];
        [camera setAltitude:v69];
      }

      v71 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:v72];
      [(SearchUIMapCardSectionView *)self setMapSnapshotter:v71];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v71);
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __54__SearchUIMapCardSectionView__updateSnapshotWithSize___block_invoke;
      v79[3] = &unk_1E85B33C0;
      objc_copyWeak(&v81, &location);
      objc_copyWeak(&v82, &from);
      v80 = section;
      [v71 startWithCompletionHandler:v79];

      objc_destroyWeak(&v82);
      objc_destroyWeak(&v81);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __54__SearchUIMapCardSectionView__updateSnapshotWithSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained mapSnapshotter];
    v8 = objc_loadWeakRetained((a1 + 48));

    if (!a3 && v7 == v8)
    {
      v9 = [v6 section];
      v10 = *(a1 + 32);

      if (v9 == v10)
      {
        v11 = objc_alloc(MEMORY[0x1E69D9168]);
        v12 = [v15 image];
        v13 = [v11 initWithImage:v12];

        v14 = [v6 snapshotView];
        [v14 setTlkImage:v13];
      }
    }
  }
}

- (void)updateWithRowModel:(id)model
{
  v25.receiver = self;
  v25.super_class = SearchUIMapCardSectionView;
  [(SearchUICardSectionView *)&v25 updateWithRowModel:model];
  section = [(SearchUICardSectionView *)self section];
  section2 = [(SearchUICardSectionView *)self section];
  interactive = [section2 interactive];

  tapRecognizer = [(SearchUIMapCardSectionView *)self tapRecognizer];
  [tapRecognizer setEnabled:interactive ^ 1];

  snapshotView = [(SearchUIMapCardSectionView *)self snapshotView];
  v9 = *MEMORY[0x1E698B6F8];
  [(SearchUIMapCardSectionView *)self requestedMapHeight];
  LODWORD(v10) = 1148846080;
  [snapshotView setLayoutSize:v9 withContentPriority:{v11, v10}];

  [(SearchUIMapCardSectionView *)self _updateSnapshot];
  footnoteLabel = [section footnoteLabel];
  if (footnoteLabel)
  {
    interactive = [section footnoteLabel];
    v13 = [interactive isEqualToString:&stru_1F55BC4E8];
  }

  else
  {
    v13 = 1;
  }

  footnoteDescriptorLabel = [(SearchUIMapCardSectionView *)self footnoteDescriptorLabel];
  [footnoteDescriptorLabel setHidden:v13];

  if (footnoteLabel)
  {
  }

  footnoteLabel2 = [section footnoteLabel];
  footnoteDescriptorLabel2 = [(SearchUIMapCardSectionView *)self footnoteDescriptorLabel];
  [footnoteDescriptorLabel2 setText:footnoteLabel2];

  footnote = [section footnote];
  if (footnote)
  {
    footnoteDescriptorLabel2 = [section footnote];
    v18 = [footnoteDescriptorLabel2 isEqualToString:&stru_1F55BC4E8];
  }

  else
  {
    v18 = 1;
  }

  footnoteLabel3 = [(SearchUIMapCardSectionView *)self footnoteLabel];
  [footnoteLabel3 setHidden:v18];

  if (footnote)
  {
  }

  footnote2 = [section footnote];
  footnoteLabel4 = [(SearchUIMapCardSectionView *)self footnoteLabel];
  [footnoteLabel4 setText:footnote2];

  footnoteLabel5 = [section footnoteLabel];
  if (footnoteLabel5)
  {
    v23 = 0;
  }

  else
  {
    footnoteLabel4 = [section footnote];
    v23 = footnoteLabel4 == 0;
  }

  labelsStackView = [(SearchUIMapCardSectionView *)self labelsStackView];
  [labelsStackView setHidden:v23];

  if (!footnoteLabel5)
  {
  }
}

- (void)dealloc
{
  mapSnapshotter = [(SearchUIMapCardSectionView *)self mapSnapshotter];
  [mapSnapshotter cancel];

  v4.receiver = self;
  v4.super_class = SearchUIMapCardSectionView;
  [(NUIContainerStackView *)&v4 dealloc];
}

- (double)requestedMapHeight
{
  section = [(SearchUICardSectionView *)self section];
  v3 = dbl_1DA272AA0[[section sizeFormat] == 1];

  return v3;
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  subviewCopy = subview;
  snapshotView = [(SearchUIMapCardSectionView *)self snapshotView];

  if (snapshotView == subviewCopy)
  {
    snapshotView2 = [(SearchUIMapCardSectionView *)self snapshotView];
    [snapshotView2 frame];
    v14 = v13;
    v16 = v15;

    if (width != v14 || height != v16)
    {
      [(SearchUIMapCardSectionView *)self _updateSnapshotWithSize:width, height];
    }
  }

  else
  {
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)sendMapFeedbackWithTriggerEvent:(unint64_t)event placemarkData:(id)data
{
  dataCopy = data;
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69CA1F8]);
    section = [(SearchUICardSectionView *)self section];
    v10 = [v8 initWithCardSection:section destination:0 triggerEvent:event actionCardType:1];

    [v10 setModifiedPlacemarkData:dataCopy];
    feedbackDelegate2 = [(SearchUICardSectionView *)self feedbackDelegate];
    [feedbackDelegate2 didEngageCardSection:v10];
  }
}

- (id)_clLocationFromSFLatLng:(id)lng
{
  v3 = MEMORY[0x1E6985C40];
  lngCopy = lng;
  v5 = [v3 alloc];
  [lngCopy lat];
  v7 = v6;
  [lngCopy lng];
  v9 = v8;

  v10 = [v5 initWithLatitude:v7 longitude:v9];

  return v10;
}

+ (id)_postalAddressFromPlacemark:(id)placemark
{
  v3 = MEMORY[0x1E695CF30];
  placemarkCopy = placemark;
  v5 = objc_alloc_init(v3);
  thoroughfare = [placemarkCopy thoroughfare];
  [v5 setStreet:thoroughfare];

  locality = [placemarkCopy locality];
  [v5 setCity:locality];

  administrativeArea = [placemarkCopy administrativeArea];
  [v5 setState:administrativeArea];

  country = [placemarkCopy country];
  [v5 setCountry:country];

  postalCode = [placemarkCopy postalCode];

  [v5 setPostalCode:postalCode];
  v11 = [v5 copy];

  return v11;
}

@end