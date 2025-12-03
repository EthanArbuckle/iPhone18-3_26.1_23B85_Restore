@interface OKWidgetMapViewProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay:(BOOL)display;
- (BOOL)prepareForUnload:(BOOL)unload;
- (BOOL)prepareForWarmup:(BOOL)warmup;
- (CLLocationCoordinate2D)settingCenterCoordinate;
- (OKWidgetMapViewProxy)initWithWidget:(id)widget;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)valueForUndefinedKey:(id)key;
- (void)dealloc;
- (void)mapView:(id)view annotationView:(id)annotationView calloutAccessoryControlTapped:(id)tapped;
- (void)selectAnnotationWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)setAntialiasing:(BOOL)antialiasing;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setSettingAnnotations:(id)annotations;
- (void)setSettingRegion:(id *)region;
- (void)setSettingZoomToFitAnnotations:(BOOL)annotations;
- (void)zoomToAnnotationsWithIdentifiers:(id)identifiers animated:(BOOL)animated;
@end

@implementation OKWidgetMapViewProxy

- (OKWidgetMapViewProxy)initWithWidget:(id)widget
{
  v7.receiver = self;
  v7.super_class = OKWidgetMapViewProxy;
  v3 = [(OKWidgetViewProxy *)&v7 initWithWidget:widget];
  if (v3)
  {
    v4 = [OKMKMapView alloc];
    [objc_msgSend(v3 "contentView")];
    v5 = [(OKMKMapView *)v4 initWithFrame:?];
    *(v3 + 186) = v5;
    [(OKMKMapView *)v5 setMapType:0];
    [*(v3 + 186) setClipsToBounds:1];
    [objc_msgSend(*(v3 + 186) "layer")];
    [*(v3 + 186) setAutoresizingMask:18];
    [*(v3 + 186) setDelegate:v3];
    [*(v3 + 186) setZoomEnabled:1];
    [*(v3 + 186) setScrollEnabled:1];
    [*(v3 + 186) setShowsUserLocation:0];
    [*(v3 + 186) setUserInteractionEnabled:1];
    [objc_msgSend(v3 "contentView")];
    *(v3 + 1496) = *MEMORY[0x277CE4278];
    *(v3 + 189) = 0;
    *(v3 + 190) = 0;
    v3[1528] = 0;
  }

  return v3;
}

- (void)dealloc
{
  mapView = self->_mapView;
  if (mapView)
  {
    [(OKMKMapView *)mapView setDelegate:0];

    self->_mapView = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetMapViewProxy;
  [(OKWidgetView *)&v4 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(OKWidgetMapViewProxy *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = OKWidgetMapViewProxy;
  [(OKWidgetViewProxy *)&v15 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    p_region = &self->_region;
    if (CLLocationCoordinate2DIsValid(self->_region.center))
    {
      mapView = self->_mapView;
      [(OKMKMapView *)mapView regionThatFits:p_region->center.latitude, p_region->center.longitude, p_region->span.latitudeDelta, p_region->span.longitudeDelta];
      [(OKMKMapView *)mapView setRegion:0 animated:?];
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(OKWidgetMapViewProxy *)self frame];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = OKWidgetMapViewProxy;
  [(OKWidgetViewProxy *)&v15 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    p_region = &self->_region;
    if (CLLocationCoordinate2DIsValid(self->_region.center))
    {
      mapView = self->_mapView;
      [(OKMKMapView *)mapView regionThatFits:p_region->center.latitude, p_region->center.longitude, p_region->span.latitudeDelta, p_region->span.longitudeDelta];
      [(OKMKMapView *)mapView setRegion:0 animated:?];
    }
  }
}

+ (id)supportedSettings
{
  v31[11] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___OKWidgetMapViewProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v7, sel_supportedSettings)}];
  v30[0] = @"mapType";
  v28[0] = @"type";
  v28[1] = @"mapping";
  v29[0] = &unk_287AF11D8;
  v29[1] = &unk_287AF2108;
  v28[2] = @"default";
  v28[3] = @"jsExport";
  v29[2] = @"standard";
  v29[3] = @"readwrite";
  v31[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v30[1] = @"centerCoordinate";
  v26[0] = @"type";
  v26[1] = @"jsExport";
  v27[0] = &unk_287AF1238;
  v27[1] = @"readwrite";
  v31[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v30[2] = @"region";
  v24 = @"type";
  v25 = &unk_287AF1250;
  v31[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v30[3] = @"zoomEnabled";
  v22[0] = @"type";
  v22[1] = @"default";
  v3 = MEMORY[0x277CBEC38];
  v23[0] = &unk_287AF1268;
  v23[1] = MEMORY[0x277CBEC38];
  v31[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v30[4] = @"scrollEnabled";
  v20[0] = @"type";
  v20[1] = @"default";
  v21[0] = &unk_287AF1268;
  v21[1] = v3;
  v31[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v30[5] = @"scrollWheelEnabled";
  v18[0] = @"type";
  v18[1] = @"default";
  v19[0] = &unk_287AF1268;
  v19[1] = v3;
  v31[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v30[6] = @"showsUserLocation";
  v4 = MEMORY[0x277CBEC28];
  v16[0] = @"type";
  v16[1] = @"default";
  v17[0] = &unk_287AF1268;
  v17[1] = MEMORY[0x277CBEC28];
  v16[2] = @"jsExport";
  v17[2] = @"readwrite";
  v31[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v30[7] = @"zoomToFitAnnotations";
  v14[0] = @"type";
  v14[1] = @"default";
  v15[0] = &unk_287AF1268;
  v15[1] = v4;
  v14[2] = @"priority";
  v15[2] = &unk_287AF1280;
  v31[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v30[8] = @"annotations";
  v13[0] = &unk_287AF1298;
  v12[0] = @"type";
  v12[1] = @"class";
  v13[1] = objc_opt_class();
  v12[2] = @"default";
  null = [MEMORY[0x277CBEB68] null];
  v12[3] = @"priority";
  v13[2] = null;
  v13[3] = &unk_287AF12B0;
  v31[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v30[9] = @"showsPointsOfInterest";
  v10 = @"type";
  v11 = &unk_287AF1268;
  v31[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v30[10] = @"showsBuildings";
  v8 = @"type";
  v9 = &unk_287AF1268;
  v31[10] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v31, v30, 11)}];
  return v2;
}

- (id)valueForUndefinedKey:(id)key
{
  v4.receiver = self;
  v4.super_class = OKWidgetMapViewProxy;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:key];
}

- (void)setSettingRegion:(id *)region
{
  self->_region.center.latitude = v3;
  self->_region.center.longitude = v4;
  self->_region.span.latitudeDelta = v5;
  self->_region.span.longitudeDelta = v6;
  [(OKMKMapView *)self->_mapView regionThatFits:region];
  mapView = self->_mapView;

  [(OKMKMapView *)mapView setRegion:?];
}

- (CLLocationCoordinate2D)settingCenterCoordinate
{
  [(OKMKMapView *)self->_mapView centerCoordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (void)setSettingAnnotations:(id)annotations
{
  [(OKMKMapView *)self->_mapView removeAnnotations:[(OKMKMapView *)self->_mapView annotations]];
  if (annotations)
  {
    [(OKMKMapView *)self->_mapView addAnnotations:annotations];
    if (self->_zoomToFitAnnotations)
    {
      mapView = self->_mapView;

      [(OKMKMapView *)mapView showAnnotations:annotations animated:0];
    }
  }
}

- (void)setSettingZoomToFitAnnotations:(BOOL)annotations
{
  if (self->_zoomToFitAnnotations != annotations)
  {
    self->_zoomToFitAnnotations = annotations;
    if (annotations)
    {
      mapView = self->_mapView;
      annotations = [(OKMKMapView *)mapView annotations];

      [(OKMKMapView *)mapView showAnnotations:annotations animated:0];
    }
  }
}

- (void)setAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  v6.receiver = self;
  v6.super_class = OKWidgetMapViewProxy;
  [(OKWidgetViewProxy *)&v6 setAntialiasing:?];
  if (antialiasingCopy)
  {
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  [-[OKMKMapView layer](self->_mapView "layer")];
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  v4.receiver = self;
  v4.super_class = OKWidgetMapViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForDisplay:display];
}

- (BOOL)prepareForWarmup:(BOOL)warmup
{
  v4.receiver = self;
  v4.super_class = OKWidgetMapViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForWarmup:warmup];
}

- (BOOL)prepareForUnload:(BOOL)unload
{
  v4.receiver = self;
  v4.super_class = OKWidgetMapViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForUnload:unload];
}

- (void)mapView:(id)view annotationView:(id)annotationView calloutAccessoryControlTapped:(id)tapped
{
  annotation = [annotationView annotation];
  delegate = [(OKWidgetViewProxy *)self delegate];
  actionScript = [annotation actionScript];
  v9 = MEMORY[0x277CBEC10];

  [(OKWidgetViewDelegate *)delegate evaluateScript:actionScript withInfoDictionary:v9 andCompletionBlock:&__block_literal_global_27 forWidgetView:self];
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([annotation actionScript])
  {
    v6 = @"MKPinAnnotationView+Actions";
  }

  else
  {
    v6 = @"MKPinAnnotationView";
  }

  v7 = [view dequeueReusableAnnotationViewWithIdentifier:v6];
  if (v7)
  {
    v8 = v7;
    [v7 setAnnotation:annotation];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CD4EF0]) initWithAnnotation:annotation reuseIdentifier:v6];
    [v8 setPinTintColor:{objc_msgSend(MEMORY[0x277CD4EF0], "redPinColor")}];
    [v8 setAnimatesDrop:0];
    [v8 setCanShowCallout:1];
    if ([annotation actionScript])
    {
      [v8 setRightCalloutAccessoryView:{objc_msgSend(MEMORY[0x277D75220], "buttonWithType:", 2)}];
    }
  }

  return v8;
}

- (void)selectAnnotationWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  annotations = [(OKMKMapView *)self->_mapView annotations];
  v8 = [annotations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(annotations);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v12 "identifier")])
        {
          if (v12)
          {
            [(OKMKMapView *)self->_mapView selectAnnotation:v12 animated:animatedCopy];
          }

          return;
        }
      }

      v9 = [annotations countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }
}

- (void)zoomToAnnotationsWithIdentifiers:(id)identifiers animated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  annotations = [(OKMKMapView *)self->_mapView annotations];
  v8 = [annotations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(annotations);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [identifiers containsObject:{objc_msgSend(v12, "identifier")}])
        {
          [array addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [annotations countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (array)
  {
    [(OKMKMapView *)self->_mapView showAnnotations:array animated:animatedCopy];
  }
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetMapView"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end