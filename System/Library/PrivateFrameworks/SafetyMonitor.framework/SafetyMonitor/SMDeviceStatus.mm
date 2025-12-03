@interface SMDeviceStatus
- (SMDeviceStatus)init;
- (SMDeviceStatus)initWithCoder:(id)coder;
- (SMDeviceStatus)initWithDictionary:(id)dictionary;
- (SMDeviceStatus)initWithIdentifier:(id)identifier batteryRemaining:(int64_t)remaining cellularStrength:(unint64_t)strength date:(id)date wifiStrength:(unint64_t)wifiStrength;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMDeviceStatus

- (SMDeviceStatus)init
{
  v3 = objc_opt_new();
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v5 = [(SMDeviceStatus *)self initWithIdentifier:v3 batteryRemaining:0 cellularStrength:0 date:distantPast wifiStrength:0];

  return v5;
}

- (SMDeviceStatus)initWithIdentifier:(id)identifier batteryRemaining:(int64_t)remaining cellularStrength:(unint64_t)strength date:(id)date wifiStrength:(unint64_t)wifiStrength
{
  identifierCopy = identifier;
  dateCopy = date;
  if (identifierCopy)
  {
    v20.receiver = self;
    v20.super_class = SMDeviceStatus;
    v15 = [(SMDeviceStatus *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_identifier, identifier);
      v16->_batteryRemaining = remaining;
      v16->_cellularStrength = strength;
      objc_storeStrong(&v16->_date, date);
      v16->_wifiStrength = wifiStrength;
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SMDeviceStatus)initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CCAD78];
  dictionaryCopy = dictionary;
  uUID = [v4 UUID];
  v7 = [dictionaryCopy valueForKey:@"identifier"];
  v8 = [uUID initWithUUIDString:v7];

  v9 = [dictionaryCopy valueForKey:@"batteryRemaining"];
  integerValue = [v9 integerValue];

  v11 = [dictionaryCopy valueForKey:@"cellularStrength"];
  integerValue2 = [v11 integerValue];

  v13 = [dictionaryCopy valueForKey:@"timeOfCollection"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v15];
  v17 = [dictionaryCopy valueForKey:@"wifiStrength"];

  integerValue3 = [v17 integerValue];
  v19 = [(SMDeviceStatus *)self initWithIdentifier:v8 batteryRemaining:integerValue cellularStrength:integerValue2 date:v16 wifiStrength:integerValue3];

  return v19;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identifier = [(SMDeviceStatus *)self identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMDeviceStatus batteryRemaining](self, "batteryRemaining")}];
  [v3 setObject:v6 forKey:@"batteryRemaining"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMDeviceStatus cellularStrength](self, "cellularStrength")}];
  [v3 setObject:v7 forKey:@"cellularStrength"];

  v8 = MEMORY[0x277CCABB0];
  date = [(SMDeviceStatus *)self date];
  [date timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  [v3 setObject:v10 forKey:@"timeOfCollection"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMDeviceStatus wifiStrength](self, "wifiStrength")}];
  [v3 setObject:v11 forKey:@"wifiStrength"];

  return v3;
}

- (SMDeviceStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeIntegerForKey:@"batteryRemaining"];
  v7 = [coderCopy decodeIntegerForKey:@"cellularStrength"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeOfCollection"];
  v9 = [coderCopy decodeIntegerForKey:@"wifiStrength"];

  v10 = [(SMDeviceStatus *)self initWithIdentifier:v5 batteryRemaining:v6 cellularStrength:v7 date:v8 wifiStrength:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SMDeviceStatus *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[SMDeviceStatus batteryRemaining](self forKey:{"batteryRemaining"), @"batteryRemaining"}];
  [coderCopy encodeInteger:-[SMDeviceStatus cellularStrength](self forKey:{"cellularStrength"), @"cellularStrength"}];
  date = [(SMDeviceStatus *)self date];
  [coderCopy encodeObject:date forKey:@"timeOfCollection"];

  [coderCopy encodeInteger:-[SMDeviceStatus wifiStrength](self forKey:{"wifiStrength"), @"wifiStrength"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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
  identifier = [(SMDeviceStatus *)self identifier];
  batteryRemaining = [(SMDeviceStatus *)self batteryRemaining];
  cellularStrength = [(SMDeviceStatus *)self cellularStrength];
  date = [(SMDeviceStatus *)self date];
  v8 = [v3 stringWithFormat:@"identifier, %@, batteryRemaining, %d, cellularStrength, %d, date, %@, wifiStrength, %d", identifier, batteryRemaining, cellularStrength, date, -[SMDeviceStatus wifiStrength](self, "wifiStrength")];

  return v8;
}

@end