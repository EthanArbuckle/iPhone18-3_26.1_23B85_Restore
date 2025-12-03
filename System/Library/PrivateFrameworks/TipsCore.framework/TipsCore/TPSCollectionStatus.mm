@interface TPSCollectionStatus
- (TPSCollectionStatus)initWithCoder:(id)coder;
- (TPSCollectionStatus)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSCollectionStatus

- (TPSCollectionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSCollectionStatus;
  v5 = [(TPSCollectionStatus *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activatedDate"];
    activatedDate = v5->_activatedDate;
    v5->_activatedDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstViewedDate"];
    firstViewedDate = v5->_firstViewedDate;
    v5->_firstViewedDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featuredDate"];
    featuredDate = v5->_featuredDate;
    v5->_featuredDate = v12;

    v5->_canNotify = [coderCopy decodeBoolForKey:@"canNotify"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_activatedDate forKey:@"activatedDate"];
  [coderCopy encodeObject:self->_firstViewedDate forKey:@"firstViewedDate"];
  [coderCopy encodeObject:self->_featuredDate forKey:@"featuredDate"];
  [coderCopy encodeBool:self->_canNotify forKey:@"canNotify"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TPSCollectionStatus allocWithZone:zone];
  [(TPSCollectionStatus *)v4 setIdentifier:self->_identifier];
  [(TPSCollectionStatus *)v4 setActivatedDate:self->_activatedDate];
  [(TPSCollectionStatus *)v4 setFirstViewedDate:self->_firstViewedDate];
  [(TPSCollectionStatus *)v4 setFeaturedDate:self->_featuredDate];
  [(TPSCollectionStatus *)v4 setCanNotify:self->_canNotify];
  selfCopy = self;

  return selfCopy;
}

- (TPSCollectionStatus)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TPSCollectionStatus;
  v6 = [(TPSCollectionStatus *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
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