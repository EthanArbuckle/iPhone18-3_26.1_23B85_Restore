@interface RTPeopleDiscoveryPersistenceStore
- (BOOL)isEqual:(id)equal;
- (RTPeopleDiscoveryPersistenceStore)initWithCoder:(id)coder;
- (RTPeopleDiscoveryPersistenceStore)initWithContactRecord:(id)record densityRecord:(id)densityRecord;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPeopleDiscoveryPersistenceStore

- (RTPeopleDiscoveryPersistenceStore)initWithContactRecord:(id)record densityRecord:(id)densityRecord
{
  recordCopy = record;
  densityRecordCopy = densityRecord;
  v11.receiver = self;
  v11.super_class = RTPeopleDiscoveryPersistenceStore;
  v8 = [(RTPeopleDiscoveryPersistenceStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(RTPeopleDiscoveryPersistenceStore *)v8 setContactRecord:recordCopy];
    [(RTPeopleDiscoveryPersistenceStore *)v9 setDensityRecord:densityRecordCopy];
  }

  return v9;
}

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
      v5 = equalCopy;
      contactRecord = [(RTPeopleDiscoveryPersistenceStore *)self contactRecord];
      contactRecord2 = [(RTPeopleDiscoveryPersistenceStore *)v5 contactRecord];
      if ([contactRecord isEqual:contactRecord2])
      {
        densityRecord = [(RTPeopleDiscoveryPersistenceStore *)self densityRecord];
        densityRecord2 = [(RTPeopleDiscoveryPersistenceStore *)v5 densityRecord];
        v10 = [densityRecord isEqual:densityRecord2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (RTPeopleDiscoveryPersistenceStore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RTPeopleDiscoveryPersistenceStore;
  v5 = [(RTPeopleDiscoveryPersistenceStore *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactRecord"];
    contactRecord = v5->_contactRecord;
    v5->_contactRecord = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DensityRecord"];
    densityRecord = v5->_densityRecord;
    v5->_densityRecord = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contactRecord = self->_contactRecord;
  coderCopy = coder;
  [coderCopy encodeObject:contactRecord forKey:@"ContactRecord"];
  [coderCopy encodeObject:self->_densityRecord forKey:@"DensityRecord"];
}

@end