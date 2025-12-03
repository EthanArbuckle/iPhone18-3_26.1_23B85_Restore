@interface _SFPBRFTableSpacerColumnDefinition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFTableSpacerColumnDefinition)initWithDictionary:(id)dictionary;
- (_SFPBRFTableSpacerColumnDefinition)initWithFacade:(id)facade;
- (_SFPBRFTableSpacerColumnDefinition)initWithJSON:(id)n;
@end

@implementation _SFPBRFTableSpacerColumnDefinition

- (_SFPBRFTableSpacerColumnDefinition)initWithFacade:(id)facade
{
  v3 = [(_SFPBRFTableSpacerColumnDefinition *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (_SFPBRFTableSpacerColumnDefinition)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = _SFPBRFTableSpacerColumnDefinition;
  v3 = [(_SFPBRFTableSpacerColumnDefinition *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (_SFPBRFTableSpacerColumnDefinition)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFTableSpacerColumnDefinition *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFTableSpacerColumnDefinition *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end