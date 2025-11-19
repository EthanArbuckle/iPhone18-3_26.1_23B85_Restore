@interface TAVehicleStateNotification
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TAVehicleStateNotification)initWithCoder:(id)a3;
- (TAVehicleStateNotification)initWithVehicularState:(unint64_t)a3 andVehicularHints:(unint64_t)a4 andOperatorState:(unint64_t)a5 date:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation TAVehicleStateNotification

- (TAVehicleStateNotification)initWithVehicularState:(unint64_t)a3 andVehicularHints:(unint64_t)a4 andOperatorState:(unint64_t)a5 date:(id)a6
{
  v10 = a6;
  v17.receiver = self;
  v17.super_class = TAVehicleStateNotification;
  v11 = [(TAVehicleStateNotification *)&v17 init];
  v12 = v11;
  if (v11)
  {
    if (!v10)
    {
      v15 = 0;
      goto LABEL_6;
    }

    v11->_vehicularHints = a4;
    v11->_operatorState = a5;
    v11->_vehicularState = a3;
    v13 = [v10 copy];
    date = v12->_date;
    v12->_date = v13;
  }

  v15 = v12;
LABEL_6:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(TAVehicleStateNotification *)self vehicularState];
  v4 = [(TAVehicleStateNotification *)self vehicularHints]^ v3;
  v5 = v4 ^ [(TAVehicleStateNotification *)self operatorState];
  v6 = [(TAVehicleStateNotification *)self date];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TAVehicleStateNotification *)self vehicularState];
      if (v6 == [(TAVehicleStateNotification *)v5 vehicularState]&& (v7 = [(TAVehicleStateNotification *)self vehicularHints], v7 == [(TAVehicleStateNotification *)v5 vehicularHints]) && (v8 = [(TAVehicleStateNotification *)self operatorState], v8 == [(TAVehicleStateNotification *)v5 operatorState]))
      {
        v9 = [(TAVehicleStateNotification *)self date];
        v10 = [(TAVehicleStateNotification *)v5 date];
        if (v9 == v10)
        {
          v13 = 1;
        }

        else
        {
          v11 = [(TAVehicleStateNotification *)self date];
          v12 = [(TAVehicleStateNotification *)v5 date];
          v13 = [v11 isEqual:v12];
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
  v13 = [(TAVehicleStateNotification *)self operatorState];
  if (v13 > 2)
  {
    v14 = @"Invalid";
  }

  else
  {
    v14 = off_279DD1C38[v13];
  }

  v21[8] = v14;
  v20[9] = @"Date";
  v15 = [(TAVehicleStateNotification *)self date];
  v16 = [v15 getDateString];
  v21[9] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:10];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSString)description
{
  v3 = [(TAVehicleStateNotification *)self descriptionDictionary];
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

- (TAVehicleStateNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"VehicularState"];
  v6 = [v4 decodeIntegerForKey:@"VehicularHints"];
  v7 = [v4 decodeIntegerForKey:@"OperatorState"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];

  v9 = [(TAVehicleStateNotification *)self initWithVehicularState:v5 andVehicularHints:v6 andOperatorState:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  vehicularState = self->_vehicularState;
  v5 = a3;
  [v5 encodeInteger:vehicularState forKey:@"VehicularState"];
  [v5 encodeInteger:self->_vehicularHints forKey:@"VehicularHints"];
  [v5 encodeInteger:self->_operatorState forKey:@"OperatorState"];
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
  v4 = [TAVehicleStateNotification alloc];
  vehicularHints = self->_vehicularHints;
  operatorState = self->_operatorState;
  date = self->_date;
  vehicularState = self->_vehicularState;

  return [(TAVehicleStateNotification *)v4 initWithVehicularState:vehicularState andVehicularHints:vehicularHints andOperatorState:operatorState date:date];
}

@end