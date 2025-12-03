@interface TAVehicleStateNotification
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TAVehicleStateNotification)initWithCoder:(id)coder;
- (TAVehicleStateNotification)initWithVehicularState:(unint64_t)state andVehicularHints:(unint64_t)hints andOperatorState:(unint64_t)operatorState date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TAVehicleStateNotification

- (TAVehicleStateNotification)initWithVehicularState:(unint64_t)state andVehicularHints:(unint64_t)hints andOperatorState:(unint64_t)operatorState date:(id)date
{
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = TAVehicleStateNotification;
  v11 = [(TAVehicleStateNotification *)&v17 init];
  v12 = v11;
  if (v11)
  {
    if (!dateCopy)
    {
      v15 = 0;
      goto LABEL_6;
    }

    v11->_vehicularHints = hints;
    v11->_operatorState = operatorState;
    v11->_vehicularState = state;
    v13 = [dateCopy copy];
    date = v12->_date;
    v12->_date = v13;
  }

  v15 = v12;
LABEL_6:

  return v15;
}

- (unint64_t)hash
{
  vehicularState = [(TAVehicleStateNotification *)self vehicularState];
  v4 = [(TAVehicleStateNotification *)self vehicularHints]^ vehicularState;
  v5 = v4 ^ [(TAVehicleStateNotification *)self operatorState];
  date = [(TAVehicleStateNotification *)self date];
  v7 = [date hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      vehicularState = [(TAVehicleStateNotification *)self vehicularState];
      if (vehicularState == [(TAVehicleStateNotification *)v5 vehicularState]&& (v7 = [(TAVehicleStateNotification *)self vehicularHints], v7 == [(TAVehicleStateNotification *)v5 vehicularHints]) && (v8 = [(TAVehicleStateNotification *)self operatorState], v8 == [(TAVehicleStateNotification *)v5 operatorState]))
      {
        date = [(TAVehicleStateNotification *)self date];
        date2 = [(TAVehicleStateNotification *)v5 date];
        if (date == date2)
        {
          v13 = 1;
        }

        else
        {
          date3 = [(TAVehicleStateNotification *)self date];
          date4 = [(TAVehicleStateNotification *)v5 date];
          v13 = [date3 isEqual:date4];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)descriptionDictionary
{
  v21[10] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v21[0] = v4;
  v5 = [(TAVehicleStateNotification *)self vehicularState:@"EventType"];
  if (v5 > 2)
  {
    v6 = @"Invalid";
  }

  else
  {
    v6 = off_279DD1C20[v5];
  }

  v21[1] = v6;
  v20[2] = @"VehicularHints";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVehicleStateNotification vehicularHints](self, "vehicularHints")}];
  v21[2] = v7;
  v20[3] = @"MotionHint";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[TAVehicleStateNotification vehicularHints](self, "vehicularHints") & 1}];
  v21[3] = v8;
  v20[4] = @"GPSHint";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{(-[TAVehicleStateNotification vehicularHints](self, "vehicularHints") >> 1) & 1}];
  v21[4] = v9;
  v20[5] = @"BasebandHint";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{(-[TAVehicleStateNotification vehicularHints](self, "vehicularHints") >> 2) & 1}];
  v21[5] = v10;
  v20[6] = @"WifiHint";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:{(-[TAVehicleStateNotification vehicularHints](self, "vehicularHints") >> 3) & 1}];
  v21[6] = v11;
  v20[7] = @"BTHint";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:{(-[TAVehicleStateNotification vehicularHints](self, "vehicularHints") >> 4) & 1}];
  v21[7] = v12;
  v20[8] = @"OperatorState";
  operatorState = [(TAVehicleStateNotification *)self operatorState];
  if (operatorState > 2)
  {
    v14 = @"Invalid";
  }

  else
  {
    v14 = off_279DD1C38[operatorState];
  }

  v21[8] = v14;
  v20[9] = @"Date";
  date = [(TAVehicleStateNotification *)self date];
  getDateString = [date getDateString];
  v21[9] = getDateString;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:10];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSString)description
{
  descriptionDictionary = [(TAVehicleStateNotification *)self descriptionDictionary];
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

- (TAVehicleStateNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"VehicularState"];
  v6 = [coderCopy decodeIntegerForKey:@"VehicularHints"];
  v7 = [coderCopy decodeIntegerForKey:@"OperatorState"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v9 = [(TAVehicleStateNotification *)self initWithVehicularState:v5 andVehicularHints:v6 andOperatorState:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  vehicularState = self->_vehicularState;
  coderCopy = coder;
  [coderCopy encodeInteger:vehicularState forKey:@"VehicularState"];
  [coderCopy encodeInteger:self->_vehicularHints forKey:@"VehicularHints"];
  [coderCopy encodeInteger:self->_operatorState forKey:@"OperatorState"];
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
  v4 = [TAVehicleStateNotification alloc];
  vehicularHints = self->_vehicularHints;
  operatorState = self->_operatorState;
  date = self->_date;
  vehicularState = self->_vehicularState;

  return [(TAVehicleStateNotification *)v4 initWithVehicularState:vehicularState andVehicularHints:vehicularHints andOperatorState:operatorState date:date];
}

@end