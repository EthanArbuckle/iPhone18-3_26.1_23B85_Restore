@interface SFCompanionService
+ (id)serviceFromAuthorData:(id)data;
+ (id)serviceFromDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToService:(id)service;
- (SFCompanionService)initWithCoder:(id)coder;
- (SFCompanionService)initWithServiceName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messageData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)messageData;
@end

@implementation SFCompanionService

+ (id)serviceFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SFCompanionService);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"ServiceName"];
  [(SFCompanionService *)v4 setServiceType:v5];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"DeviceID"];
  [(SFCompanionService *)v4 setDeviceID:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"ServiceIdentifier"];
  [(SFCompanionService *)v4 setIdentifier:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"DeviceName"];
  [(SFCompanionService *)v4 setDeviceName:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"ManagerID"];
  [(SFCompanionService *)v4 setManagerID:v9];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"IPAddress"];

  [(SFCompanionService *)v4 setIpAddress:v10];

  return v4;
}

+ (id)serviceFromAuthorData:(id)data
{
  v9 = 0;
  v10 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:&v10 error:&v9];
  if (v3)
  {
    v4 = objc_alloc_init(SFCompanionService);
    v5 = [v3 objectForKeyedSubscript:@"unique_id"];
    [(SFCompanionService *)v4 setIdentifier:v5];

    v6 = [v3 objectForKeyedSubscript:@"unique_id"];
    [(SFCompanionService *)v4 setServiceType:v6];

    v7 = [v3 objectForKeyedSubscript:@"manager_id"];
    [(SFCompanionService *)v4 setManagerID:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SFCompanionService)initWithServiceName:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SFCompanionService;
  v5 = [(SFCompanionService *)&v17 init];
  v6 = v5;
  if (v5)
  {
    deviceID = v5->_deviceID;
    v5->_deviceID = 0;

    deviceName = v6->_deviceName;
    v6->_deviceName = 0;

    nsxpcVersion = v6->_nsxpcVersion;
    v6->_nsxpcVersion = 0;

    v10 = [nameCopy copy];
    serviceType = v6->_serviceType;
    v6->_serviceType = v10;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v14 = [uUIDString copy];
    identifier = v6->_identifier;
    v6->_identifier = v14;
  }

  return v6;
}

- (id)messageData
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  managerID = self->_managerID;
  if (managerID)
  {
    [dictionary setObject:managerID forKeyedSubscript:@"manager_id"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKeyedSubscript:@"unique_id"];
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v4 setObject:serviceType forKeyedSubscript:@"client_id"];
  }

  v17 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = v9;
    dictionary2 = streams_log();
    if (os_log_type_enabled(dictionary2, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionService *)v10 messageData];
    }

    v12 = 0;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:&unk_1F1D7CD90 forKeyedSubscript:@"message_version"];
    deviceID = self->_deviceID;
    if (deviceID)
    {
      [dictionary2 setObject:deviceID forKeyedSubscript:@"bonjour_name"];
    }

    if (v8)
    {
      [dictionary2 setObject:v8 forKeyedSubscript:@"author_data"];
    }

    v16 = 0;
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary2 format:200 options:0 error:&v16];
    v10 = v16;
    if (v10)
    {
      v14 = streams_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(SFCompanionService *)v10 messageData];
      }
    }
  }

  return v12;
}

- (SFCompanionService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SFCompanionService;
  v5 = [(SFCompanionService *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device_name"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service_name"];
    serviceType = v5->_serviceType;
    v5->_serviceType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device_identifier"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unique_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manager_identifier"];
    managerID = v5->_managerID;
    v5->_managerID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ip_address"];
    v17 = [v16 copy];
    ipAddress = v5->_ipAddress;
    v5->_ipAddress = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"device_name"];
  [coderCopy encodeObject:self->_serviceType forKey:@"service_name"];
  [coderCopy encodeObject:self->_deviceID forKey:@"device_identifier"];
  [coderCopy encodeObject:self->_identifier forKey:@"unique_identifier"];
  [coderCopy encodeObject:self->_managerID forKey:@"manager_identifier"];
  [coderCopy encodeObject:self->_ipAddress forKey:@"ip_address"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    deviceID = [(SFCompanionService *)self deviceID];
    [v4 setDeviceID:deviceID];

    managerID = [(SFCompanionService *)self managerID];
    [v4 setManagerID:managerID];

    ipAddress = [(SFCompanionService *)self ipAddress];
    [v4 setIpAddress:ipAddress];

    deviceName = [(SFCompanionService *)self deviceName];
    [v4 setDeviceName:deviceName];

    identifier = [(SFCompanionService *)self identifier];
    [v4 setIdentifier:identifier];

    serviceType = [(SFCompanionService *)self serviceType];
    [v4 setServiceType:serviceType];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFCompanionService *)self isEqualToService:v5];
  }

  return v6;
}

- (BOOL)isEqualToService:(id)service
{
  serviceCopy = service;
  if (self != serviceCopy)
  {
    identifier = [(SFCompanionService *)self identifier];
    if (identifier || ([(SFCompanionService *)serviceCopy identifier], (deviceID2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [(SFCompanionService *)self identifier];
      identifier3 = [(SFCompanionService *)serviceCopy identifier];
      v9 = [identifier2 isEqualToString:identifier3];

      if (identifier)
      {

        if (!v9)
        {
          goto LABEL_30;
        }
      }

      else
      {

        if ((v9 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    serviceType = [(SFCompanionService *)self serviceType];
    if (serviceType || ([(SFCompanionService *)serviceCopy serviceType], (deviceID2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      serviceType2 = [(SFCompanionService *)self serviceType];
      serviceType3 = [(SFCompanionService *)serviceCopy serviceType];
      v14 = [serviceType2 isEqualToString:serviceType3];

      if (serviceType)
      {

        if (!v14)
        {
          goto LABEL_30;
        }
      }

      else
      {

        if ((v14 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    managerID = [(SFCompanionService *)self managerID];
    if (managerID || ([(SFCompanionService *)serviceCopy managerID], (deviceID2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      managerID2 = [(SFCompanionService *)self managerID];
      managerID3 = [(SFCompanionService *)serviceCopy managerID];
      v18 = [managerID2 isEqualToString:managerID3];

      if (managerID)
      {

        if (!v18)
        {
          goto LABEL_30;
        }
      }

      else
      {

        if ((v18 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    deviceID = [(SFCompanionService *)self deviceID];
    if (!deviceID)
    {
      deviceID2 = [(SFCompanionService *)serviceCopy deviceID];
      if (!deviceID2)
      {
LABEL_25:
        deviceName = [(SFCompanionService *)self deviceName];
        if (deviceName || ([(SFCompanionService *)serviceCopy deviceName], (deviceID2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          deviceName2 = [(SFCompanionService *)self deviceName];
          deviceName3 = [(SFCompanionService *)serviceCopy deviceName];
          v10 = [deviceName2 isEqualToString:deviceName3];

          if (deviceName)
          {
LABEL_34:

            goto LABEL_31;
          }
        }

        else
        {
          v10 = 1;
        }

        goto LABEL_34;
      }
    }

    deviceID3 = [(SFCompanionService *)self deviceID];
    deviceID4 = [(SFCompanionService *)serviceCopy deviceID];
    v22 = [deviceID3 isEqualToString:deviceID4];

    if (deviceID)
    {

      if (v22)
      {
        goto LABEL_25;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_25;
      }
    }

LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  v10 = 1;
LABEL_31:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_serviceType hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_managerID hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_deviceID hash]- v5 + 32 * v5;
  return [(NSString *)self->_deviceName hash]- v6 + 32 * v6 + 28629151;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  serviceType = [(SFCompanionService *)self serviceType];
  deviceName = [(SFCompanionService *)self deviceName];
  deviceID = [(SFCompanionService *)self deviceID];
  managerID = [(SFCompanionService *)self managerID];
  identifier = [(SFCompanionService *)self identifier];
  v9 = [v3 stringWithFormat:@"SFCompanionService (serviceType = %@, deviceName = %@, deviceID = %@, managerID = %@, identifier = %@)", serviceType, deviceName, deviceID, managerID, identifier];

  return v9;
}

- (void)messageData
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Message serialize error = %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end