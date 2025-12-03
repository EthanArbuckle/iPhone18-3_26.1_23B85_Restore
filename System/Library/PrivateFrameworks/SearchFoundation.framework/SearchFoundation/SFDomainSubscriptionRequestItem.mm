@interface SFDomainSubscriptionRequestItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDomainSubscriptionRequestItem)initWithCoder:(id)coder;
- (SFDomainSubscriptionRequestItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDomainSubscriptionRequestItem

- (SFDomainSubscriptionRequestItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = SFDomainSubscriptionRequestItem;
  v5 = [(SFDomainSubscriptionRequestItem *)&v11 init];
  if (v5)
  {
    sportsSubscriptionRequestItem = [protobufCopy sportsSubscriptionRequestItem];

    if (sportsSubscriptionRequestItem)
    {
      v7 = [SFSportsSubscriptionRequestItem alloc];
      sportsSubscriptionRequestItem2 = [protobufCopy sportsSubscriptionRequestItem];
      v9 = [(SFSportsSubscriptionRequestItem *)v7 initWithProtobuf:sportsSubscriptionRequestItem2];
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (NSData)jsonData
{
  v2 = [[_SFPBDomainSubscriptionRequestItem alloc] initWithFacade:self];
  jsonData = [(_SFPBDomainSubscriptionRequestItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDomainSubscriptionRequestItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBDomainSubscriptionRequestItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBDomainSubscriptionRequestItem alloc] initWithFacade:self];
  data = [(_SFPBDomainSubscriptionRequestItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFDomainSubscriptionRequestItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBDomainSubscriptionRequestItem alloc] initWithData:v5];
  v7 = [(SFDomainSubscriptionRequestItem *)self initWithProtobuf:v6];

  return v7;
}

@end