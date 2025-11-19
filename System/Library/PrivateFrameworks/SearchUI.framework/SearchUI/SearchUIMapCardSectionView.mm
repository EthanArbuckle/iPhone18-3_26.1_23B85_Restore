@interface SearchUIMapCardSectionView
+ (id)_postalAddressFromPlacemark:(id)a3;
- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5;
- (double)requestedMapHeight;
- (id)_clLocationFromSFLatLng:(id)a3;
- (id)setupContentView;
- (void)_updateSnapshot;
- (void)_updateSnapshotWithSize:(CGSize)a3;
- (void)dealloc;
- (void)sendMapFeedbackWithTriggerEvent:(unint64_t)a3 placemarkData:(id)a4;
- (void)updateWithRowModel:(id)a3;
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

  v5 = [(SearchUIMapCardSectionView *)self snapshotView];
  [v5 setPlaceholderVisibility:1];

  v6 = [(SearchUIMapCardSectionView *)self snapshotView];
  [v3 addArrangedSubview:v6];

  v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__mapButtonPressed];
  [(SearchUIMapCardSectionView *)self setTapRecognizer:v7];

  v8 = [(SearchUIMapCardSectionView *)self snapshotView];
  v9 = [(SearchUIMapCardSectionView *)self tapRecognizer];
  [v8 addGestureRecognizer:v9];

  v10 = objc_opt_new();
  [v10 setSpacing:10.0];
  [v10 setAlignment:2];
  [v10 setLayoutMarginsRelativeArrangement:1];
  [v10 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  [(SearchUIMapCardSectionView *)self setLabelsStackView:v10];
  [v3 addArrangedSubview:v10];
  v11 = objc_opt_new();
  v12 = [MEMORY[0x1E69D9138] footnoteFont];
  [v11 setFont:v12];

  [SearchUIAutoLayout requireIntrinsicSizeForView:v11];
  [(SearchUIMapCardSectionView *)self setFootnoteDescriptorLabel:v11];
  [v10 addArrangedSubview:v11];
  v13 = objc_opt_new();
  v14 = [MEMORY[0x1E69D9138] subheadFont];
  [v13 setFont:v14];

  [(SearchUIMapCardSectionView *)self setFootnoteLabel:v13];
  [v10 addArrangedSubview:v13];
  [(SearchUIMapCardSectionView *)self setClipsToBounds:1];
  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 addObserver:self selector:sel__updateSnapshot name:*MEMORY[0x1E69DEA38] object:0];

  return v3;
}

- (void)_updateSnapshot
{
  v5 = [(SearchUIMapCardSectionView *)self snapshotView];
  [v5 frame];
  [(SearchUIMapCardSectionView *)self _updateSnapshotWithSize:v3, v4];
}

- (void)_updateSnapshotWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v95 = *MEMORY[0x1E69E9840];
  v5 = [(SearchUIMapCardSectionView *)self mapSnapshotter];
  [v5 cancel];

  v6 = objc_opt_new();
  v7 = [(SearchUIMapCardSectionView *)self snapshotView];
  [v7 setTlkImage:v6];

  v74 = [(SearchUICardSectionView *)self section];
  if (v74)
  {
    [(SearchUIMapCardSectionView *)self requestedMapHeight];
    if (height == v8)
    {
      v73 = [v74 boundingMapRegion];
      v72 = objc_opt_new();
      [v72 setSize:{width, height}];
      v76 = objc_opt_new();
      v77 = objc_opt_new();
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = [v74 pins];
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
            v14 = [v12 label];
            [v13 setTitle:v14];

            v15 = [v12 location];
            v16 = [(SearchUIMapCardSectionView *)self _clLocationFromSFLatLng:v15];
            [v16 coordinate];
            [v13 setCoordinate:?];

            [v76 addObject:v13];
            v17 = [objc_alloc(MEMORY[0x1E696F2C8]) initWithAnnotation:v13 reuseIdentifier:0];
            v18 = [v12 pinText];
            [v17 setGlyphText:v18];

            v19 = [MEMORY[0x1E69DC888] systemRedColor];
            [v17 setMarkerTintColor:v19];

            v20 = [MEMORY[0x1E69DC888] systemBackgroundColor];
            [v17 setGlyphTintColor:v20];

            [v77 addObject:v17];
          }

          v9 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
        }

        while (v9);
      }

      v21 = [v77 reverseObjectEnumerator];
      v22 = [v21 allObjects];
      [v72 setAnnotationViews:v22];

      if (v73 && ([v73 altitudeInMeters], v23 == 0.0))
      {
        [v73 northLat];
        v41 = v40;
        [v73 southLat];
        v43 = v42;
        [v73 eastLng];
        v45 = v44;
        [v73 westLng];
        v47 = v45 - v46;
        if (v45 - v46 >= 0.0)
        {
          v48 = 0.0;
        }

        else
        {
          v48 = 360.0;
        }

        [v73 northLat];
        v50 = v49;
        [v73 eastLng];
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
        v24 = [v74 location];

        if (v24)
        {
          v25 = [v74 location];
          v26 = [(SearchUIMapCardSectionView *)self _clLocationFromSFLatLng:v25];
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

          v56 = [v74 pins];
          v57 = [v56 firstObject];
          v58 = [v57 pinText];
          v59 = v58 == 0;

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

      [v73 altitudeInMeters];
      if (v67 != 0.0)
      {
        [v73 altitudeInMeters];
        v69 = v68;
        v70 = [v72 camera];
        [v70 setAltitude:v69];
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
      v80 = v74;
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

- (void)updateWithRowModel:(id)a3
{
  v25.receiver = self;
  v25.super_class = SearchUIMapCardSectionView;
  [(SearchUICardSectionView *)&v25 updateWithRowModel:a3];
  v4 = [(SearchUICardSectionView *)self section];
  v5 = [(SearchUICardSectionView *)self section];
  v6 = [v5 interactive];

  v7 = [(SearchUIMapCardSectionView *)self tapRecognizer];
  [v7 setEnabled:v6 ^ 1];

  v8 = [(SearchUIMapCardSectionView *)self snapshotView];
  v9 = *MEMORY[0x1E698B6F8];
  [(SearchUIMapCardSectionView *)self requestedMapHeight];
  LODWORD(v10) = 1148846080;
  [v8 setLayoutSize:v9 withContentPriority:{v11, v10}];

  [(SearchUIMapCardSectionView *)self _updateSnapshot];
  v12 = [v4 footnoteLabel];
  if (v12)
  {
    v6 = [v4 footnoteLabel];
    v13 = [v6 isEqualToString:&stru_1F55BC4E8];
  }

  else
  {
    v13 = 1;
  }

  v14 = [(SearchUIMapCardSectionView *)self footnoteDescriptorLabel];
  [v14 setHidden:v13];

  if (v12)
  {
  }

  v15 = [v4 footnoteLabel];
  v16 = [(SearchUIMapCardSectionView *)self footnoteDescriptorLabel];
  [v16 setText:v15];

  v17 = [v4 footnote];
  if (v17)
  {
    v16 = [v4 footnote];
    v18 = [v16 isEqualToString:&stru_1F55BC4E8];
  }

  else
  {
    v18 = 1;
  }

  v19 = [(SearchUIMapCardSectionView *)self footnoteLabel];
  [v19 setHidden:v18];

  if (v17)
  {
  }

  v20 = [v4 footnote];
  v21 = [(SearchUIMapCardSectionView *)self footnoteLabel];
  [v21 setText:v20];

  v22 = [v4 footnoteLabel];
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v21 = [v4 footnote];
    v23 = v21 == 0;
  }

  v24 = [(SearchUIMapCardSectionView *)self labelsStackView];
  [v24 setHidden:v23];

  if (!v22)
  {
  }
}

- (void)dealloc
{
  v3 = [(SearchUIMapCardSectionView *)self mapSnapshotter];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = SearchUIMapCardSectionView;
  [(NUIContainerStackView *)&v4 dealloc];
}

- (double)requestedMapHeight
{
  v2 = [(SearchUICardSectionView *)self section];
  v3 = dbl_1DA272AA0[[v2 sizeFormat] == 1];

  return v3;
}

- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = [(SearchUIMapCardSectionView *)self snapshotView];

  if (v11 == v10)
  {
    v12 = [(SearchUIMapCardSectionView *)self snapshotView];
    [v12 frame];
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

- (void)sendMapFeedbackWithTriggerEvent:(unint64_t)a3 placemarkData:(id)a4
{
  v12 = a4;
  v6 = [(SearchUICardSectionView *)self feedbackDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69CA1F8]);
    v9 = [(SearchUICardSectionView *)self section];
    v10 = [v8 initWithCardSection:v9 destination:0 triggerEvent:a3 actionCardType:1];

    [v10 setModifiedPlacemarkData:v12];
    v11 = [(SearchUICardSectionView *)self feedbackDelegate];
    [v11 didEngageCardSection:v10];
  }
}

- (id)_clLocationFromSFLatLng:(id)a3
{
  v3 = MEMORY[0x1E6985C40];
  v4 = a3;
  v5 = [v3 alloc];
  [v4 lat];
  v7 = v6;
  [v4 lng];
  v9 = v8;

  v10 = [v5 initWithLatitude:v7 longitude:v9];

  return v10;
}

+ (id)_postalAddressFromPlacemark:(id)a3
{
  v3 = MEMORY[0x1E695CF30];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 thoroughfare];
  [v5 setStreet:v6];

  v7 = [v4 locality];
  [v5 setCity:v7];

  v8 = [v4 administrativeArea];
  [v5 setState:v8];

  v9 = [v4 country];
  [v5 setCountry:v9];

  v10 = [v4 postalCode];

  [v5 setPostalCode:v10];
  v11 = [v5 copy];

  return v11;
}

@end