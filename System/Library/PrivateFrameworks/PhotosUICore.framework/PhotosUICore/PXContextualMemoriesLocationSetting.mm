@interface PXContextualMemoriesLocationSetting
+ (CLLocationCoordinate2D)_simulatedLocationCoordinate;
+ (void)_setSimulatedLocationCoordinate:(CLLocationCoordinate2D)a3;
- (CLLocation)location;
- (CLLocationCoordinate2D)coordinate;
- (NSString)headerTitle;
- (NSString)subtitle;
- (NSString)title;
- (PXContextualMemoriesLocationSetting)init;
- (id)_locationForCoordinate:(CLLocationCoordinate2D)a3;
- (void)_handleLocationAcquisitionUpdate:(id)a3;
- (void)_initiateLocationAcquisitionWithAccuracy:(double)a3;
- (void)_setCoordinate:(CLLocationCoordinate2D)a3;
- (void)_updatePlacemarkForCoordinate:(CLLocationCoordinate2D)a3;
- (void)_updatePlacemarkWithPlacemarks:(id)a3 error:(id)a4;
- (void)didCallLastCompletionHandlerForCompletionHandlerManager:(id)a3;
- (void)requestLocationUpdateWithAccuracy:(double)a3 completionHandler:(id)a4;
- (void)resetToDefault;
- (void)setCoordinate:(CLLocationCoordinate2D)a3;
- (void)setMonitorsCurrentLocation:(BOOL)a3;
@end

@implementation PXContextualMemoriesLocationSetting

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)requestLocationUpdateWithAccuracy:(double)a3 completionHandler:(id)a4
{
  v9 = a4;
  v6 = [(PXContextualMemoriesLocationSetting *)self locationState];
  if (v6 - 2 < 2)
  {
    v9[2]();
  }

  else if (v6 == 1)
  {
    v8 = [(PXContextualMemoriesLocationSetting *)self completionHandlerManager];
    [v8 addCompletionHandler:v9];
  }

  else if (!v6)
  {
    v7 = [(PXContextualMemoriesLocationSetting *)self completionHandlerManager];
    [v7 addCompletionHandler:v9];

    [(PXContextualMemoriesLocationSetting *)self _initiateLocationAcquisitionWithAccuracy:a3];
  }
}

- (void)didCallLastCompletionHandlerForCompletionHandlerManager:(id)a3
{
  v4 = [(PXContextualMemoriesLocationSetting *)self locationStream];
  if (v4)
  {
    if ([(PXContextualMemoriesLocationSetting *)self monitorsCurrentLocation])
    {
      v5 = PLMemoriesGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[Settings] Will keep monitoring for location changes...", v6, 2u);
      }
    }

    else
    {
      [(PXContextualMemoriesLocationSetting *)self setLocationState:0];
      [v4 setClosed:1];
      [(PXContextualMemoriesLocationSetting *)self setLocationStream:0];
    }
  }
}

- (void)setMonitorsCurrentLocation:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_monitorsCurrentLocation != a3)
  {
    v3 = a3;
    self->_monitorsCurrentLocation = a3;
    v5 = PLMemoriesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"Disable";
      if (v3)
      {
        v6 = @"Enable";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[Settings] %@ monitoring of the current location", &v9, 0xCu);
    }

    if ([(PXContextualMemoriesLocationSetting *)self locationState]!= 3)
    {
      if (v3)
      {
        [(PXContextualMemoriesLocationSetting *)self _initiateLocationAcquisitionWithAccuracy:*MEMORY[0x1E6985CA0]];
      }

      else
      {
        v7 = [(PXContextualMemoriesLocationSetting *)self locationStream];

        if (v7)
        {
          [(PXContextualMemoriesLocationSetting *)self setLocationState:0];
          v8 = [(PXContextualMemoriesLocationSetting *)self completionHandlerManager];
          [v8 callCompletionHandlers];
        }
      }
    }
  }
}

- (void)_updatePlacemarkForCoordinate:(CLLocationCoordinate2D)a3
{
  v4 = [(PXContextualMemoriesLocationSetting *)self _locationForCoordinate:a3.latitude, a3.longitude];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695FBC8]);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__PXContextualMemoriesLocationSetting__updatePlacemarkForCoordinate___block_invoke;
    v6[3] = &unk_1E773D710;
    objc_copyWeak(&v7, &location);
    [v5 reverseGeocodeLocation:v4 completionHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __69__PXContextualMemoriesLocationSetting__updatePlacemarkForCoordinate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlacemarkWithPlacemarks:v6 error:v5];
}

- (void)_updatePlacemarkWithPlacemarks:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = PLMemoriesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(CLPlacemark *)v8 px_title];
      v11 = [(CLPlacemark *)v8 px_subtitle];
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "[Settings] Reverse geocode returned: %@, %@", &v15, 0x16u);
    }

    [(PXContextualMemoriesLocationSetting *)self willChangeValueForKey:@"placemark"];
    placemark = self->_placemark;
    self->_placemark = v8;

    [(PXContextualMemoriesLocationSetting *)self didChangeValueForKey:@"placemark"];
  }

  else
  {
    v13 = PLMemoriesGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 localizedDescription];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "[Settings] Reverse geocode failed: %@", &v15, 0xCu);
    }
  }
}

- (void)resetToDefault
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  px_dispatch_on_main_queue();
}

void __53__PXContextualMemoriesLocationSetting_resetToDefault__block_invoke(uint64_t a1)
{
  [objc_opt_class() _setSimulatedLocationCoordinate:{*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8)}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _initiateLocationAcquisitionWithAccuracy:*MEMORY[0x1E6985CA0]];
}

- (CLLocation)location
{
  [(PXContextualMemoriesLocationSetting *)self coordinate];

  return [(PXContextualMemoriesLocationSetting *)self _locationForCoordinate:?];
}

- (id)_locationForCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if (CLLocationCoordinate2DIsValid(a3))
  {
    v5 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_initiateLocationAcquisitionWithAccuracy:(double)a3
{
  v5 = [(PXContextualMemoriesLocationSetting *)self locationStream];

  if (!v5)
  {
    [(PXContextualMemoriesLocationSetting *)self _setCoordinate:*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8)];
    v6 = PLMemoriesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "[Settings] Will attempt to acquire the current location...", buf, 2u);
    }

    [(PXContextualMemoriesLocationSetting *)self setLocationState:1];
    objc_initWeak(buf, self);
    v7 = [PXLocationStream alloc];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PXContextualMemoriesLocationSetting__initiateLocationAcquisitionWithAccuracy___block_invoke;
    v9[3] = &unk_1E772F6E0;
    objc_copyWeak(&v10, buf);
    v8 = [(PXLocationStream *)v7 initWithAccuracy:v9 handler:a3];
    [(PXContextualMemoriesLocationSetting *)self setLocationStream:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __80__PXContextualMemoriesLocationSetting__initiateLocationAcquisitionWithAccuracy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLocationAcquisitionUpdate:v3];
}

- (void)_handleLocationAcquisitionUpdate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(PXContextualMemoriesLocationSetting *)self locationState]== 3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXContextualMemoriesLocationSetting.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"PXContextualMemoriesLocationStateSimulated != [self locationState]"}];

    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  [v5 coordinate];
  [(PXContextualMemoriesLocationSetting *)self _setCoordinate:?];
  if ([(PXContextualMemoriesLocationSetting *)self locationState]== 1)
  {
    [v5 horizontalAccuracy];
    v7 = v6;
    v8 = PLMemoriesGetLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7 <= 0.0 || v7 >= 100.0)
    {
      if (v9)
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "[Settings] Did receive location not meeting accuracy goal: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "[Settings] Did acquire the current location: %@", buf, 0xCu);
      }

      [(PXContextualMemoriesLocationSetting *)self setLocationState:2];
      v8 = [(PXContextualMemoriesLocationSetting *)self completionHandlerManager];
      [v8 callCompletionHandlers];
    }
  }

LABEL_12:
}

- (void)setCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v11 = *MEMORY[0x1E69E9840];
  v6 = PLMemoriesGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%+.8f, %+.8f>", *&latitude, *&longitude];
    *buf = 138477827;
    v10 = v7;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "[Settings] Set simulated location coordinate: %{private}@", buf, 0xCu);
  }

  [(PXContextualMemoriesLocationSetting *)self setLocationState:3];
  [objc_opt_class() _setSimulatedLocationCoordinate:{latitude, longitude}];
  [(PXContextualMemoriesLocationSetting *)self _setCoordinate:latitude, longitude];
  v8 = [(PXContextualMemoriesLocationSetting *)self completionHandlerManager];
  [v8 callCompletionHandlers];
}

- (void)_setCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if (self->_coordinate.latitude != a3.latitude || self->_coordinate.longitude != a3.longitude)
  {
    [(PXContextualMemoriesLocationSetting *)self willChangeValueForKey:@"coordinate"];
    self->_coordinate.latitude = latitude;
    self->_coordinate.longitude = longitude;
    placemark = self->_placemark;
    self->_placemark = 0;

    [(PXContextualMemoriesLocationSetting *)self _updatePlacemarkForCoordinate:latitude, longitude];

    [(PXContextualMemoriesLocationSetting *)self didChangeValueForKey:@"coordinate"];
  }
}

- (NSString)subtitle
{
  v2 = [(PXContextualMemoriesLocationSetting *)self placemark];
  v3 = [v2 px_subtitle];

  return v3;
}

- (NSString)title
{
  v3 = [(PXContextualMemoriesLocationSetting *)self placemark];

  if (v3)
  {
    v4 = [(PXContextualMemoriesLocationSetting *)self placemark];
    v5 = [v4 px_title];
  }

  else
  {
    if (CLLocationCoordinate2DIsValid(self->_coordinate))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f, %.3f", *&self->_coordinate.latitude, *&self->_coordinate.longitude];
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 localizedStringForKey:@"No Location Available" value:&stru_1F1741150 table:0];
  }

  v6 = v5;

LABEL_7:

  return v6;
}

- (NSString)headerTitle
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Location" value:&stru_1F1741150 table:0];

  return v3;
}

- (PXContextualMemoriesLocationSetting)init
{
  v8.receiver = self;
  v8.super_class = PXContextualMemoriesLocationSetting;
  v2 = [(PXContextualMemoriesLocationSetting *)&v8 init];
  if (v2)
  {
    [objc_opt_class() _simulatedLocationCoordinate];
    latitude = v9.latitude;
    longitude = v9.longitude;
    if (CLLocationCoordinate2DIsValid(v9))
    {
      v2->_coordinate.latitude = latitude;
      v2->_coordinate.longitude = longitude;
      v2->_locationState = 3;
      [(PXContextualMemoriesLocationSetting *)v2 _updatePlacemarkForCoordinate:latitude, longitude];
    }

    else
    {
      v2->_coordinate = *MEMORY[0x1E6985CC0];
      v2->_locationState = 0;
    }

    v5 = objc_alloc_init(_PXCompletionHandlerManager);
    completionHandlerManager = v2->_completionHandlerManager;
    v2->_completionHandlerManager = v5;

    [(_PXCompletionHandlerManager *)v2->_completionHandlerManager setDelegate:v2];
  }

  return v2;
}

+ (CLLocationCoordinate2D)_simulatedLocationCoordinate
{
  if (_simulatedLocationCoordinate_predicate != -1)
  {
    dispatch_once(&_simulatedLocationCoordinate_predicate, &__block_literal_global_21523);
  }

  v3 = *(&_simulatedLocationCoordinate + 1);
  v2 = *&_simulatedLocationCoordinate;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void __67__PXContextualMemoriesLocationSetting__simulatedLocationCoordinate__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  _simulatedLocationCoordinate = *MEMORY[0x1E6985CC0];
  v0 = CFPreferencesCopyAppValue(@"SimulatedCoordinateDate", @"com.apple.mobileslideshow");
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v0 doubleValue];
      v2 = v1;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      if (v3 - v2 >= 86400.0)
      {
        v4 = PLMemoriesGetLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "[Settings] Ignoring old simulated location coordinate", buf, 2u);
        }
      }

      else
      {
        v4 = CFPreferencesCopyAppValue(@"SimulatedCoordinateLatitude", @"com.apple.mobileslideshow");
        v5 = CFPreferencesCopyAppValue(@"SimulatedCoordinateLongitude", @"com.apple.mobileslideshow");
        if (v4)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v5)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v4 doubleValue];
                v7 = v6;
                [v5 doubleValue];
                _simulatedLocationCoordinate = CLLocationCoordinate2DMake(v7, v8);
                v9 = PLMemoriesGetLog();
                if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                {
                  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%+.8f, %+.8f>", _simulatedLocationCoordinate];
                  *buf = 138477827;
                  v12 = v10;
                  _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[Settings] Restoring simulated location coordinate: %{private}@", buf, 0xCu);
                }
              }
            }
          }
        }
      }
    }
  }
}

+ (void)_setSimulatedLocationCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v14 = *MEMORY[0x1E69E9840];
  if (*&_simulatedLocationCoordinate != a3.latitude || *(&_simulatedLocationCoordinate + 1) != a3.longitude)
  {
    _simulatedLocationCoordinate = a3;
    if (CLLocationCoordinate2DIsValid(a3))
    {
      v6 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v7 = [v6 numberWithDouble:?];
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:latitude];
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:longitude];
      v10 = PLMemoriesGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%+.8f, %+.8f>", *&latitude, *&longitude];
        *buf = 138477827;
        v13 = v11;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "[Settings] Storing simulated location coordinate: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
    }

    CFPreferencesSetAppValue(@"SimulatedCoordinateDate", v7, @"com.apple.mobileslideshow");
    CFPreferencesSetAppValue(@"SimulatedCoordinateLatitude", v8, @"com.apple.mobileslideshow");
    CFPreferencesSetAppValue(@"SimulatedCoordinateLongitude", v9, @"com.apple.mobileslideshow");
  }
}

@end