@interface RTDevice
+ (id)createWithDeviceMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
- (NSString)description;
- (RTDevice)initWithIdentifier:(id)a3 deviceName:(id)a4 deviceClass:(id)a5 deviceModel:(id)a6 creationDate:(id)a7;
@end

@implementation RTDevice

- (RTDevice)initWithIdentifier:(id)a3 deviceName:(id)a4 deviceClass:(id)a5 deviceModel:(id)a6 creationDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v31.receiver = self;
    v31.super_class = RTDevice;
    v17 = [(RTDevice *)&v31 init];
    if (v17)
    {
      v18 = [v12 copy];
      identifier = v17->_identifier;
      v17->_identifier = v18;

      v20 = [v13 copy];
      deviceName = v17->_deviceName;
      v17->_deviceName = v20;

      v22 = [v14 copy];
      deviceClass = v17->_deviceClass;
      v17->_deviceClass = v22;

      v24 = [v15 copy];
      deviceModel = v17->_deviceModel;
      v17->_deviceModel = v24;

      v26 = [v16 copy];
      creationDate = v17->_creationDate;
      v17->_creationDate = v26;
    }

    self = v17;
    v28 = self;
  }

  else
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v28 = 0;
  }

  return v28;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSUUID *)self->_identifier UUIDString];
  v5 = [v3 stringWithFormat:@"identifier, %@, deviceName, %@, deviceClass, %@, deviceModel, %@", v4, self->_deviceName, self->_deviceClass, self->_deviceModel];

  return v5;
}

+ (id)createWithManagedObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithDeviceMO:v3];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = v3;
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

+ (id)createWithDeviceMO:(id)a3
{
  v3 = a3;
  v4 = [RTDevice alloc];
  v5 = [v3 identifier];
  v6 = [v3 deviceName];
  v7 = [v3 deviceClass];
  v8 = [v3 deviceModel];
  v9 = [v3 creationDate];

  v10 = [(RTDevice *)v4 initWithIdentifier:v5 deviceName:v6 deviceClass:v7 deviceModel:v8 creationDate:v9];

  return v10;
}

@end