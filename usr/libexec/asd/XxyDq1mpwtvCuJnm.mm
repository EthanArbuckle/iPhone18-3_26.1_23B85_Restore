@interface XxyDq1mpwtvCuJnm
+ (id)sharedInstance;
- (BOOL)iww2ALffDR8ZLPHe:(BOOL)a3;
- (XxyDq1mpwtvCuJnm)init;
- (id)xusy7Jyby2KbKh9r:(int)a3 bjbqetmBxg55daaO:(double)a4 pCfijpsS4m8yGvnw:(id)a5 gk4SFBckVtkbwrej:(id)a6 cI4BozMHCMeHTVXZ:(id)a7 waitingTime:(double)a8 errorCode:(int64_t)a9;
- (void)UupMWO2j2nYek7xf:(_KUwyEjpVZR65eUyl *)a3 TYPlhTGwKuAdWgfx:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)npeR2NAWL3FAqCSx:(double)a3 andCompletion:(id)a4;
- (void)prepareWithBundlePath:(id)a3 andLocationQueue:(id)a4;
- (void)startLocationManager;
- (void)timeoutForKey:(id)a3 forAuthorisation:(BOOL)a4 efc6f2da04fb733f:(double)a5;
- (void)ywKhQxUL6Utg1cmH:(double)a3 andCompletion:(id)a4;
@end

@implementation XxyDq1mpwtvCuJnm

+ (id)sharedInstance
{
  if (!qword_1006D7C68)
  {
    if (+[NSThread isMainThread])
    {
      v2 = objc_opt_new();
      v3 = qword_1006D7C68;
      qword_1006D7C68 = v2;
    }

    else
    {
      dispatch_sync(&_dispatch_main_q, &stru_10068F178);
    }
  }

  v4 = qword_1006D7C68;

  return v4;
}

- (XxyDq1mpwtvCuJnm)init
{
  v16.receiver = self;
  v16.super_class = XxyDq1mpwtvCuJnm;
  v2 = [(XxyDq1mpwtvCuJnm *)&v16 init];
  v3 = v2;
  if (v2)
  {
    yABQBiEYyLNkt6IY = v2->_yABQBiEYyLNkt6IY;
    v2->_yABQBiEYyLNkt6IY = 0;

    kp3LsdVLlXwFNqJV = v3->_kp3LsdVLlXwFNqJV;
    v3->_kp3LsdVLlXwFNqJV = 0;

    v3->_zDlKxUFITTJsP8iN = -1.0;
    vCWRguBEmim3giZ9 = v3->_vCWRguBEmim3giZ9;
    v3->_vCWRguBEmim3giZ9 = 0;

    v7 = objc_opt_new();
    locationCompletions = v3->_locationCompletions;
    v3->_locationCompletions = v7;

    v9 = objc_opt_new();
    authorisationCompletions = v3->_authorisationCompletions;
    v3->_authorisationCompletions = v9;

    v3->_g6zbwvXxUAZNoblY = 0.0;
    v3->_nextCompletionDictionaryKey = 0;
    locationBundlePath = v3->_locationBundlePath;
    v3->_locationBundlePath = 0;

    locationQueue = v3->_locationQueue;
    v3->_locationQueue = 0;

    v3->_Msur5CGmk1XEBjLD = 0.0;
    v13 = +[NSDate distantPast];
    LUsBOf3PLbri6v6o = v3->_LUsBOf3PLbri6v6o;
    v3->_LUsBOf3PLbri6v6o = v13;
  }

  return v3;
}

- (void)prepareWithBundlePath:(id)a3 andLocationQueue:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_locationQueue, a4);
  v11 = a4;
  locationBundlePath = self->_locationBundlePath;
  self->_locationBundlePath = v6;
  v8 = v6;

  v9 = [[CLLocationManager alloc] initWithEffectiveBundlePath:v8 delegate:self onQueue:v11];
  N8Azi3NI6QrNPsLP = self->_N8Azi3NI6QrNPsLP;
  self->_N8Azi3NI6QrNPsLP = v9;
}

- (void)timeoutForKey:(id)a3 forAuthorisation:(BOOL)a4 efc6f2da04fb733f:(double)a5
{
  v8 = a3;
  v9 = dispatch_time(0, (a5 * 1000000000.0));
  v10 = [(XxyDq1mpwtvCuJnm *)self locationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AEA8;
  block[3] = &unk_10068F1A0;
  v14 = a4;
  block[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_after(v9, v10, block);
}

- (void)ywKhQxUL6Utg1cmH:(double)a3 andCompletion:(id)a4
{
  v6 = a4;
  v7 = [(XxyDq1mpwtvCuJnm *)self locationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B008;
  block[3] = &unk_10068F1C8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)npeR2NAWL3FAqCSx:(double)a3 andCompletion:(id)a4
{
  v6 = a4;
  v7 = [(XxyDq1mpwtvCuJnm *)self locationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B1CC;
  block[3] = &unk_10068F1C8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (BOOL)iww2ALffDR8ZLPHe:(BOOL)a3
{
  v3 = a3;
  v5 = [(XxyDq1mpwtvCuJnm *)self LUsBOf3PLbri6v6o];
  if (v5)
  {
    v6 = [(XxyDq1mpwtvCuJnm *)self LUsBOf3PLbri6v6o];
    [v6 timeIntervalSinceNow];
    v8 = -3600.0;
    if (v3)
    {
      v8 = -3570.0;
    }

    if (v7 >= v8)
    {
      [(XxyDq1mpwtvCuJnm *)self zDlKxUFITTJsP8iN];
      v11 = v10;
      [(XxyDq1mpwtvCuJnm *)self Msur5CGmk1XEBjLD];
      v9 = v11 < v12;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)xusy7Jyby2KbKh9r:(int)a3 bjbqetmBxg55daaO:(double)a4 pCfijpsS4m8yGvnw:(id)a5 gk4SFBckVtkbwrej:(id)a6 cI4BozMHCMeHTVXZ:(id)a7 waitingTime:(double)a8 errorCode:(int64_t)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [(XxyDq1mpwtvCuJnm *)self yABQBiEYyLNkt6IY];
  if (v18 && (v19 = v18, [(XxyDq1mpwtvCuJnm *)self kp3LsdVLlXwFNqJV], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
    v21 = [(XxyDq1mpwtvCuJnm *)self yABQBiEYyLNkt6IY];

    v22 = [(XxyDq1mpwtvCuJnm *)self kp3LsdVLlXwFNqJV];

    [(XxyDq1mpwtvCuJnm *)self zDlKxUFITTJsP8iN];
    a4 = v23;
    v24 = [(XxyDq1mpwtvCuJnm *)self vCWRguBEmim3giZ9];

    [(XxyDq1mpwtvCuJnm *)self Msur5CGmk1XEBjLD];
    if (a4 > v25)
    {
      v26 = 139007;
    }

    else
    {
      v26 = 0;
    }

    v15 = v21;
    v16 = v22;
    v17 = v24;
  }

  else
  {
    v26 = 139002;
    if (v15 && v16)
    {
      v26 = 139006;
    }

    else
    {
      [(XxyDq1mpwtvCuJnm *)self setZDlKxUFITTJsP8iN:0.0];
    }
  }

  [v15 doubleValue];
  v28 = v27 * 1000000.0;
  [v16 doubleValue];
  v30 = (v29 * 1000000.0);
  v31 = objc_alloc_init(NSMutableDictionary);
  v32 = [NSNumber numberWithInteger:v26];
  [v31 setObject:v32 forKeyedSubscript:@"ec"];

  v33 = [NSNumber numberWithInteger:v28];
  [v31 setObject:v33 forKeyedSubscript:@"mlat"];

  v34 = [NSNumber numberWithInteger:v30];
  [v31 setObject:v34 forKeyedSubscript:@"mlon"];

  if (a3 >= 3)
  {
    v35 = [NSNumber numberWithDouble:a4];
    [v31 setObject:v35 forKeyedSubscript:@"ha"];

    v36 = [NSNumber numberWithDouble:0.0 - a8];
    [v31 setObject:v36 forKeyedSubscript:@"time"];

    if (a3 != 3)
    {
      LUsBOf3PLbri6v6o = self->_LUsBOf3PLbri6v6o;
      if (LUsBOf3PLbri6v6o)
      {
        v38 = LUsBOf3PLbri6v6o;
      }

      else
      {
        v38 = +[NSDate date];
      }

      v39 = v38;
      [v31 setObject:v38 forKeyedSubscript:@"lt"];
      vCWRguBEmim3giZ9 = self->_vCWRguBEmim3giZ9;
      if (vCWRguBEmim3giZ9)
      {
        v41 = [NSNumber numberWithBool:[(CLLocationSourceInformation *)vCWRguBEmim3giZ9 isSimulatedBySoftware]];
        [v31 setObject:v41 forKeyedSubscript:@"sim"];

        v42 = [NSNumber numberWithBool:[(CLLocationSourceInformation *)self->_vCWRguBEmim3giZ9 isProducedByAccessory]];
        [v31 setObject:v42 forKeyedSubscript:@"acc"];
      }
    }
  }

  v43 = [NSDictionary dictionaryWithDictionary:v31];
  v46 = v43;
  v44 = [NSArray arrayWithObjects:&v46 count:1];

  return v44;
}

- (void)UupMWO2j2nYek7xf:(_KUwyEjpVZR65eUyl *)a3 TYPlhTGwKuAdWgfx:(id)a4 TWWnmIjkBlMfHmma:(id)a5 withCompletion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[NSDate date];
  *v42 = kCLLocationAccuracyBestForNavigation;
  *&v42[1] = kCLLocationAccuracyBest;
  *&v42[2] = kCLLocationAccuracyNearestTenMeters;
  *&v42[3] = kCLLocationAccuracyHundredMeters;
  *&v42[4] = kCLLocationAccuracyKilometer;
  *&v42[5] = kCLLocationAccuracyThreeKilometers;
  v14 = self->_yABQBiEYyLNkt6IY;
  v15 = self->_kp3LsdVLlXwFNqJV;
  zDlKxUFITTJsP8iN = self->_zDlKxUFITTJsP8iN;
  v17 = self->_vCWRguBEmim3giZ9;
  if (a3->var0 == 4)
  {
    var1 = a3->var1;
    if (var1 == 5)
    {
      v25 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:a3->var4.var0.var0 gsx0MJUoOpcxcozG:a3->var4.var1.var0.var1];
      *&self->_Msur5CGmk1XEBjLD = v42[a3->var4.var5.var2];
      v26 = [v10 i4KDOQicW9Xd5WBz];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10000BFC0;
      v30[3] = &unk_10068F290;
      v40 = a3;
      v31 = v10;
      v32 = v11;
      v33 = self;
      v34 = v25;
      v41 = zDlKxUFITTJsP8iN;
      v35 = v14;
      v36 = v15;
      v37 = v17;
      v38 = v13;
      v39 = v12;
      v23 = v25;
      [Yp00msaYdVlZesvU eJSthhES04gLkDjz:&a3->var4.var15.var2.var1 i4KDOQicW9Xd5WBz:v26 TWWnmIjkBlMfHmma:v32 withCompletion:v30];

      v24 = v31;
      goto LABEL_7;
    }

    if (var1 == 4)
    {
      v27 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:a3->var4.var0.var0 gsx0MJUoOpcxcozG:a3->var4.var1.var0.var1];
      *&self->_Msur5CGmk1XEBjLD = v42[a3->var4.var5.var2];
      v19 = a3->var4.var5.var3 * 0.001;
      v20 = a3->var4.var5.var4 * 0.001;
      v21 = a3->var1;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000C284;
      v28[3] = &unk_10068F240;
      v29 = v12;
      v22 = self;
      v23 = v27;
      [(XxyDq1mpwtvCuJnm *)v22 jEx0mo2jM4HTfcdS:v27 pRoPFwkNebqWzDu0:v21 bjbqetmBxg55daaO:v14 pCfijpsS4m8yGvnw:v15 gk4SFBckVtkbwrej:v17 cI4BozMHCMeHTVXZ:v13 veRLfRQYSQxKOWNa:zDlKxUFITTJsP8iN g6zbwvXxUAZNoblY:v20 sX1qLiPSUO5sF5EE:v19 withCompletion:v28];
      v24 = v29;
LABEL_7:

      goto LABEL_8;
    }
  }

  (*(v12 + 2))(v12, 0);
LABEL_8:
}

- (void)startLocationManager
{
  v3 = [(XxyDq1mpwtvCuJnm *)self N8Azi3NI6QrNPsLP];
  [(XxyDq1mpwtvCuJnm *)self Msur5CGmk1XEBjLD];
  [v3 setDesiredAccuracy:?];

  v4 = [(XxyDq1mpwtvCuJnm *)self N8Azi3NI6QrNPsLP];
  [v4 setDistanceFilter:kCLLocationAccuracyKilometer];

  if ([(XxyDq1mpwtvCuJnm *)self LjU00AjDrcTJbVJD]&& ![(XxyDq1mpwtvCuJnm *)self SNfHoVX7xML3tdWp])
  {
    v5 = [(XxyDq1mpwtvCuJnm *)self N8Azi3NI6QrNPsLP];
    [v5 startUpdatingLocation];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [a4 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = [(XxyDq1mpwtvCuJnm *)self LUsBOf3PLbri6v6o];
        if (!v11)
        {
          goto LABEL_8;
        }

        v12 = v11;
        v13 = [v10 timestamp];
        v14 = [(XxyDq1mpwtvCuJnm *)self LUsBOf3PLbri6v6o];

        if (v13 > v14)
        {
LABEL_8:
          [v10 coordinate];
          v15 = [NSNumber numberWithDouble:?];
          [(XxyDq1mpwtvCuJnm *)self setYABQBiEYyLNkt6IY:v15];

          [v10 coordinate];
          v17 = [NSNumber numberWithDouble:v16];
          [(XxyDq1mpwtvCuJnm *)self setKp3LsdVLlXwFNqJV:v17];

          [v10 horizontalAccuracy];
          [(XxyDq1mpwtvCuJnm *)self setZDlKxUFITTJsP8iN:?];
          v18 = [v10 timestamp];
          [(XxyDq1mpwtvCuJnm *)self setLUsBOf3PLbri6v6o:v18];

          v19 = [v10 sourceInformation];
          [(XxyDq1mpwtvCuJnm *)self setVCWRguBEmim3giZ9:v19];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  if ([(XxyDq1mpwtvCuJnm *)self iww2ALffDR8ZLPHe:0])
  {
    v20 = [(XxyDq1mpwtvCuJnm *)self locationCompletions];
    v21 = [v20 allValues];

    v22 = [(XxyDq1mpwtvCuJnm *)self locationCompletions];
    [v22 removeAllObjects];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v30;
      do
      {
        v27 = 0;
        do
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v23);
          }

          (*(*(*(&v29 + 1) + 8 * v27) + 16))(*(*(&v29 + 1) + 8 * v27));
          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v25);
    }

    v28 = [(XxyDq1mpwtvCuJnm *)self N8Azi3NI6QrNPsLP];
    [v28 stopUpdatingLocation];
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  yABQBiEYyLNkt6IY = self->_yABQBiEYyLNkt6IY;
  self->_yABQBiEYyLNkt6IY = 0;

  kp3LsdVLlXwFNqJV = self->_kp3LsdVLlXwFNqJV;
  self->_kp3LsdVLlXwFNqJV = 0;

  v7 = [(XxyDq1mpwtvCuJnm *)self N8Azi3NI6QrNPsLP];
  [v7 stopUpdatingLocation];

  v8 = [(XxyDq1mpwtvCuJnm *)self locationCompletions];
  v9 = [v8 allValues];

  v10 = [(XxyDq1mpwtvCuJnm *)self locationCompletions];
  [v10 removeAllObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v16 + 1) + 8 * v15) + 16))(*(*(&v16 + 1) + 8 * v15));
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  self->_YGGzx6XAo42A7s6x = [a3 authorizationStatus];
  self->_jRTN5Tg2R7nMgayq = 1;
  v4 = [(XxyDq1mpwtvCuJnm *)self authorisationCompletions];
  v5 = [v4 allValues];

  v6 = [(XxyDq1mpwtvCuJnm *)self authorisationCompletions];
  [v6 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end