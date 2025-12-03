@interface STUnifiedTransportPayload
+ (id)_descriptionDictionariesForBlueprintDictionaries:(id)dictionaries;
+ (id)_descriptionDictionariesForSettingsDictionaries:(id)dictionaries;
+ (id)_descriptionDictionaryForBlueprintPayloadDictionary:(id)dictionary;
+ (id)_descriptionDictionaryForCheckinRequestPayloadDictionary:(id)dictionary;
+ (id)_descriptionDictionaryForCheckinResponsePayloadDictionary:(id)dictionary;
+ (id)_descriptionDictionaryForPayloadDictionary:(id)dictionary type:(id)type;
+ (id)_descriptionDictionaryForSettingsPayloadDictionary:(id)dictionary;
- (NSString)UUID;
- (NSString)payloadType;
- (STUnifiedTransportPayload)initWithCoder:(id)coder;
- (STUnifiedTransportPayload)initWithPayload:(id)payload type:(id)type userInfo:(id)info;
- (STUnifiedTransportPayload)initWithPayload:(id)payload userInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setUUID:(id)d;
@end

@implementation STUnifiedTransportPayload

- (STUnifiedTransportPayload)initWithPayload:(id)payload type:(id)type userInfo:(id)info
{
  typeCopy = type;
  v9 = [(STUnifiedTransportPayload *)self initWithPayload:payload userInfo:info];
  userInfo = [(STUnifiedTransportPayload *)v9 userInfo];
  [userInfo setObject:typeCopy forKeyedSubscript:@"RMUnifiedTransportPayloadTypeKey"];

  return v9;
}

- (STUnifiedTransportPayload)initWithPayload:(id)payload userInfo:(id)info
{
  payloadCopy = payload;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = STUnifiedTransportPayload;
  v8 = [(STUnifiedTransportPayload *)&v16 init];
  if (v8)
  {
    v9 = [payloadCopy copy];
    payloadDictionary = v8->_payloadDictionary;
    v8->_payloadDictionary = v9;

    v11 = [infoCopy mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    userInfo = v8->_userInfo;
    v8->_userInfo = v13;
  }

  return v8;
}

- (NSString)UUID
{
  userInfo = [(STUnifiedTransportPayload *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"RMUnifiedTransportPayloadIdentifierKey"];

  return v3;
}

- (void)setUUID:(id)d
{
  v5 = [d copy];
  userInfo = [(STUnifiedTransportPayload *)self userInfo];
  [userInfo setObject:v5 forKeyedSubscript:@"RMUnifiedTransportPayloadIdentifierKey"];
}

- (NSString)payloadType
{
  userInfo = [(STUnifiedTransportPayload *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"RMUnifiedTransportPayloadTypeKey"];

  return v3;
}

+ (id)_descriptionDictionariesForBlueprintDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dictionariesCopy count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = dictionariesCopy;
  v4 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v34 = *v37;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = objc_opt_new();
        v9 = [v7 objectForKeyedSubscript:@"identifier"];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = @"None";
        }

        [v8 setObject:v11 forKeyedSubscript:@"identifier"];

        v12 = [v7 objectForKeyedSubscript:@"users"];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = @"None";
        }

        [v8 setObject:v14 forKeyedSubscript:@"users"];

        v15 = [v7 objectForKeyedSubscript:@"enabled"];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = &__kCFBooleanFalse;
        }

        [v8 setObject:v17 forKeyedSubscript:@"enabled"];

        v18 = [v7 objectForKeyedSubscript:@"limitEnabled"];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &__kCFBooleanFalse;
        }

        [v8 setObject:v20 forKeyedSubscript:@"limitEnabled"];

        v21 = [v7 objectForKeyedSubscript:@"creationDate"];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = @"None";
        }

        [v8 setObject:v23 forKeyedSubscript:@"creationDate"];

        v24 = [v7 objectForKeyedSubscript:@"expiration"];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = @"None";
        }

        [v8 setObject:v26 forKeyedSubscript:@"expiration"];

        v27 = [v7 objectForKeyedSubscript:@"organization.class"];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = @"None";
        }

        [v8 setObject:v29 forKeyedSubscript:@"organization.class"];

        v30 = [v7 objectForKeyedSubscript:@"configurations"];

        if (v30)
        {
          v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 count]);
          [v8 setObject:v31 forKeyedSubscript:@"NumberOfConfigurations"];
        }

        else
        {
          [v8 setObject:&off_1001B2398 forKeyedSubscript:@"NumberOfConfigurations"];
        }

        [v35 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v5);
  }

  return v35;
}

+ (id)_descriptionDictionariesForSettingsDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v49 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dictionariesCopy count]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = dictionariesCopy;
  v50 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v50)
  {
    v48 = *v52;
    v4 = @"organization";
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v52 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v51 + 1) + 8 * i);
        v7 = objc_opt_new();
        v8 = [v6 objectForKeyedSubscript:@"user"];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = @"None";
        }

        [v7 setObject:v10 forKeyedSubscript:@"user"];

        v11 = [v6 objectForKeyedSubscript:@"passcode"];
        if (v11)
        {
          v12 = @"Set";
        }

        else
        {
          v12 = @"Not Set";
        }

        [v7 setObject:v12 forKeyedSubscript:@"passcode"];

        v13 = [v6 objectForKeyedSubscript:@"allLimitsEnabled"];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = &__kCFBooleanFalse;
        }

        [v7 setObject:v15 forKeyedSubscript:@"allLimitsEnabled"];

        v16 = [v6 objectForKeyedSubscript:@"defaultUserPolicies"];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = &off_1001B2398;
        }

        [v7 setObject:v18 forKeyedSubscript:@"defaultUserPolicies"];

        v19 = [v6 objectForKeyedSubscript:@"communicationPolicy"];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = &off_1001B2398;
        }

        [v7 setObject:v21 forKeyedSubscript:@"communicationPolicy"];

        v22 = [v6 objectForKeyedSubscript:@"communicationWhileLimitedPolicy"];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = &off_1001B2398;
        }

        [v7 setObject:v24 forKeyedSubscript:@"communicationWhileLimitedPolicy"];

        v25 = [v6 objectForKeyedSubscript:@"contactManagementState"];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &off_1001B2398;
        }

        [v7 setObject:v27 forKeyedSubscript:@"contactManagementState"];

        v28 = [v6 objectForKeyedSubscript:@"isCommunicationSafetySendingRestricted"];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = &__kCFBooleanFalse;
        }

        [v7 setObject:v30 forKeyedSubscript:@"isCommunicationSafetySendingRestricted"];

        v31 = [v6 objectForKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = &__kCFBooleanFalse;
        }

        [v7 setObject:v33 forKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];

        v34 = [v6 objectForKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];
        v35 = v34;
        if (v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = &__kCFBooleanFalse;
        }

        [v7 setObject:v36 forKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];

        v37 = [v6 objectForKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];
        v38 = v37;
        if (v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = &__kCFBooleanFalse;
        }

        [v7 setObject:v39 forKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];

        v40 = [v6 objectForKeyedSubscript:v4];
        if (v40)
        {
          [v7 setObject:v40 forKeyedSubscript:v4];
        }

        v41 = [v6 objectForKeyedSubscript:@"recoveryAltDSID"];
        if (v41)
        {
          [v7 setObject:v41 forKeyedSubscript:@"recoveryAltDSID"];
        }

        v42 = [v6 objectForKeyedSubscript:@"isManaged"];
        if (v42)
        {
          [v7 setObject:v42 forKeyedSubscript:@"isManaged"];
        }

        v43 = v4;
        v44 = [v6 objectForKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];
        if (v44)
        {
          [v7 setObject:v44 forKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];
        }

        v45 = [v6 objectForKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];

        if (v45)
        {
          [v7 setObject:v45 forKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];
        }

        [v49 addObject:v7];
        v4 = v43;
      }

      v50 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v50);
  }

  return v49;
}

+ (id)_descriptionDictionaryForCheckinRequestPayloadDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Blueprints"];
  v6 = [v5 count];
  v7 = [NSNumber numberWithUnsignedInteger:v6];
  [v4 setObject:v7 forKeyedSubscript:@"NumberOfBlueprints"];

  if (v6)
  {
    v8 = [NSMutableArray arrayWithCapacity:v6];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    allKeys = [v5 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v47;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          [v8 addObject:*(*(&v46 + 1) + 8 * i)];
        }

        v11 = [allKeys countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKeyedSubscript:@"Blueprints"];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"Settings"];
  v15 = [v14 count];
  v16 = [NSNumber numberWithUnsignedInteger:v15];
  [v4 setObject:v16 forKeyedSubscript:@"NumberOfSettings"];

  if (v15)
  {
    v17 = [NSMutableArray arrayWithCapacity:v15];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    allKeys2 = [v14 allKeys];
    v19 = [allKeys2 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(allKeys2);
          }

          [v17 addObject:*(*(&v42 + 1) + 8 * j)];
        }

        v20 = [allKeys2 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKeyedSubscript:@"Settings"];
  }

  v23 = [dictionaryCopy objectForKeyedSubscript:@"UserDeviceState"];
  v24 = objc_opt_new();
  v25 = [v23 objectForKeyedSubscript:@"user"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"None";
  }

  [v24 setObject:v27 forKeyedSubscript:@"user"];

  v28 = [v23 objectForKeyedSubscript:@"screenTimeEnabled"];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = &__kCFBooleanFalse;
  }

  [v24 setObject:v30 forKeyedSubscript:@"screenTimeEnabled"];

  v31 = [v23 objectForKeyedSubscript:@"managementEnabled"];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = &__kCFBooleanFalse;
  }

  [v24 setObject:v33 forKeyedSubscript:@"managementEnabled"];

  v34 = [v23 objectForKeyedSubscript:@"passcodeOwner"];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = @"None";
  }

  [v24 setObject:v36 forKeyedSubscript:@"passcodeOwner"];

  v37 = [v23 objectForKeyedSubscript:@"lastFamilyCheckinDate"];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = @"None";
  }

  [v24 setObject:v39 forKeyedSubscript:@"lastFamilyCheckinDate"];

  [v4 setObject:v24 forKeyedSubscript:@"UserDeviceState"];
  v40 = [v4 copy];

  return v40;
}

+ (id)_descriptionDictionaryForCheckinResponsePayloadDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v6 = [dictionaryCopy objectForKeyedSubscript:@"Blueprints"];
  v7 = [v6 count];
  v8 = [NSNumber numberWithUnsignedInteger:v7];
  [v5 setObject:v8 forKeyedSubscript:@"NumberOfBlueprints"];

  if (v7)
  {
    v9 = [self _descriptionDictionariesForBlueprintDictionaries:v6];
    [v5 setObject:v9 forKeyedSubscript:@"Blueprints"];
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"Settings"];
  v11 = [v10 count];
  v12 = [NSNumber numberWithUnsignedInteger:v11];
  [v5 setObject:v12 forKeyedSubscript:@"NumberOfSettings"];

  if (v11)
  {
    v13 = [self _descriptionDictionariesForSettingsDictionaries:v10];
    [v5 setObject:v13 forKeyedSubscript:@"Settings"];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"UserDeviceState"];
  v15 = objc_opt_new();
  v16 = [v14 objectForKeyedSubscript:@"user"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"None";
  }

  [v15 setObject:v18 forKeyedSubscript:@"user"];

  v19 = [v14 objectForKeyedSubscript:@"screenTimeEnabled"];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &__kCFBooleanFalse;
  }

  [v15 setObject:v21 forKeyedSubscript:@"screenTimeEnabled"];

  v22 = [v14 objectForKeyedSubscript:@"managementEnabled"];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &__kCFBooleanFalse;
  }

  [v15 setObject:v24 forKeyedSubscript:@"managementEnabled"];

  v25 = [v14 objectForKeyedSubscript:@"passcodeOwner"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"None";
  }

  [v15 setObject:v27 forKeyedSubscript:@"passcodeOwner"];

  v28 = [v14 objectForKeyedSubscript:@"lastFamilyCheckinDate"];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"None";
  }

  [v15 setObject:v30 forKeyedSubscript:@"lastFamilyCheckinDate"];

  [v5 setObject:v15 forKeyedSubscript:@"UserDeviceState"];
  v31 = [v5 copy];

  return v31;
}

+ (id)_descriptionDictionaryForBlueprintPayloadDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v6 = [dictionaryCopy objectForKeyedSubscript:@"Blueprints"];

  v7 = [v6 count];
  v8 = [NSNumber numberWithUnsignedInteger:v7];
  [v5 setObject:v8 forKeyedSubscript:@"NumberOfBlueprints"];

  if (v7)
  {
    v9 = [self _descriptionDictionariesForBlueprintDictionaries:v6];
    [v5 setObject:v9 forKeyedSubscript:@"Blueprints"];
  }

  return v5;
}

+ (id)_descriptionDictionaryForSettingsPayloadDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v6 = [dictionaryCopy objectForKeyedSubscript:@"Settings"];

  v7 = [v6 count];
  v8 = [NSNumber numberWithUnsignedInteger:v7];
  [v5 setObject:v8 forKeyedSubscript:@"NumberOfSettings"];

  if (v7)
  {
    v9 = [self _descriptionDictionariesForSettingsDictionaries:v6];
    [v5 setObject:v9 forKeyedSubscript:@"Settings"];
  }

  return v5;
}

+ (id)_descriptionDictionaryForPayloadDictionary:(id)dictionary type:(id)type
{
  dictionaryCopy = dictionary;
  typeCopy = type;
  v8 = objc_opt_new();
  if ([typeCopy isEqualToString:@"RMUnifiedTransportPayloadTypeCheckinRequest"])
  {
    v9 = [self _descriptionDictionaryForCheckinRequestPayloadDictionary:dictionaryCopy];
LABEL_7:
    v10 = v9;
LABEL_8:

    v8 = v10;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"RMUnifiedTransportPayloadTypeCheckinResponse"])
  {
    v9 = [self _descriptionDictionaryForCheckinResponsePayloadDictionary:dictionaryCopy];
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:@"RMUnifiedTransportPayloadTypeBlueprints"])
  {
    v9 = [self _descriptionDictionaryForBlueprintPayloadDictionary:dictionaryCopy];
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:@"RMUnifiedTransportPayloadTypeUsageRequest"])
  {
    v10 = &off_1001B2600;
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"RMUnifiedTransportPayloadTypeUsageResponse"])
  {
    v10 = &off_1001B2628;
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"RMUnifiedTransportPayloadTypeAskForTimeRequest"])
  {
    v9 = STGetDescriptionForAskForTimeRequestDictionary();
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:@"RMUnifiedTransportPayloadTypeAskForTimeResponse"])
  {
    v9 = STGetDescriptionForAskForTimeResponseDictionary();
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:@"RMUnifiedTransportPayloadTypeFamilySettings"])
  {
    v9 = [self _descriptionDictionaryForSettingsPayloadDictionary:dictionaryCopy];
    goto LABEL_7;
  }

LABEL_9:

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  payloadType = [(STUnifiedTransportPayload *)self payloadType];
  uUID = [(STUnifiedTransportPayload *)self UUID];
  payloadDictionary = [(STUnifiedTransportPayload *)self payloadDictionary];
  payloadType2 = [(STUnifiedTransportPayload *)self payloadType];
  v8 = [STUnifiedTransportPayload _descriptionDictionaryForPayloadDictionary:payloadDictionary type:payloadType2];
  v9 = [NSString stringWithFormat:@"<%@ { Type: %@ UUID: %@ Contents: %@}>", v3, payloadType, uUID, v8];

  return v9;
}

- (STUnifiedTransportPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = STUnifiedTransportPayload;
  v5 = [(STUnifiedTransportPayload *)&v34 init];
  if (v5)
  {
    v33 = [NSSet alloc];
    v32 = objc_opt_class();
    v31 = objc_opt_class();
    v30 = objc_opt_class();
    v29 = objc_opt_class();
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v33 initWithObjects:{v32, v31, v30, v29, v28, v27, v26, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"payloadDictionary"];
    payloadDictionary = v5->_payloadDictionary;
    v5->_payloadDictionary = v15;

    v17 = [NSSet alloc];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v17 initWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"userInfo"];
    v23 = [v22 mutableCopy];
    userInfo = v5->_userInfo;
    v5->_userInfo = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  payloadDictionary = self->_payloadDictionary;
  coderCopy = coder;
  [coderCopy encodeObject:payloadDictionary forKey:@"payloadDictionary"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithPayload:self->_payloadDictionary userInfo:self->_userInfo];
  [v4 setDestinations:self->_destinations];
  return v4;
}

@end