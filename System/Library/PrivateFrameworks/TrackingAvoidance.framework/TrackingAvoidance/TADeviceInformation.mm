@interface TADeviceInformation
+ (id)deviceTypeToString:(unint64_t)string;
+ (id)notificationStateToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TADeviceInformation)initWithCoder:(id)coder;
- (TADeviceInformation)initWithTASPAdvertisement:(id)advertisement deviceType:(unint64_t)type notificationState:(unint64_t)state date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TADeviceInformation

- (TADeviceInformation)initWithTASPAdvertisement:(id)advertisement deviceType:(unint64_t)type notificationState:(unint64_t)state date:(id)date
{
  advertisementCopy = advertisement;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = TADeviceInformation;
  v12 = [(TADeviceInformation *)&v19 init];
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = 0;
  if (advertisementCopy && dateCopy)
  {
    v14 = [advertisementCopy copy];
    advertisement = v12->_advertisement;
    v12->_advertisement = v14;

    v12->_deviceType = type;
    v12->_notificationState = state;
    v16 = [dateCopy copy];
    date = v12->_date;
    v12->_date = v16;

LABEL_5:
    v13 = v12;
  }

  return v13;
}

+ (id)deviceTypeToString:(unint64_t)string
{
  if (string > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1C50[string];
  }
}

+ (id)notificationStateToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1C78[string];
  }
}

- (unint64_t)hash
{
  advertisement = [(TADeviceInformation *)self advertisement];
  v4 = [advertisement hash];
  deviceType = [(TADeviceInformation *)self deviceType];
  v6 = deviceType ^ [(TADeviceInformation *)self notificationState]^ v4;
  date = [(TADeviceInformation *)self date];
  v8 = [date hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      advertisement = [(TADeviceInformation *)self advertisement];
      advertisement2 = [(TADeviceInformation *)v7 advertisement];
      if (advertisement == advertisement2 || (-[TADeviceInformation advertisement](self, "advertisement"), v3 = objc_claimAutoreleasedReturnValue(), -[TADeviceInformation advertisement](v7, "advertisement"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        deviceType = [(TADeviceInformation *)self deviceType];
        if (deviceType == [(TADeviceInformation *)v7 deviceType]&& (v12 = [(TADeviceInformation *)self notificationState], v12 == [(TADeviceInformation *)v7 notificationState]))
        {
          date = [(TADeviceInformation *)self date];
          date2 = [(TADeviceInformation *)v7 date];
          v15 = date2;
          if (date == date2)
          {

            v10 = 1;
          }

          else
          {
            date3 = [(TADeviceInformation *)self date];
            [(TADeviceInformation *)v7 date];
            v17 = v19 = date;
            v10 = [date3 isEqual:v17];
          }
        }

        else
        {
          v10 = 0;
        }

        if (advertisement == advertisement2)
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
  advertisement = [(TADeviceInformation *)self advertisement];
  descriptionDictionary = [advertisement descriptionDictionary];
  v15[1] = descriptionDictionary;
  v14[2] = @"DeviceType";
  v7 = [TADeviceInformation deviceTypeToString:self->_deviceType];
  v15[2] = v7;
  v14[3] = @"NotificationState";
  v8 = [TADeviceInformation notificationStateToString:self->_notificationState];
  v15[3] = v8;
  v14[4] = @"Date";
  date = [(TADeviceInformation *)self date];
  getDateString = [date getDateString];
  v15[4] = getDateString;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSString)description
{
  descriptionDictionary = [(TADeviceInformation *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TADeviceInformation alloc];
  advertisement = self->_advertisement;
  deviceType = self->_deviceType;
  notificationState = self->_notificationState;
  date = self->_date;

  return [(TADeviceInformation *)v4 initWithTASPAdvertisement:advertisement deviceType:deviceType notificationState:notificationState date:date];
}

- (TADeviceInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Advertisement"];
  v6 = [coderCopy decodeIntegerForKey:@"DeviceType"];
  v7 = [coderCopy decodeIntegerForKey:@"NotificationState"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v9 = [(TADeviceInformation *)self initWithTASPAdvertisement:v5 deviceType:v6 notificationState:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  advertisement = self->_advertisement;
  coderCopy = coder;
  [coderCopy encodeObject:advertisement forKey:@"Advertisement"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"DeviceType"];
  [coderCopy encodeInteger:self->_notificationState forKey:@"NotificationState"];
  [coderCopy encodeObject:self->_date forKey:@"Date"];
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

@end