@interface SFCompanionService
+ (id)serviceFromAuthorData:(id)a3;
+ (id)serviceFromDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToService:(id)a3;
- (SFCompanionService)initWithCoder:(id)a3;
- (SFCompanionService)initWithServiceName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)messageData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)messageData;
@end

@implementation SFCompanionService

+ (id)serviceFromDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SFCompanionService);
  v5 = [v3 objectForKeyedSubscript:@"ServiceName"];
  [(SFCompanionService *)v4 setServiceType:v5];

  v6 = [v3 objectForKeyedSubscript:@"DeviceID"];
  [(SFCompanionService *)v4 setDeviceID:v6];

  v7 = [v3 objectForKeyedSubscript:@"ServiceIdentifier"];
  [(SFCompanionService *)v4 setIdentifier:v7];

  v8 = [v3 objectForKeyedSubscript:@"DeviceName"];
  [(SFCompanionService *)v4 setDeviceName:v8];

  v9 = [v3 objectForKeyedSubscript:@"ManagerID"];
  [(SFCompanionService *)v4 setManagerID:v9];

  v10 = [v3 objectForKeyedSubscript:@"IPAddress"];

  [(SFCompanionService *)v4 setIpAddress:v10];

  return v4;
}

+ (id)serviceFromAuthorData:(id)a3
{
  v9 = 0;
  v10 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:&v10 error:&v9];
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

- (SFCompanionService)initWithServiceName:(id)a3
{
  v4 = a3;
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

    v10 = [v4 copy];
    serviceType = v6->_serviceType;
    v6->_serviceType = v10;

    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v12 UUIDString];
    v14 = [v13 copy];
    identifier = v6->_identifier;
    v6->_identifier = v14;
  }

  return v6;
}

- (id)messageData
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  managerID = self->_managerID;
  if (managerID)
  {
    [v3 setObject:managerID forKeyedSubscript:@"manager_id"];
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
    v11 = streams_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SFCompanionService *)v10 messageData];
    }

    v12 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    [v11 setObject:&unk_1F1D7CD90 forKeyedSubscript:@"message_version"];
    deviceID = self->_deviceID;
    if (deviceID)
    {
      [v11 setObject:deviceID forKeyedSubscript:@"bonjour_name"];
    }

    if (v8)
    {
      [v11 setObject:v8 forKeyedSubscript:@"author_data"];
    }

    v16 = 0;
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:&v16];
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

- (SFCompanionService)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFCompanionService;
  v5 = [(SFCompanionService *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device_name"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service_name"];
    serviceType = v5->_serviceType;
    v5->_serviceType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device_identifier"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unique_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manager_identifier"];
    managerID = v5->_managerID;
    v5->_managerID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ip_address"];
    v17 = [v16 copy];
    ipAddress = v5->_ipAddress;
    v5->_ipAddress = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v5 = a3;
  [v5 encodeObject:deviceName forKey:@"device_name"];
  [v5 encodeObject:self->_serviceType forKey:@"service_name"];
  [v5 encodeObject:self->_deviceID forKey:@"device_identifier"];
  [v5 encodeObject:self->_identifier forKey:@"unique_identifier"];
  [v5 encodeObject:self->_managerID forKey:@"manager_identifier"];
  [v5 encodeObject:self->_ipAddress forKey:@"ip_address"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(SFCompanionService *)self deviceID];
    [v4 setDeviceID:v5];

    v6 = [(SFCompanionService *)self managerID];
    [v4 setManagerID:v6];

    v7 = [(SFCompanionService *)self ipAddress];
    [v4 setIpAddress:v7];

    v8 = [(SFCompanionService *)self deviceName];
    [v4 setDeviceName:v8];

    v9 = [(SFCompanionService *)self identifier];
    [v4 setIdentifier:v9];

    v10 = [(SFCompanionService *)self serviceType];
    [v4 setServiceType:v10];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFCompanionService *)self isEqualToService:v5];
  }

  return v6;
}

- (BOOL)isEqualToService:(id)a3
{
  v5 = a3;
  if (self != v5)
  {
    v6 = [(SFCompanionService *)self identifier];
    if (v6 || ([(SFCompanionService *)v5 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [(SFCompanionService *)self identifier];
      v8 = [(SFCompanionService *)v5 identifier];
      v9 = [v7 isEqualToString:v8];

      if (v6)
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

    v11 = [(SFCompanionService *)self serviceType];
    if (v11 || ([(SFCompanionService *)v5 serviceType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [(SFCompanionService *)self serviceType];
      v13 = [(SFCompanionService *)v5 serviceType];
      v14 = [v12 isEqualToString:v13];

      if (v11)
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

    v15 = [(SFCompanionService *)self managerID];
    if (v15 || ([(SFCompanionService *)v5 managerID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = [(SFCompanionService *)self managerID];
      v17 = [(SFCompanionService *)v5 managerID];
      v18 = [v16 isEqualToString:v17];

      if (v15)
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

    v19 = [(SFCompanionService *)self deviceID];
    if (!v19)
    {
      v3 = [(SFCompanionService *)v5 deviceID];
      if (!v3)
      {
LABEL_25:
        v23 = [(SFCompanionService *)self deviceName];
        if (v23 || ([(SFCompanionService *)v5 deviceName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v24 = [(SFCompanionService *)self deviceName];
          v25 = [(SFCompanionService *)v5 deviceName];
          v10 = [v24 isEqualToString:v25];

          if (v23)
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

    v20 = [(SFCompanionService *)self deviceID];
    v21 = [(SFCompanionService *)v5 deviceID];
    v22 = [v20 isEqualToString:v21];

    if (v19)
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
  v4 = [(SFCompanionService *)self serviceType];
  v5 = [(SFCompanionService *)self deviceName];
  v6 = [(SFCompanionService *)self deviceID];
  v7 = [(SFCompanionService *)self managerID];
  v8 = [(SFCompanionService *)self identifier];
  v9 = [v3 stringWithFormat:@"SFCompanionService (serviceType = %@, deviceName = %@, deviceID = %@, managerID = %@, identifier = %@)", v4, v5, v6, v7, v8];

  return v9;
}

- (void)messageData
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Message serialize error = %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end