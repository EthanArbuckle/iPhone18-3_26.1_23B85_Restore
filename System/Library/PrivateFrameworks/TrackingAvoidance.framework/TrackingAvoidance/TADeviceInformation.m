@interface TADeviceInformation
+ (id)deviceTypeToString:(unint64_t)a3;
+ (id)notificationStateToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TADeviceInformation)initWithCoder:(id)a3;
- (TADeviceInformation)initWithTASPAdvertisement:(id)a3 deviceType:(unint64_t)a4 notificationState:(unint64_t)a5 date:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TADeviceInformation

- (TADeviceInformation)initWithTASPAdvertisement:(id)a3 deviceType:(unint64_t)a4 notificationState:(unint64_t)a5 date:(id)a6
{
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = TADeviceInformation;
  v12 = [(TADeviceInformation *)&v19 init];
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = 0;
  if (v10 && v11)
  {
    v14 = [v10 copy];
    advertisement = v12->_advertisement;
    v12->_advertisement = v14;

    v12->_deviceType = a4;
    v12->_notificationState = a5;
    v16 = [v11 copy];
    date = v12->_date;
    v12->_date = v16;

LABEL_5:
    v13 = v12;
  }

  return v13;
}

+ (id)deviceTypeToString:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1C50[a3];
  }
}

+ (id)notificationStateToString:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1C78[a3];
  }
}

- (unint64_t)hash
{
  v3 = [(TADeviceInformation *)self advertisement];
  v4 = [v3 hash];
  v5 = [(TADeviceInformation *)self deviceType];
  v6 = v5 ^ [(TADeviceInformation *)self notificationState]^ v4;
  v7 = [(TADeviceInformation *)self date];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(TADeviceInformation *)self advertisement];
      v9 = [(TADeviceInformation *)v7 advertisement];
      if (v8 == v9 || (-[TADeviceInformation advertisement](self, "advertisement"), v3 = objc_claimAutoreleasedReturnValue(), -[TADeviceInformation advertisement](v7, "advertisement"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(TADeviceInformation *)self deviceType];
        if (v11 == [(TADeviceInformation *)v7 deviceType]&& (v12 = [(TADeviceInformation *)self notificationState], v12 == [(TADeviceInformation *)v7 notificationState]))
        {
          v13 = [(TADeviceInformation *)self date];
          v14 = [(TADeviceInformation *)v7 date];
          v15 = v14;
          if (v13 == v14)
          {

            v10 = 1;
          }

          else
          {
            v16 = [(TADeviceInformation *)self date];
            [(TADeviceInformation *)v7 date];
            v17 = v19 = v13;
            v10 = [v16 isEqual:v17];
          }
        }

        else
        {
          v10 = 0;
        }

        if (v8 == v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_15:
      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (id)descriptionDictionary
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v15[0] = v4;
  v14[1] = @"Advertisement";
  v5 = [(TADeviceInformation *)self advertisement];
  v6 = [v5 descriptionDictionary];
  v15[1] = v6;
  v14[2] = @"DeviceType";
  v7 = [TADeviceInformation deviceTypeToString:self->_deviceType];
  v15[2] = v7;
  v14[3] = @"NotificationState";
  v8 = [TADeviceInformation notificationStateToString:self->_notificationState];
  v15[3] = v8;
  v14[4] = @"Date";
  v9 = [(TADeviceInformation *)self date];
  v10 = [v9 getDateString];
  v15[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSString)description
{
  v3 = [(TADeviceInformation *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TADeviceInformation alloc];
  advertisement = self->_advertisement;
  deviceType = self->_deviceType;
  notificationState = self->_notificationState;
  date = self->_date;

  return [(TADeviceInformation *)v4 initWithTASPAdvertisement:advertisement deviceType:deviceType notificationState:notificationState date:date];
}

- (TADeviceInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Advertisement"];
  v6 = [v4 decodeIntegerForKey:@"DeviceType"];
  v7 = [v4 decodeIntegerForKey:@"NotificationState"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v9 = [(TADeviceInformation *)self initWithTASPAdvertisement:v5 deviceType:v6 notificationState:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  advertisement = self->_advertisement;
  v5 = a3;
  [v5 encodeObject:advertisement forKey:@"Advertisement"];
  [v5 encodeInteger:self->_deviceType forKey:@"DeviceType"];
  [v5 encodeInteger:self->_notificationState forKey:@"NotificationState"];
  [v5 encodeObject:self->_date forKey:@"Date"];
}

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

@end