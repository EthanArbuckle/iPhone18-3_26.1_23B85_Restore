@interface TAGeoNavigationNotification
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TAGeoNavigationNotification)initWithCoder:(id)a3;
- (TAGeoNavigationNotification)initWithTransportType:(unint64_t)a3 andNavigationState:(unint64_t)a4 date:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TAGeoNavigationNotification

- (TAGeoNavigationNotification)initWithTransportType:(unint64_t)a3 andNavigationState:(unint64_t)a4 date:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = TAGeoNavigationNotification;
  v9 = [(TAGeoNavigationNotification *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (!v8)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v9->_transportType = a3;
    v9->_navState = a4;
    v11 = [v8 copy];
    date = v10->_date;
    v10->_date = v11;
  }

  v13 = v10;
LABEL_6:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(TAGeoNavigationNotification *)self transportType];
  v4 = [(TAGeoNavigationNotification *)self navState]^ v3;
  v5 = [(TAGeoNavigationNotification *)self date];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TAGeoNavigationNotification *)self transportType];
      if (v6 == [(TAGeoNavigationNotification *)v5 transportType]&& (v7 = [(TAGeoNavigationNotification *)self navState], v7 == [(TAGeoNavigationNotification *)v5 navState]))
      {
        v8 = [(TAGeoNavigationNotification *)self date];
        v9 = [(TAGeoNavigationNotification *)v5 date];
        if (v8 == v9)
        {
          v12 = 1;
        }

        else
        {
          v10 = [(TAGeoNavigationNotification *)self date];
          v11 = [(TAGeoNavigationNotification *)v5 date];
          v12 = [v10 isEqual:v11];
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
  v6 = [(TAGeoNavigationNotification *)self navState];
  if (v6 > 2)
  {
    v7 = @"<invalid>";
  }

  else
  {
    v7 = off_279DD1CC8[v6];
  }

  v14[2] = v7;
  v13[3] = @"Date";
  v8 = [(TAGeoNavigationNotification *)self date];
  v9 = [v8 getDateString];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)description
{
  v3 = [(TAGeoNavigationNotification *)self descriptionDictionary];
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

- (TAGeoNavigationNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"TransportType"];
  v6 = [v4 decodeIntegerForKey:@"NavState"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v8 = [(TAGeoNavigationNotification *)self initWithTransportType:v5 andNavigationState:v6 date:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  transportType = self->_transportType;
  v5 = a3;
  [v5 encodeInteger:transportType forKey:@"TransportType"];
  [v5 encodeInteger:self->_navState forKey:@"NavState"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TAGeoNavigationNotification alloc];
  transportType = self->_transportType;
  navState = self->_navState;
  date = self->_date;

  return [(TAGeoNavigationNotification *)v4 initWithTransportType:transportType andNavigationState:navState date:date];
}

@end