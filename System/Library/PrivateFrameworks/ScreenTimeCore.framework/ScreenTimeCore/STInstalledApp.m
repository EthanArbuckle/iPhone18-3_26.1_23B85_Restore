@interface STInstalledApp
+ (id)bundleIdentifiersInstalledForAltDSID:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)bundleIdentifiersInstalledForDSID:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)bundleIdentifiersInstalledForPredicate:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchRequest;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (NSString)description;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)a3;
- (void)setUserDeviceState:(id)a3;
- (void)updateIconDataWithURL:(id)a3;
@end

@implementation STInstalledApp

+ (id)bundleIdentifiersInstalledForDSID:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 longLongValue])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"userDeviceState.user.dsid", v7];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"userDeviceState.user.localUserDeviceState", v12];
  }
  v9 = ;
  v10 = [STInstalledApp bundleIdentifiersInstalledForPredicate:v9 inContext:v8 error:a5];

  return v10;
}

+ (id)bundleIdentifiersInstalledForAltDSID:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 length])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"userDeviceState.user.altDSID", v7];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"userDeviceState.user.localUserDeviceState", v12];
  }
  v9 = ;
  v10 = [STInstalledApp bundleIdentifiersInstalledForPredicate:v9 inContext:v8 error:a5];

  return v10;
}

+ (id)bundleIdentifiersInstalledForPredicate:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[STInstalledApp fetchRequest];
  [v7 setResultType:2];
  [v7 setReturnsDistinctResults:1];
  v19[0] = @"bundleIdentifier";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v7 setPropertiesToFetch:v8];

  [v7 setPredicate:v6];
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
    if (a5 && v10)
    {
      v15 = v10;
      v14 = 0;
      *a5 = v11;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setUserDeviceState:(id)a3
{
  v5 = a3;
  v4 = [v5 localDevice];
  [(STInstalledApp *)self setInstalledLocally:v4 != 0];

  [(STInstalledApp *)self managedObjectOriginal_setUserDeviceState:v5];
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STInstalledApp;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"bundleIdentifier"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"userDeviceState"))
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  v5.receiver = self;
  v5.super_class = STInstalledApp;
  [(STInstalledApp *)&v5 didChangeValueForKey:v4];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() serializableClassName];
  v5 = [(STInstalledApp *)self bundleIdentifier];
  v6 = [(STInstalledApp *)self userDeviceState];
  v7 = [v6 uniqueIdentifier];
  v8 = [v3 stringWithFormat:@"%@:%@-%@", v4, v5, v7];

  return v8;
}

- (id)dictionaryRepresentation
{
  v18.receiver = self;
  v18.super_class = STInstalledApp;
  v3 = [(STUniquedManagedObject *)&v18 dictionaryRepresentation];
  v4 = [(STInstalledApp *)self adamID];
  [v3 setObject:v4 forKeyedSubscript:@"adamID"];

  v5 = [(STInstalledApp *)self betaVersionIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"betaVersionIdentifier"];

  v6 = [(STInstalledApp *)self bundleIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"bundleIdentifier"];

  v7 = [(STInstalledApp *)self displayName];
  [v3 setObject:v7 forKeyedSubscript:@"displayName"];

  v8 = [(STInstalledApp *)self distributorID];
  [v3 setObject:v8 forKeyedSubscript:@"distributorID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[STInstalledApp distributorIsThirdParty](self, "distributorIsThirdParty")}];
  [v3 setObject:v9 forKeyedSubscript:@"distributorIsThirdParty"];

  v10 = [(STInstalledApp *)self iconData];
  [v3 setObject:v10 forKeyedSubscript:@"iconData"];

  v11 = [(STInstalledApp *)self versionIdentifier];
  [v3 setObject:v11 forKeyedSubscript:@"versionIdentifier"];

  v12 = [(STInstalledApp *)self userDeviceState];
  v13 = [v12 uniqueIdentifier];

  if (v13)
  {
    v14 = [(STInstalledApp *)self userDeviceState];
    v15 = [v14 uniqueIdentifier];
    [v3 setObject:v15 forKeyedSubscript:@"userDeviceState"];
  }

  v16 = [v3 copy];

  return v16;
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"adamID"];
  [(STInstalledApp *)self setAdamID:v5];

  v6 = [v4 objectForKeyedSubscript:@"betaVersionIdentifier"];
  [(STInstalledApp *)self setBetaVersionIdentifier:v6];

  v7 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
  [(STInstalledApp *)self setBundleIdentifier:v7];

  v8 = [v4 objectForKeyedSubscript:@"versionIdentifier"];
  [(STInstalledApp *)self setVersionIdentifier:v8];

  v9 = [v4 objectForKeyedSubscript:@"distributorIsThirdParty"];
  -[STInstalledApp setDistributorIsThirdParty:](self, "setDistributorIsThirdParty:", [v9 BOOLValue]);

  v10 = [v4 objectForKeyedSubscript:@"displayName"];
  if (v10)
  {
    [(STInstalledApp *)self setDisplayName:v10];
  }

  v11 = [v4 objectForKeyedSubscript:@"distributorID"];
  if (v11)
  {
    [(STInstalledApp *)self setDistributorID:v11];
  }

  v12 = [v4 objectForKeyedSubscript:@"iconData"];
  if (v12)
  {
    [(STInstalledApp *)self setIconData:v12];
  }

  v13 = [v4 objectForKeyedSubscript:@"userDeviceState"];
  if (v13)
  {
    v14 = +[STUserDeviceState fetchRequest];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniqueIdentifier", v13];
    [v14 setPredicate:v15];

    v25 = 0;
    v16 = [v14 execute:&v25];
    v17 = v25;
    v18 = [v16 firstObject];
    [(STInstalledApp *)self setUserDeviceState:v18];
  }

  else
  {
    [(STInstalledApp *)self setUserDeviceState:0];
    v17 = 0;
  }

  v19 = [(STInstalledApp *)self userDeviceState];

  if (!v19)
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
      v29 = self;
      _os_log_impl(&dword_1B831F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting installed app (%@)", buf, 0x16u);
    }

    v22 = [(STInstalledApp *)self managedObjectContext];
    [v22 deleteObject:self];
  }

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

- (NSString)description
{
  v2 = [(STInstalledApp *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 objectForKeyedSubscript:@"uniqueIdentifier"];
  v10 = [a1 fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniqueIdentifier", v9];
  [v10 setPredicate:v11];

  v12 = [v10 execute:a5];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 firstObject];
    if (!v14)
    {
      v14 = [[STInstalledApp alloc] initWithContext:v8];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)updateIconDataWithURL:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  MGGetFloat32Answer();
  v6 = v5;
  v7 = v5;
  v8 = 87.0 / v5;
  v24 = 29 * v5;
  v9 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithURL:v4];

  v10 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v8 scale:{v8, v7}];
  v27[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v9 prepareImagesForImageDescriptors:v11];

  v12 = [v9 imageForDescriptor:v10];
  v13 = [v12 CGImage];
  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
  v15 = [*MEMORY[0x1E6982F28] identifier];
  v16 = CGImageDestinationCreateWithData(v14, v15, 1uLL, 0);

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
  CGImageDestinationAddImage(v16, v13, v21);
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