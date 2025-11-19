@interface RTAuthorizedLocationZDRLocations
+ (id)createWithAuthorizedZDRLocationMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
- (RTAuthorizedLocationZDRLocations)initWithCoder:(id)a3;
- (RTAuthorizedLocationZDRLocations)initWithZDRLocation:(id)a3 zdrLocationDbEntryTimeCfatSec:(id)a4 zdrLocationType:(unint64_t)a5 zdrLocationLatitudeDeg:(double)a6 zdrLocationLongitudeDeg:(double)a7 zdrLocationLastSeenTimeCfatSec:(id)a8;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTAuthorizedLocationZDRLocations

+ (id)createWithManagedObject:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [objc_opt_class() createWithAuthorizedZDRLocationMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = v4;
      v15 = "+[RTAuthorizedLocationZDRLocations(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 31;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTAuthorizedLocationZDRLocationsStoreMO+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithAuthorizedZDRLocationMO:(id)a3
{
  v3 = a3;
  v4 = [RTAuthorizedLocationZDRLocations alloc];
  v5 = [v3 zdrLocationUUID];
  v6 = [v3 zdrLocationDbEntryTimeCfatSec];
  v7 = [v3 zdrLocationType];
  [v3 zdrLocationLatitudeDeg];
  v9 = v8;
  [v3 zdrLocationLongitudeDeg];
  v11 = v10;
  v12 = [v3 zdrLocationLastSeenTimeCfatSec];

  v13 = [(RTAuthorizedLocationZDRLocations *)v4 initWithZDRLocation:v5 zdrLocationDbEntryTimeCfatSec:v6 zdrLocationType:v7 zdrLocationLatitudeDeg:v12 zdrLocationLongitudeDeg:v9 zdrLocationLastSeenTimeCfatSec:v11];

  return v13;
}

- (id)managedObjectWithContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@,%@", &v13, 0x20u);
    }

    v10 = [RTAuthorizedLocationZDRLocationsMO managedObjectWithAuthorizedZDRLocation:self inManagedObjectContext:v5];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (RTAuthorizedLocationZDRLocations)initWithZDRLocation:(id)a3 zdrLocationDbEntryTimeCfatSec:(id)a4 zdrLocationType:(unint64_t)a5 zdrLocationLatitudeDeg:(double)a6 zdrLocationLongitudeDeg:(double)a7 zdrLocationLastSeenTimeCfatSec:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = RTAuthorizedLocationZDRLocations;
  v18 = [(RTAuthorizedLocationZDRLocations *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_zdrLocationUUID, a3);
    objc_storeStrong(&v19->_zdrLocationDbEntryTimeCfatSec, a4);
    v19->_zdrLocationType = a5;
    v19->_zdrLocationLatitudeDeg = a6;
    v19->_zdrLocationLongitudeDeg = a7;
    objc_storeStrong(&v19->_zdrLocationLastSeenTimeCfatSec, a8);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  zdrLocationUUID = self->_zdrLocationUUID;
  v5 = a3;
  [v5 encodeObject:zdrLocationUUID forKey:@"zdrLocationUUIDIdentifier"];
  [v5 encodeObject:self->_zdrLocationDbEntryTimeCfatSec forKey:@"zdrLocationEntryTimeCfatSecIdentifier"];
  [v5 encodeInteger:self->_zdrLocationType forKey:@"zdrLocationTypeIdentifier"];
  [v5 encodeDouble:@"zdrLocationLatitudeIdentifier" forKey:self->_zdrLocationLatitudeDeg];
  [v5 encodeDouble:@"zdrLocationLongitudeIdentifier" forKey:self->_zdrLocationLongitudeDeg];
  [v5 encodeObject:self->_zdrLocationLastSeenTimeCfatSec forKey:@"zdrLocationLastSeenTimeCfatSecIdentifier"];
}

- (RTAuthorizedLocationZDRLocations)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zdrLocationUUIDIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zdrLocationEntryTimeCfatSecIdentifier"];
  v7 = [v4 decodeIntegerForKey:@"zdrLocationTypeIdentifier"];
  [v4 decodeDoubleForKey:@"zdrLocationLatitudeIdentifier"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"zdrLocationLongitudeIdentifier"];
  v11 = v10;
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zdrLocationLastSeenTimeCfatSecIdentifier"];

  v13 = [(RTAuthorizedLocationZDRLocations *)self initWithZDRLocation:v5 zdrLocationDbEntryTimeCfatSec:v6 zdrLocationType:v7 zdrLocationLatitudeDeg:v12 zdrLocationLongitudeDeg:v9 zdrLocationLastSeenTimeCfatSec:v11];
  return v13;
}

@end