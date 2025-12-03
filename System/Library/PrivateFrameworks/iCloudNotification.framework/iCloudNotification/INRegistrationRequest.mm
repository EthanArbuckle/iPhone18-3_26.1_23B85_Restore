@interface INRegistrationRequest
+ (id)bodyParameterValueForRegistrationReason:(unint64_t)reason;
- (id)_audioAccessoryInfo;
- (id)addBodyParameters:(id)parameters;
- (id)urlString;
@end

@implementation INRegistrationRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  registerDeviceURL = [v2 registerDeviceURL];

  return registerDeviceURL;
}

+ (id)bodyParameterValueForRegistrationReason:(unint64_t)reason
{
  if (reason > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100055208 + reason);
  }
}

- (id)addBodyParameters:(id)parameters
{
  parametersCopy = parameters;
  v63 = [parametersCopy mutableCopy];
  selfCopy = self;
  v61 = [INRegistrationRequest bodyParameterValueForRegistrationReason:self->_registrationReason];
  [v63 setObject:v61 forKeyedSubscript:@"cause"];
  account = [(INRequest *)self account];
  enabledDataclasses = [account enabledDataclasses];
  allObjects = [enabledDataclasses allObjects];
  v7 = [allObjects mutableCopy];

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

  deviceInfoProvider = [(INRequest *)self deviceInfoProvider];
  productVersion = [deviceInfoProvider productVersion];

  if (productVersion)
  {
    [v64 setObject:productVersion forKeyedSubscript:@"productVersion"];
  }

  deviceInfoProvider2 = [(INRequest *)self deviceInfoProvider];
  productType = [deviceInfoProvider2 productType];

  if (productType)
  {
    [v64 setObject:productType forKeyedSubscript:@"productType"];
  }

  deviceInfoProvider3 = [(INRequest *)self deviceInfoProvider];
  deviceClass = [deviceInfoProvider3 deviceClass];

  if (deviceClass)
  {
    [v64 setObject:deviceClass forKeyedSubscript:@"deviceClass"];
  }

  deviceInfoProvider4 = [(INRequest *)self deviceInfoProvider];
  deviceName = [deviceInfoProvider4 deviceName];

  if (deviceName)
  {
    [v64 setObject:deviceName forKeyedSubscript:@"deviceName"];
  }

  deviceInfoProvider5 = [(INRequest *)self deviceInfoProvider];
  storageCapacity = [deviceInfoProvider5 storageCapacity];
  stringValue = [storageCapacity stringValue];

  if (stringValue)
  {
    [v64 setObject:stringValue forKeyedSubscript:@"storageCapacity"];
  }

  deviceInfoProvider6 = [(INRequest *)self deviceInfoProvider];
  hasCellularCapability = [deviceInfoProvider6 hasCellularCapability];

  if (hasCellularCapability)
  {
    v16 = [NSNumber numberWithBool:1];
    [v64 setObject:v16 forKeyedSubscript:@"hasCellularCapability"];
  }

  v17 = +[INCachedDeviceInfo currentDeviceInfo];
  mobileEquipmentIdentifier = [v17 mobileEquipmentIdentifier];

  if (mobileEquipmentIdentifier)
  {
    [v64 setObject:mobileEquipmentIdentifier forKeyedSubscript:@"meid"];
  }

  deviceInfoProvider7 = [(INRequest *)self deviceInfoProvider];
  internationalMobileEquipmentIdentity = [deviceInfoProvider7 internationalMobileEquipmentIdentity];

  if (internationalMobileEquipmentIdentity)
  {
    [v64 setObject:internationalMobileEquipmentIdentity forKeyedSubscript:@"imei"];
  }

  deviceInfoProvider8 = [(INRequest *)self deviceInfoProvider];
  deviceColor = [deviceInfoProvider8 deviceColor];

  if (deviceColor)
  {
    [v64 setObject:deviceColor forKeyedSubscript:@"deviceColor"];
  }

  v21 = +[INCachedDeviceInfo currentDeviceInfo];
  deviceEnclosureColor = [v21 deviceEnclosureColor];

  if (deviceEnclosureColor)
  {
    [v64 setObject:deviceEnclosureColor forKeyedSubscript:@"enclosureColor"];
  }

  deviceInfoProvider9 = [(INRequest *)self deviceInfoProvider];
  deviceCoverGlassColor = [deviceInfoProvider9 deviceCoverGlassColor];

  if (deviceCoverGlassColor)
  {
    [v64 setObject:deviceCoverGlassColor forKeyedSubscript:@"deviceCoverGlassColor"];
  }

  deviceInfoProvider10 = [(INRequest *)self deviceInfoProvider];
  deviceHousingColor = [deviceInfoProvider10 deviceHousingColor];

  if (deviceHousingColor)
  {
    [v64 setObject:deviceHousingColor forKeyedSubscript:@"deviceHousingColor"];
  }

  deviceInfoProvider11 = [(INRequest *)self deviceInfoProvider];
  deviceBackingColor = [deviceInfoProvider11 deviceBackingColor];

  if (deviceBackingColor)
  {
    [v64 setObject:deviceBackingColor forKeyedSubscript:@"deviceBackingColor"];
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
  sharedInstance = [v25 sharedInstance];
  getDevices = [sharedInstance getDevices];

  if ([getDevices count])
  {
    v66 = objc_alloc_init(NSMutableArray);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v28 = getDevices;
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

          v32 = mobileEquipmentIdentifier;
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
          mobileEquipmentIdentifier = v32;
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

  _audioAccessoryInfo = [(INRegistrationRequest *)selfCopy _audioAccessoryInfo];
  if ([_audioAccessoryInfo count])
  {
    [v63 setObject:_audioAccessoryInfo forKeyedSubscript:@"audioAccessoryInfo"];
  }

  account2 = [(INRequest *)selfCopy account];
  aa_isSuspended = [account2 aa_isSuspended];

  v42 = [NSNumber numberWithBool:aa_isSuspended];
  [v63 setObject:v42 forKeyedSubscript:@"isAccountInGrayMode"];

  if (aa_isSuspended)
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