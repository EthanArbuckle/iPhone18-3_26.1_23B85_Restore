@interface INRegistrationRequest
+ (id)bodyParameterValueForRegistrationReason:(unint64_t)a3;
- (id)_audioAccessoryInfo;
- (id)addBodyParameters:(id)a3;
- (id)urlString;
@end

@implementation INRegistrationRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 registerDeviceURL];

  return v3;
}

+ (id)bodyParameterValueForRegistrationReason:(unint64_t)a3
{
  if (a3 > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100055208 + a3);
  }
}

- (id)addBodyParameters:(id)a3
{
  v49 = a3;
  v63 = [v49 mutableCopy];
  v65 = self;
  v61 = [INRegistrationRequest bodyParameterValueForRegistrationReason:self->_registrationReason];
  [v63 setObject:v61 forKeyedSubscript:@"cause"];
  v4 = [(INRequest *)self account];
  v5 = [v4 enabledDataclasses];
  v6 = [v5 allObjects];
  v7 = [v6 mutableCopy];

  [v7 sortUsingComparator:&stru_100055160];
  if (v7)
  {
    [v63 setObject:v7 forKeyedSubscript:@"enabledDataClasses"];
  }

  v64 = [v63 objectForKeyedSubscript:@"deviceInfo"];
  if (!v64)
  {
    v64 = objc_alloc_init(NSMutableDictionary);
  }

  v8 = [(INRequest *)self deviceInfoProvider];
  v60 = [v8 productVersion];

  if (v60)
  {
    [v64 setObject:v60 forKeyedSubscript:@"productVersion"];
  }

  v9 = [(INRequest *)self deviceInfoProvider];
  v59 = [v9 productType];

  if (v59)
  {
    [v64 setObject:v59 forKeyedSubscript:@"productType"];
  }

  v10 = [(INRequest *)self deviceInfoProvider];
  v58 = [v10 deviceClass];

  if (v58)
  {
    [v64 setObject:v58 forKeyedSubscript:@"deviceClass"];
  }

  v11 = [(INRequest *)self deviceInfoProvider];
  v57 = [v11 deviceName];

  if (v57)
  {
    [v64 setObject:v57 forKeyedSubscript:@"deviceName"];
  }

  v12 = [(INRequest *)self deviceInfoProvider];
  v13 = [v12 storageCapacity];
  v56 = [v13 stringValue];

  if (v56)
  {
    [v64 setObject:v56 forKeyedSubscript:@"storageCapacity"];
  }

  v14 = [(INRequest *)self deviceInfoProvider];
  v15 = [v14 hasCellularCapability];

  if (v15)
  {
    v16 = [NSNumber numberWithBool:1];
    [v64 setObject:v16 forKeyedSubscript:@"hasCellularCapability"];
  }

  v17 = +[INCachedDeviceInfo currentDeviceInfo];
  v18 = [v17 mobileEquipmentIdentifier];

  if (v18)
  {
    [v64 setObject:v18 forKeyedSubscript:@"meid"];
  }

  v19 = [(INRequest *)self deviceInfoProvider];
  v55 = [v19 internationalMobileEquipmentIdentity];

  if (v55)
  {
    [v64 setObject:v55 forKeyedSubscript:@"imei"];
  }

  v20 = [(INRequest *)self deviceInfoProvider];
  v54 = [v20 deviceColor];

  if (v54)
  {
    [v64 setObject:v54 forKeyedSubscript:@"deviceColor"];
  }

  v21 = +[INCachedDeviceInfo currentDeviceInfo];
  v53 = [v21 deviceEnclosureColor];

  if (v53)
  {
    [v64 setObject:v53 forKeyedSubscript:@"enclosureColor"];
  }

  v22 = [(INRequest *)self deviceInfoProvider];
  v52 = [v22 deviceCoverGlassColor];

  if (v52)
  {
    [v64 setObject:v52 forKeyedSubscript:@"deviceCoverGlassColor"];
  }

  v23 = [(INRequest *)self deviceInfoProvider];
  v51 = [v23 deviceHousingColor];

  if (v51)
  {
    [v64 setObject:v51 forKeyedSubscript:@"deviceHousingColor"];
  }

  v24 = [(INRequest *)self deviceInfoProvider];
  v50 = [v24 deviceBackingColor];

  if (v50)
  {
    [v64 setObject:v50 forKeyedSubscript:@"deviceBackingColor"];
  }

  [v63 setObject:v64 forKeyedSubscript:@"deviceInfo"];
  v76 = 0;
  v77 = &v76;
  v78 = 0x2050000000;
  v25 = qword_100063620;
  v79 = qword_100063620;
  if (!qword_100063620)
  {
    v71 = _NSConcreteStackBlock;
    v72 = 3221225472;
    v73 = sub_10000396C;
    v74 = &unk_1000551B0;
    v75 = &v76;
    sub_10000396C(&v71);
    v25 = v77[3];
  }

  v26 = v25;
  _Block_object_dispose(&v76, 8);
  v27 = [v25 sharedInstance];
  v62 = [v27 getDevices];

  if ([v62 count])
  {
    v66 = objc_alloc_init(NSMutableArray);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v28 = v62;
    v29 = [v28 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v29)
    {
      v30 = *v68;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v68 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = v18;
          v33 = v7;
          v34 = *(*(&v67 + 1) + 8 * i);
          v76 = 0;
          v77 = &v76;
          v78 = 0x2020000000;
          v35 = qword_100063630;
          v79 = qword_100063630;
          if (!qword_100063630)
          {
            v71 = _NSConcreteStackBlock;
            v72 = 3221225472;
            v73 = sub_100003B38;
            v74 = &unk_1000551B0;
            v75 = &v76;
            v36 = sub_1000039C4();
            v37 = dlsym(v36, "NRDevicePropertyUDID");
            *(v75[1] + 24) = v37;
            qword_100063630 = *(v75[1] + 24);
            v35 = v77[3];
          }

          _Block_object_dispose(&v76, 8);
          if (!v35)
          {
            sub_1000338E4();
            __break(1u);
          }

          v38 = [v34 valueForProperty:*v35];
          v7 = v33;
          v18 = v32;
          if (v38)
          {
            [v66 addObject:v38];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v29);
    }

    [v63 setObject:v66 forKeyedSubscript:@"pairedUDIDs"];
  }

  v39 = [(INRegistrationRequest *)v65 _audioAccessoryInfo];
  if ([v39 count])
  {
    [v63 setObject:v39 forKeyedSubscript:@"audioAccessoryInfo"];
  }

  v40 = [(INRequest *)v65 account];
  v41 = [v40 aa_isSuspended];

  v42 = [NSNumber numberWithBool:v41];
  [v63 setObject:v42 forKeyedSubscript:@"isAccountInGrayMode"];

  if (v41)
  {
    v43 = objc_alloc_init(AAFollowUpController);
    v80 = AAFollowUpIdentifierVerifyTerms;
    v44 = [NSArray arrayWithObjects:&v80 count:1];
    v45 = [v43 creationDateOfOldestFollowUpWithIdentifiers:v44];

    [v45 timeIntervalSince1970];
    if (v46 == 0.0)
    {
      v46 = -1.0;
    }

    v47 = [NSNumber numberWithDouble:v46];
    [v63 setObject:v47 forKeyedSubscript:@"verifyTermsCFUTimestamp"];
  }

  return v63;
}

- (id)_audioAccessoryInfo
{
  v2 = dispatch_semaphore_create(0);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[FMDFMIPManager sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003748;
  v11[3] = &unk_100055188;
  v5 = v3;
  v12 = v5;
  v13 = v2;
  v6 = v2;
  [v4 audioAccessorySerialNumbersWithCompletion:v11];

  v7 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v13;
  v9 = v5;

  return v5;
}

@end