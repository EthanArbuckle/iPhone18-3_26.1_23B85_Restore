@interface MOContextPhotoMetaData
- (MOContextPhotoMetaData)init;
- (MOContextPhotoMetaData)initWithCoder:(id)coder;
- (MOContextPhotoMetaData)initWithPhotoAssetIdentifier:(id)identifier;
- (MOContextPhotoMetaData)initWithPhotoMetaDataMO:(id)o;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MOContextPhotoMetaData

- (MOContextPhotoMetaData)initWithPhotoMetaDataMO:(id)o
{
  if (o)
  {
    photoAssetIdentifier = [o photoAssetIdentifier];
    self = [(MOContextPhotoMetaData *)self initWithPhotoAssetIdentifier:photoAssetIdentifier];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MOContextPhotoMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextPhotoMetaData;
  return [(MOContextPhotoMetaData *)&v3 init];
}

- (MOContextPhotoMetaData)initWithPhotoAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = MOContextPhotoMetaData;
  v6 = [(MOContextPhotoMetaData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoAssetIdentifier, identifier);
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PhotoMetaData photoAssetIdentifier,%@", buf, 0xCu);
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextPhotoMetaData alloc];
  photoAssetIdentifier = [(MOContextPhotoMetaData *)self photoAssetIdentifier];
  v6 = [(MOContextPhotoMetaData *)v4 initWithPhotoAssetIdentifier:photoAssetIdentifier];

  return v6;
}

- (MOContextPhotoMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoAssetIdentifier"];

  v6 = [(MOContextPhotoMetaData *)self initWithPhotoAssetIdentifier:v5];
  return v6;
}

@end