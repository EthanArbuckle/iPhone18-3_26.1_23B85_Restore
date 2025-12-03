@interface PLLocationController
+ (id)sharedInstance;
- (BOOL)_addLocationToAsset:(id)asset;
- (PLLocationController)init;
- (id)location;
- (id)locationDictionaryForImageWithDeviceOrientation:(int)orientation rearFacingCamera:(BOOL)camera;
- (id)locationString;
- (id)photoLibrary;
- (void)_assetContainerChanged:(id)changed;
- (void)_startUpdating;
- (void)_stopUpdating;
- (void)_updateLocationRunState;
- (void)_updatePendingAssets;
- (void)addLocationToMediaWithAssetURLWhenAvailable:(id)available deviceOrientation:(int)orientation cameraWasRearFacing:(BOOL)facing;
- (void)dealloc;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)setEnabled:(BOOL)enabled;
- (void)setHeadingEnabled:(BOOL)enabled;
@end

@implementation PLLocationController

- (void)_assetContainerChanged:(id)changed
{
  if (self->_isUpdating)
  {
    [(PLLocationController *)self _updatePendingAssets];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  exifDictionary = self->_exifDictionary;
  self->_exifDictionary = 0;

  locationStr = self->_locationStr;
  self->_locationStr = 0;

  if (self->_isUpdating)
  {

    [(PLLocationController *)self _updatePendingAssets];
  }
}

- (void)_updatePendingAssets
{
  v3 = [(NSMutableArray *)self->_locationPendingAssets count];
  if (v3 >= 1)
  {
    v4 = v3;
    location = [(PLLocationController *)self location];

    if (location)
    {
      v6 = v4 + 1;
      do
      {
        v7 = [(NSMutableArray *)self->_locationPendingAssets objectAtIndex:v6 - 2];
        v8 = [v7 objectForKey:@"PLLocationAssetTimestampKey"];
        [v8 timeIntervalSinceNow];
        if (v9 < -30.0 || [(PLLocationController *)self _addLocationToAsset:v7])
        {
          [(NSMutableArray *)self->_locationPendingAssets removeObjectAtIndex:v6 - 2];
        }

        --v6;
      }

      while (v6 > 1);
    }
  }
}

- (void)addLocationToMediaWithAssetURLWhenAvailable:(id)available deviceOrientation:(int)orientation cameraWasRearFacing:(BOOL)facing
{
  facingCopy = facing;
  v6 = *&orientation;
  availableCopy = available;
  if ([objc_opt_class() usesEffectiveBundleIdentifier])
  {
    locationServicesApproved = [MEMORY[0x1E695FBE8] authorizationStatusForBundleIdentifier:@"com.apple.camera"] == 3;
  }

  else
  {
    locationServicesApproved = [(CLLocationManager *)self->_locationManager locationServicesApproved];
  }

  if ([MEMORY[0x1E695FBE8] locationServicesEnabled])
  {
    v9 = locationServicesApproved == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF20]);
    date = [MEMORY[0x1E695DF00] date];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:facingCopy];
    v14 = [v10 initWithObjectsAndKeys:{availableCopy, @"PLLocationAssetURLKey", date, @"PLLocationAssetTimestampKey", v12, @"PLLocationDeviceOrientationKey", v13, @"PLLocationCameraWasRearFacingKey", 0}];

    if (![(PLLocationController *)self _addLocationToAsset:v14])
    {
      locationPendingAssets = self->_locationPendingAssets;
      if (!locationPendingAssets)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v17 = self->_locationPendingAssets;
        self->_locationPendingAssets = v16;

        locationPendingAssets = self->_locationPendingAssets;
      }

      [(NSMutableArray *)locationPendingAssets addObject:v14];
    }
  }
}

- (BOOL)_addLocationToAsset:(id)asset
{
  assetCopy = asset;
  v5 = [assetCopy objectForKey:@"PLLocationAssetURLKey"];
  v6 = [assetCopy objectForKey:@"PLLocationDeviceOrientationKey"];
  intValue = [v6 intValue];

  v8 = [assetCopy objectForKey:@"PLLocationCameraWasRearFacingKey"];

  bOOLValue = [v8 BOOLValue];
  photoLibrary = [(PLLocationController *)self photoLibrary];
  v11 = [photoLibrary photoFromAssetURL:v5];

  if (v11 && ([v11 pathForOriginalFile], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if ([v11 isVideo])
    {
      pathForVideoFile = [v11 pathForVideoFile];
      locationString = [(PLLocationController *)self locationString];
      if (locationString)
      {
        v15 = pathForVideoFile == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = !v15;
      if (!v15)
      {
        v17 = objc_alloc_init(MEMORY[0x1E6988050]);
        [v17 setKeySpace:*MEMORY[0x1E6987838]];
        [v17 setKey:*MEMORY[0x1E6987698]];
        [v17 setValue:locationString];
        v18 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v17, 0}];
        v19 = MEMORY[0x1E69870D8];
        v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForVideoFile isDirectory:0];
        v27 = 0;
        [v19 updateMovieMetadataInFile:v20 withMetadata:v18 error:&v27];
        v21 = v27;

        if (v21)
        {
          NSLog(&cfstr_ErrorWritingLo.isa);
        }
      }
    }

    else
    {
      pathForVideoFile = [v11 pathForOriginalFile];
      v22 = [(PLLocationController *)self locationDictionaryForImageWithDeviceOrientation:intValue rearFacingCamera:bOOLValue];
      v16 = v22 != 0;
      if (v22)
      {
        v23 = objc_alloc(MEMORY[0x1E695DF20]);
        v24 = [v23 initWithObjectsAndKeys:{v22, *MEMORY[0x1E696DBF0], 0}];
        if ((CGImageCopyFileWithGPSInformation() & 1) == 0)
        {
          NSLog(&cfstr_ErrorWritingLo.isa);
        }

        photoLibrary2 = [(PLLocationController *)self photoLibrary];
        [photoLibrary2 modifyDCIMEntryForPhoto:v11];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)photoLibrary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  photoLibrary = selfCopy->_photoLibrary;
  if (!photoLibrary)
  {
    v4 = +[PLPhotoLibrary cameraPhotoLibrary];
    v5 = selfCopy->_photoLibrary;
    selfCopy->_photoLibrary = v4;

    photoLibrary = selfCopy->_photoLibrary;
  }

  v6 = photoLibrary;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)locationString
{
  locationStr = self->_locationStr;
  if (!locationStr)
  {
    location = [(PLLocationController *)self location];
    iso6709Notation = [location iso6709Notation];
    v6 = self->_locationStr;
    self->_locationStr = iso6709Notation;

    locationStr = self->_locationStr;
  }

  return locationStr;
}

- (id)locationDictionaryForImageWithDeviceOrientation:(int)orientation rearFacingCamera:(BOOL)camera
{
  location = [(PLLocationController *)self location];
  if (!location)
  {
    goto LABEL_29;
  }

  if (!self->_exifDictionary)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [location coordinate];
    v10 = v9;
    [location coordinate];
    v12 = v11;
    v13 = fabsf(v10);
    if (v10 >= 0.0)
    {
      v14 = @"N";
    }

    else
    {
      v14 = @"S";
    }

    if (v10 < 0.0)
    {
      v10 = v13;
    }

    v15 = fabsf(v12);
    if (v12 >= 0.0)
    {
      v16 = @"E";
    }

    else
    {
      v16 = @"W";
    }

    if (v12 < 0.0)
    {
      v12 = v15;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    [(NSDictionary *)v8 setObject:v17 forKey:*MEMORY[0x1E696DC28]];

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [(NSDictionary *)v8 setObject:v18 forKey:*MEMORY[0x1E696DC18]];

    [(NSDictionary *)v8 setObject:v14 forKey:*MEMORY[0x1E696DC20]];
    [(NSDictionary *)v8 setObject:v16 forKey:*MEMORY[0x1E696DC30]];
    timestamp = [location timestamp];
    if (timestamp)
    {
      v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v21 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      [v20 setTimeZone:v21];

      [v20 setDateFormat:@"HH:mm:ss.SS"];
      v22 = [v20 stringFromDate:timestamp];
      [(NSDictionary *)v8 setObject:v22 forKey:*MEMORY[0x1E696DC70]];
    }

    [location verticalAccuracy];
    if (v23 >= 0.0)
    {
      [location altitude];
      v25 = v24 < 0.0;
      v26 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [(NSDictionary *)v8 setObject:v26 forKey:*MEMORY[0x1E696DB88]];

      v27 = [MEMORY[0x1E696AD98] numberWithInt:v25];
      [(NSDictionary *)v8 setObject:v27 forKey:*MEMORY[0x1E696DB90]];
    }

    exifDictionary = self->_exifDictionary;
    self->_exifDictionary = v8;

    if (!self->_exifDictionary)
    {
LABEL_29:
      v29 = 0;
      goto LABEL_34;
    }
  }

  v29 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  if ((orientation - 2) >= 3)
  {
    orientationCopy = 1;
  }

  else
  {
    orientationCopy = orientation;
  }

  [(CLLocationManager *)self->_locationManager setHeadingOrientation:orientationCopy];
  heading = [(CLLocationManager *)self->_locationManager heading];
  v32 = heading;
  if (heading)
  {
    [heading headingAccuracy];
    if (v33 >= 0.0)
    {
      if (CFPreferencesGetAppBooleanValue(@"kMagneticNorth", @"com.apple.compass", 0) || ([v32 trueHeading], v34 < 0.0))
      {
        [v32 magneticHeading];
        v36 = @"M";
        if (camera)
        {
          goto LABEL_32;
        }
      }

      else
      {
        [v32 trueHeading];
        v36 = @"T";
        if (camera)
        {
          goto LABEL_32;
        }
      }

      v35 = v35 + 180.0;
      v37 = 360.0;
      if (v35 >= 360.0)
      {
        v37 = -360.0;
      }

      else if (v35 >= 0.0)
      {
        goto LABEL_32;
      }

      v35 = v35 + v37;
LABEL_32:
      v38 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
      [v29 setObject:v38 forKey:*MEMORY[0x1E696DC08]];

      [v29 setObject:v36 forKey:*MEMORY[0x1E696DC10]];
    }
  }

LABEL_34:

  return v29;
}

- (id)location
{
  location = [(CLLocationManager *)self->_locationManager location];
  v3 = location;
  if (location)
  {
    [location horizontalAccuracy];
    v5 = v4;
    timestamp = [v3 timestamp];
    [timestamp timeIntervalSinceNow];
    v8 = v7;

    if (v8 < -60.0 || v5 < 0.0)
    {

      v3 = 0;
    }
  }

  return v3;
}

- (void)_stopUpdating
{
  if (self->_isUpdating)
  {
    self->_isUpdating = 0;
    [(CLLocationManager *)self->_locationManager setDelegate:0];
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    [(CLLocationManager *)self->_locationManager stopUpdatingHeading];
    exifDictionary = self->_exifDictionary;
    self->_exifDictionary = 0;

    locationStr = self->_locationStr;
    self->_locationStr = 0;
  }
}

- (void)_startUpdating
{
  if (self->_isUpdating || !self->_isEnabled)
  {
    return;
  }

  self->_isUpdating = 1;
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    if ([objc_opt_class() usesEffectiveBundleIdentifier])
    {
      if ([MEMORY[0x1E695FBE8] authorizationStatusForBundleIdentifier:@"com.apple.camera"] != 3)
      {
LABEL_9:
        [(CLLocationManager *)self->_locationManager setDistanceFilter:*MEMORY[0x1E6985C70]];
        [(CLLocationManager *)self->_locationManager setHeadingFilter:5.0];
        [(CLLocationManager *)self->_locationManager setDesiredAccuracy:*MEMORY[0x1E6985C78]];
        locationManager = self->_locationManager;
        goto LABEL_10;
      }

      v4 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundleIdentifier:@"com.apple.camera" delegate:0 onQueue:0];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695FBE8]);
    }

    v5 = self->_locationManager;
    self->_locationManager = v4;

    goto LABEL_9;
  }

LABEL_10:
  [(CLLocationManager *)locationManager setDelegate:self];
  [(CLLocationManager *)self->_locationManager startUpdatingLocation];
  if (self->_isHeadingEnabled)
  {
    v6 = self->_locationManager;

    [(CLLocationManager *)v6 startUpdatingHeading];
  }
}

- (void)setHeadingEnabled:(BOOL)enabled
{
  self->_isHeadingEnabled = enabled;
  if (self->_isUpdating)
  {
    locationManager = self->_locationManager;
    if (enabled)
    {
      [(CLLocationManager *)locationManager startUpdatingHeading];
    }

    else
    {
      [(CLLocationManager *)locationManager stopUpdatingHeading];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_isEnabled != enabled)
  {
    self->_isEnabled = enabled;
    [(PLLocationController *)self _updateLocationRunState];
  }
}

- (void)_updateLocationRunState
{
  if (self->_isEnabled && (DCIM_isApplicationSuspended() & 1) == 0)
  {
    if (!self->_isUpdating)
    {

      [(PLLocationController *)self _startUpdating];
    }
  }

  else if (self->_isUpdating)
  {

    [(PLLocationController *)self _stopUpdating];
  }
}

- (void)dealloc
{
  [(PLLocationController *)self _stopUpdating];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PLLocationController;
  [(PLLocationController *)&v4 dealloc];
}

- (PLLocationController)init
{
  v8.receiver = self;
  v8.super_class = PLLocationController;
  v2 = [(PLLocationController *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = DCIM_applicationWillResignActiveNotificationName();
    [defaultCenter addObserver:v2 selector:sel__applicationStateChanged_ name:v4 object:0];

    v5 = DCIM_applicationDidBecomeActiveNotificationName();
    [defaultCenter addObserver:v2 selector:sel__applicationStateChanged_ name:v5 object:0];

    v6 = DCIM_applicationSuspendedEventsOnlyNotificationName();
    [defaultCenter addObserver:v2 selector:sel__applicationStateChanged_ name:v6 object:0];

    [defaultCenter addObserver:v2 selector:sel__assetContainerChanged_ name:@"PLAssetContainerDidChangeNotification" object:0];
    [(PLLocationController *)v2 performSelector:sel__updateLocationRunState withObject:0 afterDelay:0.0];
  }

  return v2;
}

+ (id)sharedInstance
{
  v2 = __sharedLocationController;
  if (!__sharedLocationController)
  {
    v3 = objc_alloc_init(PLLocationController);
    v4 = __sharedLocationController;
    __sharedLocationController = v3;

    v2 = __sharedLocationController;
  }

  return v2;
}

@end