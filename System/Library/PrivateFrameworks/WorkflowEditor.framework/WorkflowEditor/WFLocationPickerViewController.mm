@interface WFLocationPickerViewController
- ($9AD185B98C4A4E0F06446A487FEC3478)mapRadiusView:(id)view boundingMapRectForOverlay:(id)overlay;
- (BOOL)hasLocation;
- (BOOL)shouldShowCurrentLocationItem;
- (MKMapView)mapView;
- (WFLocationPickerViewController)initWithPickerType:(unint64_t)type value:(id)value;
- (WFLocationPickerViewControllerDelegate)delegate;
- (WFLocationTriggerEditorMapDragRadiusView)dragView;
- (id)circularRegion;
- (id)locationFromRecentContact:(id)contact;
- (id)mapRadiusView:(id)view overlayForRadius:(double)radius;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)overlayWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)currentLocationRowIndex;
- (int64_t)firstLocalSearchResultRowIndex;
- (int64_t)firstRecentRowIndex;
- (int64_t)lastRecentRowIndex;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)proximityType;
- (void)cancel:(id)cancel;
- (void)checkLocationAuthorization;
- (void)displayLocationCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)done:(id)done;
- (void)getMapItemFromRecentContact:(id)contact completionHandler:(id)handler;
- (void)getPlacemarkFromLocation:(id)location streetAddress:(id)address completionHandler:(id)handler;
- (void)loadView;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)mapRadiusView:(id)view radiusDidChange:(double)change;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated;
- (void)mapViewDidChangeVisibleRegion:(id)region;
- (void)reloadData;
- (void)resetSearchResults;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)setAllowsPickingCurrentLocation:(BOOL)location;
- (void)setLocationValueWithPlacemark:(id)placemark;
- (void)setRegionCondition:(unint64_t)condition;
- (void)setRegionValueWithPlacemark:(id)placemark radius:(double)radius;
- (void)setResolvesCurrentLocationToPlacemark:(BOOL)placemark;
- (void)setValue:(id)value;
- (void)setupMap;
- (void)showMapRegionForCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateMapHeight;
- (void)updateRecentsWithSearchText:(id)text;
- (void)updateUI;
- (void)updateUIWithValue:(id)value;
- (void)updateValueWithMapItem:(id)item;
- (void)updateValueWithRadius:(double)radius;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WFLocationPickerViewController

- (WFLocationPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  [(WFLocationPickerViewController *)self resetSearchResults];
  v6 = [changeCopy length];

  if (v6)
  {
    searchBar = [(WFLocationPickerViewController *)self searchBar];
    text = [searchBar text];
    [(WFLocationPickerViewController *)self updateRecentsWithSearchText:text];

    v9 = objc_alloc_init(MEMORY[0x277CD4E38]);
    searchBar2 = [(WFLocationPickerViewController *)self searchBar];
    text2 = [searchBar2 text];
    [v9 setNaturalLanguageQuery:text2];

    v12 = [objc_alloc(MEMORY[0x277CD4E20]) initWithRequest:v9];
    [(WFLocationPickerViewController *)self setLocalSearch:v12];

    localSearch = [(WFLocationPickerViewController *)self localSearch];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__WFLocationPickerViewController_searchBar_textDidChange___block_invoke;
    v14[3] = &unk_279EDC0B8;
    v14[4] = self;
    [localSearch startWithCompletionHandler:v14];
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
  localSearch = [(WFLocationPickerViewController *)self localSearch];

  if (localSearch)
  {
    localSearch2 = [(WFLocationPickerViewController *)self localSearch];
    [localSearch2 cancel];

    [(WFLocationPickerViewController *)self setLocalSearch:0];
  }

  [(WFLocationPickerViewController *)self setLocalSearchResults:0];
}

- (id)mapRadiusView:(id)view overlayForRadius:(double)radius
{
  mapView = [(WFLocationPickerViewController *)self mapView];
  annotations = [mapView annotations];
  firstObject = [annotations firstObject];

  [firstObject coordinate];
  v8 = [WFLocationPickerViewController overlayWithCenterCoordinate:"overlayWithCenterCoordinate:radius:" radius:?];

  return v8;
}

- ($9AD185B98C4A4E0F06446A487FEC3478)mapRadiusView:(id)view boundingMapRectForOverlay:(id)overlay
{
  overlayCopy = overlay;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [overlayCopy innerCircleBoundingMapRect];
  }

  else
  {
    [overlayCopy boundingMapRect];
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

- (id)overlayWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if ([(WFLocationPickerViewController *)self proximityType]== 1)
  {
    v8 = [MEMORY[0x277CD4DA0] circleWithCenterCoordinate:latitude radius:{longitude, radius}];
  }

  else if ([(WFLocationPickerViewController *)self proximityType]== 2)
  {
    mapView = [(WFLocationPickerViewController *)self mapView];
    [mapView visibleMapRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v8 = [WFReverseCircleOverlay circleWithCenterCoordinate:latitude radius:longitude boundingMapRect:radius, v11, v13, v15, v17];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)mapRadiusView:(id)view radiusDidChange:(double)change
{
  circularRegion = [(WFLocationPickerViewController *)self circularRegion];

  if (circularRegion)
  {
    [(WFLocationPickerViewController *)self updateValueWithRadius:change];
    circularRegion2 = [(WFLocationPickerViewController *)self circularRegion];
    [circularRegion2 center];
    v9 = v8;
    v11 = v10;

    [(WFLocationPickerViewController *)self showMapRegionForCoordinate:v9 radius:v11, change];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)region
{
  regionCopy = region;
  overlays = [regionCopy overlays];
  firstObject = [overlays firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [firstObject boundingMapRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [regionCopy visibleMapRect];
    v22.origin.x = v13;
    v22.origin.y = v14;
    v22.size.width = v15;
    v22.size.height = v16;
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    v21 = MKMapRectUnion(v20, v22);
    [firstObject setBoundingRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    v17 = [regionCopy rendererForOverlay:firstObject];
    [v17 setNeedsDisplay];
  }
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  overlayCopy = overlay;
  v6 = objc_opt_class();
  v7 = WFEnforceClass(overlayCopy, v6);

  proximityType = [(WFLocationPickerViewController *)self proximityType];
  if (proximityType == 1)
  {
    v9 = 0x277CD4DA8;
    goto LABEL_5;
  }

  if (proximityType == 2)
  {
    v9 = off_279ED9328;
LABEL_5:
    v10 = [objc_alloc(*v9) initWithCircle:v7];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v10 setStrokeColor:systemBlueColor];

  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
  v13 = [systemBlueColor2 colorWithAlphaComponent:0.15];
  [v10 setFillColor:v13];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v16 = v15 <= 1.0;
  v17 = 2.0;
  if (!v16)
  {
    v17 = 4.0;
  }

  [v10 setLineWidth:v17];

  return v10;
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  v4 = [(WFLocationPickerViewController *)self dragView:view];
  [v4 removeHandle:1];
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  if ([(WFLocationPickerViewController *)self proximityType])
  {
    dragView = [(WFLocationPickerViewController *)self dragView];
    annotation = [annotationViewCopy annotation];
    overlays = [viewCopy overlays];
    firstObject = [overlays firstObject];
    [dragView addHandleForAnnotation:annotation withOverlay:firstObject];
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  if ([(WFLocationPickerViewController *)self proximityType])
  {
    dragView = [(WFLocationPickerViewController *)self dragView];
    annotations = [viewCopy annotations];
    lastObject = [annotations lastObject];
    overlays = [viewCopy overlays];
    lastObject2 = [overlays lastObject];
    [dragView addHandleForAnnotation:lastObject withOverlay:lastObject2];
  }
}

- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated
{
  v4 = [(WFLocationPickerViewController *)self dragView:view];
  [v4 removeHandle:1];
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CD4ED0]) initWithAnnotation:annotationCopy reuseIdentifier:@"marker"];
    [v5 setTitleVisibility:1];
    [v5 setSubtitleVisibility:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setRegionValueWithPlacemark:(id)placemark radius:(double)radius
{
  placemarkCopy = placemark;
  location = [placemarkCopy location];
  if (radius < 100.0)
  {
    radius = 100.0;
  }

  name = [placemarkCopy name];

  v8 = objc_alloc(MEMORY[0x277CBFBC8]);
  [location coordinate];
  v10 = v9;
  v12 = v11;
  if (name)
  {
    name2 = [placemarkCopy name];
    v14 = [v8 initWithCenter:name2 radius:v10 identifier:{v12, radius}];
  }

  else
  {
    name2 = [(WFLocationPickerViewController *)self value];
    locationName = [name2 locationName];
    v14 = [v8 initWithCenter:locationName radius:v10 identifier:{v12, radius}];
  }

  v16 = objc_alloc(MEMORY[0x277CBFC40]);
  addressDictionary = [placemarkCopy addressDictionary];
  v18 = [v16 initWithLocation:location addressDictionary:addressDictionary region:v14 areasOfInterest:0];

  v19 = [objc_alloc(MEMORY[0x277D7C620]) initWithPlacemark:v18];
  [(WFLocationPickerViewController *)self setValue:v19];
}

- (void)setLocationValueWithPlacemark:(id)placemark
{
  v4 = MEMORY[0x277D7C620];
  placemarkCopy = placemark;
  v6 = [[v4 alloc] initWithPlacemark:placemarkCopy];

  [(WFLocationPickerViewController *)self setValue:v6];
}

- (void)updateValueWithRadius:(double)radius
{
  value = [(WFLocationPickerViewController *)self value];
  placemark = [value placemark];

  [(WFLocationPickerViewController *)self setRegionValueWithPlacemark:placemark radius:radius];
}

- (void)updateValueWithMapItem:(id)item
{
  itemCopy = item;
  pickerType = [(WFLocationPickerViewController *)self pickerType];
  if (pickerType == 1)
  {
    v5 = CLPlacemarkFromMapItem(itemCopy);
    circularRegion = [(WFLocationPickerViewController *)self circularRegion];
    [circularRegion radius];
    [(WFLocationPickerViewController *)self setRegionValueWithPlacemark:v5 radius:?];
  }

  else
  {
    if (pickerType)
    {
      goto LABEL_6;
    }

    v5 = CLPlacemarkFromMapItem(itemCopy);
    [(WFLocationPickerViewController *)self setLocationValueWithPlacemark:v5];
  }

LABEL_6:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  selectedIndexPath = [(WFLocationPickerViewController *)self selectedIndexPath];
  v9 = [viewCopy cellForRowAtIndexPath:selectedIndexPath];
  [v9 setAccessoryType:0];

  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v10 setAccessoryType:3];
  [(WFLocationPickerViewController *)self setSelectedIndexPath:pathCopy];
  firstRecentRowIndex = [(WFLocationPickerViewController *)self firstRecentRowIndex];
  firstLocalSearchResultRowIndex = [(WFLocationPickerViewController *)self firstLocalSearchResultRowIndex];
  v13 = [pathCopy row];

  currentLocationRowIndex = [(WFLocationPickerViewController *)self currentLocationRowIndex];
  v15 = currentLocationRowIndex;
  if (firstRecentRowIndex == 0x7FFFFFFFFFFFFFFFLL || v13 < firstRecentRowIndex)
  {
    if (v13 != currentLocationRowIndex)
    {
      if (firstLocalSearchResultRowIndex == 0x7FFFFFFFFFFFFFFFLL || v13 < firstLocalSearchResultRowIndex)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  lastRecentRowIndex = [(WFLocationPickerViewController *)self lastRecentRowIndex];
  v18 = firstLocalSearchResultRowIndex != 0x7FFFFFFFFFFFFFFFLL && v13 >= firstLocalSearchResultRowIndex;
  if (v13 == v15)
  {
LABEL_14:
    if (![(WFLocationPickerViewController *)self resolvesCurrentLocationToPlacemark])
    {
      initWithCurrentLocation = [objc_alloc(MEMORY[0x277D7C620]) initWithCurrentLocation];
      [(WFLocationPickerViewController *)self setValue:initWithCurrentLocation];
      goto LABEL_20;
    }

    v19 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    currentLocation = [(WFLocationPickerViewController *)self currentLocation];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __68__WFLocationPickerViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v26[3] = &unk_279EDBFC8;
    v26[4] = self;
    [v19 reverseGeocodeLocation:currentLocation completionHandler:v26];

LABEL_24:
    return;
  }

  if (v13 <= lastRecentRowIndex)
  {
    recents = [(WFLocationPickerViewController *)self recents];
    v19 = [recents objectAtIndex:v13 - firstRecentRowIndex];

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
  v21 = v13 - firstLocalSearchResultRowIndex;
  localSearchResults = [(WFLocationPickerViewController *)self localSearchResults];
  initWithCurrentLocation = [localSearchResults objectAtIndex:v21];

  [(WFLocationPickerViewController *)self updateValueWithMapItem:initWithCurrentLocation];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"locationCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"locationCell"];
  }

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel = [v7 textLabel];
  [textLabel setFont:v8];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setFont:v10];

  firstRecentRowIndex = [(WFLocationPickerViewController *)self firstRecentRowIndex];
  firstLocalSearchResultRowIndex = [(WFLocationPickerViewController *)self firstLocalSearchResultRowIndex];
  v14 = [pathCopy row];
  if (v14 == [(WFLocationPickerViewController *)self currentLocationRowIndex])
  {
    name = WFLocalizedString(@"Current Location");
    v16 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill"];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v18 = 0;
    goto LABEL_14;
  }

  if (firstRecentRowIndex == 0x7FFFFFFFFFFFFFFFLL || [pathCopy row] < firstRecentRowIndex || (v19 = objc_msgSend(pathCopy, "row"), v19 > -[WFLocationPickerViewController lastRecentRowIndex](self, "lastRecentRowIndex")))
  {
    if (firstLocalSearchResultRowIndex == 0x7FFFFFFFFFFFFFFFLL || [pathCopy row] < firstLocalSearchResultRowIndex)
    {
      labelColor = 0;
      v16 = 0;
      v18 = 0;
      name = 0;
      goto LABEL_14;
    }

    v20 = [pathCopy row] - firstLocalSearchResultRowIndex;
    localSearchResults = [(WFLocationPickerViewController *)self localSearchResults];
    v22 = [localSearchResults objectAtIndexedSubscript:v20];

    name = [v22 name];
    _shortAddress = [v22 _shortAddress];
  }

  else
  {
    v24 = [pathCopy row] - firstRecentRowIndex;
    recents = [(WFLocationPickerViewController *)self recents];
    v22 = [recents objectAtIndexedSubscript:v24];

    name = [v22 displayName];
    _shortAddress = [v22 address];
  }

  v18 = _shortAddress;
  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"mappin.and.ellipse"];
  labelColor = [MEMORY[0x277D75348] systemRedColor];

LABEL_14:
  textLabel2 = [v7 textLabel];
  [textLabel2 setText:name];

  detailTextLabel2 = [v7 detailTextLabel];
  [detailTextLabel2 setText:v18];

  imageView = [v7 imageView];
  [imageView setImage:v16];

  imageView2 = [v7 imageView];
  [imageView2 setTintColor:labelColor];

  selectedIndexPath = [(WFLocationPickerViewController *)self selectedIndexPath];
  if ([pathCopy isEqual:selectedIndexPath])
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setOpaque:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [cellCopy setBackgroundColor:clearColor];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFLocationPickerViewController *)self currentLocationRowIndex:view];
  recents = [(WFLocationPickerViewController *)self recents];
  v7 = [recents count];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  localSearchResults = [(WFLocationPickerViewController *)self localSearchResults];
  v10 = [localSearchResults count];

  return v8 + v10;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  currentLocation = [(WFLocationPickerViewController *)self currentLocation];
  firstObject = [locationsCopy firstObject];
  v7 = [currentLocation isEqual:firstObject];

  if ((v7 & 1) == 0)
  {
    firstObject2 = [locationsCopy firstObject];
    [(WFLocationPickerViewController *)self setCurrentLocation:firstObject2];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v10 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v5 = getWFTriggersLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[WFLocationPickerViewController locationManagerDidChangeAuthorization:]";
    v8 = 1024;
    authorizationStatus = [authorizationCopy authorizationStatus];
    _os_log_impl(&dword_2743F0000, v5, OS_LOG_TYPE_DEBUG, "%s locationManager:didChangeAuthorizationStatus: got status: %d", &v6, 0x12u);
  }

  -[WFLocationPickerViewController setCurrentAppLocationAuthorizationStatus:](self, "setCurrentAppLocationAuthorizationStatus:", [authorizationCopy authorizationStatus]);
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
    currentAppLocationAuthorizationStatus = [(WFLocationPickerViewController *)self currentAppLocationAuthorizationStatus];
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

    locationManager = [(WFLocationPickerViewController *)self locationManager];
    [locationManager requestWhenInUseAuthorization];
  }
}

- (void)done:(id)done
{
  delegate = [(WFLocationPickerViewController *)self delegate];
  value = [(WFLocationPickerViewController *)self value];
  [delegate locationPicker:self didFinishWithValue:value];
}

- (void)cancel:(id)cancel
{
  delegate = [(WFLocationPickerViewController *)self delegate];
  [delegate locationPickerDidCancel:self];
}

- (id)circularRegion
{
  value = [(WFLocationPickerViewController *)self value];
  placemark = [value placemark];
  region = [placemark region];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = region;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setValue:(id)value
{
  objc_storeStrong(&self->_value, value);

  [(WFLocationPickerViewController *)self updateUI];
}

- (void)setRegionCondition:(unint64_t)condition
{
  if (self->_regionCondition != condition)
  {
    self->_regionCondition = condition;
    proximityType = [(WFLocationPickerViewController *)self proximityType];
    dragView = [(WFLocationPickerViewController *)self dragView];
    [dragView setProximity:proximityType];
  }
}

- (void)showMapRegionForCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  v5 = MEMORY[0x277C59340](self, a2, coordinate, *&coordinate.longitude, radius * 3.5, radius * 3.5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  mapView = [(WFLocationPickerViewController *)self mapView];
  [mapView regionThatFits:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (fabs(v16) <= 180.0 && fabs(v14) <= 90.0 && v18 >= 0.0 && v18 <= 180.0 && v20 >= 0.0 && v20 <= 360.0)
  {
    mapView2 = [(WFLocationPickerViewController *)self mapView];
    [mapView2 setRegion:0 animated:{v14, v16, v18, v20}];
  }
}

- (id)locationFromRecentContact:(id)contact
{
  metadata = [contact metadata];
  v4 = [metadata objectForKey:@"latitude"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [metadata objectForKey:@"longitude"];
  [v7 doubleValue];
  v9 = v8;

  v10 = CLLocationCoordinate2DMake(v6, v9);
  v11 = [metadata objectForKey:@"hAccuracy"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [metadata objectForKey:@"vAccuracy"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [metadata objectForKey:@"referenceFrame"];
  integerValue = [v17 integerValue];

  v19 = objc_alloc(MEMORY[0x277CE41F8]);
  date = [MEMORY[0x277CBEAA8] date];
  v21 = [v19 initWithCoordinate:date altitude:integerValue horizontalAccuracy:v10.latitude verticalAccuracy:v10.longitude timestamp:0.0 referenceFrame:{v13, v16}];

  return v21;
}

- (void)getPlacemarkFromLocation:(id)location streetAddress:(id)address completionHandler:(id)handler
{
  locationCopy = location;
  addressCopy = address;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (locationCopy && addressCopy)
  {
    postalAddress = [addressCopy postalAddress];
    v12 = objc_alloc(MEMORY[0x277CD4F00]);
    [locationCopy coordinate];
    v13 = [v12 initWithCoordinate:postalAddress postalAddress:?];
    (v10)[2](v10, v13, 0);
  }

  else
  {
    if (!(locationCopy | addressCopy))
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
      goto LABEL_11;
    }

    if (locationCopy)
    {
      v14 = locationCopy;
    }

    else
    {
      v14 = addressCopy;
    }

    postalAddress = [MEMORY[0x277CFC2F8] itemWithObject:v14];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91__WFLocationPickerViewController_getPlacemarkFromLocation_streetAddress_completionHandler___block_invoke;
    v15[3] = &unk_279EDC068;
    v16 = v10;
    [postalAddress getObjectRepresentation:v15 forClass:objc_opt_class()];
  }

LABEL_11:
}

- (void)getMapItemFromRecentContact:(id)contact completionHandler:(id)handler
{
  contactCopy = contact;
  handlerCopy = handler;
  metadata = [contactCopy metadata];
  v9 = [metadata objectForKey:@"mapKitHandle"];
  v10 = objc_opt_class();
  v11 = WFEnforceClass(v9, v10);

  if (v11)
  {
    v12 = MEMORY[0x277CD4E80];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __80__WFLocationPickerViewController_getMapItemFromRecentContact_completionHandler___block_invoke;
    v31[3] = &unk_279EDC018;
    v32 = handlerCopy;
    address = handlerCopy;
    [v12 _mapItemFromHandle:v11 completionHandler:v31];
    firstObject = v32;
  }

  else
  {
    address = [contactCopy address];
    v15 = [MEMORY[0x277CFC528] streetAddressesInString:address error:0];
    firstObject = [v15 firstObject];

    v16 = [metadata objectForKey:@"latitude"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass(v16, v17);

    v19 = [metadata objectForKey:@"longitude"];
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
    v29 = contactCopy;
    v30 = handlerCopy;
    v27 = handlerCopy;
    [(WFLocationPickerViewController *)self getPlacemarkFromLocation:v22 streetAddress:firstObject completionHandler:v28];
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

- (void)displayLocationCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  mapView = [(WFLocationPickerViewController *)self mapView];
  annotations = [mapView annotations];
  [mapView removeAnnotations:annotations];

  overlays = [mapView overlays];
  [mapView removeOverlays:overlays];

  circularRegion = [(WFLocationPickerViewController *)self circularRegion];
  [circularRegion radius];
  v10 = v9;

  if (v10 < 100.0)
  {
    v10 = 100.0;
  }

  [(WFLocationPickerViewController *)self showMapRegionForCoordinate:latitude radius:longitude, v10];
  v11 = objc_alloc_init(MEMORY[0x277CD4F08]);
  [v11 setCoordinate:{latitude, longitude}];
  [mapView addAnnotation:v11];
  v12 = [(WFLocationPickerViewController *)self overlayWithCenterCoordinate:latitude radius:longitude, v10];
  if (v12)
  {
    [mapView addOverlay:v12];
  }

  [mapView selectAnnotation:v11 animated:0];
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
  value = [(WFLocationPickerViewController *)self value];
  v3 = value != 0;

  return v3;
}

- (void)updateMapHeight
{
  mapHeightConstraint = [(WFLocationPickerViewController *)self mapHeightConstraint];

  if (mapHeightConstraint)
  {
    [(WFLocationPickerViewController *)self mapHeight];
    v5 = v4;
    mapHeightConstraint2 = [(WFLocationPickerViewController *)self mapHeightConstraint];
    [mapHeightConstraint2 setConstant:v5];
  }
}

- (void)setupMap
{
  circularRegion = [(WFLocationPickerViewController *)self circularRegion];
  if (circularRegion)
  {
    v4 = circularRegion;
    mapView = [(WFLocationPickerViewController *)self mapView];
    superview = [mapView superview];

    if (superview)
    {
      circularRegion2 = [(WFLocationPickerViewController *)self circularRegion];
      [circularRegion2 center];
      [(WFLocationPickerViewController *)self displayLocationCoordinate:?];
    }
  }
}

- (void)reloadData
{
  tableView = [(WFLocationPickerViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)firstLocalSearchResultRowIndex
{
  localSearchResults = [(WFLocationPickerViewController *)self localSearchResults];
  v4 = [localSearchResults count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    lastRecentRowIndex = [(WFLocationPickerViewController *)self lastRecentRowIndex];
    if (lastRecentRowIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      lastRecentRowIndex = [(WFLocationPickerViewController *)self currentLocationRowIndex];
    }

    if (lastRecentRowIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return lastRecentRowIndex + 1;
    }
  }

  return v5;
}

- (int64_t)lastRecentRowIndex
{
  firstRecentRowIndex = [(WFLocationPickerViewController *)self firstRecentRowIndex];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (firstRecentRowIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = firstRecentRowIndex;
    recents = [(WFLocationPickerViewController *)self recents];
    v4 = v5 + [recents count] - 1;
  }

  return v4;
}

- (int64_t)firstRecentRowIndex
{
  recents = [(WFLocationPickerViewController *)self recents];
  v4 = [recents count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    currentLocationRowIndex = [(WFLocationPickerViewController *)self currentLocationRowIndex];
    if (currentLocationRowIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return currentLocationRowIndex + 1;
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

- (void)setResolvesCurrentLocationToPlacemark:(BOOL)placemark
{
  if (self->_resolvesCurrentLocationToPlacemark != placemark)
  {
    self->_resolvesCurrentLocationToPlacemark = placemark;
    if (placemark)
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

- (void)setAllowsPickingCurrentLocation:(BOOL)location
{
  if (self->_allowsPickingCurrentLocation != location)
  {
    self->_allowsPickingCurrentLocation = location;
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
  allowsPickingCurrentLocation = [(WFLocationPickerViewController *)self allowsPickingCurrentLocation];
  if (allowsPickingCurrentLocation)
  {

    LOBYTE(allowsPickingCurrentLocation) = [(WFLocationPickerViewController *)self hasSufficientLocationAuthorization];
  }

  return allowsPickingCurrentLocation;
}

- (void)updateRecentsWithSearchText:(id)text
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (text)
  {
    v4 = MEMORY[0x277D00F30];
    v5 = *MEMORY[0x277D00EF8];
    v22 = *MEMORY[0x277D00ED8];
    v6 = MEMORY[0x277CBEA60];
    textCopy = text;
    v8 = [v6 arrayWithObjects:&v22 count:1];
    v9 = [v4 predicateForKey:v5 inCollection:v8];
    v23[0] = v9;
    v10 = MEMORY[0x277D00F30];
    v11 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EF0] matchingText:textCopy comparison:1];
    v21[0] = v11;
    v12 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EE8] matchingText:textCopy comparison:1];

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
  frecencyComparator = [MEMORY[0x277D00F38] frecencyComparator];
  [v17 setComparator:frecencyComparator];

  defaultInstance = [MEMORY[0x277D00F28] defaultInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__WFLocationPickerViewController_updateRecentsWithSearchText___block_invoke;
  v20[3] = &unk_279EDBFC8;
  v20[4] = self;
  [defaultInstance performRecentsSearch:v17 queue:MEMORY[0x277D85CD0] completion:v20];
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

- (void)updateUIWithValue:(id)value
{
  valueCopy = value;
  [(WFLocationPickerViewController *)self loadViewIfNeeded];
  hasLocation = [(WFLocationPickerViewController *)self hasLocation];
  defaultSearchText = [valueCopy defaultSearchText];
  searchBar = [(WFLocationPickerViewController *)self searchBar];
  [searchBar setText:defaultSearchText];

  if (hasLocation && [(WFLocationPickerViewController *)self showsMapView])
  {
    searchBar2 = [(WFLocationPickerViewController *)self searchBar];
    [searchBar2 resignFirstResponder];

    view = [(WFLocationPickerViewController *)self view];
    mapView = [(WFLocationPickerViewController *)self mapView];
    [view addSubview:mapView];

    view2 = [(WFLocationPickerViewController *)self view];
    dividerView = [(WFLocationPickerViewController *)self dividerView];
    [view2 addSubview:dividerView];
  }

  else
  {
    mapView2 = [(WFLocationPickerViewController *)self mapView];
    [mapView2 removeFromSuperview];

    view2 = [(WFLocationPickerViewController *)self dividerView];
    [view2 removeFromSuperview];
  }

  if (-[WFLocationPickerViewController allowsPickingCurrentLocation](self, "allowsPickingCurrentLocation") && [valueCopy isCurrentLocation])
  {
    v13 = [MEMORY[0x277CCAA70] indexPathForRow:-[WFLocationPickerViewController currentLocationRowIndex](self inSection:{"currentLocationRowIndex"), 0}];
    [(WFLocationPickerViewController *)self setSelectedIndexPath:v13];
  }

  view3 = [(WFLocationPickerViewController *)self view];
  [view3 setNeedsUpdateConstraints];
}

- (void)updateUI
{
  value = [(WFLocationPickerViewController *)self value];
  [(WFLocationPickerViewController *)self updateUIWithValue:value];
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
    dragView = [(WFLocationPickerViewController *)self dragView];
    [dragView setMapView:self->_mapView];
    [(MKMapView *)self->_mapView addSubview:dragView];
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setBackgroundColor:clearColor];

    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setMapView:self->_mapView];
    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setDelegate:self];
    [(WFLocationTriggerEditorMapDragRadiusView *)self->_dragView setProximity:[(WFLocationPickerViewController *)self proximityType]];
  }

  v7 = self->_dragView;

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = WFLocationPickerViewController;
  changeCopy = change;
  [(WFLocationPickerViewController *)&v12 traitCollectionDidChange:changeCopy];
  v5 = [(WFLocationPickerViewController *)self traitCollection:v12.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    traitCollection = [(WFLocationPickerViewController *)self traitCollection];
    userInterfaceStyle3 = [traitCollection userInterfaceStyle];
    if (userInterfaceStyle3 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = userInterfaceStyle3 == 2;
    }

    searchBar = [(WFLocationPickerViewController *)self searchBar];
    [searchBar setKeyboardAppearance:v10];
  }
}

- (void)updateViewConstraints
{
  v82.receiver = self;
  v82.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v82 updateViewConstraints];
  v3 = objc_opt_new();
  tableView = [(WFLocationPickerViewController *)self tableView];
  leadingAnchor = [tableView leadingAnchor];
  view = [(WFLocationPickerViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v9];

  tableView2 = [(WFLocationPickerViewController *)self tableView];
  trailingAnchor = [tableView2 trailingAnchor];
  view2 = [(WFLocationPickerViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v15];

  tableView3 = [(WFLocationPickerViewController *)self tableView];
  topAnchor = [tableView3 topAnchor];
  view3 = [(WFLocationPickerViewController *)self view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v21];

  dividerView = [(WFLocationPickerViewController *)self dividerView];
  superview = [dividerView superview];

  tableView4 = [(WFLocationPickerViewController *)self tableView];
  bottomAnchor = [tableView4 bottomAnchor];
  if (superview)
  {
    dividerView2 = [(WFLocationPickerViewController *)self dividerView];
    [dividerView2 topAnchor];
  }

  else
  {
    dividerView2 = [(WFLocationPickerViewController *)self view];
    [dividerView2 bottomAnchor];
  }
  v27 = ;
  v28 = [bottomAnchor constraintEqualToAnchor:v27];
  [v3 addObject:v28];

  dividerView3 = [(WFLocationPickerViewController *)self dividerView];
  superview2 = [dividerView3 superview];

  if (superview2)
  {
    dividerView4 = [(WFLocationPickerViewController *)self dividerView];
    leadingAnchor3 = [dividerView4 leadingAnchor];
    view4 = [(WFLocationPickerViewController *)self view];
    safeAreaLayoutGuide4 = [view4 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
    v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v3 addObject:v36];

    dividerView5 = [(WFLocationPickerViewController *)self dividerView];
    trailingAnchor3 = [dividerView5 trailingAnchor];
    view5 = [(WFLocationPickerViewController *)self view];
    safeAreaLayoutGuide5 = [view5 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide5 trailingAnchor];
    v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v3 addObject:v42];

    dividerView6 = [(WFLocationPickerViewController *)self dividerView];
    heightAnchor = [dividerView6 heightAnchor];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v47 = [heightAnchor constraintEqualToConstant:1.0 / v46];
    [v3 addObject:v47];
  }

  mapView = [(WFLocationPickerViewController *)self mapView];
  superview3 = [mapView superview];

  if (superview3)
  {
    mapView2 = [(WFLocationPickerViewController *)self mapView];
    topAnchor3 = [mapView2 topAnchor];
    dividerView7 = [(WFLocationPickerViewController *)self dividerView];
    bottomAnchor2 = [dividerView7 bottomAnchor];
    v54 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2];
    [v3 addObject:v54];

    mapView3 = [(WFLocationPickerViewController *)self mapView];
    leadingAnchor5 = [mapView3 leadingAnchor];
    view6 = [(WFLocationPickerViewController *)self view];
    safeAreaLayoutGuide6 = [view6 safeAreaLayoutGuide];
    leadingAnchor6 = [safeAreaLayoutGuide6 leadingAnchor];
    v60 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v3 addObject:v60];

    mapView4 = [(WFLocationPickerViewController *)self mapView];
    trailingAnchor5 = [mapView4 trailingAnchor];
    view7 = [(WFLocationPickerViewController *)self view];
    safeAreaLayoutGuide7 = [view7 safeAreaLayoutGuide];
    trailingAnchor6 = [safeAreaLayoutGuide7 trailingAnchor];
    v66 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v3 addObject:v66];

    mapView5 = [(WFLocationPickerViewController *)self mapView];
    bottomAnchor3 = [mapView5 bottomAnchor];
    view8 = [(WFLocationPickerViewController *)self view];
    bottomAnchor4 = [view8 bottomAnchor];
    v71 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v3 addObject:v71];

    mapView6 = [(WFLocationPickerViewController *)self mapView];
    heightAnchor2 = [mapView6 heightAnchor];
    [(WFLocationPickerViewController *)self mapHeight];
    v74 = [heightAnchor2 constraintEqualToConstant:?];
    [(WFLocationPickerViewController *)self setMapHeightConstraint:v74];

    mapHeightConstraint = [(WFLocationPickerViewController *)self mapHeightConstraint];
    [v3 addObject:mapHeightConstraint];
  }

  constraints = [(WFLocationPickerViewController *)self constraints];
  v77 = [v3 isEqual:constraints];

  if ((v77 & 1) == 0)
  {
    v78 = MEMORY[0x277CCAAD0];
    constraints2 = [(WFLocationPickerViewController *)self constraints];
    [v78 deactivateConstraints:constraints2];

    [(WFLocationPickerViewController *)self setConstraints:v3];
    v80 = MEMORY[0x277CCAAD0];
    constraints3 = [(WFLocationPickerViewController *)self constraints];
    [v80 activateConstraints:constraints3];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v4 viewDidLayoutSubviews];
  [(WFLocationPickerViewController *)self setupMap];
  [(WFLocationPickerViewController *)self updateMapHeight];
  tableView = [(WFLocationPickerViewController *)self tableView];
  [tableView scrollToNearestSelectedRowAtScrollPosition:0 animated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v6 viewDidDisappear:disappear];
  locationManager = [(WFLocationPickerViewController *)self locationManager];

  if (locationManager)
  {
    locationManager2 = [(WFLocationPickerViewController *)self locationManager];
    [locationManager2 stopUpdatingLocation];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v15.receiver = self;
  v15.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v15 viewWillDisappear:disappear];
  mapView = [(WFLocationPickerViewController *)self mapView];
  mapView2 = [(WFLocationPickerViewController *)self mapView];
  annotations = [mapView2 annotations];
  [mapView removeAnnotations:annotations];

  mapView3 = [(WFLocationPickerViewController *)self mapView];
  mapView4 = [(WFLocationPickerViewController *)self mapView];
  overlays = [mapView4 overlays];
  [mapView3 removeOverlays:overlays];

  mapView5 = [(WFLocationPickerViewController *)self mapView];
  [mapView5 setDelegate:0];

  mapView6 = [(WFLocationPickerViewController *)self mapView];
  [mapView6 setShowsUserLocation:0];

  searchBar = [(WFLocationPickerViewController *)self searchBar];
  [searchBar resignFirstResponder];

  navigationItem = [(WFLocationPickerViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  [searchController setActive:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v6 viewDidAppear:appear];
  locationManager = [(WFLocationPickerViewController *)self locationManager];

  if (locationManager)
  {
    locationManager2 = [(WFLocationPickerViewController *)self locationManager];
    [locationManager2 startUpdatingLocation];
  }

  [(WFLocationPickerViewController *)self setupMap];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WFLocationPickerViewController;
  [(WFLocationPickerViewController *)&v4 viewWillAppear:appear];
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
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v23 setBackgroundColor:systemBackgroundColor];

  v9 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [v9 setObscuresBackgroundDuringPresentation:0];
  [v9 setHidesNavigationBarDuringPresentation:0];
  [v9 setAutomaticallyShowsCancelButton:0];
  navigationItem = [(WFLocationPickerViewController *)self navigationItem];
  [navigationItem setSearchController:v9];

  navigationItem2 = [(WFLocationPickerViewController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  searchBar = [v9 searchBar];
  searchBar = self->_searchBar;
  self->_searchBar = searchBar;

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
  indexPathForSelectedRow = [(UITableView *)v21 indexPathForSelectedRow];
  [(UITableView *)v21 deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  [(WFLocationPickerViewController *)self reloadData];
  [v23 addSubview:self->_tableView];
  [(WFLocationPickerViewController *)self setView:v23];
  [(WFLocationPickerViewController *)self updateUI];
}

- (WFLocationPickerViewController)initWithPickerType:(unint64_t)type value:(id)value
{
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = WFLocationPickerViewController;
  v8 = [(WFLocationPickerViewController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_pickerType = type;
    objc_storeStrong(&v8->_value, value);
    placemark = [valueCopy placemark];

    if (placemark)
    {
      placemark2 = [valueCopy placemark];
      v12 = MKMapItemWithPlacemark(placemark2);
      [(WFLocationPickerViewController *)v9 updateValueWithMapItem:v12];
    }

    [(WFLocationPickerViewController *)v9 updateRecentsWithSearchText:0];
    v13 = WFLocalizedString(@"Location");
    [(WFLocationPickerViewController *)v9 setTitle:v13];

    navigationItem = [(WFLocationPickerViewController *)v9 navigationItem];
    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v9 action:sel_cancel_];
    [navigationItem setLeftBarButtonItem:v15];

    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_done_];
    [navigationItem setRightBarButtonItem:v16];

    v17 = v9;
  }

  return v9;
}

@end