@interface SPLocationManager
- (SPLocationManager)initWithQueue:(id)a3;
- (unsigned)_getLocationCategoryFromGEOPOI:(id)a3;
- (unsigned)_getLocationCategoryFromRTLocationOfInterestType:(int64_t)a3;
- (void)_requestPlaceInference;
- (void)_startMonitoringVisits;
- (void)_startPollingForLocationCategory;
- (void)_stopMonitoringVisits;
- (void)_stopPollingForLocationCategory;
- (void)_updateLocationCategoryWithBestPlaceInferenceIdentifier:(id)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation SPLocationManager

- (SPLocationManager)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPLocationManager;
  v6 = [(SPLocationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
  }

  return v7;
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000248C;
  block[3] = &unk_100010658;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)stop
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025C8;
  block[3] = &unk_100010658;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (unsigned)_getLocationCategoryFromRTLocationOfInterestType:(int64_t)a3
{
  if (a3 < 4)
  {
    v3 = a3 + 1;
  }

  else
  {
    v3 = 0;
  }

  if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100009820(v3);
  }

  return v3;
}

- (unsigned)_getLocationCategoryFromGEOPOI:(id)a3
{
  v3 = a3;
  v4 = GEOPOICategorySchool;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {

    goto LABEL_6;
  }

  if ((v5 != 0) == (v4 == 0))
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v4];

  if (v7)
  {
LABEL_6:
    v8 = 3;
    goto LABEL_51;
  }

LABEL_8:
  v9 = GEOPOICategoryFitnessCenter;
  v10 = v6;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_13;
  }

  if ((v6 != 0) == (v9 == 0))
  {

    goto LABEL_15;
  }

  v12 = [v10 isEqual:v9];

  if (v12)
  {
LABEL_13:
    v8 = 4;
    goto LABEL_51;
  }

LABEL_15:
  v13 = GEOPOICategoryAirport;
  v14 = v11;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_20;
  }

  if ((v6 != 0) == (v13 == 0))
  {

    goto LABEL_22;
  }

  v16 = [v14 isEqual:v13];

  if (v16)
  {
LABEL_20:
    v8 = 5;
    goto LABEL_51;
  }

LABEL_22:
  v17 = GEOPOICategoryStadium;
  v18 = v15;
  v19 = v18;
  if (v17 == v18)
  {

    goto LABEL_27;
  }

  if ((v6 != 0) == (v17 == 0))
  {

    goto LABEL_29;
  }

  v20 = [v18 isEqual:v17];

  if (v20)
  {
LABEL_27:
    v8 = 6;
    goto LABEL_51;
  }

LABEL_29:
  v21 = GEOPOICategoryTheater;
  v22 = v19;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_34;
  }

  if ((v6 != 0) == (v21 == 0))
  {

    goto LABEL_36;
  }

  v24 = [v22 isEqual:v21];

  if (v24)
  {
LABEL_34:
    v8 = 8;
    goto LABEL_51;
  }

LABEL_36:
  v25 = GEOPOICategoryMovieTheater;
  v26 = v23;
  v27 = v26;
  if (v25 == v26)
  {

    goto LABEL_41;
  }

  if ((v6 != 0) != (v25 == 0))
  {
    v28 = [v26 isEqual:v25];

    if ((v28 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_41:
    v8 = 7;
    goto LABEL_51;
  }

LABEL_43:
  v29 = GEOPOICategoryMusicVenue;
  v30 = v27;
  v31 = v30;
  if (v29 == v30)
  {
  }

  else
  {
    if ((v6 != 0) == (v29 == 0))
    {

LABEL_50:
      v8 = 0;
      goto LABEL_51;
    }

    v32 = [v30 isEqual:v29];

    if (!v32)
    {
      goto LABEL_50;
    }
  }

  v8 = 9;
LABEL_51:
  if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100009870(v8);
  }

  return v8;
}

- (void)_requestPlaceInference
{
  locationManager = self->_locationManager;
  if (objc_opt_respondsToSelector())
  {
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000098E0();
    }

    v4 = self->_locationManager;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100002AB8;
    v5[3] = &unk_1000106C0;
    v5[4] = self;
    [(CLLocationManager *)v4 _fetchPlaceInferencesWithFidelityPolicy:0 handler:v5];
  }

  else if (dword_100015DA0 <= 90 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000098C0();
  }
}

- (void)_startMonitoringVisits
{
  if (!self->_monitoringVisits)
  {
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100009918();
    }

    self->_monitoringVisits = 1;
    locationManager = self->_locationManager;

    [(CLLocationManager *)locationManager startMonitoringVisits];
  }
}

- (void)_startPollingForLocationCategory
{
  if (!self->_pollingLocation)
  {
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100009934();
    }

    self->_pollingLocation = 1;
    if (!self->_locationQueryExitTimer)
    {
      v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v4 = dispatch_time(0, 1200000000000);
      dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100002E18;
      handler[3] = &unk_100010658;
      handler[4] = self;
      dispatch_source_set_event_handler(v3, handler);
      locationQueryExitTimer = self->_locationQueryExitTimer;
      self->_locationQueryExitTimer = v3;
      v6 = v3;

      dispatch_resume(v6);
    }

    if (!self->_locationQueryTimer)
    {
      v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v8 = dispatch_time(0, 0);
      dispatch_source_set_timer(v7, v8, 0x1BF08EB000uLL, 0);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100002E80;
      v11[3] = &unk_100010658;
      v11[4] = self;
      dispatch_source_set_event_handler(v7, v11);
      locationQueryTimer = self->_locationQueryTimer;
      self->_locationQueryTimer = v7;
      v10 = v7;

      dispatch_resume(self->_locationQueryTimer);
    }
  }
}

- (void)_stopMonitoringVisits
{
  if (self->_monitoringVisits)
  {
    v7 = v2;
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100009A18();
    }

    [(CLLocationManager *)self->_locationManager stopMonitoringVisits:v3];
    self->_monitoringVisits = 0;
  }
}

- (void)_stopPollingForLocationCategory
{
  if (self->_pollingLocation)
  {
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100009A34();
    }

    locationQueryExitTimer = self->_locationQueryExitTimer;
    if (locationQueryExitTimer)
    {
      v4 = locationQueryExitTimer;
      dispatch_source_cancel(v4);
      v5 = self->_locationQueryExitTimer;
      self->_locationQueryExitTimer = 0;
    }

    locationQueryTimer = self->_locationQueryTimer;
    if (locationQueryTimer)
    {
      v7 = locationQueryTimer;
      dispatch_source_cancel(v7);
      v8 = self->_locationQueryTimer;
      self->_locationQueryTimer = 0;
    }

    self->_pollingLocation = 0;
  }
}

- (void)_updateLocationCategoryWithBestPlaceInferenceIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100009A50();
    }

    v5 = +[RTRoutineManager defaultManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100003378;
    v6[3] = &unk_100010738;
    v6[4] = self;
    [v5 fetchLocationOfInterestWithIdentifier:v4 withHandler:v6];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = [a3 authorizationStatus];
  if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100009A90();
  }

  if (v4 >= 3)
  {
    if (v4 - 3 <= 1)
    {
      [(SPLocationManager *)self _startMonitoringVisits];
    }
  }

  else
  {
    [(SPLocationManager *)self _stopMonitoringVisits];
  }

  self->_authorizationStatus = v4;
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v7 = a4;
  v5 = [v7 domain];
  if ([v5 isEqualToString:kCLErrorDomain])
  {
    v6 = [v7 code];

    if (!v6)
    {
      [(SPLocationManager *)self _stopPollingForLocationCategory];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (dword_100015DA0 <= 90 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100009AD0();
  }

LABEL_8:
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v9 = a4;
  v5 = [v9 _placeInference];
  v6 = [v5 _loiIdentifier];

  if (v6)
  {
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100009B10(v9);
    }

    v7 = [v9 _placeInference];
    v8 = [v7 _loiIdentifier];
    [(SPLocationManager *)self _updateLocationCategoryWithBestPlaceInferenceIdentifier:v8];
  }

  else
  {
    if (dword_100015DA0 <= 30 && (dword_100015DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100009B6C();
    }

    [(SPLocationManager *)self _startPollingForLocationCategory];
  }
}

@end