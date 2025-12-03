@interface STUserDeviceState
+ (id)_getCoreDuetIdentifier;
+ (id)fetchLocalUserDeviceStateInContext:(id)context error:(id *)error;
+ (id)fetchOrCreateLocalUserDeviceStateInContext:(id)context error:(id *)error;
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)fetchRequestMatchingLocalUserDeviceState;
+ (void)_getCoreDuetIdentifier;
- (BOOL)_validateCoreDuetIdentifier:(id)identifier;
- (BOOL)_validateLocalUserDeviceState:(id)state;
- (BOOL)_validateNumberOfLocalUserDeviceStates:(id)states;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)key;
@end

@implementation STUserDeviceState

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STUserDeviceState;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchRequestMatchingLocalUserDeviceState
{
  fetchRequest = [self fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"localUser"];
  [fetchRequest setPredicate:v3];

  return fetchRequest;
}

+ (id)fetchOrCreateLocalUserDeviceStateInContext:(id)context error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [STCoreDevice fetchOrCreateLocalDeviceInContext:contextCopy error:error];
  if (v7)
  {
    v8 = [self fetchLocalUserDeviceStateInContext:contextCopy error:error];
    if (v8)
    {
      v9 = v8;
      [v8 setDevice:v7];
      [v9 setLocalDevice:v7];
      v10 = v9;
    }

    else
    {
      v11 = +[STCoreUser fetchRequest];
      v12 = MEMORY[0x1E696AE18];
      v13 = +[STUserDescription currentUser];
      userDSID = [v13 userDSID];
      v15 = [v12 predicateWithFormat:@"%K == %@ OR %K == %@", @"dsid", &unk_1F3059BB8, @"dsid", userDSID];
      [v11 setPredicate:v15];

      v16 = [contextCopy executeFetchRequest:v11 error:error];
      v17 = v16;
      if (v16)
      {
        firstObject = [v16 firstObject];
        if (!firstObject)
        {
          firstObject = [[STCoreUser alloc] initWithContext:contextCopy];
        }

        v19 = +[STLog screentime];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          dsid = [(STCoreUser *)firstObject dsid];
          identifier = [v7 identifier];
          *buf = 136446722;
          v29 = "+[STUserDeviceState fetchOrCreateLocalUserDeviceStateInContext:error:]";
          v30 = 2112;
          v31 = dsid;
          v32 = 2112;
          v33 = identifier;
          _os_log_impl(&dword_1B831F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Creating UserDeviceState for user: (%@), deviceIdentifier: (%@)", buf, 0x20u);
        }

        v22 = [[STUserDeviceState alloc] initWithContext:contextCopy];
        [(STUserDeviceState *)v22 setUser:firstObject];
        [(STUserDeviceState *)v22 setLocalUser:firstObject];
        [(STUserDeviceState *)v22 setDevice:v7];
        [(STUserDeviceState *)v22 setLocalDevice:v7];
        _getCoreDuetIdentifier = [self _getCoreDuetIdentifier];
        if (_getCoreDuetIdentifier)
        {
          coreDuetIdentifier = [(STUserDeviceState *)v22 coreDuetIdentifier];
          v25 = [_getCoreDuetIdentifier isEqual:coreDuetIdentifier];

          if ((v25 & 1) == 0)
          {
            [(STUserDeviceState *)v22 setCoreDuetIdentifier:_getCoreDuetIdentifier];
          }
        }

        v10 = v22;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)fetchLocalUserDeviceStateInContext:(id)context error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  fetchRequestMatchingLocalUserDeviceState = [self fetchRequestMatchingLocalUserDeviceState];
  v7 = [fetchRequestMatchingLocalUserDeviceState execute:error];
  v8 = v7;
  if (v7)
  {
    firstObject = [v7 firstObject];
    if (firstObject)
    {
      _getCoreDuetIdentifier = [self _getCoreDuetIdentifier];
      if (_getCoreDuetIdentifier)
      {
        coreDuetIdentifier = [firstObject coreDuetIdentifier];
        v12 = [_getCoreDuetIdentifier isEqual:coreDuetIdentifier];

        if ((v12 & 1) == 0)
        {
          [firstObject setCoreDuetIdentifier:_getCoreDuetIdentifier];
        }
      }

      v13 = firstObject;
    }

    else if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"No local user device state found in the database";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = [v14 errorWithDomain:@"STErrorDomain" code:12 userInfo:v15];
    }
  }

  else
  {
    firstObject = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)_getCoreDuetIdentifier
{
  v11 = *MEMORY[0x1E69E9840];
  if (+[STUserDeviceState isUnitTestRunning])
  {
    v2 = @"testCoreDuetIndentifier";
  }

  else
  {
    v8 = 0;
    v2 = [MEMORY[0x1E69DEFE0] getLocalDeviceIdentifierAndReturnError:&v8];
    v3 = v8;
    v4 = +[STLog usage];
    v5 = v4;
    if (v2)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v10 = v2;
        _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "STUserDeviceState setting coreduetIdentifier %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(STUserDeviceState *)v3];
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"device"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  else if ([keyCopy isEqualToString:@"uniqueIdentifier"])
  {
    installedApps = [(STUserDeviceState *)self installedApps];
    [installedApps makeObjectsPerformSelector:sel_updateUniqueIdentifier];
  }

  v6.receiver = self;
  v6.super_class = STUserDeviceState;
  [(STUserDeviceState *)&v6 didChangeValueForKey:keyCopy];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  serializableClassName = [objc_opt_class() serializableClassName];
  user = [(STUserDeviceState *)self user];
  dsid = [user dsid];
  stringValue = [dsid stringValue];
  device = [(STUserDeviceState *)self device];
  identifier = [device identifier];
  v10 = [v3 stringWithFormat:@"%@:%@:%@", serializableClassName, stringValue, identifier];

  return v10;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v98 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"capabilitiesPlist"];
  [(STUserDeviceState *)self setCapabilitiesPlist:v5];

  v6 = [representationCopy objectForKeyedSubscript:@"coreDuetIdentifier"];
  [(STUserDeviceState *)self setCoreDuetIdentifier:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"deviceInfoPlist"];
  [(STUserDeviceState *)self setDeviceInfoPlist:v7];

  v8 = [representationCopy objectForKeyedSubscript:@"managementEnabled"];
  -[STUserDeviceState setManagementEnabled:](self, "setManagementEnabled:", [v8 BOOLValue]);

  v9 = [representationCopy objectForKeyedSubscript:@"passcodeOwner"];
  [(STUserDeviceState *)self setPasscodeOwner:v9];

  v10 = [representationCopy objectForKeyedSubscript:@"screenTimeEnabled"];
  -[STUserDeviceState setScreenTimeEnabled:](self, "setScreenTimeEnabled:", [v10 BOOLValue]);

  v11 = [representationCopy objectForKeyedSubscript:@"lastFamilyCheckinDate"];
  [(STUserDeviceState *)self setLastFamilyCheckinDate:v11];

  v12 = [representationCopy objectForKeyedSubscript:@"isLegacyUsageDisabled"];
  v13 = v12;
  if (v12)
  {
    -[STUserDeviceState setIsLegacyUsageDisabled:](self, "setIsLegacyUsageDisabled:", [v12 BOOLValue]);
  }

  v14 = [representationCopy objectForKeyedSubscript:@"device"];
  v15 = [v14 objectForKeyedSubscript:@"name"];
  v16 = [v14 objectForKeyedSubscript:@"platform"];
  v17 = [representationCopy objectForKeyedSubscript:@"fromCloud"];
  v18 = v17;
  if (v17)
  {
    isManaged = [v17 BOOLValue] ^ 1;
  }

  else
  {
    user = [(STUserDeviceState *)self user];
    isManaged = [user isManaged];
  }

  device = [(STUserDeviceState *)self device];
  [device setName:v15];
  if (![device platform])
  {
    [device setPlatform:{objc_msgSend(v16, "integerValue")}];
  }

  if (_os_feature_enabled_impl())
  {
    v22 = [v14 objectForKeyedSubscript:@"supportsPasscodeActivity"];
    [device setSupportsPasscodeActivity:{objc_msgSend(v22, "BOOLValue")}];
    if ([v22 BOOLValue])
    {
      [v14 objectForKeyedSubscript:@"lastPasscodeUseDate"];
      obja = isManaged;
      v24 = v23 = device;
      [v23 setLastPasscodeUseDate:v24];

      device = v23;
      isManaged = obja;
    }
  }

  if (isManaged)
  {
    v25 = [representationCopy objectForKeyedSubscript:@"installedApps"];
    objc_opt_class();
    v76 = representationCopy;
    v72 = v14;
    v73 = v13;
    v70 = v16;
    v71 = v15;
    v68 = device;
    v69 = v18;
    v67 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [MEMORY[0x1E695DFD8] setWithArray:v25];
    }

    else
    {
      v26 = objc_opt_new();
    }

    v27 = v26;
    installedApps = [(STUserDeviceState *)self installedApps];
    v29 = [installedApps valueForKeyPath:@"bundleIdentifier"];
    v30 = [v29 mutableCopy];

    v74 = v30;
    v31 = [v30 mutableCopy];
    v75 = v27;
    [v31 minusSet:v27];
    installedApps2 = [(STUserDeviceState *)self installedApps];
    v66 = v31;
    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"bundleIdentifier", v31];
    v34 = [installedApps2 filteredSetUsingPredicate:v33];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v34;
    v35 = [obj countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v88;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v88 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v87 + 1) + 8 * i);
          v40 = +[STLog screentime];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v94 = "[STUserDeviceState updateWithDictionaryRepresentation:]";
            v95 = 2112;
            v96 = v39;
            _os_log_impl(&dword_1B831F000, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting app (%@)", buf, 0x16u);
          }

          managedObjectContext = [(STUserDeviceState *)self managedObjectContext];
          [managedObjectContext deleteObject:v39];
        }

        v36 = [obj countByEnumeratingWithState:&v87 objects:v97 count:16];
      }

      while (v36);
    }

    v42 = [v75 mutableCopy];
    [v42 minusSet:v74];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v43 = v42;
    v44 = [v43 countByEnumeratingWithState:&v83 objects:v92 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v84;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v84 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v83 + 1) + 8 * j);
          v49 = [STInstalledApp alloc];
          managedObjectContext2 = [(STUserDeviceState *)self managedObjectContext];
          v51 = [(STInstalledApp *)v49 initWithContext:managedObjectContext2];

          [(STInstalledApp *)v51 setBundleIdentifier:v48];
          [(STInstalledApp *)v51 setUserDeviceState:self];
        }

        v45 = [v43 countByEnumeratingWithState:&v83 objects:v92 count:16];
      }

      while (v45);
    }

    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.metadata", @"installedApps"];
    v53 = [v76 objectForKeyedSubscript:v52];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    installedApps3 = [(STUserDeviceState *)self installedApps];
    v55 = [installedApps3 countByEnumeratingWithState:&v79 objects:v91 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v80;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v80 != v57)
          {
            objc_enumerationMutation(installedApps3);
          }

          v59 = *(*(&v79 + 1) + 8 * k);
          displayName = [v59 displayName];

          if (!displayName)
          {
            bundleIdentifier = [v59 bundleIdentifier];
            v62 = [v53 objectForKeyedSubscript:bundleIdentifier];

            v63 = [v62 objectForKeyedSubscript:@"displayName"];
            if (v63)
            {
              [v59 setDisplayName:v63];
            }
          }
        }

        v56 = [installedApps3 countByEnumeratingWithState:&v79 objects:v91 count:16];
      }

      while (v56);
    }

    representationCopy = v76;
    v14 = v72;
    v13 = v73;
    v16 = v70;
    v15 = v71;
    device = v68;
    v18 = v69;
  }

  v64 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)dictionaryRepresentation
{
  v62[3] = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = STUserDeviceState;
  dictionaryRepresentation = [(STUniquedManagedObject *)&v58 dictionaryRepresentation];
  capabilitiesPlist = [(STUserDeviceState *)self capabilitiesPlist];
  [dictionaryRepresentation setObject:capabilitiesPlist forKeyedSubscript:@"capabilitiesPlist"];

  coreDuetIdentifier = [(STUserDeviceState *)self coreDuetIdentifier];
  [dictionaryRepresentation setObject:coreDuetIdentifier forKeyedSubscript:@"coreDuetIdentifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[STUserDeviceState isLegacyUsageDisabled](self, "isLegacyUsageDisabled")}];
  [dictionaryRepresentation setObject:v6 forKeyedSubscript:@"isLegacyUsageDisabled"];

  deviceInfoPlist = [(STUserDeviceState *)self deviceInfoPlist];
  [dictionaryRepresentation setObject:deviceInfoPlist forKeyedSubscript:@"deviceInfoPlist"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[STUserDeviceState managementEnabled](self, "managementEnabled")}];
  [dictionaryRepresentation setObject:v8 forKeyedSubscript:@"managementEnabled"];

  passcodeOwner = [(STUserDeviceState *)self passcodeOwner];
  [dictionaryRepresentation setObject:passcodeOwner forKeyedSubscript:@"passcodeOwner"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[STUserDeviceState screenTimeEnabled](self, "screenTimeEnabled")}];
  [dictionaryRepresentation setObject:v10 forKeyedSubscript:@"screenTimeEnabled"];

  lastFamilyCheckinDate = [(STUserDeviceState *)self lastFamilyCheckinDate];
  [dictionaryRepresentation setObject:lastFamilyCheckinDate forKeyedSubscript:@"lastFamilyCheckinDate"];

  device = [(STUserDeviceState *)self device];
  v13 = device;
  if (!device)
  {
    v15 = +[STLog screentime];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(STUserDeviceState *)self dictionaryRepresentation];
    }

    goto LABEL_7;
  }

  identifier = [device identifier];

  if (!identifier)
  {
    v15 = +[STLog screentime];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(STUserDeviceState *)self dictionaryRepresentation];
    }

LABEL_7:
  }

  v16 = objc_alloc(MEMORY[0x1E695DF90]);
  v61[0] = @"identifier";
  identifier2 = [v13 identifier];
  v62[0] = identifier2;
  v61[1] = @"name";
  name = [v13 name];
  v62[1] = name;
  v61[2] = @"platform";
  v19 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v13, "platform")}];
  v62[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:3];
  v21 = [v16 initWithDictionary:v20];

  if (_os_feature_enabled_impl())
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "supportsPasscodeActivity")}];
    [v21 setObject:v22 forKeyedSubscript:@"supportsPasscodeActivity"];

    lastPasscodeUseDate = [v13 lastPasscodeUseDate];

    if (lastPasscodeUseDate)
    {
      lastPasscodeUseDate2 = [v13 lastPasscodeUseDate];
      [v21 setObject:lastPasscodeUseDate2 forKeyedSubscript:@"lastPasscodeUseDate"];
    }
  }

  v25 = [v21 copy];
  [dictionaryRepresentation setObject:v25 forKeyedSubscript:@"device"];

  user = [(STUserDeviceState *)self user];
  dsid = [user dsid];
  [dictionaryRepresentation setObject:dsid forKeyedSubscript:@"user"];

  user2 = [(STUserDeviceState *)self user];
  LODWORD(dsid) = [user2 isManaged];

  if (dsid)
  {
    v51 = v21;
    v52 = v13;
    v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
    installedApps = [(STUserDeviceState *)self installedApps];
    v31 = [installedApps valueForKeyPath:@"bundleIdentifier"];

    v50 = v29;
    v60 = v29;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    v33 = [v31 sortedArrayUsingDescriptors:v32];
    v53 = dictionaryRepresentation;
    [dictionaryRepresentation setObject:v33 forKeyedSubscript:@"installedApps"];

    v49 = v31;
    v34 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v31, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    installedApps2 = [(STUserDeviceState *)self installedApps];
    v36 = [installedApps2 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v55;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(installedApps2);
          }

          v40 = *(*(&v54 + 1) + 8 * i);
          v41 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
          displayName = [v40 displayName];
          [v41 setObject:displayName forKeyedSubscript:@"displayName"];

          v43 = [v41 copy];
          bundleIdentifier = [v40 bundleIdentifier];
          [v34 setObject:v43 forKeyedSubscript:bundleIdentifier];
        }

        v37 = [installedApps2 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v37);
    }

    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.metadata", @"installedApps"];
    dictionaryRepresentation = v53;
    [v53 setObject:v34 forKeyedSubscript:v45];

    v21 = v51;
    v13 = v52;
  }

  v46 = [dictionaryRepresentation copy];

  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  representationCopy = representation;
  v10 = [representationCopy objectForKeyedSubscript:@"user"];
  v11 = [representationCopy objectForKeyedSubscript:@"device"];

  v12 = [v11 objectForKeyedSubscript:@"identifier"];
  if ([v10 isEqualToNumber:&unk_1F3059BB8])
  {
    [STCoreUser fetchLocalUserInContext:contextCopy error:error];
  }

  else
  {
    [STCoreUser fetchUserWithDSID:v10 inContext:contextCopy error:error];
  }
  v13 = ;
  if (!v13)
  {
    firstObject = 0;
    goto LABEL_14;
  }

  fetchRequest = [self fetchRequest];
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %@", @"user", v13, @"device.identifier", v12];
  [fetchRequest setPredicate:v15];

  v16 = [fetchRequest execute:error];
  v17 = v16;
  if (!fetchRequest)
  {
LABEL_12:
    firstObject = 0;
    goto LABEL_13;
  }

  firstObject = [v16 firstObject];
  if (!firstObject)
  {
    v19 = [STCoreDevice fetchOrCreateDeviceWithIdentifier:v12 inContext:contextCopy error:error];
    if (v19)
    {
      v20 = v19;
      v21 = [[STUsage alloc] initWithContext:contextCopy];
      v22 = [MEMORY[0x1E695DF00] now];
      [(STUsage *)v21 setLastUpdatedDate:v22];

      [(STUsage *)v21 setDevice:v20];
      [(STUsage *)v21 setUser:v13];
      v23 = +[STLog screentime];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        dsid = [v13 dsid];
        v28 = v21;
        [v20 identifier];
        *buf = 136446722;
        v30 = "+[STUserDeviceState fetchOrCreateWithDictionaryRepresentation:inContext:error:]";
        v31 = 2112;
        v32 = dsid;
        v34 = v33 = 2112;
        v24 = v34;
        _os_log_impl(&dword_1B831F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: Creating UserDeviceState for user: (%@), deviceIdentifier: (%@)", buf, 0x20u);

        v21 = v28;
      }

      firstObject = [[STUserDeviceState alloc] initWithContext:contextCopy];
      [(STUserDeviceState *)firstObject setUser:v13];
      [(STUserDeviceState *)firstObject setDevice:v20];

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  v25 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (BOOL)validateForUpdate:(id *)update
{
  v12.receiver = self;
  v12.super_class = STUserDeviceState;
  if (![(STUserDeviceState *)&v12 validateForUpdate:?])
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(STUserDeviceState *)update validateForUpdate:v5];
    }

    v7 = 0;
    goto LABEL_16;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    [(STUserDeviceState *)self _validateCoreDuetIdentifier:v5];
    [(STUserDeviceState *)self _validateNumberOfLocalUserDeviceStates:v5];
    localUser = [(STUserDeviceState *)self localUser];
    if (localUser)
    {
    }

    else
    {
      localDevice = [(STUserDeviceState *)self localDevice];

      if (!localDevice)
      {
LABEL_11:
        if ([v5 count])
        {
          v9 = +[STLog coreDataValidation];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [STUserDeviceState validateForUpdate:];
          }
        }

        v11.receiver = self;
        v11.super_class = STUserDeviceState;
        v7 = [(NSManagedObject *)&v11 parseValidationErrors:update otherErrors:v5];
LABEL_16:

        return v7;
      }
    }

    [(STUserDeviceState *)self _validateLocalUserDeviceState:v5];
    goto LABEL_11;
  }

  return 1;
}

- (BOOL)validateForInsert:(id *)insert
{
  v12.receiver = self;
  v12.super_class = STUserDeviceState;
  if (![(STUserDeviceState *)&v12 validateForInsert:?])
  {
    return 0;
  }

  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v5 = objc_opt_new();
  [(STUserDeviceState *)self _validateCoreDuetIdentifier:v5];
  [(STUserDeviceState *)self _validateNumberOfLocalUserDeviceStates:v5];
  localUser = [(STUserDeviceState *)self localUser];
  if (localUser)
  {

LABEL_8:
    [(STUserDeviceState *)self _validateLocalUserDeviceState:v5];
    goto LABEL_9;
  }

  localDevice = [(STUserDeviceState *)self localDevice];

  if (localDevice)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ([v5 count])
  {
    v9 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STUserDeviceState validateForInsert:];
    }
  }

  v11.receiver = self;
  v11.super_class = STUserDeviceState;
  v7 = [(NSManagedObject *)&v11 parseValidationErrors:insert otherErrors:v5];

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v10.receiver = self;
  v10.super_class = STUserDeviceState;
  if (![(STUserDeviceState *)&v10 validateForDelete:?])
  {
    return 0;
  }

  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v5 = objc_opt_new();
  [(STUserDeviceState *)self _validateNumberOfLocalUserDeviceStates:v5];
  if ([v5 count])
  {
    v6 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STUserDeviceState validateForDelete:];
    }
  }

  v9.receiver = self;
  v9.super_class = STUserDeviceState;
  v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];

  return v7;
}

- (BOOL)_validateLocalUserDeviceState:(id)state
{
  v22[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  device = [(STUserDeviceState *)self device];
  localDevice = [(STUserDeviceState *)self localDevice];

  v7 = MEMORY[0x1E696A578];
  if (device != localDevice)
  {
    v8 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"The local device must match the device of the UserDeviceState.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v8 errorWithDomain:@"STErrorDomain" code:527 userInfo:v9];
    [stateCopy addObject:v10];
  }

  user = [(STUserDeviceState *)self user];
  localUser = [(STUserDeviceState *)self localUser];

  if (user != localUser)
  {
    v13 = MEMORY[0x1E696ABC0];
    v19 = *v7;
    v20 = @"The local user must match the user of the UserDeviceState.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v13 errorWithDomain:@"STErrorDomain" code:527 userInfo:v14];
    [stateCopy addObject:v15];
  }

  v16 = [stateCopy count] == 0;

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_validateNumberOfLocalUserDeviceStates:(id)states
{
  v21[1] = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v4 = +[STUserDeviceState fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL OR %K != NULL", @"localUser", @"localDevice"];
  [v4 setPredicate:v5];

  v17 = 0;
  v6 = [v4 execute:&v17];
  v7 = v17;
  if (!v6)
  {
    [statesCopy addObject:v7];
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  if ([v6 count] >= 2)
  {
    v8 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"There must be one and only local UserDeviceState.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = v8;
    v11 = 529;
LABEL_8:
    v14 = [v10 errorWithDomain:@"STErrorDomain" code:v11 userInfo:v9];
    [statesCopy addObject:v14];

    goto LABEL_9;
  }

  if (![v6 count])
  {
    v13 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19 = @"There must be a local user device state.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = v13;
    v11 = 528;
    goto LABEL_8;
  }

  v12 = 1;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_validateCoreDuetIdentifier:(id)identifier
{
  v17[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  device = [(STUserDeviceState *)self device];
  platform = [device platform];
  if (platform != 2)
  {
    device2 = [(STUserDeviceState *)self device];
    if ([device2 platform] != 1)
    {

LABEL_8:
      v13 = 1;
      goto LABEL_9;
    }
  }

  coreDuetIdentifier = [(STUserDeviceState *)self coreDuetIdentifier];
  v9 = [coreDuetIdentifier length];

  if (platform != 2)
  {
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v10 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A578];
  v17[0] = @"There must be a CoreDuet identifier for UserDeviceStates.";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [v10 errorWithDomain:@"STErrorDomain" code:530 userInfo:v11];
  [identifierCopy addObject:v12];

  v13 = 0;
LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (void)_getCoreDuetIdentifier
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "STUserDeviceState failed to fetch coreduetIdentifier %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)dictionaryRepresentation
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "[STUserDeviceState dictionaryRepresentation] called when device = nil : %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 136446466;
  v5 = "[STUserDeviceState validateForUpdate:]";
  v6 = 2114;
  v7 = v2;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "%{public}s Built-in CoreData Validation for update on UserDeviceState failed with: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for update on UserDeviceState failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for insert on UserDeviceState failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for delete on UserDeviceState failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end