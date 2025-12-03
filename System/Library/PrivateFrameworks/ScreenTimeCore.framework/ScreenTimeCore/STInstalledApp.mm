@interface STInstalledApp
+ (id)bundleIdentifiersInstalledForAltDSID:(id)d inContext:(id)context error:(id *)error;
+ (id)bundleIdentifiersInstalledForDSID:(id)d inContext:(id)context error:(id *)error;
+ (id)bundleIdentifiersInstalledForPredicate:(id)predicate inContext:(id)context error:(id *)error;
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error;
+ (id)fetchRequest;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (NSString)description;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)key;
- (void)setUserDeviceState:(id)state;
- (void)updateIconDataWithURL:(id)l;
@end

@implementation STInstalledApp

+ (id)bundleIdentifiersInstalledForDSID:(id)d inContext:(id)context error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  if ([dCopy longLongValue])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"userDeviceState.user.dsid", dCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"userDeviceState.user.localUserDeviceState", v12];
  }
  v9 = ;
  v10 = [STInstalledApp bundleIdentifiersInstalledForPredicate:v9 inContext:contextCopy error:error];

  return v10;
}

+ (id)bundleIdentifiersInstalledForAltDSID:(id)d inContext:(id)context error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  if ([dCopy length])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"userDeviceState.user.altDSID", dCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"userDeviceState.user.localUserDeviceState", v12];
  }
  v9 = ;
  v10 = [STInstalledApp bundleIdentifiersInstalledForPredicate:v9 inContext:contextCopy error:error];

  return v10;
}

+ (id)bundleIdentifiersInstalledForPredicate:(id)predicate inContext:(id)context error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v7 = +[STInstalledApp fetchRequest];
  [v7 setResultType:2];
  [v7 setReturnsDistinctResults:1];
  v19[0] = @"bundleIdentifier";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v7 setPropertiesToFetch:v8];

  [v7 setPredicate:predicateCopy];
  v18 = 0;
  v9 = [v7 execute:&v18];
  v10 = v18;
  v11 = v10;
  if (v9)
  {
    v12 = MEMORY[0x1E695DFD8];
    v13 = [v9 valueForKey:@"bundleIdentifier"];
    v14 = [v12 setWithArray:v13];
  }

  else
  {
    v14 = 0;
    if (error && v10)
    {
      v15 = v10;
      v14 = 0;
      *error = v11;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setUserDeviceState:(id)state
{
  stateCopy = state;
  localDevice = [stateCopy localDevice];
  [(STInstalledApp *)self setInstalledLocally:localDevice != 0];

  [(STInstalledApp *)self managedObjectOriginal_setUserDeviceState:stateCopy];
}

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STInstalledApp;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"bundleIdentifier"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"userDeviceState"))
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  v5.receiver = self;
  v5.super_class = STInstalledApp;
  [(STInstalledApp *)&v5 didChangeValueForKey:keyCopy];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  serializableClassName = [objc_opt_class() serializableClassName];
  bundleIdentifier = [(STInstalledApp *)self bundleIdentifier];
  userDeviceState = [(STInstalledApp *)self userDeviceState];
  uniqueIdentifier = [userDeviceState uniqueIdentifier];
  v8 = [v3 stringWithFormat:@"%@:%@-%@", serializableClassName, bundleIdentifier, uniqueIdentifier];

  return v8;
}

- (id)dictionaryRepresentation
{
  v18.receiver = self;
  v18.super_class = STInstalledApp;
  dictionaryRepresentation = [(STUniquedManagedObject *)&v18 dictionaryRepresentation];
  adamID = [(STInstalledApp *)self adamID];
  [dictionaryRepresentation setObject:adamID forKeyedSubscript:@"adamID"];

  betaVersionIdentifier = [(STInstalledApp *)self betaVersionIdentifier];
  [dictionaryRepresentation setObject:betaVersionIdentifier forKeyedSubscript:@"betaVersionIdentifier"];

  bundleIdentifier = [(STInstalledApp *)self bundleIdentifier];
  [dictionaryRepresentation setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  displayName = [(STInstalledApp *)self displayName];
  [dictionaryRepresentation setObject:displayName forKeyedSubscript:@"displayName"];

  distributorID = [(STInstalledApp *)self distributorID];
  [dictionaryRepresentation setObject:distributorID forKeyedSubscript:@"distributorID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[STInstalledApp distributorIsThirdParty](self, "distributorIsThirdParty")}];
  [dictionaryRepresentation setObject:v9 forKeyedSubscript:@"distributorIsThirdParty"];

  iconData = [(STInstalledApp *)self iconData];
  [dictionaryRepresentation setObject:iconData forKeyedSubscript:@"iconData"];

  versionIdentifier = [(STInstalledApp *)self versionIdentifier];
  [dictionaryRepresentation setObject:versionIdentifier forKeyedSubscript:@"versionIdentifier"];

  userDeviceState = [(STInstalledApp *)self userDeviceState];
  uniqueIdentifier = [userDeviceState uniqueIdentifier];

  if (uniqueIdentifier)
  {
    userDeviceState2 = [(STInstalledApp *)self userDeviceState];
    uniqueIdentifier2 = [userDeviceState2 uniqueIdentifier];
    [dictionaryRepresentation setObject:uniqueIdentifier2 forKeyedSubscript:@"userDeviceState"];
  }

  v16 = [dictionaryRepresentation copy];

  return v16;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v30 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"adamID"];
  [(STInstalledApp *)self setAdamID:v5];

  v6 = [representationCopy objectForKeyedSubscript:@"betaVersionIdentifier"];
  [(STInstalledApp *)self setBetaVersionIdentifier:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"bundleIdentifier"];
  [(STInstalledApp *)self setBundleIdentifier:v7];

  v8 = [representationCopy objectForKeyedSubscript:@"versionIdentifier"];
  [(STInstalledApp *)self setVersionIdentifier:v8];

  v9 = [representationCopy objectForKeyedSubscript:@"distributorIsThirdParty"];
  -[STInstalledApp setDistributorIsThirdParty:](self, "setDistributorIsThirdParty:", [v9 BOOLValue]);

  v10 = [representationCopy objectForKeyedSubscript:@"displayName"];
  if (v10)
  {
    [(STInstalledApp *)self setDisplayName:v10];
  }

  v11 = [representationCopy objectForKeyedSubscript:@"distributorID"];
  if (v11)
  {
    [(STInstalledApp *)self setDistributorID:v11];
  }

  v12 = [representationCopy objectForKeyedSubscript:@"iconData"];
  if (v12)
  {
    [(STInstalledApp *)self setIconData:v12];
  }

  v13 = [representationCopy objectForKeyedSubscript:@"userDeviceState"];
  if (v13)
  {
    v14 = +[STUserDeviceState fetchRequest];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniqueIdentifier", v13];
    [v14 setPredicate:v15];

    v25 = 0;
    v16 = [v14 execute:&v25];
    v17 = v25;
    firstObject = [v16 firstObject];
    [(STInstalledApp *)self setUserDeviceState:firstObject];
  }

  else
  {
    [(STInstalledApp *)self setUserDeviceState:0];
    v17 = 0;
  }

  userDeviceState = [(STInstalledApp *)self userDeviceState];

  if (!userDeviceState)
  {
    v20 = +[STLog appMonitor];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(STInstalledApp *)self updateWithDictionaryRepresentation:v13, v20];
    }

    v21 = +[STLog screentime];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v27 = "[STInstalledApp updateWithDictionaryRepresentation:]";
      v28 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1B831F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting installed app (%@)", buf, 0x16u);
    }

    managedObjectContext = [(STInstalledApp *)self managedObjectContext];
    [managedObjectContext deleteObject:self];
  }

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

- (NSString)description
{
  dictionaryRepresentation = [(STInstalledApp *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [representation objectForKeyedSubscript:@"uniqueIdentifier"];
  fetchRequest = [self fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniqueIdentifier", v9];
  [fetchRequest setPredicate:v11];

  v12 = [fetchRequest execute:error];
  v13 = v12;
  if (v12)
  {
    firstObject = [v12 firstObject];
    if (!firstObject)
    {
      firstObject = [[STInstalledApp alloc] initWithContext:contextCopy];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)updateIconDataWithURL:(id)l
{
  v27[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  MGGetFloat32Answer();
  v6 = v5;
  v7 = v5;
  v8 = 87.0 / v5;
  v24 = 29 * v5;
  v9 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithURL:lCopy];

  v10 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v8 scale:{v8, v7}];
  v27[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v9 prepareImagesForImageDescriptors:v11];

  v12 = [v9 imageForDescriptor:v10];
  cGImage = [v12 CGImage];
  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v16 = CGImageDestinationCreateWithData(v14, identifier, 1uLL, 0);

  valuePtr = v6 * 72.0;
  v17 = *MEMORY[0x1E695E480];
  v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v19 = CFNumberCreate(v17, kCFNumberLongType, &v24);
  v20 = *MEMORY[0x1E696D880];
  keys[0] = *MEMORY[0x1E696D888];
  keys[1] = v20;
  keys[2] = *MEMORY[0x1E696D328];
  values[0] = v18;
  values[1] = v18;
  values[2] = v19;
  v21 = CFDictionaryCreate(v17, keys, values, 3, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CFRelease(v18);
  CFRelease(v19);
  CGImageDestinationAddImage(v16, cGImage, v21);
  CFRelease(v21);
  CGImageDestinationFinalize(v16);
  [(STInstalledApp *)self setIconData:v14];
  CFRelease(v16);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 uniqueIdentifier];
  v7 = 138412546;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1B831F000, a3, OS_LOG_TYPE_ERROR, "Deleted orphaned InstalledApp %@ without a UserDeviceState: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end