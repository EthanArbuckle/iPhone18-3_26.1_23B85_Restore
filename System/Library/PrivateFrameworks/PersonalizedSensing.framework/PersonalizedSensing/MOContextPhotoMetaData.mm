@interface MOContextPhotoMetaData
- (MOContextPhotoMetaData)init;
- (MOContextPhotoMetaData)initWithCoder:(id)coder;
- (MOContextPhotoMetaData)initWithPhotoAssetIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MOContextPhotoMetaData

- (MOContextPhotoMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextPhotoMetaData;
  return [(MOContextPhotoMetaData *)&v3 init];
}

- (MOContextPhotoMetaData)initWithPhotoAssetIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MOContextPhotoMetaData;
  v6 = [(MOContextPhotoMetaData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoAssetIdentifier, identifier);
    v8 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = identifierCopy;
      _os_log_impl(&dword_25E48F000, v8, OS_LOG_TYPE_INFO, "PhotoMetaData photoAssetIdentifier,%@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
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