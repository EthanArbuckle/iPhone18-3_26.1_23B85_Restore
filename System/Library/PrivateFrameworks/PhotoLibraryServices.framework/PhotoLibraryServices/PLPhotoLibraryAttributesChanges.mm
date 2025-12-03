@interface PLPhotoLibraryAttributesChanges
- (PLPhotoLibraryAttributesChanges)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLPhotoLibraryAttributesChanges

- (PLPhotoLibraryAttributesChanges)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PLPhotoLibraryAttributesChanges;
  v5 = [(PLPhotoLibraryAttributesChanges *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDescription"];
    userDescription = v5->_userDescription;
    v5->_userDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enableCloudSyncValue"];
    enableCloudSyncValue = v5->_enableCloudSyncValue;
    v5->_enableCloudSyncValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudResourcePrefetchModeValue"];
    cloudResourcePrefetchModeValue = v5->_cloudResourcePrefetchModeValue;
    v5->_cloudResourcePrefetchModeValue = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_userDescription forKey:@"userDescription"];
  [coderCopy encodeObject:self->_enableCloudSyncValue forKey:@"enableCloudSyncValue"];
  [coderCopy encodeObject:self->_cloudResourcePrefetchModeValue forKey:@"cloudResourcePrefetchModeValue"];
}

@end