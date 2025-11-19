@interface WebGeolocationCoreLocationProvider
- (WebGeolocationCoreLocationProvider)initWithListener:(id)a3;
- (void)createLocationManager;
- (void)dealloc;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)requestGeolocationAuthorization;
- (void)sendLocation:(id)a3;
- (void)setEnableHighAccuracy:(BOOL)a3;
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

- (WebGeolocationCoreLocationProvider)initWithListener:(id)a3
{
  v6.receiver = self;
  v6.super_class = WebGeolocationCoreLocationProvider;
  result = [(WebGeolocationCoreLocationProvider *)&v6 init];
  if (result)
  {
    result->_positionListener = a3;
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

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  if (self->_isWaitingForAuthorization)
  {
    if ((a4 - 3) >= 2)
    {
      if ((a4 - 1) <= 1)
      {
        self->_isWaitingForAuthorization = 0;
        [(WebGeolocationCoreLocationUpdateListener *)self->_positionListener geolocationAuthorizationDenied];
      }

      goto LABEL_5;
    }

    self->_isWaitingForAuthorization = 0;
    [(WebGeolocationCoreLocationUpdateListener *)self->_positionListener geolocationAuthorizationGranted];
    self->_lastAuthorizationStatus = a4;
  }

  else
  {
    if (((self->_lastAuthorizationStatus - 3) | (a4 - 3)) < 2)
    {
LABEL_5:
      self->_lastAuthorizationStatus = a4;
      return;
    }

    [(CLLocationManager *)self->_locationManager.m_ptr stopUpdatingLocation];
    [(WebGeolocationCoreLocationUpdateListener *)self->_positionListener resetGeolocation];
    self->_lastAuthorizationStatus = a4;
  }
}

- (void)sendLocation:(id)a3
{
  positionListener = self->_positionListener;
  MEMORY[0x1CCA66900](v4, a3);
  [(WebGeolocationCoreLocationUpdateListener *)positionListener positionChanged:v4];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a4);
        }

        [(WebGeolocationCoreLocationProvider *)self sendLocation:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [a4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  if ([a4 code] != 1)
  {
    v6 = [a4 localizedDescription];
    positionListener = self->_positionListener;

    [(WebGeolocationCoreLocationUpdateListener *)positionListener errorOccurred:v6];
  }
}

- (void)setEnableHighAccuracy:(BOOL)a3
{
  m_ptr = self->_locationManager.m_ptr;
  v4 = &_MergedGlobals_5;
  if (!a3)
  {
    v4 = &qword_1ED6A60A8;
  }

  (*v4)();

  [(CLLocationManager *)m_ptr setDesiredAccuracy:?];
}

@end