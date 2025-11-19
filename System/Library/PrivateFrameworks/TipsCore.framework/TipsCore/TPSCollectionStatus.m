@interface TPSCollectionStatus
- (TPSCollectionStatus)initWithCoder:(id)a3;
- (TPSCollectionStatus)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSCollectionStatus

- (TPSCollectionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSCollectionStatus;
  v5 = [(TPSCollectionStatus *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activatedDate"];
    activatedDate = v5->_activatedDate;
    v5->_activatedDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstViewedDate"];
    firstViewedDate = v5->_firstViewedDate;
    v5->_firstViewedDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featuredDate"];
    featuredDate = v5->_featuredDate;
    v5->_featuredDate = v12;

    v5->_canNotify = [v4 decodeBoolForKey:@"canNotify"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_activatedDate forKey:@"activatedDate"];
  [v5 encodeObject:self->_firstViewedDate forKey:@"firstViewedDate"];
  [v5 encodeObject:self->_featuredDate forKey:@"featuredDate"];
  [v5 encodeBool:self->_canNotify forKey:@"canNotify"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TPSCollectionStatus allocWithZone:a3];
  [(TPSCollectionStatus *)v4 setIdentifier:self->_identifier];
  [(TPSCollectionStatus *)v4 setActivatedDate:self->_activatedDate];
  [(TPSCollectionStatus *)v4 setFirstViewedDate:self->_firstViewedDate];
  [(TPSCollectionStatus *)v4 setFeaturedDate:self->_featuredDate];
  [(TPSCollectionStatus *)v4 setCanNotify:self->_canNotify];
  v5 = self;

  return v5;
}

- (TPSCollectionStatus)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSCollectionStatus;
  v6 = [(TPSCollectionStatus *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v7->_canNotify = 1;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", self];
  [v3 appendFormat:@"\n %@ = %@\n", @"identifier", self->_identifier];
  activatedDate = self->_activatedDate;
  if (activatedDate)
  {
    [v3 appendFormat:@" %@ = %@\n", @"activatedDate", activatedDate];
  }

  firstViewedDate = self->_firstViewedDate;
  if (firstViewedDate)
  {
    [v3 appendFormat:@" %@ = %@\n", @"firstViewedDate", firstViewedDate];
  }

  featuredDate = self->_featuredDate;
  if (featuredDate)
  {
    [v3 appendFormat:@" %@ = %@\n", @"featuredDate", featuredDate];
  }

  [v3 appendFormat:@" %@ = %d\n", @"canNotify", self->_canNotify];

  return v3;
}

@end