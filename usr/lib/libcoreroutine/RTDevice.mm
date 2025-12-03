@interface RTDevice
+ (id)createWithDeviceMO:(id)o;
+ (id)createWithManagedObject:(id)object;
- (NSString)description;
- (RTDevice)initWithIdentifier:(id)identifier deviceName:(id)name deviceClass:(id)class deviceModel:(id)model creationDate:(id)date;
@end

@implementation RTDevice

- (RTDevice)initWithIdentifier:(id)identifier deviceName:(id)name deviceClass:(id)class deviceModel:(id)model creationDate:(id)date
{
  identifierCopy = identifier;
  nameCopy = name;
  classCopy = class;
  modelCopy = model;
  dateCopy = date;
  if (identifierCopy)
  {
    v31.receiver = self;
    v31.super_class = RTDevice;
    v17 = [(RTDevice *)&v31 init];
    if (v17)
    {
      v18 = [identifierCopy copy];
      identifier = v17->_identifier;
      v17->_identifier = v18;

      v20 = [nameCopy copy];
      deviceName = v17->_deviceName;
      v17->_deviceName = v20;

      v22 = [classCopy copy];
      deviceClass = v17->_deviceClass;
      v17->_deviceClass = v22;

      v24 = [modelCopy copy];
      deviceModel = v17->_deviceModel;
      v17->_deviceModel = v24;

      v26 = [dateCopy copy];
      creationDate = v17->_creationDate;
      v17->_creationDate = v26;
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v5 = [v3 stringWithFormat:@"identifier, %@, deviceName, %@, deviceClass, %@, deviceModel, %@", uUIDString, self->_deviceName, self->_deviceClass, self->_deviceModel];

  return v5;
}

+ (id)createWithManagedObject:(id)object
{
  v13 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithDeviceMO:objectCopy];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = objectCopy;
      v9 = 2080;
      v10 = "+[RTDevice(RTCoreDataTransformable) createWithManagedObject:]";
      v11 = 1024;
      v12 = 32;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTDevice+CoreDataTransformable (in %s:%d)", &v7, 0x1Cu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithDeviceMO:(id)o
{
  oCopy = o;
  v4 = [RTDevice alloc];
  identifier = [oCopy identifier];
  deviceName = [oCopy deviceName];
  deviceClass = [oCopy deviceClass];
  deviceModel = [oCopy deviceModel];
  creationDate = [oCopy creationDate];

  v10 = [(RTDevice *)v4 initWithIdentifier:identifier deviceName:deviceName deviceClass:deviceClass deviceModel:deviceModel creationDate:creationDate];

  return v10;
}

@end