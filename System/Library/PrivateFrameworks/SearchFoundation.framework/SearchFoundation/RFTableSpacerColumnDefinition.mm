@interface RFTableSpacerColumnDefinition
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableSpacerColumnDefinition)initWithCoder:(id)a3;
- (RFTableSpacerColumnDefinition)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFTableSpacerColumnDefinition

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableSpacerColumnDefinition *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableSpacerColumnDefinition *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithFacade:self];
  v5 = [(_SFPBRFTableSpacerColumnDefinition *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFTableSpacerColumnDefinition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithData:v5];
  v7 = [(RFTableSpacerColumnDefinition *)self initWithProtobuf:v6];

  return v7;
}

- (RFTableSpacerColumnDefinition)initWithProtobuf:(id)a3
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