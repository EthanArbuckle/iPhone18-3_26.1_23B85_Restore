@interface SCSharingReminderSignal
- (BOOL)isEqual:(id)equal;
- (SCSharingReminderSignal)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCSharingReminderSignal

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sharingIdentifier = [(SCSharingReminderSignal *)self sharingIdentifier];
  [coderCopy encodeObject:sharingIdentifier forKey:@"identifier"];

  sharingType = [(SCSharingReminderSignal *)self sharingType];
  [coderCopy encodeObject:sharingType forKey:@"sharingType"];

  signalType = [(SCSharingReminderSignal *)self signalType];
  [coderCopy encodeObject:signalType forKey:@"signalType"];
}

- (SCSharingReminderSignal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SCSharingReminderSignal;
  v5 = [(SCSharingReminderSignal *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    sharingIdentifier = v5->_sharingIdentifier;
    v5->_sharingIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingType"];
    sharingType = v5->_sharingType;
    v5->_sharingType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signalType"];
    signalType = v5->_signalType;
    v5->_signalType = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sharingIdentifier = [(SCSharingReminderSignal *)v5 sharingIdentifier];
      sharingIdentifier2 = [(SCSharingReminderSignal *)self sharingIdentifier];
      if ([sharingIdentifier isEqualToString:sharingIdentifier2])
      {
        sharingType = [(SCSharingReminderSignal *)v5 sharingType];
        sharingType2 = [(SCSharingReminderSignal *)self sharingType];
        if ([sharingType isEqualToString:sharingType2])
        {
          signalType = [(SCSharingReminderSignal *)v5 signalType];
          signalType2 = [(SCSharingReminderSignal *)self signalType];
          v12 = [signalType isEqual:signalType2];
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