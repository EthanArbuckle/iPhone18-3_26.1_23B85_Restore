@interface RTAuthorizedLocationZDRLocations
+ (id)createWithAuthorizedZDRLocationMO:(id)o;
+ (id)createWithManagedObject:(id)object;
- (RTAuthorizedLocationZDRLocations)initWithCoder:(id)coder;
- (RTAuthorizedLocationZDRLocations)initWithZDRLocation:(id)location zdrLocationDbEntryTimeCfatSec:(id)sec zdrLocationType:(unint64_t)type zdrLocationLatitudeDeg:(double)deg zdrLocationLongitudeDeg:(double)longitudeDeg zdrLocationLastSeenTimeCfatSec:(id)cfatSec;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAuthorizedLocationZDRLocations

+ (id)createWithManagedObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectCopy;
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
      v13 = objectCopy;
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

+ (id)createWithAuthorizedZDRLocationMO:(id)o
{
  oCopy = o;
  v4 = [RTAuthorizedLocationZDRLocations alloc];
  zdrLocationUUID = [oCopy zdrLocationUUID];
  zdrLocationDbEntryTimeCfatSec = [oCopy zdrLocationDbEntryTimeCfatSec];
  zdrLocationType = [oCopy zdrLocationType];
  [oCopy zdrLocationLatitudeDeg];
  v9 = v8;
  [oCopy zdrLocationLongitudeDeg];
  v11 = v10;
  zdrLocationLastSeenTimeCfatSec = [oCopy zdrLocationLastSeenTimeCfatSec];

  v13 = [(RTAuthorizedLocationZDRLocations *)v4 initWithZDRLocation:zdrLocationUUID zdrLocationDbEntryTimeCfatSec:zdrLocationDbEntryTimeCfatSec zdrLocationType:zdrLocationType zdrLocationLatitudeDeg:zdrLocationLastSeenTimeCfatSec zdrLocationLongitudeDeg:v9 zdrLocationLastSeenTimeCfatSec:v11];

  return v13;
}

- (id)managedObjectWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
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
      v18 = contextCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@,%@", &v13, 0x20u);
    }

    v10 = [RTAuthorizedLocationZDRLocationsMO managedObjectWithAuthorizedZDRLocation:self inManagedObjectContext:contextCopy];
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

- (RTAuthorizedLocationZDRLocations)initWithZDRLocation:(id)location zdrLocationDbEntryTimeCfatSec:(id)sec zdrLocationType:(unint64_t)type zdrLocationLatitudeDeg:(double)deg zdrLocationLongitudeDeg:(double)longitudeDeg zdrLocationLastSeenTimeCfatSec:(id)cfatSec
{
  locationCopy = location;
  secCopy = sec;
  cfatSecCopy = cfatSec;
  v21.receiver = self;
  v21.super_class = RTAuthorizedLocationZDRLocations;
  v18 = [(RTAuthorizedLocationZDRLocations *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_zdrLocationUUID, location);
    objc_storeStrong(&v19->_zdrLocationDbEntryTimeCfatSec, sec);
    v19->_zdrLocationType = type;
    v19->_zdrLocationLatitudeDeg = deg;
    v19->_zdrLocationLongitudeDeg = longitudeDeg;
    objc_storeStrong(&v19->_zdrLocationLastSeenTimeCfatSec, cfatSec);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  zdrLocationUUID = self->_zdrLocationUUID;
  coderCopy = coder;
  [coderCopy encodeObject:zdrLocationUUID forKey:@"zdrLocationUUIDIdentifier"];
  [coderCopy encodeObject:self->_zdrLocationDbEntryTimeCfatSec forKey:@"zdrLocationEntryTimeCfatSecIdentifier"];
  [coderCopy encodeInteger:self->_zdrLocationType forKey:@"zdrLocationTypeIdentifier"];
  [coderCopy encodeDouble:@"zdrLocationLatitudeIdentifier" forKey:self->_zdrLocationLatitudeDeg];
  [coderCopy encodeDouble:@"zdrLocationLongitudeIdentifier" forKey:self->_zdrLocationLongitudeDeg];
  [coderCopy encodeObject:self->_zdrLocationLastSeenTimeCfatSec forKey:@"zdrLocationLastSeenTimeCfatSecIdentifier"];
}

- (RTAuthorizedLocationZDRLocations)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zdrLocationUUIDIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zdrLocationEntryTimeCfatSecIdentifier"];
  v7 = [coderCopy decodeIntegerForKey:@"zdrLocationTypeIdentifier"];
  [coderCopy decodeDoubleForKey:@"zdrLocationLatitudeIdentifier"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"zdrLocationLongitudeIdentifier"];
  v11 = v10;
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zdrLocationLastSeenTimeCfatSecIdentifier"];

  v13 = [(RTAuthorizedLocationZDRLocations *)self initWithZDRLocation:v5 zdrLocationDbEntryTimeCfatSec:v6 zdrLocationType:v7 zdrLocationLatitudeDeg:v12 zdrLocationLongitudeDeg:v9 zdrLocationLastSeenTimeCfatSec:v11];
  return v13;
}

@end