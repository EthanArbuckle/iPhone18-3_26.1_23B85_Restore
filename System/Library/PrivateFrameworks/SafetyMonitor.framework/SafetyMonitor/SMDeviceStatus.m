@interface SMDeviceStatus
- (SMDeviceStatus)init;
- (SMDeviceStatus)initWithCoder:(id)a3;
- (SMDeviceStatus)initWithDictionary:(id)a3;
- (SMDeviceStatus)initWithIdentifier:(id)a3 batteryRemaining:(int64_t)a4 cellularStrength:(unint64_t)a5 date:(id)a6 wifiStrength:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMDeviceStatus

- (SMDeviceStatus)init
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v5 = [(SMDeviceStatus *)self initWithIdentifier:v3 batteryRemaining:0 cellularStrength:0 date:v4 wifiStrength:0];

  return v5;
}

- (SMDeviceStatus)initWithIdentifier:(id)a3 batteryRemaining:(int64_t)a4 cellularStrength:(unint64_t)a5 date:(id)a6 wifiStrength:(unint64_t)a7
{
  v13 = a3;
  v14 = a6;
  if (v13)
  {
    v20.receiver = self;
    v20.super_class = SMDeviceStatus;
    v15 = [(SMDeviceStatus *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_identifier, a3);
      v16->_batteryRemaining = a4;
      v16->_cellularStrength = a5;
      objc_storeStrong(&v16->_date, a6);
      v16->_wifiStrength = a7;
    }

    self = v16;
    v17 = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (SMDeviceStatus)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v5 valueForKey:@"identifier"];
  v8 = [v6 initWithUUIDString:v7];

  v9 = [v5 valueForKey:@"batteryRemaining"];
  v10 = [v9 integerValue];

  v11 = [v5 valueForKey:@"cellularStrength"];
  v12 = [v11 integerValue];

  v13 = [v5 valueForKey:@"timeOfCollection"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v15];
  v17 = [v5 valueForKey:@"wifiStrength"];

  v18 = [v17 integerValue];
  v19 = [(SMDeviceStatus *)self initWithIdentifier:v8 batteryRemaining:v10 cellularStrength:v12 date:v16 wifiStrength:v18];

  return v19;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(SMDeviceStatus *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMDeviceStatus batteryRemaining](self, "batteryRemaining")}];
  [v3 setObject:v6 forKey:@"batteryRemaining"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMDeviceStatus cellularStrength](self, "cellularStrength")}];
  [v3 setObject:v7 forKey:@"cellularStrength"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(SMDeviceStatus *)self date];
  [v9 timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  [v3 setObject:v10 forKey:@"timeOfCollection"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMDeviceStatus wifiStrength](self, "wifiStrength")}];
  [v3 setObject:v11 forKey:@"wifiStrength"];

  return v3;
}

- (SMDeviceStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeIntegerForKey:@"batteryRemaining"];
  v7 = [v4 decodeIntegerForKey:@"cellularStrength"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeOfCollection"];
  v9 = [v4 decodeIntegerForKey:@"wifiStrength"];

  v10 = [(SMDeviceStatus *)self initWithIdentifier:v5 batteryRemaining:v6 cellularStrength:v7 date:v8 wifiStrength:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(SMDeviceStatus *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  [v6 encodeInteger:-[SMDeviceStatus batteryRemaining](self forKey:{"batteryRemaining"), @"batteryRemaining"}];
  [v6 encodeInteger:-[SMDeviceStatus cellularStrength](self forKey:{"cellularStrength"), @"cellularStrength"}];
  v5 = [(SMDeviceStatus *)self date];
  [v6 encodeObject:v5 forKey:@"timeOfCollection"];

  [v6 encodeInteger:-[SMDeviceStatus wifiStrength](self forKey:{"wifiStrength"), @"wifiStrength"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  batteryRemaining = self->_batteryRemaining;
  cellularStrength = self->_cellularStrength;
  date = self->_date;
  wifiStrength = self->_wifiStrength;

  return [v4 initWithIdentifier:identifier batteryRemaining:batteryRemaining cellularStrength:cellularStrength date:date wifiStrength:wifiStrength];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMDeviceStatus *)self identifier];
  v5 = [(SMDeviceStatus *)self batteryRemaining];
  v6 = [(SMDeviceStatus *)self cellularStrength];
  v7 = [(SMDeviceStatus *)self date];
  v8 = [v3 stringWithFormat:@"identifier, %@, batteryRemaining, %d, cellularStrength, %d, date, %@, wifiStrength, %d", v4, v5, v6, v7, -[SMDeviceStatus wifiStrength](self, "wifiStrength")];

  return v8;
}

@end