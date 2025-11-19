@interface SCSharingReminderSignal
- (BOOL)isEqual:(id)a3;
- (SCSharingReminderSignal)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCSharingReminderSignal

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminderSignal *)self sharingIdentifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(SCSharingReminderSignal *)self sharingType];
  [v4 encodeObject:v6 forKey:@"sharingType"];

  v7 = [(SCSharingReminderSignal *)self signalType];
  [v4 encodeObject:v7 forKey:@"signalType"];
}

- (SCSharingReminderSignal)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SCSharingReminderSignal;
  v5 = [(SCSharingReminderSignal *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    sharingIdentifier = v5->_sharingIdentifier;
    v5->_sharingIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingType"];
    sharingType = v5->_sharingType;
    v5->_sharingType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signalType"];
    signalType = v5->_signalType;
    v5->_signalType = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCSharingReminderSignal *)v5 sharingIdentifier];
      v7 = [(SCSharingReminderSignal *)self sharingIdentifier];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(SCSharingReminderSignal *)v5 sharingType];
        v9 = [(SCSharingReminderSignal *)self sharingType];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(SCSharingReminderSignal *)v5 signalType];
          v11 = [(SCSharingReminderSignal *)self signalType];
          v12 = [v10 isEqual:v11];
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

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end