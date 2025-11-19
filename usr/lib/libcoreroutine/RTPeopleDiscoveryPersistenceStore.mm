@interface RTPeopleDiscoveryPersistenceStore
- (BOOL)isEqual:(id)a3;
- (RTPeopleDiscoveryPersistenceStore)initWithCoder:(id)a3;
- (RTPeopleDiscoveryPersistenceStore)initWithContactRecord:(id)a3 densityRecord:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPeopleDiscoveryPersistenceStore

- (RTPeopleDiscoveryPersistenceStore)initWithContactRecord:(id)a3 densityRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RTPeopleDiscoveryPersistenceStore;
  v8 = [(RTPeopleDiscoveryPersistenceStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(RTPeopleDiscoveryPersistenceStore *)v8 setContactRecord:v6];
    [(RTPeopleDiscoveryPersistenceStore *)v9 setDensityRecord:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTPeopleDiscoveryPersistenceStore *)self contactRecord];
      v7 = [(RTPeopleDiscoveryPersistenceStore *)v5 contactRecord];
      if ([v6 isEqual:v7])
      {
        v8 = [(RTPeopleDiscoveryPersistenceStore *)self densityRecord];
        v9 = [(RTPeopleDiscoveryPersistenceStore *)v5 densityRecord];
        v10 = [v8 isEqual:v9];
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

- (RTPeopleDiscoveryPersistenceStore)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RTPeopleDiscoveryPersistenceStore;
  v5 = [(RTPeopleDiscoveryPersistenceStore *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContactRecord"];
    contactRecord = v5->_contactRecord;
    v5->_contactRecord = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DensityRecord"];
    densityRecord = v5->_densityRecord;
    v5->_densityRecord = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactRecord = self->_contactRecord;
  v5 = a3;
  [v5 encodeObject:contactRecord forKey:@"ContactRecord"];
  [v5 encodeObject:self->_densityRecord forKey:@"DensityRecord"];
}

@end