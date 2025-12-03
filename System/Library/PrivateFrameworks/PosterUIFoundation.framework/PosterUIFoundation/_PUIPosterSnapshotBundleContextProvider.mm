@interface _PUIPosterSnapshotBundleContextProvider
- (BOOL)hasColorStatistics;
- (CGRect)salientContentRectangle;
- (CGSize)assetSize;
- (NSArray)snapshotLevelSets;
- (NSDate)dateCreated;
- (NSString)bootSessionIdentifier;
- (NSString)posterProvider;
- (NSString)snapshotDefinitionIdentifier;
- (NSUUID)posterUUID;
- (NSUUID)snapshotBundleUUID;
- (PUIPosterContentOcclusionRectSet)contentOcclusionRectangles;
- (_PUIPosterSnapshotBundleContextProvider)initWithDictionary:(id)dictionary;
- (double)persistenceScale;
- (double)snapshotScale;
- (int64_t)accessibilityContrast;
- (int64_t)deviceOrientation;
- (int64_t)interfaceOrientation;
- (int64_t)userInterfaceStyle;
- (unint64_t)posterVersion;
- (unint64_t)snapshotBundleVersion;
- (unint64_t)snapshotEpoch;
@end

@implementation _PUIPosterSnapshotBundleContextProvider

- (_PUIPosterSnapshotBundleContextProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _PUIPosterSnapshotBundleContextProvider;
  v6 = [(_PUIPosterSnapshotBundleContextProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

- (NSDate)dateCreated
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyDateCreated" ofType:v3];

  if (v4)
  {
    v5 = PUIPosterSnapshotBundleSharedDateFormatter();
    v6 = [v5 dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)snapshotEpoch
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeySnapshotEpoch" ofType:v3];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSString)bootSessionIdentifier
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyBootSessionIdentifier" ofType:v3];

  return v4;
}

- (unint64_t)snapshotBundleVersion
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleVersion" ofType:v3];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)posterVersion
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyPosterVersion" ofType:v3];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)interfaceOrientation
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation" ofType:v3];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)deviceOrientation
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation" ofType:v3];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSArray)snapshotLevelSets
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"PUIPosterSnapshotBundleInfoKeySnapshotLevels"];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = MEMORY[0x1E696ACD0];
        v11 = objc_opt_self();
        v12 = [v10 unarchivedObjectOfClass:v11 fromData:v9 error:{0, v15}];
        [v3 bs_safeAddObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

- (CGSize)assetSize
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyAssetSize" ofType:v3];

  if (v4)
  {
    v5 = CGSizeFromString(v4);
    width = v5.width;
    height = v5.height;
  }

  else
  {
    width = *(MEMORY[0x1E695F040] + 16);
    height = *(MEMORY[0x1E695F040] + 24);
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)snapshotScale
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyScale" ofType:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)persistenceScale
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale" ofType:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)hasColorStatistics
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyContainsColorStatistics" ofType:v3];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (int64_t)userInterfaceStyle
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle" ofType:v3];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSUUID)posterUUID
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyPosterUUID" ofType:v3];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)snapshotBundleUUID
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleUUID" ofType:v3];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)posterProvider
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeyPosterProvider" ofType:v3];

  return v4;
}

- (NSString)snapshotDefinitionIdentifier
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier" ofType:v3];

  return v4;
}

- (int64_t)accessibilityContrast
{
  dictionary = self->_dictionary;
  v3 = objc_opt_self();
  v4 = [(NSDictionary *)dictionary bs_safeObjectForKey:@"PUIPosterSnapshotBundleInfoKeySnapshotAccessibilityContrast" ofType:v3];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (PUIPosterContentOcclusionRectSet)contentOcclusionRectangles
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"PUIPosterSnapshotBundleInfoKeyOcclusionRects"];
  if ([v2 count])
  {
    v3 = [[PUIPosterContentOcclusionRectSet alloc] initWithNameToRectDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)salientContentRectangle
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"PUIPosterSnapshotBundleInfoKeySaliencyRect"];
  if ([(NSString *)v2 length])
  {
    v11 = CGRectFromString(v2);
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    height = v11.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F040];
    y = *(MEMORY[0x1E695F040] + 8);
    width = *(MEMORY[0x1E695F040] + 16);
    height = *(MEMORY[0x1E695F040] + 24);
  }

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

@end