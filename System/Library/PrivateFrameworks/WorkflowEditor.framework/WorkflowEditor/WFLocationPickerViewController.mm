@interface WFLocationPickerViewController
- ($9AD185B98C4A4E0F06446A487FEC3478)mapRadiusView:(id)a3 boundingMapRectForOverlay:(id)a4;
- (BOOL)hasLocation;
- (BOOL)shouldShowCurrentLocationItem;
- (MKMapView)mapView;
- (WFLocationPickerViewController)initWithPickerType:(unint64_t)a3 value:(id)a4;
- (WFLocationPickerViewControllerDelegate)delegate;
- (WFLocationTriggerEditorMapDragRadiusView)dragView;
- (id)circularRegion;
- (id)locationFromRecentContact:(id)a3;
- (id)mapRadiusView:(id)a3 overlayForRadius:(double)a4;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)overlayWithCenterCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)currentLocationRowIndex;
- (int64_t)firstLocalSearchResultRowIndex;
- (int64_t)firstRecentRowIndex;
- (int64_t)lastRecentRowIndex;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)proximityType;
- (void)cancel:(id)a3;
- (void)checkLocationAuthorization;
- (void)displayLocationCoordinate:(CLLocationCoordinate2D)a3;
- (void)done:(id)a3;
- (void)getMapItemFromRecentContact:(id)a3 completionHandler:(id)a4;
- (void)getPlacemarkFromLocation:(id)a3 streetAddress:(id)a4 completionHandler:(id)a5;
- (void)loadView;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)mapRadiusView:(id)a3 radiusDidChange:(double)a4;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4;
- (void)mapViewDidChangeVisibleRegion:(id)a3;
- (void)reloadData;
- (void)resetSearchResults;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)setAllowsPickingCurrentLocation:(BOOL)a3;
- (void)setLocationValueWithPlacemark:(id)a3;
- (void)setRegionCondition:(unint64_t)a3;
- (void)setRegionValueWithPlacemark:(id)a3 radius:(double)a4;
- (void)setResolvesCurrentLocationToPlacemark:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)setupMap;
- (void)showMapRegionForCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateMapHeight;
- (void)updateRecentsWithSearchText:(id)a3;
- (void)updateUI;
- (void)updateUIWithValue:(id)a3;
- (void)updateValueWithMapItem:(id)a3;
- (void)updateValueWithRadius:(double)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WFLocationPickerViewController

- (WFLocationPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  [(WFLocationPickerViewController *)self resetSearchResults];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(WFLocationPickerViewController *)self searchBar];
    v8 = [v7 text];
    [(WFLocationPickerViewController *)self updateRecentsWithSearchText:v8];

    v9 = objc_alloc_init(MEMORY[0x277CD4E38]);
    v10 = [(WFLocationPickerViewController *)self searchBar];
    v11 = [v10 text];
    [v9 setNaturalLanguageQuery:v11];

    v12 = [objc_alloc(MEMORY[0x277CD4E20]) initWithRequest:v9];
    [(WFLocationPickerViewController *)self setLocalSearch:v12];

    v13 = [(WFLocationPickerViewController *)self localSearch];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__WFLocationPickerViewController_searchBar_textDidChange___block_invoke;
    v14[3] = &unk_279EDC0B8;
    v14[4] = self;
    [v13 startWithCompletionHandler:v14];
  }

  else
  {
    [(WFLocationPickerViewController *)self updateRecentsWithSearchText:0];
    [(WFLocationPickerViewController *)self updateUIWithValue:0];

    [(WFLocationPickerViewController *)self reloadData];
  }
}

uint64_t __58__WFLocationPickerViewController_searchBar_textDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mapItems];
  [*(a1 + 32) setLocalSearchResults:v3];

  v4 = *(a1 + 32);

  return [v4 reloadData];
}

- (void)resetSearchResults
{
  v3 = [(WFLocationPickerViewController *)self localSearch];

  if (v3)
  {
    v4 = [(WFLocationPickerViewController *)self localSearch];
    [v4 cancel];

    [(WFLocationPickerViewController *)self setLocalSearch:0];
  }

  [(WFLocationPickerViewController *)self setLocalSearchResults:0];
}

- (id)mapRadiusView:(id)a3 overlayForRadius:(double)a4
{
  v5 = [(WFLocationPickerViewController *)self mapView];
  v6 = [v5 annotations];
  v7 = [v6 firstObject];

  [v7 coordinate];
  v8 = [WFLocationPickerViewController overlayWithCenterCoordinate:"overlayWithCenterCoordinate:radius:" radius:?];

  return v8;
}

- ($9AD185B98C4A4E0F06446A487FEC3478)mapRadiusView:(id)a3 boundingMapRectForOverlay:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 innerCircleBoundingMapRect];
  }

  else
  {
    [v4 boundingMapRect];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.var1.var1 = v16;
  result.var1.var0 = v15;
  result.var0.var1 = v14;
  result.var0.var0 = v13;
  return result;
}

- (id)overlayWithCenterCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if ([(WFLocationPickerViewController *)self proximityType]== 1)
  {
    v8 = [MEMORY[0x277CD4DA0] circleWithCenterCoordinate:latitude radius:{longitude, a4}];
  }

  else if ([(WFLocationPickerViewController *)self proximityType]== 2)
  {
    v9 = [(WFLocationPickerViewController *)self mapView];
    [v9 visibleMapRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v8 = [WFReverseCircleOverlay circleWithCenterCoordinate:latitude radius:longitude boundingMapRect:a4, v11, v13, v15, v17];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)mapRadiusView:(id)a3 radiusDidChange:(double)a4
{
  v6 = [(WFLocationPickerViewController *)self circularRegion];

  if (v6)
  {
    [(WFLocationPickerViewController *)self updateValueWithRadius:a4];
    v7 = [(WFLocationPickerViewController *)self circularRegion];
    [v7 center];
    v9 = v8;
    v11 = v10;

    [(WFLocationPickerViewController *)self showMapRegionForCoordinate:v9 radius:v11, a4];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)a3
{
  v18 = a3;
  v3 = [v18 overlays];
  v4 = [v3 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 boundingMapRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v18 visibleMapRect];
    v22.origin.x = v13;
    v22.origin.y = v14;
    v22.size.width = v15;
    v22.size.height = v16;
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    v21 = MKMapRectUnion(v20, v22);
    [v4 setBoundingRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    v17 = [v18 rendererForOverlay:v4];
    [v17 setNeedsDisplay];
  }
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = WFEnforceClass(v5, v6);

  v8 = [(WFLocationPickerViewController *)self proximityType];
  if (v8 == 1)
  {
    v9 = 0x277CD4DA8;
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    v9 = off_279ED9328;
LABEL_5:
    v10 = [objc_alloc(*v9) initWithCircle:v7];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = [MEMORY[0x277D75348] systemBlueColor];
  [v10 setStrokeColor:v11];

  v12 = [MEMORY[0x277D75348] systemBlueColor];
  v13 = [v12 colorWithAlphaComponent:0.15];
  [v10 setFillColor:v13];

  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];
  v16 = v15 <= 1.0;
  v17 = 2.0;
  if (!v16)
  {
    v17 = 4.0;
  }

  [v10 setLineWidth:v17];

  return v10;
}

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v4 = [(WFLocationPickerViewController *)self dragView:a3];
  [v4 removeHandle:1];
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([(WFLocationPickerViewController *)self proximityType])
  {
    v7 = [(WFLocationPickerViewController *)self dragView];
    v8 = [v6 annotation];
    v9 = [v11 overlays];
    v10 = [v9 firstObject];
    [v7 addHandleForAnnotation:v8 withOverlay:v10];
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v10 = a3;
  if ([(WFLocationPickerViewController *)self proximityType])
  {
    v5 = [(WFLocationPickerViewController *)self dragView];
    v6 = [v10 annotations];
    v7 = [v6 lastObject];
    v8 = [v10 overlays];
    v9 = [v8 lastObject];
    [v5 addHandleForAnnotation:v7 withOverlay:v9];
  }
}

- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4
{
  v4 = [(WFLocationPickerViewController *)self dragView:a3];
  [v4 removeHandle:1];
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CD4ED0]) initWithAnnotation:v4 reuseIdentifier:@"marker"];
    [v5 setTitleVisibility:1];
    [v5 setSubtitleVisibility:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setRegionValueWithPlacemark:(id)a3 radius:(double)a4
{
  v20 = a3;
  v6 = [v20 location];
  if (a4 < 100.0)
  {
    a4 = 100.0;
  }

  v7 = [v20 name];

  v8 = objc_alloc(MEMORY[0x277CBFBC8]);
  [v6 coordinate];
  v10 = v9;
  v12 = v11;
  if (v7)
  {
    v13 = [v20 name];
    v14 = [v8 initWithCenter:v13 radius:v10 identifier:{v12, a4}];
  }

  else
  {
    v13 = [(WFLocationPickerViewController *)self value];
    v15 = [v13 locationName];
    v14 = [v8 initWithCenter:v15 radius:v10 identifier:{v12, a4}];
  }

  v16 = objc_alloc(MEMORY[0x277CBFC40]);
  v17 = [v20 addressDictionary];
  v18 = [v16 initWithLocation:v6 addressDictionary:v17 region:v14 areasOfInterest:0];

  v19 = [objc_alloc(MEMORY[0x277D7C620]) initWithPlacemark:v18];
  [(WFLocationPickerViewController *)self setValue:v19];
}

- (void)setLocationValueWithPlacemark:(id)a3
{
  v4 = MEMORY[0x277D7C620];
  v5 = a3;
  v6 = [[v4 alloc] initWithPlacemark:v5];

  [(WFLocationPickerViewController *)self setValue:v6];
}

- (void)updateValueWithRadius:(double)a3
{
  v5 = [(WFLocationPickerViewController *)self value];
  v6 = [v5 placemark];

  [(WFLocationPickerViewController *)self setRegionValueWithPlacemark:v6 radius:a3];
}

- (void)updateValueWithMapItem:(id)a3
{
  v7 = a3;
  v4 = [(WFLocationPickerViewController *)self pickerType];
  if (v4 == 1)
  {
    v5 = CLPlacemarkFromMapItem(v7);
    v6 = [(WFLocationPickerViewController *)self circularRegion];
    [v6 radius];
    [(WFLocationPickerViewController *)self setRegionValueWithPlacemark:v5 radius:?];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = CLPlacemarkFromMapItem(v7);
    [(WFLocationPickerViewController *)self setLocationValueWithPlacemark:v5];
  }

LABEL_6:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v8 = [(WFLocationPickerViewController *)self selectedIndexPath];
  v9 = [v7 cellForRowAtIndexPath:v8];
  [v9 setAccessoryType:0];

  v10 = [v7 cellForRowAtIndexPath:v6];

  [v10 setAccessoryType:3];
  [(WFLocationPickerViewController *)self setSelectedIndexPath:v6];
  v11 = [(WFLocationPickerViewController *)self firstRecentRowIndex];
  v12 = [(WFLocationPickerViewController *)self firstLocalSearchResultRowIndex];
  v13 = [v6 row];

  v14 = [(WFLocationPickerViewController *)self currentLocationRowIndex];
  v15 = v14;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL || v13 < v11)
  {
    if (v13 != v14)
    {
      if (v12 == 0x7FFFFFFFFFFFFFFFLL || v13 < v12)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v16 = [(WFLocationPickerViewController *)self lastRecentRowIndex];
  v18 = v12 != 0x7FFFFFFFFFFFFFFFLL && v13 >= v12;
  if (v13 == v15)
  {
LABEL_14:
    if (![(WFLocationPickerViewController *)self resolvesCurrentLocationToPlacemark])
    {
      v24 = [objc_alloc(MEMORY[0x277D7C620]) initWithCurrentLocation];
      [(WFLocationPickerViewController *)self setValue:v24];
      goto LABEL_20;
    }

    v19 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    v20 = [(WFLocationPickerViewController *)self currentLocation];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __68__WFLocationPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v26[3] = &unk_279EDBFC8;
    v26[4] = self;
    [v19 reverseGeocodeLocation:v20 completionHandler:v26];

LABEL_24:
    return;
  }

  if (v13 <= v16)
  {
    v23 = [(WFLocationPickerViewController *)self recents];
    v19 = [v23 objectAtIndex:v13 - v11];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__WFLocationPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v25[3] = &unk_279EDC090;
    v25[4] = self;
    [(WFLocationPickerViewController *)self getMapItemFromRecentContact:v19 completionHandler:v25];
    goto LABEL_24;
  }

  if (!v18)
  {
    return;
  }

LABEL_18:
  v21 = v13 - v12;
  v22 = [(WFLocationPickerViewController *)self localSearchResults];
  v24 = [v22 objectAtIndex:v21];

  [(WFLocationPickerViewController *)self updateValueWithMapItem:v24];
LABEL_20:
}

void __68__WFLocationPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 count])
  {
    v3 = [v10 firstObject];
    v4 = [v10 firstObject];
    v5 = [v4 name];
  }

  else
  {
    v5 = WFLocalizedString(@"Unknown Location");
    v6 = MEMORY[0x277CBFC40];
    v4 = [*(a1 + 32) currentLocation];
    v3 = [v6 placemarkWithLocation:v4 name:v5 postalAddress:0];
  }

  v7 = [objc_alloc(MEMORY[0x277D7C620]) initWithLocationName:v5 placemark:v3];
  [*(a1 + 32) setValue:v7];

  v8 = *(a1 + 32);
  v9 = MKMapItemWithPlacemark(v3);
  [v8 updateValueWithMapItem:v9];
}

void __68__WFLocationPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = getWFGeneralLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[WFLocationPickerViewController tableView:didSelectRowAtIndexPath:]_block_invoke_2";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_2743F0000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get map item: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) updateValueWithMapItem:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"locationCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"locationCell"];
  }

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v9 = [v7 textLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  v11 = [v7 detailTextLabel];
  [v11 setFont:v10];

  v12 = [(WFLocationPickerViewController *)self firstRecentRowIndex];
  v13 = [(WFLocationPickerViewController *)self firstLocalSearchResultRowIndex];
  v14 = [v6 row];
  if (v14 == [(WFLocationPickerViewController *)self currentLocationRowIndex])
  {
    v15 = WFLocalizedString(@"Current Location");
    v16 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill"];
    v17 = [MEMORY[0x277D75348] labelColor];
    v18 = 0;
    goto LABEL_14;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || [v6 row] < v12 || (v19 = objc_msgSend(v6, "row"), v19 > -[WFLocationPickerViewController lastRecentRowIndex](self, "lastRecentRowIndex")))
  {
    if (v13 == 0x7FFFFFFFFFFFFFFFLL || [v6 row] < v13)
    {
      v17 = 0;
      v16 = 0;
      v18 = 0;
      v15 = 0;
      goto LABEL_14;
    }

    v20 = [v6 row] - v13;
    v21 = [(WFLocationPickerViewController *)self localSearchResults];
    v22 = [v21 objectAtIndexedSubscript:v20];

    v15 = [v22 name];
    v23 = [v22 _shortAddress];
  }

  else
  {
    v24 = [v6 row] - v12;
    v25 = [(WFLocationPickerViewController *)self recents];
    v22 = [v25 objectAtIndexedSubscript:v24];

    v15 = [v22 displayName];
    v23 = [v22 address];
  }

  v18 = v23;
  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"mappin.and.ellipse"];
  v17 = [MEMORY[0x277D75348] systemRedColor];

LABEL_14:
  v26 = [v7 textLabel];
  [v26 setText:v15];

  v27 = [v7 detailTextLabel];
  [v27 setText:v18];

  v28 = [v7 imageView];
  [v28 setImage:v16];

  v29 = [v7 imageView];
  [v29 setTintColor:v17];

  v30 = [(WFLocationPickerViewController *)self selectedIndexPath];
  if ([v6 isEqual:v30])
  {
    if ([(WFLocationPickerViewController *)self hasLocation])
    {
      v31 = 3;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  [v7 setAccessoryType:v31];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setOpaque:0];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFLocationPickerViewController *)self currentLocationRowIndex:a3];
  v6 = [(WFLocationPickerViewController *)self recents];
  v7 = [v6 count];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = [(WFLocationPickerViewController *)self localSearchResults];
  v10 = [v9 count];

  return v8 + v10;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v9 = a4;
  v5 = [(WFLocationPickerViewController *)self currentLocation];
  v6 = [v9 firstObject];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [v9 firstObject];
    [(WFLocationPickerViewController *)self setCurrentLocation:v8];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFTriggersLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[WFLocationPickerViewController locationManagerDidChangeAuthorization:]";
    v8 = 1024;
    v9 = [v4 authorizationStatus];
    _os_log_impl(&dword_2743F0000, v5, OS_LOG_TYPE_DEBUG, "%s locationManager:didChangeAuthorizationStatus: got status: %d", &v6, 0x12u);
  }

  -[WFLocationPickerViewController setCurrentAppLocationAuthorizationStatus:](self, "setCurrentAppLocationAuthorizationStatus:", [v4 authorizationStatus]);
  [(WFLocationPickerViewController *)self reloadData];
}

- (void)checkLocationAuthorization
{
  v10 = *MEMORY[0x277D85DE8];
  [(WFLocationPickerViewController *)self setCurrentAppLocationAuthorizationStatus:WFCLLocationManagerAuthorizationStatusForWorkflowEnvironment()];
  v3 = getWFTriggersLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[WFLocationPickerViewController checkLocationAuthorization]";
    v8 = 1024;
    v9 = [(WFLocationPickerViewController *)self currentAppLocationAuthorizationStatus];
    _os_log_impl(&dword_2743F0000, v3, OS_LOG_TYPE_DEBUG, "%s Current CLAuthorizationStatus: %d", &v6, 0x12u);
  }

  if (![(WFLocationPickerViewController *)self currentAppLocationAuthorizationStatus])
  {
    v4 = getWFTriggersLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[WFLocationPickerViewController checkLocationAuthorization]";
      _os_log_impl(&dword_2743F0000, v4, OS_LOG_TYPE_DEBUG, "%s Rrequesting WhenInUse…", &v6, 0xCu);
    }

    v5 = [(WFLocationPickerViewController *)self locationManager];
    [v5 requestWhenInUseAuthorization];
  }
}

- (void)done:(id)a3
{
  v5 = [(WFLocationPickerViewController *)self delegate];
  v4 = [(WFLocationPickerViewController *)self value];
  [v5 locationPicker:self didFinishWithValue:v4];
}

- (void)cancel:(id)a3
{
  v4 = [(WFLocationPickerViewController *)self delegate];
  [v4 locationPickerDidCancel:self];
}

- (id)circularRegion
{
  v2 = [(WFLocationPickerViewController *)self value];
  v3 = [v2 placemark];
  v4 = [v3 region];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setValue:(id)a3
{
  objc_storeStrong(&self->_value, a3);

  [(WFLocationPickerViewController *)self updateUI];
}

- (void)setRegionCondition:(unint64_t)a3
{
  if (self->_regionCondition != a3)
  {
    self->_regionCondition = a3;
    v5 = [(WFLocationPickerViewController *)self proximityType];
    v6 = [(WFLocationPickerViewController *)self dragView];
    [v6 setProximity:v5];
  }
}

- (void)showMapRegionForCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4
{
  v5 = MEMORY[0x277C59340](self, a2, a3, *&a3.longitude, a4 * 3.5, a4 * 3.5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(WFLocationPickerViewController *)self mapView];
  [v12 regionThatFits:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (fabs(v16) <= 180.0 && fabs(v14) <= 90.0 && v18 >= 0.0 && v18 <= 180.0 && v20 >= 0.0 && v20 <= 360.0)
  {
    v21 = [(WFLocationPickerViewController *)self mapView];
    [v21 setRegion:0 animated:{v14, v16, v18, v20}];
  }
}

- (id)locationFromRecentContact:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 objectForKey:@"latitude"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 objectForKey:@"longitude"];
  [v7 doubleValue];
  v9 = v8;

  v10 = CLLocationCoordinate2DMake(v6, v9);
  v11 = [v3 objectForKey:@"hAccuracy"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v3 objectForKey:@"vAccuracy"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v3 objectForKey:@"referenceFrame"];
  v18 = [v17 integerValue];

  v19 = objc_alloc(MEMORY[0x277CE41F8]);
  v20 = [MEMORY[0x277CBEAA8] date];
  v21 = [v19 initWithCoordinate:v20 altitude:v18 horizontalAccuracy:v10.latitude verticalAccuracy:v10.longitude timestamp:0.0 referenceFrame:{v13, v16}];

  return v21;
}

- (void)getPlacemarkFromLocation:(id)a3 streetAddress:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8)
  {
    v11 = [v8 postalAddress];
    v12 = objc_alloc(MEMORY[0x277CD4F00]);
    [v7 coordinate];
    v13 = [v12 initWithCoordinate:v11 postalAddress:?];
    (v10)[2](v10, v13, 0);
  }

  else
  {
    if (!(v7 | v8))
    {
      (*(v9 + 2))(v9, 0, 0);
      goto LABEL_11;
    }

    if (v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = v8;
    }

    v11 = [MEMORY[0x277CFC2F8] itemWithObject:v14];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91__WFLocationPickerViewController_getPlacemarkFromLocation_streetAddress_completionHandler___block_invoke;
    v15[3] = &unk_279EDC068;
    v16 = v10;
    [v11 getObjectRepresentation:v15 forClass:objc_opt_class()];
  }

LABEL_11:
}

- (void)getMapItemFromRecentContact:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 metadata];
  v9 = [v8 objectForKey:@"mapKitHandle"];
  v10 = objc_opt_class();
  v11 = WFEnforceClass(v9, v10);

  if (v11)
  {
    v12 = MEMORY[0x277CD4E80];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __80__WFLocationPickerViewController_getMapItemFromRecentContact_completionHandler___block_invoke;
    v31[3] = &unk_279EDC018;
    v32 = v7;
    v13 = v7;
    [v12 _mapItemFromHandle:v11 completionHandler:v31];
    v14 = v32;
  }

  else
  {
    v13 = [v6 address];
    v15 = [MEMORY[0x277CFC528] streetAddressesInString:v13 error:0];
    v14 = [v15 firstObject];

    v16 = [v8 objectForKey:@"latitude"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass(v16, v17);

    v19 = [v8 objectForKey:@"longitude"];
    v20 = objc_opt_class();
    v21 = WFEnforceClass(v19, v20);

    v22 = 0;
    if (v18 && v21)
    {
      v23 = objc_alloc(MEMORY[0x277CE41F8]);
      [v18 doubleValue];
      v25 = v24;
      [v21 doubleValue];
      v22 = [v23 initWithLatitude:v25 longitude:v26];
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __80__WFLocationPickerViewController_getMapItemFromRecentContact_completionHandler___block_invoke_3;
    v28[3] = &unk_279EDC040;
    v29 = v6;
    v30 = v7;
    v27 = v7;
    [(WFLocationPickerViewController *)self getPlacemarkFromLocation:v22 streetAddress:v14 completionHandler:v28];
  }
}

void __80__WFLocationPickerViewController_getMapItemFromRecentContact_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__WFLocationPickerViewController_getMapItemFromRecentContact_completionHandler___block_invoke_2;
  block[3] = &unk_279EDBFF0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__WFLocationPickerViewController_getMapItemFromRecentContact_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = MKMapItemWithPlacemark(a2);
    v7 = [*(a1 + 32) displayName];
    [v6 setName:v7];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 136315650;
      v11 = "[WFLocationPickerViewController getMapItemFromRecentContact:completionHandler:]_block_invoke_3";
      v12 = 2114;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2743F0000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get map item for recent contact: %{public}@ %@", &v10, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)displayLocationCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v13 = [(WFLocationPickerViewController *)self mapView];
  v6 = [v13 annotations];
  [v13 removeAnnotations:v6];

  v7 = [v13 overlays];
  [v13 removeOverlays:v7];

  v8 = [(WFLocationPickerViewController *)self circularRegion];
  [v8 radius];
  v10 = v9;

  if (v10 < 100.0)
  {
    v10 = 100.0;
  }

  [(WFLocationPickerViewController *)self showMapRegionForCoordinate:latitude radius:longitude, v10];
  v11 = objc_alloc_init(MEMORY[0x277CD4F08]);
  [v11 setCoordinate:{latitude, longitude}];
  [v13 addAnnotation:v11];
  v12 = [(WFLocationPickerViewController *)self overlayWithCenterCoordinate:latitude radius:longitude, v10];
  if (v12)
  {
    [v13 addOverlay:v12];
  }

  [v13 selectAnnotation:v11 animated:0];
}

- (unint64_t)proximityType
{
  if ([(WFLocationPickerViewController *)self regionCondition])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)hasLocation
{
  v2 = [(WFLocationPickerViewController *)self value];
  v3 = v2 != 0;

  return v3;
}

- (void)updateMapHeight
{
  v3 = [(WFLocationPickerViewController *)self mapHeightConstraint];

  if (v3)
  {
    [(WFLocationPickerViewController *)self mapHeight];
    v5 = v4;
    v6 = [(WFLocationPickerViewController *)self mapHeightConstraint];
    [v6 setConstant:v5];
  }
}

- (void)setupMap
{
  v3 = [(WFLocationPickerViewController *)self circularRegion];
  if (v3)
  {
    v4 = v3;
    v5 = [(WFLocationPickerViewController *)self mapView];
    v6 = [v5 superview];

    if (v6)
    {
      v7 = [(WFLocationPickerViewController *)self circularRegion];
      [v7 center];
      [(WFLocationPickerViewController *)self displayLocationCoordinate:?];
    }
  }
}

- (void)reloadData
{
  v2 = [(WFLocationPickerViewController *)self tableView];
  [v2 reloadData];
}

- (int64_t)firstLocalSearchResultRowIndex
{
  v3 = [(WFLocationPickerViewController *)self localSearchResults];
  v4 = [v3 count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = [(WFLocationPickerViewController *)self lastRecentRowIndex];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(WFLocationPickerViewController *)self currentLocationRowIndex];
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v6 + 1;
    }
  }

  return v5;
}

- (int64_t)lastRecentRowIndex
{
  v3 = [(WFLocationPickerViewController *)self firstRecentRowIndex];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
    v6 = [(WFLocationPickerViewController *)self recents];
    v4 = v5 + [v6 count] - 1;
  }

  return v4;
}

- (int64_t)firstRecentRowIndex
{
  v3 = [(WFLocationPickerViewController *)self recents];
  v4 = [v3 count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = [(WFLocationPickerViewController *)self currentLocationRowIndex];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v6 + 1;
    }
  }

  return v5;
}

- (int64_t)currentLocationRowIndex
{
  if ([(WFLocationPickerViewController *)self shouldShowCurrentLocationItem])
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setResolvesCurrentLocationToPlacemark:(BOOL)a3
{
  if (self->_resolvesCurrentLocationToPlacemark != a3)
  {
    self->_resolvesCurrentLocationToPlacemark = a3;
    if (a3)
    {
      v5 = WFCLLocationManagerWithOptions();
      locationManager = self->_locationManager;
      self->_locationManager = v5;

      [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    }

    else
    {
      [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
      v7 = self->_locationManager;
      self->_locationManager = 0;
    }

    [(WFLocationPickerViewController *)self reloadData];
  }
}

- (void)setAllowsPickingCurrentLocation:(BOOL)a3
{
  if (self->_allowsPickingCurrentLocation != a3)
  {
    self->_allowsPickingCurrentLocation = a3;
    if (!self->_locationManager)
    {
      v5 = WFCLLocationManagerWithOptions();
      locationManager = self->_locationManager;
      self->_locationManager = v5;

      [(WFLocationPickerViewController *)self checkLocationAuthorization];
    }

    [(WFLocationPickerViewController *)self reloadData];
  }
}

- (BOOL)shouldShowCurrentLocationItem
{
  v3 = [(WFLocationPickerViewController *)self allowsPickingCurrentLocation];
  if (v3)
  {

    LOBYTE(v3) = [(WFLocationPickerViewController *)self hasSufficientLocationAuthorization];
  }

  return v3;
}

- (void)updateRecentsWithSearchText:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277D00F30];
    v5 = *MEMORY[0x277D00EF8];
    v22 = *MEMORY[0x277D00ED8];
    v6 = MEMORY[0x277CBEA60];
    v7 = a3;
    v8 = [v6 arrayWithObjects:&v22 count:1];
    v9 = [v4 predicateForKey:v5 inCollection:v8];
    v23[0] = v9;
    v10 = MEMORY[0x277D00F30];
    v11 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EF0] matchingText:v7 comparison:1];
    v21[0] = v11;
    v12 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EE8] matchingText:v7 comparison:1];

    v21[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v14 = [v10 predicateSatisfyingAnySubpredicate:v13];
    v23[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v16 = [v4 predicateSatisfyingAllSubpredicates:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_alloc_init(MEMORY[0x277D00F38]);
  [v17 setSearchPredicate:v16];
  [v17 setDomains:&unk_288386A58];
  v18 = [MEMORY[0x277D00F38] frecencyComparator];
  [v17 setComparator:v18];

  v19 = [MEMORY[0x277D00F28] defaultInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__WFLocationPickerViewController_updateRecentsWithSearchText___block_invoke;
  v20[3] = &unk_279EDBFC8;
  v20[4] = self;
  [v19 performRecentsSearch:v17 queue:MEMORY[0x277D85CD0] completion:v20];
}

void __62__WFLocationPickerViewController_updateRecentsWithSearchText___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setRecents:a2];
  v3 = [*(a1 + 32) tableView];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) tableView];
    v6 = [v5 superview];

    if (v6)
    {
      v7 = *(a1 + 32);

      [v7 reloadData];
    }
  }
}

- (void)updateUIWithValue:(id)a3
{
  v15 = a3;
  [(WFLocationPickerViewController *)self loadViewIfNeeded];
  v4 = [(WFLocationPickerViewController *)self hasLocation];
  v5 = [v15 defaultSearchText];
  v6 = [(WFLocationPickerViewController *)self searchBar];
  [v6 setText:v5];

  if (v4 && [(WFLocationPickerViewController *)self showsMapView])
  {
    v7 = [(WFLocationPickerViewController *)self searchBar];
    [v7 resignFirstResponder];

    v8 = [(WFLocationPickerViewController *)self view];
    v9 = [(WFLocationPickerViewController *)self mapView];
    [v8 addSubview:v9];

    v10 = [(WFLocationPickerViewController *)self view];
    v11 = [(WFLocationPickerViewController *)self dividerView];
    [v10 addSubview:v11];
  }

  else
  {
    v12 = [(WFLocationPickerViewController *)self mapView];
    [v12 removeFromSuperview];

    v10 = [(WFLocationPickerViewController *)self dividerView];
    [v10 removeFromSuperview];
  }

  if (-[WFLocationPickerViewController allowsPickingCurrentLocation](self, "allowsPickingCurrentLocation") && [v15 isCurrentLocation])
  {
    v13 = [MEMORY[0x277CCAA70] indexPathForRow:-[WFLocationPickerViewController currentLocationRowIndex](self inSection:{"currentLocationRowIndex"), 0}];
    [(WFLocationPickerViewController *)self setSelectedIndexPath:v13];
  }

  v14 = [(WFLocationPickerViewController *)self view];
  [v14 setNeedsUpdateConstraints];
}

- (void)updateUI
{
  v3 = [(WFLocationPickerViewController *)self value];
  [(WFLocationPickerViewController *)self updateUIWithValue:v3];
}

- (MKMapView)mapView
{
  if ([(WFLocationPickerViewController *)self showsMapView]&& !self->_mapView)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD4EC8]);
    mapView = self->_mapView;
    self->_mapView = v3;

    [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKMapView *)self->_mapView setDelegate:self];
    [(MKMapView *)self->_mapView setPitchEnabled:0];
    [(MKMapView *)self->_mapView setRotateEnabled:0];
    [(MKMapView *)self->_mapView setShowsUserLocation:1];
    v5 = [(WFLocationPickerViewController *)self dragView];
    [v5 setMapView:self->_mapView];
    [(MKMapView *)self->_mapView addSubview:v5];
  }

  v6 = self->_mapView;

  return v6;
}

- (WFLocationTriggerEditorMapDragRadiusView)dragView
{
  if ([(WFLocationPickerViewController *)self showsMapView]&& !self->_dragView)
  {
    v3 = [WFLocationTriggerEditorMapDragRadiusView alloc];
    v4 = [(WFLocationTriggerEditorMapDragRadiusView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    dragView = self->_dragView;
    self->_dragView = v4;

    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setAutoresizingMask:18];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setBackgroundColor:v6];

    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setMapView:self->_mapView];
    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setDelegate:self];
    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setProximity:[(WFLocationPickerViewController *)self proximityType]];
  }

  v7 = self->_dragView;

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = WFLocationPickerViewController;
  v4 = a3;
  [(WFLocationPickerViewController *)&v12 traitCollectionDidChange:v4];
  v5 = [(WFLocationPickerViewController *)self traitCollection:v12.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(WFLocationPickerViewController *)self traitCollection];
    v9 = [v8 userInterfaceStyle];
    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 2;
    }

    v11 = [(WFLocationPickerViewController *)self searchBar];
    [v11 setKeyboardAppearance:v10];
  }
}

- (void)updateViewConstraints
{
  v82.receiver = self;
  v82.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v82 updateViewConstraints];
  v3 = objc_opt_new();
  v4 = [(WFLocationPickerViewController *)self tableView];
  v5 = [v4 leadingAnchor];
  v6 = [(WFLocationPickerViewController *)self view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
  [v3 addObject:v9];

  v10 = [(WFLocationPickerViewController *)self tableView];
  v11 = [v10 trailingAnchor];
  v12 = [(WFLocationPickerViewController *)self view];
  v13 = [v12 safeAreaLayoutGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(WFLocationPickerViewController *)self tableView];
  v17 = [v16 topAnchor];
  v18 = [(WFLocationPickerViewController *)self view];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];
  [v3 addObject:v21];

  v22 = [(WFLocationPickerViewController *)self dividerView];
  v23 = [v22 superview];

  v24 = [(WFLocationPickerViewController *)self tableView];
  v25 = [v24 bottomAnchor];
  if (v23)
  {
    v26 = [(WFLocationPickerViewController *)self dividerView];
    [v26 topAnchor];
  }

  else
  {
    v26 = [(WFLocationPickerViewController *)self view];
    [v26 bottomAnchor];
  }
  v27 = ;
  v28 = [v25 constraintEqualToAnchor:v27];
  [v3 addObject:v28];

  v29 = [(WFLocationPickerViewController *)self dividerView];
  v30 = [v29 superview];

  if (v30)
  {
    v31 = [(WFLocationPickerViewController *)self dividerView];
    v32 = [v31 leadingAnchor];
    v33 = [(WFLocationPickerViewController *)self view];
    v34 = [v33 safeAreaLayoutGuide];
    v35 = [v34 leadingAnchor];
    v36 = [v32 constraintEqualToAnchor:v35];
    [v3 addObject:v36];

    v37 = [(WFLocationPickerViewController *)self dividerView];
    v38 = [v37 trailingAnchor];
    v39 = [(WFLocationPickerViewController *)self view];
    v40 = [v39 safeAreaLayoutGuide];
    v41 = [v40 trailingAnchor];
    v42 = [v38 constraintEqualToAnchor:v41];
    [v3 addObject:v42];

    v43 = [(WFLocationPickerViewController *)self dividerView];
    v44 = [v43 heightAnchor];
    v45 = [MEMORY[0x277D759A0] mainScreen];
    [v45 scale];
    v47 = [v44 constraintEqualToConstant:1.0 / v46];
    [v3 addObject:v47];
  }

  v48 = [(WFLocationPickerViewController *)self mapView];
  v49 = [v48 superview];

  if (v49)
  {
    v50 = [(WFLocationPickerViewController *)self mapView];
    v51 = [v50 topAnchor];
    v52 = [(WFLocationPickerViewController *)self dividerView];
    v53 = [v52 bottomAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v3 addObject:v54];

    v55 = [(WFLocationPickerViewController *)self mapView];
    v56 = [v55 leadingAnchor];
    v57 = [(WFLocationPickerViewController *)self view];
    v58 = [v57 safeAreaLayoutGuide];
    v59 = [v58 leadingAnchor];
    v60 = [v56 constraintEqualToAnchor:v59];
    [v3 addObject:v60];

    v61 = [(WFLocationPickerViewController *)self mapView];
    v62 = [v61 trailingAnchor];
    v63 = [(WFLocationPickerViewController *)self view];
    v64 = [v63 safeAreaLayoutGuide];
    v65 = [v64 trailingAnchor];
    v66 = [v62 constraintEqualToAnchor:v65];
    [v3 addObject:v66];

    v67 = [(WFLocationPickerViewController *)self mapView];
    v68 = [v67 bottomAnchor];
    v69 = [(WFLocationPickerViewController *)self view];
    v70 = [v69 bottomAnchor];
    v71 = [v68 constraintEqualToAnchor:v70];
    [v3 addObject:v71];

    v72 = [(WFLocationPickerViewController *)self mapView];
    v73 = [v72 heightAnchor];
    [(WFLocationPickerViewController *)self mapHeight];
    v74 = [v73 constraintEqualToConstant:?];
    [(WFLocationPickerViewController *)self setMapHeightConstraint:v74];

    v75 = [(WFLocationPickerViewController *)self mapHeightConstraint];
    [v3 addObject:v75];
  }

  v76 = [(WFLocationPickerViewController *)self constraints];
  v77 = [v3 isEqual:v76];

  if ((v77 & 1) == 0)
  {
    v78 = MEMORY[0x277CCAAD0];
    v79 = [(WFLocationPickerViewController *)self constraints];
    [v78 deactivateConstraints:v79];

    [(WFLocationPickerViewController *)self setConstraints:v3];
    v80 = MEMORY[0x277CCAAD0];
    v81 = [(WFLocationPickerViewController *)self constraints];
    [v80 activateConstraints:v81];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v4 viewDidLayoutSubviews];
  [(WFLocationPickerViewController *)self setupMap];
  [(WFLocationPickerViewController *)self updateMapHeight];
  v3 = [(WFLocationPickerViewController *)self tableView];
  [v3 scrollToNearestSelectedRowAtScrollPosition:0 animated:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v6 viewDidDisappear:a3];
  v4 = [(WFLocationPickerViewController *)self locationManager];

  if (v4)
  {
    v5 = [(WFLocationPickerViewController *)self locationManager];
    [v5 stopUpdatingLocation];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v15 viewWillDisappear:a3];
  v4 = [(WFLocationPickerViewController *)self mapView];
  v5 = [(WFLocationPickerViewController *)self mapView];
  v6 = [v5 annotations];
  [v4 removeAnnotations:v6];

  v7 = [(WFLocationPickerViewController *)self mapView];
  v8 = [(WFLocationPickerViewController *)self mapView];
  v9 = [v8 overlays];
  [v7 removeOverlays:v9];

  v10 = [(WFLocationPickerViewController *)self mapView];
  [v10 setDelegate:0];

  v11 = [(WFLocationPickerViewController *)self mapView];
  [v11 setShowsUserLocation:0];

  v12 = [(WFLocationPickerViewController *)self searchBar];
  [v12 resignFirstResponder];

  v13 = [(WFLocationPickerViewController *)self navigationItem];
  v14 = [v13 searchController];
  [v14 setActive:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v6 viewDidAppear:a3];
  v4 = [(WFLocationPickerViewController *)self locationManager];

  if (v4)
  {
    v5 = [(WFLocationPickerViewController *)self locationManager];
    [v5 startUpdatingLocation];
  }

  [(WFLocationPickerViewController *)self setupMap];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v4 viewWillAppear:a3];
  [(WFLocationPickerViewController *)self checkLocationAuthorization];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v23 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  v8 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v23 setBackgroundColor:v8];

  v9 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [v9 setObscuresBackgroundDuringPresentation:0];
  [v9 setHidesNavigationBarDuringPresentation:0];
  [v9 setAutomaticallyShowsCancelButton:0];
  v10 = [(WFLocationPickerViewController *)self navigationItem];
  [v10 setSearchController:v9];

  v11 = [(WFLocationPickerViewController *)self navigationItem];
  [v11 setHidesSearchBarWhenScrolling:0];

  v12 = [v9 searchBar];
  searchBar = self->_searchBar;
  self->_searchBar = v12;

  [(UISearchBar *)self->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UISearchBar *)self->_searchBar setAutocorrectionType:1];
  v14 = WFLocalizedString(@"Search or Enter Address");
  [(UISearchBar *)self->_searchBar setPlaceholder:v14];

  [(UISearchBar *)self->_searchBar setTextContentType:*MEMORY[0x277D76FC8]];
  [(UISearchBar *)self->_searchBar setDelegate:self];
  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  dividerView = self->_dividerView;
  self->_dividerView = v15;

  v17 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  [(UIView *)self->_dividerView setBackgroundColor:v17];

  [(UIView *)self->_dividerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{v4, v5, v6, v7}];
  tableView = self->_tableView;
  self->_tableView = v18;

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x277D76F30]];
  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v20 _scaledValueForValue:44.0];
  [(UITableView *)self->_tableView setEstimatedRowHeight:?];

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = self->_tableView;
  v22 = [(UITableView *)v21 indexPathForSelectedRow];
  [(UITableView *)v21 deselectRowAtIndexPath:v22 animated:0];

  [(WFLocationPickerViewController *)self reloadData];
  [v23 addSubview:self->_tableView];
  [(WFLocationPickerViewController *)self setView:v23];
  [(WFLocationPickerViewController *)self updateUI];
}

- (WFLocationPickerViewController)initWithPickerType:(unint64_t)a3 value:(id)a4
{
  v7 = a4;
  v19.receiver = self;
  v19.super_class = WFLocationPickerViewController;
  v8 = [(WFLocationPickerViewController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_pickerType = a3;
    objc_storeStrong(&v8->_value, a4);
    v10 = [v7 placemark];

    if (v10)
    {
      v11 = [v7 placemark];
      v12 = MKMapItemWithPlacemark(v11);
      [(WFLocationPickerViewController *)v9 updateValueWithMapItem:v12];
    }

    [(WFLocationPickerViewController *)v9 updateRecentsWithSearchText:0];
    v13 = WFLocalizedString(@"Location");
    [(WFLocationPickerViewController *)v9 setTitle:v13];

    v14 = [(WFLocationPickerViewController *)v9 navigationItem];
    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v9 action:sel_cancel_];
    [v14 setLeftBarButtonItem:v15];

    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_done_];
    [v14 setRightBarButtonItem:v16];

    v17 = v9;
  }

  return v9;
}

@end