@interface TAMultiPartStatus
- (NSString)description;
- (TAMultiPartStatus)initWithCoder:(id)coder;
- (TAMultiPartStatus)initWithUUID:(id)d relationStatus:(unsigned __int8)status maintenanceStatus:(unsigned __int8)maintenanceStatus date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAMultiPartStatus

- (TAMultiPartStatus)initWithUUID:(id)d relationStatus:(unsigned __int8)status maintenanceStatus:(unsigned __int8)maintenanceStatus date:(id)date
{
  dCopy = d;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = TAMultiPartStatus;
  v12 = [(TAMultiPartStatus *)&v19 init];
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = 0;
  if (dCopy && dateCopy)
  {
    v14 = [dCopy copy];
    uuid = v12->_uuid;
    v12->_uuid = v14;

    v12->_relationStatus = status;
    v12->_maintenanceStatus = maintenanceStatus;
    v16 = [dateCopy copy];
    date = v12->_date;
    v12->_date = v16;

LABEL_5:
    v13 = v12;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeInteger:self->_relationStatus forKey:@"relationStatus"];
  [coderCopy encodeInteger:self->_maintenanceStatus forKey:@"maintenanceStatus"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
}

- (TAMultiPartStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [coderCopy decodeIntegerForKey:@"relationStatus"];
  v7 = [coderCopy decodeIntegerForKey:@"maintenanceStatus"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v9 = [(TAMultiPartStatus *)self initWithUUID:v5 relationStatus:v6 maintenanceStatus:v7 date:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TAMultiPartStatus alloc];
  relationStatus = self->_relationStatus;
  maintenanceStatus = self->_maintenanceStatus;
  uuid = self->_uuid;
  date = self->_date;

  return [(TAMultiPartStatus *)v4 initWithUUID:uuid relationStatus:relationStatus maintenanceStatus:maintenanceStatus date:date];
}

- (NSString)description
{
  descriptionDictionary = [(TAMultiPartStatus *)self descriptionDictionary];
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

- (id)descriptionDictionary
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v15[0] = v4;
  v14[1] = @"uuid";
  uuid = [(TAMultiPartStatus *)self uuid];
  uUIDString = [uuid UUIDString];
  v15[1] = uUIDString;
  v14[2] = @"relationStatus";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[TAMultiPartStatus relationStatus](self, "relationStatus")}];
  v15[2] = v7;
  v14[3] = @"maintenanceStatus";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[TAMultiPartStatus maintenanceStatus](self, "maintenanceStatus")}];
  v15[3] = v8;
  v14[4] = @"date";
  date = [(TAMultiPartStatus *)self date];
  getDateString = [date getDateString];
  v15[4] = getDateString;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end