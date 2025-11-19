@interface MOContextPhotoMetaData
- (MOContextPhotoMetaData)init;
- (MOContextPhotoMetaData)initWithCoder:(id)a3;
- (MOContextPhotoMetaData)initWithPhotoAssetIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MOContextPhotoMetaData

- (MOContextPhotoMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextPhotoMetaData;
  return [(MOContextPhotoMetaData *)&v3 init];
}

- (MOContextPhotoMetaData)initWithPhotoAssetIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MOContextPhotoMetaData;
  v6 = [(MOContextPhotoMetaData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoAssetIdentifier, a3);
    v8 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_25E48F000, v8, OS_LOG_TYPE_INFO, "PhotoMetaData photoAssetIdentifier,%@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextPhotoMetaData alloc];
  v5 = [(MOContextPhotoMetaData *)self photoAssetIdentifier];
  v6 = [(MOContextPhotoMetaData *)v4 initWithPhotoAssetIdentifier:v5];

  return v6;
}

- (MOContextPhotoMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoAssetIdentifier"];

  v6 = [(MOContextPhotoMetaData *)self initWithPhotoAssetIdentifier:v5];
  return v6;
}

@end