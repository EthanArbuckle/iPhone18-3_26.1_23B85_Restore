@interface TAGeoNavigationNotification
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TAGeoNavigationNotification)initWithCoder:(id)coder;
- (TAGeoNavigationNotification)initWithTransportType:(unint64_t)type andNavigationState:(unint64_t)state date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TAGeoNavigationNotification

- (TAGeoNavigationNotification)initWithTransportType:(unint64_t)type andNavigationState:(unint64_t)state date:(id)date
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = TAGeoNavigationNotification;
  v9 = [(TAGeoNavigationNotification *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (!dateCopy)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v9->_transportType = type;
    v9->_navState = state;
    v11 = [dateCopy copy];
    date = v10->_date;
    v10->_date = v11;
  }

  v13 = v10;
LABEL_6:

  return v13;
}

- (unint64_t)hash
{
  transportType = [(TAGeoNavigationNotification *)self transportType];
  v4 = [(TAGeoNavigationNotification *)self navState]^ transportType;
  date = [(TAGeoNavigationNotification *)self date];
  v6 = [date hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      transportType = [(TAGeoNavigationNotification *)self transportType];
      if (transportType == [(TAGeoNavigationNotification *)v5 transportType]&& (v7 = [(TAGeoNavigationNotification *)self navState], v7 == [(TAGeoNavigationNotification *)v5 navState]))
      {
        date = [(TAGeoNavigationNotification *)self date];
        date2 = [(TAGeoNavigationNotification *)v5 date];
        if (date == date2)
        {
          v12 = 1;
        }

        else
        {
          date3 = [(TAGeoNavigationNotification *)self date];
          date4 = [(TAGeoNavigationNotification *)v5 date];
          v12 = [date3 isEqual:date4];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)descriptionDictionary
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v14[0] = v4;
  v13[1] = @"TransportType";
  v5 = TAGeoTransportTypeToString([(TAGeoNavigationNotification *)self transportType]);
  v14[1] = v5;
  v13[2] = @"NavState";
  navState = [(TAGeoNavigationNotification *)self navState];
  if (navState > 2)
  {
    v7 = @"<invalid>";
  }

  else
  {
    v7 = off_279DD1CC8[navState];
  }

  v14[2] = v7;
  v13[3] = @"Date";
  date = [(TAGeoNavigationNotification *)self date];
  getDateString = [date getDateString];
  v14[3] = getDateString;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)description
{
  descriptionDictionary = [(TAGeoNavigationNotification *)self descriptionDictionary];
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

- (TAGeoNavigationNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"TransportType"];
  v6 = [coderCopy decodeIntegerForKey:@"NavState"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v8 = [(TAGeoNavigationNotification *)self initWithTransportType:v5 andNavigationState:v6 date:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  transportType = self->_transportType;
  coderCopy = coder;
  [coderCopy encodeInteger:transportType forKey:@"TransportType"];
  [coderCopy encodeInteger:self->_navState forKey:@"NavState"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TAGeoNavigationNotification alloc];
  transportType = self->_transportType;
  navState = self->_navState;
  date = self->_date;

  return [(TAGeoNavigationNotification *)v4 initWithTransportType:transportType andNavigationState:navState date:date];
}

@end