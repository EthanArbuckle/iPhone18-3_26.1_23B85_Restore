@interface SCSharingReminder
- (BOOL)isEqual:(id)equal;
- (SCSharingReminder)initWithCoder:(id)coder;
- (SCSharingReminder)initWithIdentifier:(id)identifier displayName:(id)name type:(id)type deliverAfter:(double)after;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCSharingReminder

- (SCSharingReminder)initWithIdentifier:(id)identifier displayName:(id)name type:(id)type deliverAfter:(double)after
{
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = SCSharingReminder;
  v14 = [(SCSharingReminder *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_displayName, name);
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:after];
    scheduledDate = v15->_scheduledDate;
    v15->_scheduledDate = v16;

    objc_storeStrong(&v15->_type, type);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SCSharingReminder *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(SCSharingReminder *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  scheduledDate = [(SCSharingReminder *)self scheduledDate];
  [coderCopy encodeObject:scheduledDate forKey:@"scheduledDate"];

  type = [(SCSharingReminder *)self type];
  [coderCopy encodeObject:type forKey:@"type"];
}

- (SCSharingReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SCSharingReminder;
  v5 = [(SCSharingReminder *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledDate"];
    scheduledDate = v5->_scheduledDate;
    v5->_scheduledDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v12;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SCSharingReminder *)v5 identifier];
      identifier2 = [(SCSharingReminder *)self identifier];
      if ([identifier isEqualToString:identifier2])
      {
        type = [(SCSharingReminder *)v5 type];
        type2 = [(SCSharingReminder *)self type];
        if ([type isEqualToString:type2])
        {
          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          scheduledDate = [(SCSharingReminder *)v5 scheduledDate];
          scheduledDate2 = [(SCSharingReminder *)self scheduledDate];
          v13 = [currentCalendar isDate:scheduledDate inSameDayAsDate:scheduledDate2];
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
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  scheduledDate = [(SCSharingReminder *)self scheduledDate];
  v5 = [currentCalendar components:28 fromDate:scheduledDate];

  identifier = [(SCSharingReminder *)self identifier];
  v7 = [identifier hash];
  type = [(SCSharingReminder *)self type];
  v9 = [type hash] ^ v7;
  v10 = [v5 hash];

  return v9 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SCSharingReminder *)self identifier];
  displayName = [(SCSharingReminder *)self displayName];
  type = [(SCSharingReminder *)self type];
  scheduledDate = [(SCSharingReminder *)self scheduledDate];
  v8 = localizedDateStringFromUTC(scheduledDate);
  v9 = [v3 stringWithFormat:@"%@ %@ [%@] scheduled: %@", identifier, displayName, type, v8];

  return v9;
}

@end