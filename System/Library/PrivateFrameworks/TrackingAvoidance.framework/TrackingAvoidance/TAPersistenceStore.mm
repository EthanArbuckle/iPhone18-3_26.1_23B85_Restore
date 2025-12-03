@interface TAPersistenceStore
- (BOOL)isEqual:(id)equal;
- (TAPersistenceStore)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAPersistenceStore

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      deviceRecord = [(TAPersistenceStore *)self deviceRecord];
      deviceRecord2 = [(TAPersistenceStore *)v6 deviceRecord];
      if (deviceRecord != deviceRecord2)
      {
        deviceRecord3 = [(TAPersistenceStore *)self deviceRecord];
        deviceRecord4 = [(TAPersistenceStore *)v6 deviceRecord];
        if (![deviceRecord3 isEqual:deviceRecord4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = deviceRecord3;
      }

      visitState = [(TAPersistenceStore *)self visitState];
      visitState2 = [(TAPersistenceStore *)v6 visitState];
      if (visitState == visitState2)
      {
        v10 = 1;
      }

      else
      {
        visitState3 = [(TAPersistenceStore *)self visitState];
        visitState4 = [(TAPersistenceStore *)v6 visitState];
        v10 = [visitState3 isEqual:visitState4];
      }

      deviceRecord3 = v16;
      if (deviceRecord == deviceRecord2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (TAPersistenceStore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TAPersistenceStore;
  v5 = [(TAPersistenceStore *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceRecord"];
    deviceRecord = v5->_deviceRecord;
    v5->_deviceRecord = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VisitState"];
    visitState = v5->_visitState;
    v5->_visitState = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceRecord = self->_deviceRecord;
  coderCopy = coder;
  [coderCopy encodeObject:deviceRecord forKey:@"DeviceRecord"];
  [coderCopy encodeObject:self->_visitState forKey:@"VisitState"];
}

@end