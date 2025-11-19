@interface PUIPosterSnapshotBundlePredicate
+ (id)predicateMatchingBundleWithPosterVersionLessThan:(unint64_t)a3 posterUUID:(id)a4;
+ (id)predicateMatchingBundlesSimilarTo:(id)a3;
+ (id)predicateMatchingContext:(id)a3;
+ (id)predicateMatchingCurrentSnapshotEpochAndVersion;
+ (id)predicateMatchingRequest:(id)a3;
+ (id)truePredicate;
- (BOOL)satisfiesPredicate:(id)a3;
- (NSSet)componentsToEvaluate;
- (PUIPosterSnapshotBundlePredicate)initWithCoder:(id)a3;
- (PUIPosterSnapshotBundlePredicate)initWithType:(int64_t)a3;
- (id)SQLitePredicate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)predicateApplyingOptions:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIPosterSnapshotBundlePredicate

+ (id)truePredicate
{
  if (truePredicate_onceToken != -1)
  {
    +[PUIPosterSnapshotBundlePredicate truePredicate];
  }

  v3 = truePredicate_truePredicate;

  return v3;
}

uint64_t __49__PUIPosterSnapshotBundlePredicate_truePredicate__block_invoke()
{
  v0 = [[PUIPosterSnapshotBundlePredicate alloc] initWithType:3];
  v1 = truePredicate_truePredicate;
  truePredicate_truePredicate = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)predicateMatchingCurrentSnapshotEpochAndVersion
{
  v2 = objc_alloc_init(PUIPosterSnapshotBundlePredicate);
  [(PUIPosterSnapshotBundlePredicate *)v2 setSnapshotCacheEpoch:&unk_1F1C928E0];
  [(PUIPosterSnapshotBundlePredicate *)v2 setSnapshotVersion:&unk_1F1C928F8];
  [(PUIPosterSnapshotBundlePredicate *)v2 setSnapshotBundleVersion:&unk_1F1C92910];

  return v2;
}

+ (id)predicateMatchingRequest:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PUIPosterSnapshotBundlePredicate predicateMatchingRequest:a2];
  }

  v5 = v4;
  v6 = objc_opt_new();
  v7 = [v5 snapshotDescriptor];
  v8 = [v7 output];

  if (v8)
  {
    v9 = [v8 snapshotDefinitionIdentifier];
    [v6 setSnapshotDefinitionIdentifier:v9];

    v10 = MEMORY[0x1E696AD98];
    [v8 persistenceScale];
    v11 = [v10 numberWithDouble:?];
    [v6 setPersistenceScale:v11];
  }

  v12 = [v5 snapshotDescriptor];
  v13 = [v12 sceneDescriptor];

  if (v13)
  {
    v14 = MEMORY[0x1E696B098];
    [v13 canvasBounds];
    v17 = [v14 valueWithCGSize:{v15, v16}];
    [v6 setAssetSize:v17];

    v18 = MEMORY[0x1E696AD98];
    v19 = [v13 displayConfiguration];
    [v19 pointScale];
    v20 = [v18 numberWithDouble:?];
    [v6 setSnapshotScale:v20];

    if ([v13 userInterfaceStyle])
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "userInterfaceStyle")}];
      [v6 setUserInterfaceStyle:v21];
    }

    if ([v13 interfaceOrientation])
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "interfaceOrientation")}];
      [v6 setInterfaceOrientation:v22];
    }

    if ([v13 deviceOrientation])
    {
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "deviceOrientation")}];
      [v6 setDeviceOrientation:v23];
    }

    if ([v13 accessibilityContrast] != -1)
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "accessibilityContrast")}];
      [v6 setAccessibilityContrast:v24];
    }

    [v13 salientContentRectangle];
    if (!CGRectIsInfinite(v49))
    {
      [v13 salientContentRectangle];
      if (!CGRectIsEmpty(v50))
      {
        [v13 salientContentRectangle];
        v25 = NSStringFromCGRect(v51);
        [v6 setSalientContentRectangle:v25];
      }
    }

    v26 = [v13 contentOcclusionRectangles];
    if (v26)
    {
      v27 = v26;
      v28 = [v13 contentOcclusionRectangles];
      v29 = [v28 isEmpty];

      if ((v29 & 1) == 0)
      {
        v30 = [v13 contentOcclusionRectangles];
        [v6 setContentOcclusionRectangles:v30];
      }
    }
  }

  v31 = [v5 snapshotDescriptor];
  v32 = [v31 analysis];

  if (v32)
  {
    v33 = MEMORY[0x1E696AD98];
    v34 = [v5 snapshotDescriptor];
    v35 = [v34 analysis];
    v36 = [v33 numberWithBool:{objc_msgSend(v35, "determineColorStatistics")}];
    [v6 setHasColorStatistics:v36];
  }

  v37 = [v5 path];
  v38 = [v37 isServerPosterPath];

  if (v38)
  {
    v39 = [v5 path];
    v40 = [v39 identity];
    v41 = [v40 posterUUID];
    [v6 setPosterUUID:v41];

    v42 = MEMORY[0x1E696AD98];
    v43 = [v39 identity];
    v44 = [v42 numberWithUnsignedLongLong:{objc_msgSend(v43, "version")}];
    [v6 setPosterVersion:v44];

    v45 = [v39 identity];
    v46 = [v45 provider];
    [v6 setPosterProvider:v46];
  }

  [v6 setDateInterval:0];

  return v6;
}

+ (id)predicateMatchingContext:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PUIPosterSnapshotBundlePredicate predicateMatchingContext:a2];
  }

  v5 = v4;
  v6 = [[PUIPosterSnapshotBundlePredicate alloc] initWithType:2];
  v7 = [v5 snapshotBundleUUID];
  [(PUIPosterSnapshotBundlePredicate *)v6 setSnapshotBundleUUID:v7];

  return v6;
}

+ (id)predicateMatchingBundlesSimilarTo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PUIPosterSnapshotBundlePredicate predicateMatchingBundlesSimilarTo:a2];
  }

  v5 = v4;
  v6 = objc_opt_new();
  v7 = MEMORY[0x1E696B098];
  [v5 assetSize];
  v8 = [v7 valueWithCGSize:?];
  [v6 setAssetSize:v8];

  v9 = MEMORY[0x1E696AD98];
  [v5 snapshotScale];
  v10 = [v9 numberWithDouble:?];
  [v6 setSnapshotScale:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "interfaceOrientation")}];
  [v6 setInterfaceOrientation:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "deviceOrientation")}];
  [v6 setDeviceOrientation:v12];

  v13 = [v5 snapshotDefinitionIdentifier];
  [v6 setSnapshotDefinitionIdentifier:v13];

  v14 = MEMORY[0x1E696AD98];
  [v5 persistenceScale];
  v15 = [v14 numberWithDouble:?];
  [v6 setPersistenceScale:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "hasColorStatistics")}];
  [v6 setHasColorStatistics:v16];

  v17 = [v5 posterUUID];
  [v6 setPosterUUID:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "posterVersion")}];
  [v6 setPosterVersion:v18];

  v19 = [v5 posterProvider];
  [v6 setPosterProvider:v19];

  if ([v5 userInterfaceStyle])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "userInterfaceStyle")}];
    [v6 setUserInterfaceStyle:v20];
  }

  if ([v5 accessibilityContrast] != -1)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "accessibilityContrast")}];
    [v6 setAccessibilityContrast:v21];
  }

  v22 = [v5 contentOcclusionRectangles];
  if (v22)
  {
    v23 = v22;
    v24 = [v5 contentOcclusionRectangles];
    v25 = [v24 isEmpty];

    if ((v25 & 1) == 0)
    {
      v26 = [v5 contentOcclusionRectangles];
      [v6 setContentOcclusionRectangles:v26];
    }
  }

  [v5 salientContentRectangle];
  if (!CGRectIsInfinite(v30))
  {
    [v5 salientContentRectangle];
    if (!CGRectIsEmpty(v31))
    {
      [v5 salientContentRectangle];
      v27 = NSStringFromCGRect(v32);
      [v6 setSalientContentRectangle:v27];
    }
  }

  return v6;
}

+ (id)predicateMatchingBundleWithPosterVersionLessThan:(unint64_t)a3 posterUUID:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = [[PUIPosterSnapshotBundlePredicate alloc] initWithType:1];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(PUIPosterSnapshotBundlePredicate *)v6 setPosterVersion:v7];

    [(PUIPosterSnapshotBundlePredicate *)v6 setPosterUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)predicateApplyingOptions:(int64_t)a3
{
  v3 = a3;
  v4 = [(PUIPosterSnapshotBundlePredicate *)self copy];
  v5 = v4;
  if ((v3 & 2) != 0)
  {
    if ((v3 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v4 setSnapshotDefinitionIdentifier:0];
    if ((v3 & 4) != 0)
    {
LABEL_3:
      if ((v3 & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  [v5 setPersistenceScale:0];
  if ((v3 & 8) != 0)
  {
LABEL_4:
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v5 setHasColorStatistics:0];
  if ((v3 & 0x10) != 0)
  {
LABEL_5:
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v5 setAssetSize:0];
  if ((v3 & 0x20) != 0)
  {
LABEL_6:
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v5 setUserInterfaceStyle:0];
  if ((v3 & 0x40) != 0)
  {
LABEL_7:
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v5 setInterfaceOrientation:0];
  if ((v3 & 0x80) != 0)
  {
LABEL_8:
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v5 setDeviceOrientation:0];
  if ((v3 & 0x100) != 0)
  {
LABEL_9:
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 setAccessibilityContrast:0];
  if ((v3 & 0x200) != 0)
  {
LABEL_10:
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 setSnapshotScale:0];
  if ((v3 & 0x400) != 0)
  {
LABEL_11:
    if ((v3 & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  [v5 setSalientContentRectangle:0];
  if ((v3 & 0x800) == 0)
  {
LABEL_12:
    [v5 setContentOcclusionRectangles:0];
  }

LABEL_13:

  return v5;
}

- (PUIPosterSnapshotBundlePredicate)initWithType:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = PUIPosterSnapshotBundlePredicate;
  v4 = [(PUIPosterSnapshotBundlePredicate *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    snapshotBundleVersion = v4->_snapshotBundleVersion;
    v4->_snapshotBundleVersion = &unk_1F1C92910;

    snapshotCacheEpoch = v5->_snapshotCacheEpoch;
    v5->_snapshotCacheEpoch = &unk_1F1C928E0;

    snapshotVersion = v5->_snapshotVersion;
    v5->_snapshotVersion = &unk_1F1C928F8;
  }

  return v5;
}

- (NSSet)componentsToEvaluate
{
  if ([(PUIPosterSnapshotBundlePredicate *)self type]== 3)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"PUIPosterSnapshotBundleInfoKeySnapshotEpoch", @"PUIPosterSnapshotBundleInfoKeySnapshotBundleVersion", 0}];
  }

  else
  {
    v4 = objc_opt_new();
    v3 = v4;
    if (self->_assetSize)
    {
      [v4 addObject:@"PUIPosterSnapshotBundleInfoKeyAssetSize"];
    }

    if (self->_persistenceScale)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale"];
    }

    if (self->_snapshotScale)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyScale"];
    }

    if (self->_userInterfaceStyle)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];
    }

    if (self->_interfaceOrientation)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];
    }

    if (self->_deviceOrientation)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];
    }

    if (self->_posterUUID)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyPosterUUID"];
    }

    if (self->_posterVersion)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyPosterVersion"];
    }

    if (self->_snapshotDefinitionIdentifier)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];
    }

    if (self->_hasColorStatistics)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyContainsColorStatistics"];
    }

    if (self->_snapshotBundleVersion)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleVersion"];
    }

    if (self->_snapshotCacheEpoch)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeySnapshotEpoch"];
    }

    if (self->_snapshotBundleUUID)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleUUID"];
    }

    if (self->_accessibilityContrast)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeySnapshotAccessibilityContrast"];
    }

    if (self->_posterProvider)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyPosterProvider"];
    }

    if (self->_salientContentRectangle)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeySaliencyRect"];
    }

    v5 = [(PUIPosterSnapshotBundlePredicate *)self contentOcclusionRectangles];
    v6 = [v5 isEmpty];

    if ((v6 & 1) == 0)
    {
      [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyOcclusionRects"];
    }

    dateInterval = self->_dateInterval;
    if (dateInterval)
    {
      v8 = [(NSDateInterval *)dateInterval startDate];
      v9 = [MEMORY[0x1E695DF00] distantPast];
      if ([v8 isEqualToDate:v9])
      {
      }

      else
      {
        v10 = [(NSDateInterval *)self->_dateInterval endDate];
        v11 = [MEMORY[0x1E695DF00] distantFuture];
        v12 = [v10 isEqualToDate:v11];

        if ((v12 & 1) == 0)
        {
          [v3 addObject:@"PUIPosterSnapshotBundleInfoKeyDateCreated"];
        }
      }
    }
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PUIPosterSnapshotBundlePredicate *)self type]- 1;
  if (v4 > 2)
  {
    v5 = @"Default";
  }

  else
  {
    v5 = off_1E7855140[v4];
  }

  [v3 appendString:v5 withName:@"type"];
  v6 = [(PUIPosterSnapshotBundlePredicate *)self componentsToEvaluate];
  v7 = [v6 bs_array];
  v8 = [v3 activeMultilinePrefix];
  [v3 appendArraySection:v7 withName:@"componentsToEvaluate" multilinePrefix:v8 skipIfEmpty:1 objectTransformer:&__block_literal_global_44_0];

  v9 = [v3 build];

  return v9;
}

__CFString *__47__PUIPosterSnapshotBundlePredicate_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) type];
  if ((v1 - 1) > 2)
  {
    return @"Default";
  }

  else
  {
    return off_1E7855140[v1 - 1];
  }
}

id __47__PUIPosterSnapshotBundlePredicate_description__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 substringFromIndex:{objc_msgSend(@"PUIPosterSnapshotBundlePredicateType", "length")}];

  return v3;
}

- (PUIPosterSnapshotBundlePredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterSnapshotBundlePredicate *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"_dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetSize"];
    assetSize = v5->_assetSize;
    v5->_assetSize = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_persistenceScale"];
    persistenceScale = v5->_persistenceScale;
    v5->_persistenceScale = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_posterProvider"];
    posterProvider = v5->_posterProvider;
    v5->_posterProvider = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_snapshotScale"];
    snapshotScale = v5->_snapshotScale;
    v5->_snapshotScale = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userInterfaceStyle"];
    userInterfaceStyle = v5->_userInterfaceStyle;
    v5->_userInterfaceStyle = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceOrientation"];
    interfaceOrientation = v5->_interfaceOrientation;
    v5->_interfaceOrientation = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceOrientation"];
    deviceOrientation = v5->_deviceOrientation;
    v5->_deviceOrientation = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_posterUUID"];
    posterUUID = v5->_posterUUID;
    v5->_posterUUID = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_posterVersion"];
    posterVersion = v5->_posterVersion;
    v5->_posterVersion = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_snapshotDefinitionIdentifier"];
    snapshotDefinitionIdentifier = v5->_snapshotDefinitionIdentifier;
    v5->_snapshotDefinitionIdentifier = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hasColorStatistics"];
    hasColorStatistics = v5->_hasColorStatistics;
    v5->_hasColorStatistics = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_snapshotBundleUUID"];
    snapshotBundleUUID = v5->_snapshotBundleUUID;
    v5->_snapshotBundleUUID = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accessibilityContrast"];
    accessibilityContrast = v5->_accessibilityContrast;
    v5->_accessibilityContrast = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_salientContentRectangle"];
    salientContentRectangle = v5->_salientContentRectangle;
    v5->_salientContentRectangle = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentOcclusionRectangles"];
    contentOcclusionRectangles = v5->_contentOcclusionRectangles;
    v5->_contentOcclusionRectangles = v37;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"_dateInterval"];
  [v5 encodeObject:self->_assetSize forKey:@"_assetSize"];
  [v5 encodeObject:self->_persistenceScale forKey:@"_persistenceScale"];
  [v5 encodeObject:self->_posterProvider forKey:@"_posterProvider"];
  [v5 encodeObject:self->_snapshotScale forKey:@"_snapshotScale"];
  [v5 encodeObject:self->_userInterfaceStyle forKey:@"_userInterfaceStyle"];
  [v5 encodeObject:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  [v5 encodeObject:self->_deviceOrientation forKey:@"_deviceOrientation"];
  [v5 encodeObject:self->_posterUUID forKey:@"_posterUUID"];
  [v5 encodeObject:self->_posterVersion forKey:@"_posterVersion"];
  [v5 encodeObject:self->_snapshotDefinitionIdentifier forKey:@"_snapshotDefinitionIdentifier"];
  [v5 encodeObject:self->_hasColorStatistics forKey:@"_hasColorStatistics"];
  [v5 encodeObject:self->_snapshotBundleUUID forKey:@"_snapshotBundleUUID"];
  [v5 encodeObject:self->_accessibilityContrast forKey:@"_accessibilityContrast"];
  [v5 encodeObject:self->_salientContentRectangle forKey:@"_salientContentRectangle"];
  [v5 encodeObject:self->_contentOcclusionRectangles forKey:@"_contentOcclusionRectangles"];
}

- (BOOL)satisfiesPredicate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4
    && (([v4 snapshotCacheEpoch], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, objc_msgSend(v5, "snapshotCacheEpoch"), v8 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate snapshotCacheEpoch](self, "snapshotCacheEpoch"), v9 = objc_claimAutoreleasedReturnValue(), v10 = BSEqualObjects(), v9, v8, v7, v10))
    && (([v5 snapshotVersion], (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, objc_msgSend(v5, "snapshotVersion"), v13 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate snapshotVersion](self, "snapshotVersion"), v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v12, v15))
    && (([v5 snapshotBundleVersion], (v16 = objc_claimAutoreleasedReturnValue()) == 0) || (v17 = v16, objc_msgSend(v5, "snapshotBundleVersion"), v18 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate snapshotBundleVersion](self, "snapshotBundleVersion"), v19 = objc_claimAutoreleasedReturnValue(), v20 = BSEqualObjects(), v19, v18, v17, v20))
    && (([v5 assetSize], (v21 = objc_claimAutoreleasedReturnValue()) == 0) || (v22 = v21, objc_msgSend(v5, "assetSize"), v23 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate assetSize](self, "assetSize"), v24 = objc_claimAutoreleasedReturnValue(), v25 = BSEqualObjects(), v24, v23, v22, v25))
    && (([v5 persistenceScale], (v26 = objc_claimAutoreleasedReturnValue()) == 0) || (v27 = v26, objc_msgSend(v5, "persistenceScale"), v28 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate persistenceScale](self, "persistenceScale"), v29 = objc_claimAutoreleasedReturnValue(), v30 = BSEqualObjects(), v29, v28, v27, v30))
    && (([v5 snapshotScale], (v31 = objc_claimAutoreleasedReturnValue()) == 0) || (v32 = v31, objc_msgSend(v5, "snapshotScale"), v33 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate snapshotScale](self, "snapshotScale"), v34 = objc_claimAutoreleasedReturnValue(), v35 = BSEqualObjects(), v34, v33, v32, v35))
    && (([v5 userInterfaceStyle], (v36 = objc_claimAutoreleasedReturnValue()) == 0) || (v37 = v36, objc_msgSend(v5, "userInterfaceStyle"), v38 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate userInterfaceStyle](self, "userInterfaceStyle"), v39 = objc_claimAutoreleasedReturnValue(), v40 = BSEqualObjects(), v39, v38, v37, v40))
    && (([v5 interfaceOrientation], (v41 = objc_claimAutoreleasedReturnValue()) == 0) || (v42 = v41, objc_msgSend(v5, "interfaceOrientation"), v43 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate interfaceOrientation](self, "interfaceOrientation"), v44 = objc_claimAutoreleasedReturnValue(), v45 = BSEqualObjects(), v44, v43, v42, v45))
    && (([v5 deviceOrientation], (v46 = objc_claimAutoreleasedReturnValue()) == 0) || (v47 = v46, objc_msgSend(v5, "deviceOrientation"), v48 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate deviceOrientation](self, "deviceOrientation"), v49 = objc_claimAutoreleasedReturnValue(), v50 = BSEqualObjects(), v49, v48, v47, v50))
    && (([v5 posterUUID], (v51 = objc_claimAutoreleasedReturnValue()) == 0) || (v52 = v51, objc_msgSend(v5, "posterUUID"), v53 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate posterUUID](self, "posterUUID"), v54 = objc_claimAutoreleasedReturnValue(), v55 = BSEqualObjects(), v54, v53, v52, v55))
    && (([v5 posterVersion], (v56 = objc_claimAutoreleasedReturnValue()) == 0) || (v57 = v56, objc_msgSend(v5, "posterVersion"), v58 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate posterVersion](self, "posterVersion"), v59 = objc_claimAutoreleasedReturnValue(), v60 = BSEqualObjects(), v59, v58, v57, v60))
    && (([v5 posterProvider], (v61 = objc_claimAutoreleasedReturnValue()) == 0) || (v62 = v61, objc_msgSend(v5, "posterProvider"), v63 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate posterProvider](self, "posterProvider"), v64 = objc_claimAutoreleasedReturnValue(), v65 = BSEqualObjects(), v64, v63, v62, v65))
    && (([v5 snapshotDefinitionIdentifier], (v66 = objc_claimAutoreleasedReturnValue()) == 0) || (v67 = v66, objc_msgSend(v5, "snapshotDefinitionIdentifier"), v68 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate snapshotDefinitionIdentifier](self, "snapshotDefinitionIdentifier"), v69 = objc_claimAutoreleasedReturnValue(), v70 = BSEqualObjects(), v69, v68, v67, v70))
    && (([v5 hasColorStatistics], (v71 = objc_claimAutoreleasedReturnValue()) == 0) || (v72 = v71, objc_msgSend(v5, "hasColorStatistics"), v73 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate hasColorStatistics](self, "hasColorStatistics"), v74 = objc_claimAutoreleasedReturnValue(), v75 = BSEqualObjects(), v74, v73, v72, v75))
    && (([v5 snapshotBundleUUID], (v76 = objc_claimAutoreleasedReturnValue()) == 0) || (v77 = v76, objc_msgSend(v5, "snapshotBundleUUID"), v78 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate snapshotBundleUUID](self, "snapshotBundleUUID"), v79 = objc_claimAutoreleasedReturnValue(), v80 = BSEqualObjects(), v79, v78, v77, v80))
    && (([v5 accessibilityContrast], (v81 = objc_claimAutoreleasedReturnValue()) == 0) || (v82 = v81, objc_msgSend(v5, "accessibilityContrast"), v83 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate accessibilityContrast](self, "accessibilityContrast"), v84 = objc_claimAutoreleasedReturnValue(), v85 = BSEqualObjects(), v84, v83, v82, v85))
    && (([v5 salientContentRectangle], (v86 = objc_claimAutoreleasedReturnValue()) == 0) || (v87 = v86, objc_msgSend(v5, "salientContentRectangle"), v88 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate salientContentRectangle](self, "salientContentRectangle"), v89 = objc_claimAutoreleasedReturnValue(), v90 = BSEqualObjects(), v89, v88, v87, v90))
    && (([v5 contentOcclusionRectangles], (v91 = objc_claimAutoreleasedReturnValue()) == 0) || (v92 = v91, objc_msgSend(v5, "contentOcclusionRectangles"), v93 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundlePredicate contentOcclusionRectangles](self, "contentOcclusionRectangles"), v94 = objc_claimAutoreleasedReturnValue(), v95 = BSEqualObjects(), v94, v93, v92, v95)))
  {
    v96 = [v5 dateInterval];
    if (v96)
    {
      v97 = v96;
      v98 = [v5 dateInterval];
      v99 = [(PUIPosterSnapshotBundlePredicate *)self dateInterval];
      v100 = BSEqualObjects();
    }

    else
    {
      v100 = 1;
    }
  }

  else
  {
    v100 = 0;
  }

  return v100 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PUIPosterSnapshotBundlePredicate);
  v4->_type = self->_type;
  objc_storeStrong(&v4->_dateInterval, self->_dateInterval);
  objc_storeStrong(&v4->_assetSize, self->_assetSize);
  objc_storeStrong(&v4->_persistenceScale, self->_persistenceScale);
  objc_storeStrong(&v4->_snapshotScale, self->_snapshotScale);
  objc_storeStrong(&v4->_userInterfaceStyle, self->_userInterfaceStyle);
  objc_storeStrong(&v4->_interfaceOrientation, self->_interfaceOrientation);
  objc_storeStrong(&v4->_deviceOrientation, self->_deviceOrientation);
  objc_storeStrong(&v4->_posterUUID, self->_posterUUID);
  objc_storeStrong(&v4->_posterProvider, self->_posterProvider);
  objc_storeStrong(&v4->_posterVersion, self->_posterVersion);
  objc_storeStrong(&v4->_snapshotDefinitionIdentifier, self->_snapshotDefinitionIdentifier);
  objc_storeStrong(&v4->_hasColorStatistics, self->_hasColorStatistics);
  objc_storeStrong(&v4->_accessibilityContrast, self->_accessibilityContrast);
  objc_storeStrong(&v4->_salientContentRectangle, self->_salientContentRectangle);
  objc_storeStrong(&v4->_contentOcclusionRectangles, self->_contentOcclusionRectangles);
  return v4;
}

- (id)SQLitePredicate
{
  v4 = +[_PUIPosterSnapshotCacheRecord pf_sqliteCodingDescriptor];
  v5 = +[_PUIPosterSnapshotCacheRecord bundleInfoKeyToColumnLookup];
  v6 = [MEMORY[0x1E69C51D0] builder];
  if ([(PUIPosterSnapshotBundlePredicate *)self type]== 1)
  {
    v7 = [v4 columnForName:@"_posterVersion"];
    v8 = [(PUIPosterSnapshotBundlePredicate *)self posterVersion];
    v9 = [v6 whereColumn:v7 lessThan:v8];

    v10 = [v4 columnForName:@"_posterUUID"];
    v11 = [(PUIPosterSnapshotBundlePredicate *)self posterUUID];
    v12 = [v6 whereColumn:v10 equalTo:v11];

    v13 = [v6 buildAndPredicate];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke;
    v16[3] = &unk_1E78554D0;
    v16[4] = self;
    v17 = v5;
    v18 = a2;
    v14 = [v6 andPredicate:v16];
    v13 = [v6 buildAndPredicate];
  }

  return v13;
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = (a1 + 32);
  obj = [*(a1 + 32) componentsToEvaluate];
  v40 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v40)
  {
    v4 = *v53;
    v5 = 0x1E695D000uLL;
    do
    {
      v6 = 0;
      do
      {
        if (*v53 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v52 + 1) + 8 * v6);
        v8 = [*(a1 + 40) objectForKey:v7];
        if (!v8)
        {
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled column for key: %@", v7];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_cold_2(a1, v3, v37);
          }

LABEL_63:
          [v37 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1A8CCA07CLL);
        }

        v9 = v8;
        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyDateCreated"])
        {
          v10 = v4;
          v11 = a1;
          v12 = [*v3 dateInterval];
          v13 = [v12 startDate];

          v14 = [*v3 dateInterval];
          v15 = [v14 endDate];

          v16 = [*(v5 + 3840) distantPast];
          if ([v13 isEqualToDate:v16])
          {
            goto LABEL_20;
          }

          v17 = [*(v5 + 3840) distantFuture];
          v18 = [v13 isEqualToDate:v17];

          if ((v18 & 1) == 0)
          {
            if ([v13 isEqualToDate:v15])
            {
              v49[0] = MEMORY[0x1E69E9820];
              v49[1] = 3221225472;
              v49[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_503;
              v49[3] = &unk_1E7855458;
              v50 = v9;
              v51 = v13;
              v19 = [v39 andPredicate:v49];
              v20 = &v51;
              v21 = &v50;
            }

            else
            {
              v45[0] = MEMORY[0x1E69E9820];
              v45[1] = 3221225472;
              v45[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_2;
              v45[3] = &unk_1E7855480;
              v46 = v9;
              v47 = v13;
              v48 = v15;
              v23 = [v39 andPredicate:v45];

              v20 = &v47;
              v21 = &v46;
            }

            v16 = *v21;
LABEL_20:
          }

          a1 = v11;
          v4 = v10;
          goto LABEL_48;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleUUID"])
        {
          v22 = [*v3 snapshotBundleUUID];
LABEL_47:
          v27 = v22;
          v28 = [v39 whereColumn:v9 equalTo:v22];

          goto LABEL_48;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyAssetSize"])
        {
          v22 = [*v3 assetSize];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale"])
        {
          v22 = [*v3 persistenceScale];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyScale"])
        {
          v22 = [*v3 snapshotScale];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"])
        {
          v24 = [*v3 userInterfaceStyle];
          v25 = [v24 unsignedIntValue];

          if (!v25)
          {
            goto LABEL_48;
          }

          v22 = [*v3 userInterfaceStyle];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"])
        {
          v22 = [*v3 interfaceOrientation];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"])
        {
          v22 = [*v3 deviceOrientation];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyPosterUUID"])
        {
          v22 = [*v3 posterUUID];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyPosterVersion"])
        {
          v22 = [*v3 posterVersion];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyPosterProvider"])
        {
          v22 = [*v3 posterProvider];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"])
        {
          v22 = [*v3 snapshotDefinitionIdentifier];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyContainsColorStatistics"])
        {
          v22 = [*v3 hasColorStatistics];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleVersion"])
        {
          v22 = [*v3 snapshotBundleVersion];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeySnapshotEpoch"])
        {
          v22 = [*v3 snapshotCacheEpoch];
          goto LABEL_47;
        }

        if ([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeySnapshotAccessibilityContrast"])
        {
          v26 = [*v3 accessibilityContrast];
          [v26 unsignedIntValue];

          v22 = [*v3 accessibilityContrast];
          goto LABEL_47;
        }

        if (([v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeySaliencyRect"] & 1) == 0)
        {
          if (![v7 isEqualToString:@"PUIPosterSnapshotBundleInfoKeyOcclusionRects"])
          {
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled key: %@", v7];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_cold_1(a1, v3, v37);
            }

            goto LABEL_63;
          }

          v29 = [*v3 matchingOcclusionRectNames];
          v30 = [v29 count];

          if (v30)
          {
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_4;
            v43[3] = &unk_1E7855458;
            v43[4] = *v3;
            v44 = v9;
            v31 = [v39 andPredicate:v43];
          }

          v32 = [*v3 contentOcclusionRectangles];
          v33 = [v32 allRects];
          v34 = [v33 count];

          if (v34)
          {
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_6;
            v41[3] = &unk_1E7855458;
            v41[4] = *v3;
            v42 = v9;
            v35 = [v39 andPredicate:v41];
          }
        }

LABEL_48:

        ++v6;
        v5 = 0x1E695D000;
      }

      while (v40 != v6);
      v36 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      v40 = v36;
    }

    while (v36);
  }
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_2(id *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_3;
  v5[3] = &unk_1E7855480;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v4 = [a2 andPredicate:v5];
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_3(void *a1, void *a2)
{
  v5 = a2;
  v3 = [v5 whereColumn:a1[4] greaterThanOrEqualTo:a1[5]];
  v4 = [v5 whereColumn:a1[4] lessThanOrEqualTo:a1[6]];
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_4(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_5;
  v5[3] = &unk_1E7855458;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = [a2 orPredicate:v5];
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) matchingOcclusionRectNames];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%%@%%", *(*(&v12 + 1) + 8 * v8)];
        v11 = [v3 whereColumn:v9 like:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_6(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_7;
  v5[3] = &unk_1E7855458;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = [a2 orPredicate:v5];
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contentOcclusionRectangles];
  v5 = [v4 allRects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_8;
  v7[3] = &unk_1E78554A8;
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [a3 CGRectValue];
  v8 = [PUIPosterContentOcclusionRectSet occlusionRectSetForName:v6 rect:?];

  v7 = [v4 whereColumn:v5 equalTo:v8];
}

+ (void)predicateMatchingRequest:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"request", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)predicateMatchingContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"context", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)predicateMatchingBundlesSimilarTo:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"context", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(*(a1 + 48));
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_7();
  v9 = @"PUIPosterSnapshotSQLiteCache.m";
  v10 = 1024;
  v11 = 1029;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

void __68__PUIPosterSnapshotBundlePredicate_SQLiteAdditions__SQLitePredicate__block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(*(a1 + 48));
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_7();
  v9 = @"PUIPosterSnapshotSQLiteCache.m";
  v10 = 1024;
  v11 = 933;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

@end