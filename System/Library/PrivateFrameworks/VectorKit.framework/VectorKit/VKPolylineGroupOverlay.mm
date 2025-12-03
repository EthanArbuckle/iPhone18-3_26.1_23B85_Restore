@interface VKPolylineGroupOverlay
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (void)_updateBoundingMapRegion;
- (void)_updateContainsTransit;
- (void)addObserver:(id)observer;
- (void)addPolyline:(id)polyline;
- (void)dealloc;
- (void)removePolyline:(id)polyline;
- (void)setFocusedPolyline:(id)polyline;
- (void)setSelectedPolyline:(id)polyline;
- (void)setShowTraffic:(BOOL)traffic;
- (void)setSkippedPolyline:(id)polyline;
@end

@implementation VKPolylineGroupOverlay

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(GEOMapRegion *)self->_boundingMapRegion southLat];
  v4 = v3;
  [(GEOMapRegion *)self->_boundingMapRegion northLat];
  v6 = (v5 + v4) * 0.5;
  [(GEOMapRegion *)self->_boundingMapRegion westLng];
  v8 = v7;
  [(GEOMapRegion *)self->_boundingMapRegion eastLng];
  v10 = (v9 + v8) * 0.5;
  v11 = v6;
  result.var1 = v10;
  result.var0 = v11;
  return result;
}

- (void)_updateContainsTransit
{
  v13 = *MEMORY[0x1E69E9840];
  self->_containsTransit = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_polylines;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (self->_containsTransit)
        {
          containsTransit = 1;
        }

        else
        {
          containsTransit = [*(*(&v8 + 1) + 8 * v6) containsTransit];
        }

        self->_containsTransit = containsTransit;
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_updateBoundingMapRegion
{
  v33 = *MEMORY[0x1E69E9840];
  boundingMapRegion = self->_boundingMapRegion;
  self->_boundingMapRegion = 0;

  if ([(NSMutableSet *)self->_polylines count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A2200]);
    v5 = self->_boundingMapRegion;
    self->_boundingMapRegion = v4;

    [(GEOMapRegion *)self->_boundingMapRegion setNorthLat:-90.0];
    [(GEOMapRegion *)self->_boundingMapRegion setSouthLat:90.0];
    [(GEOMapRegion *)self->_boundingMapRegion setEastLng:-180.0];
    [(GEOMapRegion *)self->_boundingMapRegion setWestLng:180.0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = self->_polylines;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = *v29;
      do
      {
        v9 = 0;
        do
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v6);
          }

          boundingMapRegion = [*(*(&v28 + 1) + 8 * v9) boundingMapRegion];
          [(GEOMapRegion *)self->_boundingMapRegion northLat];
          v12 = v11;
          [boundingMapRegion northLat];
          v13 = boundingMapRegion;
          if (v12 > v14)
          {
            v13 = self->_boundingMapRegion;
          }

          [(GEOMapRegion *)v13 northLat];
          [(GEOMapRegion *)self->_boundingMapRegion setNorthLat:?];
          [(GEOMapRegion *)self->_boundingMapRegion southLat];
          v16 = v15;
          [boundingMapRegion southLat];
          v17 = boundingMapRegion;
          if (v16 < v18)
          {
            v17 = self->_boundingMapRegion;
          }

          [(GEOMapRegion *)v17 southLat];
          [(GEOMapRegion *)self->_boundingMapRegion setSouthLat:?];
          [(GEOMapRegion *)self->_boundingMapRegion eastLng];
          v20 = v19;
          [boundingMapRegion eastLng];
          v21 = boundingMapRegion;
          if (v20 > v22)
          {
            v21 = self->_boundingMapRegion;
          }

          [(GEOMapRegion *)v21 eastLng];
          [(GEOMapRegion *)self->_boundingMapRegion setEastLng:?];
          [(GEOMapRegion *)self->_boundingMapRegion westLng];
          v24 = v23;
          [boundingMapRegion westLng];
          v25 = boundingMapRegion;
          if (v24 < v26)
          {
            v25 = self->_boundingMapRegion;
          }

          [(GEOMapRegion *)v25 westLng];
          [(GEOMapRegion *)self->_boundingMapRegion setWestLng:?];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VKRouteOverlayBoundingMapRegionDidChange" object:self];
  }
}

- (void)setSkippedPolyline:(id)polyline
{
  v24 = *MEMORY[0x1E69E9840];
  polylineCopy = polyline;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v6 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    composedRoute = [(VKPolylineOverlay *)polylineCopy composedRoute];
    uniqueRouteID = [composedRoute uniqueRouteID];
    *buf = 134218242;
    selfCopy = self;
    v22 = 2112;
    v23 = uniqueRouteID;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "VKPolylineGroupOverlay %p setSelectedPolyline | route: %@", buf, 0x16u);
  }

  p_skippedPolyline = &self->_skippedPolyline;
  skippedPolyline = self->_skippedPolyline;
  if (skippedPolyline != polylineCopy)
  {
    if (polylineCopy)
    {
      if (![(NSMutableSet *)self->_polylines containsObject:polylineCopy])
      {
        goto LABEL_17;
      }

      skippedPolyline = *p_skippedPolyline;
    }

    [(VKPolylineOverlay *)skippedPolyline setSkipped:0];
    objc_storeStrong(&self->_skippedPolyline, polyline);
    [*p_skippedPolyline setSkipped:1];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = self->_observers;
    v12 = [(__CFSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v15 + 1) + 8 * i) polylineGroup:self didSkipPolyline:{polylineCopy, v15}];
        }

        v12 = [(__CFSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

LABEL_17:
}

- (void)setFocusedPolyline:(id)polyline
{
  v24 = *MEMORY[0x1E69E9840];
  polylineCopy = polyline;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v6 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    composedRoute = [(VKPolylineOverlay *)polylineCopy composedRoute];
    uniqueRouteID = [composedRoute uniqueRouteID];
    *buf = 134218242;
    selfCopy = self;
    v22 = 2112;
    v23 = uniqueRouteID;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "VKPolylineGroupOverlay %p setFocusedPolyline | route: %@", buf, 0x16u);
  }

  p_focusedPolyline = &self->_focusedPolyline;
  focusedPolyline = self->_focusedPolyline;
  if (focusedPolyline != polylineCopy)
  {
    if (polylineCopy)
    {
      if (![(NSMutableSet *)self->_polylines containsObject:polylineCopy])
      {
        goto LABEL_17;
      }

      focusedPolyline = *p_focusedPolyline;
    }

    [(VKPolylineOverlay *)focusedPolyline setHasFocus:0];
    objc_storeStrong(&self->_focusedPolyline, polyline);
    [*p_focusedPolyline setHasFocus:1];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = self->_observers;
    v12 = [(__CFSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v15 + 1) + 8 * i) polylineGroup:self didFocusPolyline:{polylineCopy, v15}];
        }

        v12 = [(__CFSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

LABEL_17:
}

- (void)setSelectedPolyline:(id)polyline
{
  v24 = *MEMORY[0x1E69E9840];
  polylineCopy = polyline;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v6 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    composedRoute = [(VKPolylineOverlay *)polylineCopy composedRoute];
    uniqueRouteID = [composedRoute uniqueRouteID];
    *buf = 134218242;
    selfCopy = self;
    v22 = 2112;
    v23 = uniqueRouteID;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "VKPolylineGroupOverlay %p setSelectedPolyline | route: %@", buf, 0x16u);
  }

  p_selectedPolyline = &self->_selectedPolyline;
  selectedPolyline = self->_selectedPolyline;
  if (selectedPolyline != polylineCopy)
  {
    if (polylineCopy)
    {
      if (![(NSMutableSet *)self->_polylines containsObject:polylineCopy])
      {
        goto LABEL_17;
      }

      selectedPolyline = *p_selectedPolyline;
    }

    [(VKPolylineOverlay *)selectedPolyline setSelected:0];
    objc_storeStrong(&self->_selectedPolyline, polyline);
    [*p_selectedPolyline setSelected:1];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = self->_observers;
    v12 = [(__CFSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v15 + 1) + 8 * i) polylineGroup:self didSelectPolyline:{polylineCopy, v15}];
        }

        v12 = [(__CFSet *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

LABEL_17:
}

- (void)removePolyline:(id)polyline
{
  v27 = *MEMORY[0x1E69E9840];
  polylineCopy = polyline;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v5 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    composedRoute = [(VKPolylineOverlay *)polylineCopy composedRoute];
    uniqueRouteID = [composedRoute uniqueRouteID];
    showTraffic = self->_showTraffic;
    traffic = [(VKPolylineOverlay *)polylineCopy traffic];
    *buf = 134218754;
    selfCopy = self;
    v21 = 2112;
    v22 = uniqueRouteID;
    v23 = 1024;
    v24 = showTraffic;
    v25 = 2112;
    v26 = traffic;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKPolylineGroupOverlay %p removePolyline | route: %@ | _showTraffic: %d | traffic: %@", buf, 0x26u);
  }

  if (([(NSMutableSet *)self->_polylines containsObject:polylineCopy]& 1) != 0 && [(NSMutableSet *)self->_polylines containsObject:polylineCopy])
  {
    if (self->_selectedPolyline == polylineCopy)
    {
      [(VKPolylineGroupOverlay *)self setSelectedPolyline:0];
    }

    if (self->_focusedPolyline == polylineCopy)
    {
      [(VKPolylineGroupOverlay *)self setFocusedPolyline:0];
    }

    if (self->_skippedPolyline == polylineCopy)
    {
      [(VKPolylineGroupOverlay *)self setSkippedPolyline:0];
    }

    [(NSMutableSet *)self->_polylines removeObject:polylineCopy];
    [(VKPolylineGroupOverlay *)self _updateBoundingMapRegion];
    [(VKPolylineGroupOverlay *)self _updateContainsTransit];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = self->_observers;
    v11 = [(__CFSet *)v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v14 + 1) + 8 * i) polylineGroup:self didRemovePolyline:{polylineCopy, v14}];
        }

        v11 = [(__CFSet *)v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)addPolyline:(id)polyline
{
  v30 = *MEMORY[0x1E69E9840];
  polylineCopy = polyline;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v5 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    composedRoute = [polylineCopy composedRoute];
    uniqueRouteID = [composedRoute uniqueRouteID];
    showTraffic = self->_showTraffic;
    traffic = [polylineCopy traffic];
    *buf = 134218754;
    selfCopy = self;
    v24 = 2112;
    v25 = uniqueRouteID;
    v26 = 1024;
    v27 = showTraffic;
    v28 = 2112;
    v29 = traffic;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKPolylineGroupOverlay %p addPolyline | route: %@ | _showTraffic: %d | traffic: %@", buf, 0x26u);
  }

  polylines = self->_polylines;
  if (!polylines)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = self->_polylines;
    self->_polylines = v11;

    polylines = self->_polylines;
  }

  if (([(NSMutableSet *)polylines containsObject:polylineCopy]& 1) == 0)
  {
    [polylineCopy setShowTraffic:self->_showTraffic];
    [(NSMutableSet *)self->_polylines addObject:polylineCopy];
    [(VKPolylineGroupOverlay *)self _updateBoundingMapRegion];
    [(VKPolylineGroupOverlay *)self _updateContainsTransit];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = self->_observers;
    v14 = [(__CFSet *)v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v14)
    {
      v15 = *v18;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v17 + 1) + 8 * i) polylineGroup:self didAddPolyline:{polylineCopy, v17}];
        }

        v14 = [(__CFSet *)v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (void)setShowTraffic:(BOOL)traffic
{
  trafficCopy = traffic;
  v17 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v5 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v16 = trafficCopy;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKPolylineGroupOverlay setShowTraffic: %d", buf, 8u);
  }

  if (self->_showTraffic != trafficCopy)
  {
    self->_showTraffic = trafficCopy;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_polylines;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * i) setShowTraffic:{trafficCopy, v10}];
        }

        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  if (!observers)
  {
    v6 = *byte_1F2A069E8;
    observers = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v6);
    self->_observers = observers;
  }

  CFSetAddValue(observers, observerCopy);
}

- (void)dealloc
{
  observers = self->_observers;
  if (observers)
  {
    CFRelease(observers);
  }

  v4.receiver = self;
  v4.super_class = VKPolylineGroupOverlay;
  [(VKPolylineGroupOverlay *)&v4 dealloc];
}

@end