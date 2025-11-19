@interface SCSharingReminder
- (BOOL)isEqual:(id)a3;
- (SCSharingReminder)initWithCoder:(id)a3;
- (SCSharingReminder)initWithIdentifier:(id)a3 displayName:(id)a4 type:(id)a5 deliverAfter:(double)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCSharingReminder

- (SCSharingReminder)initWithIdentifier:(id)a3 displayName:(id)a4 type:(id)a5 deliverAfter:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = SCSharingReminder;
  v14 = [(SCSharingReminder *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, a3);
    objc_storeStrong(&v15->_displayName, a4);
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a6];
    scheduledDate = v15->_scheduledDate;
    v15->_scheduledDate = v16;

    objc_storeStrong(&v15->_type, a5);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminder *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(SCSharingReminder *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(SCSharingReminder *)self scheduledDate];
  [v4 encodeObject:v7 forKey:@"scheduledDate"];

  v8 = [(SCSharingReminder *)self type];
  [v4 encodeObject:v8 forKey:@"type"];
}

- (SCSharingReminder)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SCSharingReminder;
  v5 = [(SCSharingReminder *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v12;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCSharingReminder *)v5 identifier];
      v7 = [(SCSharingReminder *)self identifier];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(SCSharingReminder *)v5 type];
        v9 = [(SCSharingReminder *)self type];
        if ([v8 isEqualToString:v9])
        {
          v10 = [MEMORY[0x277CBEA80] currentCalendar];
          v11 = [(SCSharingReminder *)v5 scheduledDate];
          v12 = [(SCSharingReminder *)self scheduledDate];
          v13 = [v10 isDate:v11 inSameDayAsDate:v12];
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

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [(SCSharingReminder *)self scheduledDate];
  v5 = [v3 components:28 fromDate:v4];

  v6 = [(SCSharingReminder *)self identifier];
  v7 = [v6 hash];
  v8 = [(SCSharingReminder *)self type];
  v9 = [v8 hash] ^ v7;
  v10 = [v5 hash];

  return v9 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCSharingReminder *)self identifier];
  v5 = [(SCSharingReminder *)self displayName];
  v6 = [(SCSharingReminder *)self type];
  v7 = [(SCSharingReminder *)self scheduledDate];
  v8 = localizedDateStringFromUTC(v7);
  v9 = [v3 stringWithFormat:@"%@ %@ [%@] scheduled: %@", v4, v5, v6, v8];

  return v9;
}

@end