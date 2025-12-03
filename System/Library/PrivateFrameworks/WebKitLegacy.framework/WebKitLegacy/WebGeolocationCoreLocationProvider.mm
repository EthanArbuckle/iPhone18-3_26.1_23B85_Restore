@interface WebGeolocationCoreLocationProvider
- (WebGeolocationCoreLocationProvider)initWithListener:(id)listener;
- (void)createLocationManager;
- (void)dealloc;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)requestGeolocationAuthorization;
- (void)sendLocation:(id)location;
- (void)setEnableHighAccuracy:(BOOL)accuracy;
- (void)start;
@end

@implementation WebGeolocationCoreLocationProvider

- (void)createLocationManager
{
  v3 = [objc_alloc(getCLLocationManagerClass()) init];
  m_ptr = self->_locationManager.m_ptr;
  self->_locationManager.m_ptr = v3;
  if (m_ptr)
  {
  }

  self->_lastAuthorizationStatus = [getCLLocationManagerClass() authorizationStatus];
  v5 = self->_locationManager.m_ptr;

  [(CLLocationManager *)v5 setDelegate:self];
}

- (WebGeolocationCoreLocationProvider)initWithListener:(id)listener
{
  v6.receiver = self;
  v6.super_class = WebGeolocationCoreLocationProvider;
  result = [(WebGeolocationCoreLocationProvider *)&v6 init];
  if (result)
  {
    result->_positionListener = listener;
    v5 = result;
    [(WebGeolocationCoreLocationProvider *)result createLocationManager];
    return v5;
  }

  return result;
}

- (void)dealloc
{
  [(CLLocationManager *)self->_locationManager.m_ptr setDelegate:0];
  v3.receiver = self;
  v3.super_class = WebGeolocationCoreLocationProvider;
  [(WebGeolocationCoreLocationProvider *)&v3 dealloc];
}

- (void)requestGeolocationAuthorization
{
  if (([getCLLocationManagerClass() locationServicesEnabled] & 1) != 0 && (v3 = objc_msgSend(getCLLocationManagerClass(), "authorizationStatus"), (v3 - 1) >= 2))
  {
    if ((v3 - 3) >= 2)
    {
      if (!v3 && !self->_isWaitingForAuthorization)
      {
        self->_isWaitingForAuthorization = 1;
        m_ptr = self->_locationManager.m_ptr;

        [(CLLocationManager *)m_ptr requestWhenInUseAuthorization];
      }
    }

    else
    {
      positionListener = self->_positionListener;

      [(WebGeolocationCoreLocationUpdateListener *)positionListener geolocationAuthorizationGranted];
    }
  }

  else
  {
    v5 = self->_positionListener;

    [(WebGeolocationCoreLocationUpdateListener *)v5 geolocationAuthorizationDenied];
  }
}

- (void)start
{
  if ([getCLLocationManagerClass() locationServicesEnabled] && objc_msgSend(getCLLocationManagerClass(), "authorizationStatus") - 3 < 2)
  {
    m_ptr = self->_locationManager.m_ptr;

    [(CLLocationManager *)m_ptr startUpdatingLocation];
  }

  else
  {
    [(CLLocationManager *)self->_locationManager.m_ptr stopUpdatingLocation];
    positionListener = self->_positionListener;

    [(WebGeolocationCoreLocationUpdateListener *)positionListener resetGeolocation];
  }
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  if (self->_isWaitingForAuthorization)
  {
    if ((status - 3) >= 2)
    {
      if ((status - 1) <= 1)
      {
        self->_isWaitingForAuthorization = 0;
        [(WebGeolocationCoreLocationUpdateListener *)self->_positionListener geolocationAuthorizationDenied];
      }

      goto LABEL_5;
    }

    self->_isWaitingForAuthorization = 0;
    [(WebGeolocationCoreLocationUpdateListener *)self->_positionListener geolocationAuthorizationGranted];
    self->_lastAuthorizationStatus = status;
  }

  else
  {
    if (((self->_lastAuthorizationStatus - 3) | (status - 3)) < 2)
    {
LABEL_5:
      self->_lastAuthorizationStatus = status;
      return;
    }

    [(CLLocationManager *)self->_locationManager.m_ptr stopUpdatingLocation];
    [(WebGeolocationCoreLocationUpdateListener *)self->_positionListener resetGeolocation];
    self->_lastAuthorizationStatus = status;
  }
}

- (void)sendLocation:(id)location
{
  positionListener = self->_positionListener;
  MEMORY[0x1CCA66900](v4, location);
  [(WebGeolocationCoreLocationUpdateListener *)positionListener positionChanged:v4];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [locations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(locations);
        }

        [(WebGeolocationCoreLocationProvider *)self sendLocation:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [locations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  if ([error code] != 1)
  {
    localizedDescription = [error localizedDescription];
    positionListener = self->_positionListener;

    [(WebGeolocationCoreLocationUpdateListener *)positionListener errorOccurred:localizedDescription];
  }
}

- (void)setEnableHighAccuracy:(BOOL)accuracy
{
  m_ptr = self->_locationManager.m_ptr;
  v4 = &_MergedGlobals_5;
  if (!accuracy)
  {
    v4 = &qword_1ED6A60A8;
  }

  (*v4)();

  [(CLLocationManager *)m_ptr setDesiredAccuracy:?];
}

@end