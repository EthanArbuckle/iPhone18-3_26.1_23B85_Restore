@interface RFTableSpacerColumnDefinition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableSpacerColumnDefinition)initWithCoder:(id)coder;
- (RFTableSpacerColumnDefinition)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFTableSpacerColumnDefinition

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
  v2 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTableSpacerColumnDefinition *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTableSpacerColumnDefinition *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithFacade:self];
  data = [(_SFPBRFTableSpacerColumnDefinition *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFTableSpacerColumnDefinition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithData:v5];
  v7 = [(RFTableSpacerColumnDefinition *)self initWithProtobuf:v6];

  return v7;
}

- (RFTableSpacerColumnDefinition)initWithProtobuf:(id)protobuf
{
  v7.receiver = self;
  v7.super_class = RFTableSpacerColumnDefinition;
  v3 = [(RFTableSpacerColumnDefinition *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end