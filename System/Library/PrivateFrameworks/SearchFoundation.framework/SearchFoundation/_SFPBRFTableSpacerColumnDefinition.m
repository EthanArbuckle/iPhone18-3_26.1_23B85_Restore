@interface _SFPBRFTableSpacerColumnDefinition
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFTableSpacerColumnDefinition)initWithDictionary:(id)a3;
- (_SFPBRFTableSpacerColumnDefinition)initWithFacade:(id)a3;
- (_SFPBRFTableSpacerColumnDefinition)initWithJSON:(id)a3;
@end

@implementation _SFPBRFTableSpacerColumnDefinition

- (_SFPBRFTableSpacerColumnDefinition)initWithFacade:(id)a3
{
  v3 = [(_SFPBRFTableSpacerColumnDefinition *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (_SFPBRFTableSpacerColumnDefinition)initWithDictionary:(id)a3
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

- (_SFPBRFTableSpacerColumnDefinition)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFTableSpacerColumnDefinition *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFTableSpacerColumnDefinition *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end