@interface _PUIPosterSnapshotCacheRecord
+ (id)bundleInfoKeyToColumnLookup;
+ (id)pf_sqliteCodingDescriptor;
- (CGRect)salientContentRectangle;
- (CGSize)assetSize;
- (NSString)description;
- (_PUIPosterSnapshotCacheRecord)init;
- (_PUIPosterSnapshotCacheRecord)initWithCoder:(id)a3;
- (_PUIPosterSnapshotCacheRecord)initWithSnapshotContext:(id)a3;
- (id)snapshotBundleURLRelativeToURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PUIPosterSnapshotCacheRecord

+ (id)bundleInfoKeyToColumnLookup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___PUIPosterSnapshotCacheRecord_bundleInfoKeyToColumnLookup__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (bundleInfoKeyToColumnLookup_onceToken != -1)
  {
    dispatch_once(&bundleInfoKeyToColumnLookup_onceToken, block);
  }

  v2 = bundleInfoKeyToColumnLookup_bundleInfoKeyToColumnLookup;

  return v2;
}

+ (id)pf_sqliteCodingDescriptor
{
  if (pf_sqliteCodingDescriptor_onceToken != -1)
  {
    +[_PUIPosterSnapshotCacheRecord pf_sqliteCodingDescriptor];
  }

  v3 = pf_sqliteCodingDescriptor_sqliteCodingDescriptor;

  return v3;
}

- (_PUIPosterSnapshotCacheRecord)init
{
  [(_PUIPosterSnapshotCacheRecord *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_PUIPosterSnapshotCacheRecord)initWithSnapshotContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [_PUIPosterSnapshotCacheRecord initWithSnapshotContext:a2];
  }

  v6 = v5;
  v36.receiver = self;
  v36.super_class = _PUIPosterSnapshotCacheRecord;
  v7 = [(_PUIPosterSnapshotCacheRecord *)&v36 init];
  if (v7)
  {
    v8 = [v6 snapshotBundleUUID];
    snapshotBundleUUID = v7->_snapshotBundleUUID;
    v7->_snapshotBundleUUID = v8;

    v10 = [v6 dateCreated];
    dateCreated = v7->_dateCreated;
    v7->_dateCreated = v10;

    v12 = [v6 posterProvider];
    posterProvider = v7->_posterProvider;
    v7->_posterProvider = v12;

    v14 = [v6 posterUUID];
    posterUUID = v7->_posterUUID;
    v7->_posterUUID = v14;

    v7->_posterVersion = [v6 posterVersion];
    v16 = [v6 hardwareIdentifier];
    hardwareIdentifier = v7->_hardwareIdentifier;
    v7->_hardwareIdentifier = v16;

    v18 = [v6 snapshotDefinitionIdentifier];
    snapshotDefinitionIdentifier = v7->_snapshotDefinitionIdentifier;
    v7->_snapshotDefinitionIdentifier = v18;

    v20 = [v6 bootSessionIdentifier];
    bootSessionIdentifier = v7->_bootSessionIdentifier;
    v7->_bootSessionIdentifier = v20;

    v22 = [v6 snapshotLevelSets];
    v23 = [v22 copy];
    snapshotLevelSets = v7->_snapshotLevelSets;
    v7->_snapshotLevelSets = v23;

    v7->_snapshotEpoch = [v6 snapshotEpoch];
    v7->_snapshotBundleVersion = [v6 snapshotBundleVersion];
    [v6 assetSize];
    v7->_assetSize.width = v25;
    v7->_assetSize.height = v26;
    v7->_interfaceOrientation = [v6 interfaceOrientation];
    v7->_deviceOrientation = [v6 deviceOrientation];
    v7->_userInterfaceStyle = [v6 userInterfaceStyle];
    [v6 snapshotScale];
    v7->_snapshotScale = v27;
    [v6 persistenceScale];
    v7->_persistenceScale = v28;
    v7->_hasColorStatistics = [v6 hasColorStatistics];
    v7->_accessibilityContrast = [v6 accessibilityContrast];
    [v6 salientContentRectangle];
    v7->_salientContentRectangle.origin.x = v29;
    v7->_salientContentRectangle.origin.y = v30;
    v7->_salientContentRectangle.size.width = v31;
    v7->_salientContentRectangle.size.height = v32;
    v33 = [v6 contentOcclusionRectangles];
    contentOcclusionRectangles = v7->_contentOcclusionRectangles;
    v7->_contentOcclusionRectangles = v33;
  }

  return v7;
}

- (_PUIPosterSnapshotCacheRecord)initWithCoder:(id)a3
{
  v48[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = _PUIPosterSnapshotCacheRecord;
  v5 = [(_PUIPosterSnapshotCacheRecord *)&v47 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_snapshotBundleUUID"];
    snapshotBundleUUID = v5->_snapshotBundleUUID;
    v5->_snapshotBundleUUID = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"_dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"_posterProvider"];
    posterProvider = v5->_posterProvider;
    v5->_posterProvider = v13;

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"_posterUUID"];
    posterUUID = v5->_posterUUID;
    v5->_posterUUID = v16;

    v5->_posterVersion = [v4 decodeIntegerForKey:@"_posterVersion"];
    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"_hardwareIdentifier"];
    hardwareIdentifier = v5->_hardwareIdentifier;
    v5->_hardwareIdentifier = v19;

    v21 = objc_opt_self();
    v22 = [v4 decodeObjectOfClass:v21 forKey:@"_snapshotDefinitionIdentifier"];
    snapshotDefinitionIdentifier = v5->_snapshotDefinitionIdentifier;
    v5->_snapshotDefinitionIdentifier = v22;

    v24 = objc_opt_self();
    v25 = [v4 decodeObjectOfClass:v24 forKey:@"_bootSessionIdentifier"];
    bootSessionIdentifier = v5->_bootSessionIdentifier;
    v5->_bootSessionIdentifier = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_self();
    v48[0] = v28;
    v29 = objc_opt_self();
    v48[1] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v31 = [v27 setWithArray:v30];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"_snapshotLevelSets"];
    snapshotLevelSets = v5->_snapshotLevelSets;
    v5->_snapshotLevelSets = v32;

    v5->_snapshotEpoch = [v4 decodeIntegerForKey:@"_snapshotEpoch"];
    v5->_snapshotBundleVersion = [v4 decodeIntegerForKey:@"_snapshotBundleVersion"];
    v34 = objc_opt_self();
    v35 = [v4 decodeObjectOfClass:v34 forKey:@"_assetSize"];
    [v35 CGSizeValue];
    v5->_assetSize.width = v36;
    v5->_assetSize.height = v37;

    v5->_interfaceOrientation = [v4 decodeIntegerForKey:@"_interfaceOrientation"];
    v5->_deviceOrientation = [v4 decodeIntegerForKey:@"_deviceOrientation"];
    v5->_userInterfaceStyle = [v4 decodeIntegerForKey:@"_userInterfaceStyle"];
    [v4 decodeDoubleForKey:@"_snapshotScale"];
    v5->_snapshotScale = v38;
    [v4 decodeDoubleForKey:@"_persistenceScale"];
    v5->_persistenceScale = v39;
    v5->_hasColorStatistics = [v4 decodeBoolForKey:@"_hasColorStatistics"];
    v5->_accessibilityContrast = [v4 decodeIntegerForKey:@"_accessibilityContrast"];
    [v4 decodeCGRectForKey:@"_salientContentRectangle"];
    v5->_salientContentRectangle.origin.x = v40;
    v5->_salientContentRectangle.origin.y = v41;
    v5->_salientContentRectangle.size.width = v42;
    v5->_salientContentRectangle.size.height = v43;
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentOcclusionRectangles"];
    contentOcclusionRectangles = v5->_contentOcclusionRectangles;
    v5->_contentOcclusionRectangles = v44;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  snapshotBundleUUID = self->_snapshotBundleUUID;
  v6 = a3;
  [v6 encodeObject:snapshotBundleUUID forKey:@"_snapshotBundleUUID"];
  [v6 encodeObject:self->_dateCreated forKey:@"_dateCreated"];
  [v6 encodeObject:self->_posterProvider forKey:@"_posterProvider"];
  [v6 encodeObject:self->_posterUUID forKey:@"_posterUUID"];
  [v6 encodeInteger:self->_posterVersion forKey:@"_posterVersion"];
  [v6 encodeObject:self->_hardwareIdentifier forKey:@"_hardwareIdentifier"];
  [v6 encodeObject:self->_snapshotDefinitionIdentifier forKey:@"_snapshotDefinitionIdentifier"];
  [v6 encodeObject:self->_bootSessionIdentifier forKey:@"_bootSessionIdentifier"];
  [v6 encodeObject:self->_snapshotLevelSets forKey:@"_snapshotLevelSets"];
  [v6 encodeInteger:self->_snapshotEpoch forKey:@"_snapshotEpoch"];
  [v6 encodeInteger:self->_snapshotBundleVersion forKey:@"_snapshotBundleVersion"];
  v5 = [MEMORY[0x1E696B098] valueWithCGSize:{self->_assetSize.width, self->_assetSize.height}];
  [v6 encodeObject:v5 forKey:@"_assetSize"];

  [v6 encodeInteger:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  [v6 encodeInteger:self->_deviceOrientation forKey:@"_deviceOrientation"];
  [v6 encodeInteger:self->_userInterfaceStyle forKey:@"_userInterfaceStyle"];
  [v6 encodeDouble:@"_snapshotScale" forKey:self->_snapshotScale];
  [v6 encodeDouble:@"_persistenceScale" forKey:self->_persistenceScale];
  [v6 encodeBool:self->_hasColorStatistics forKey:@"_hasColorStatistics"];
  [v6 encodeInteger:self->_accessibilityContrast forKey:@"_accessibilityContrast"];
  [v6 encodeCGRect:@"_salientContentRectangle" forKey:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  [v6 encodeObject:self->_contentOcclusionRectangles forKey:@"_contentOcclusionRectangles"];
}

- (id)snapshotBundleURLRelativeToURL:(id)a3
{
  v4 = a3;
  v5 = [(_PUIPosterSnapshotCacheRecord *)self snapshotBundleUUID];
  v6 = [v5 UUIDString];
  v7 = [v4 URLByAppendingPathComponent:v6];

  v8 = [v7 URLByAppendingPathComponent:@"Snapshot.pks" isDirectory:1];

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_posterUUID withName:@"_posterUUID"];
  v5 = [v3 appendInteger:self->_posterVersion withName:@"_posterVersion"];
  v6 = [v3 appendObject:self->_posterProvider withName:@"_posterProvider"];
  v7 = [v3 appendObject:self->_snapshotDefinitionIdentifier withName:@"_snapshotDefinitionIdentifier"];
  v8 = [v3 appendInteger:self->_interfaceOrientation withName:@"_interfaceOrientation"];
  v9 = [v3 appendInteger:self->_deviceOrientation withName:@"_deviceOrientation"];
  v10 = [v3 appendObject:self->_dateCreated withName:@"_dateCreated"];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __44___PUIPosterSnapshotCacheRecord_description__block_invoke;
  v17 = &unk_1E78548A0;
  v18 = v3;
  v19 = self;
  v11 = v3;
  [v11 appendBodySectionWithName:@"attributes" multilinePrefix:@"\n" block:&v14];
  v12 = [v11 build];

  return v12;
}

- (CGSize)assetSize
{
  width = self->_assetSize.width;
  height = self->_assetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithSnapshotContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshotContext", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end