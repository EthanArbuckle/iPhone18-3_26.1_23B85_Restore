@interface TAMultiPartStatus
- (NSString)description;
- (TAMultiPartStatus)initWithCoder:(id)a3;
- (TAMultiPartStatus)initWithUUID:(id)a3 relationStatus:(unsigned __int8)a4 maintenanceStatus:(unsigned __int8)a5 date:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAMultiPartStatus

- (TAMultiPartStatus)initWithUUID:(id)a3 relationStatus:(unsigned __int8)a4 maintenanceStatus:(unsigned __int8)a5 date:(id)a6
{
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = TAMultiPartStatus;
  v12 = [(TAMultiPartStatus *)&v19 init];
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = 0;
  if (v10 && v11)
  {
    v14 = [v10 copy];
    uuid = v12->_uuid;
    v12->_uuid = v14;

    v12->_relationStatus = a4;
    v12->_maintenanceStatus = a5;
    v16 = [v11 copy];
    date = v12->_date;
    v12->_date = v16;

LABEL_5:
    v13 = v12;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeInteger:self->_relationStatus forKey:@"relationStatus"];
  [v5 encodeInteger:self->_maintenanceStatus forKey:@"maintenanceStatus"];
  [v5 encodeObject:self->_date forKey:@"date"];
}

- (TAMultiPartStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [v4 decodeIntegerForKey:@"relationStatus"];
  v7 = [v4 decodeIntegerForKey:@"maintenanceStatus"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v9 = [(TAMultiPartStatus *)self initWithUUID:v5 relationStatus:v6 maintenanceStatus:v7 date:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v3 = [(TAMultiPartStatus *)self descriptionDictionary];
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

- (id)descriptionDictionary
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"EventType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v15[0] = v4;
  v14[1] = @"uuid";
  v5 = [(TAMultiPartStatus *)self uuid];
  v6 = [v5 UUIDString];
  v15[1] = v6;
  v14[2] = @"relationStatus";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[TAMultiPartStatus relationStatus](self, "relationStatus")}];
  v15[2] = v7;
  v14[3] = @"maintenanceStatus";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[TAMultiPartStatus maintenanceStatus](self, "maintenanceStatus")}];
  v15[3] = v8;
  v14[4] = @"date";
  v9 = [(TAMultiPartStatus *)self date];
  v10 = [v9 getDateString];
  v15[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end