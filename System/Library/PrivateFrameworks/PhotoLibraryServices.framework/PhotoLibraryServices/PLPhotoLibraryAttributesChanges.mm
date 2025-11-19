@interface PLPhotoLibraryAttributesChanges
- (PLPhotoLibraryAttributesChanges)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLPhotoLibraryAttributesChanges

- (PLPhotoLibraryAttributesChanges)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PLPhotoLibraryAttributesChanges;
  v5 = [(PLPhotoLibraryAttributesChanges *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDescription"];
    userDescription = v5->_userDescription;
    v5->_userDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enableCloudSyncValue"];
    enableCloudSyncValue = v5->_enableCloudSyncValue;
    v5->_enableCloudSyncValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudResourcePrefetchModeValue"];
    cloudResourcePrefetchModeValue = v5->_cloudResourcePrefetchModeValue;
    v5->_cloudResourcePrefetchModeValue = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_userDescription forKey:@"userDescription"];
  [v5 encodeObject:self->_enableCloudSyncValue forKey:@"enableCloudSyncValue"];
  [v5 encodeObject:self->_cloudResourcePrefetchModeValue forKey:@"cloudResourcePrefetchModeValue"];
}

@end