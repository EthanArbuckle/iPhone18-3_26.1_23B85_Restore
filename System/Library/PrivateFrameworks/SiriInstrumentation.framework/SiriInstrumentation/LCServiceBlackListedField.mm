@interface LCServiceBlackListedField
- (BOOL)isEqual:(id)equal;
- (LCServiceBlackListedField)initWithDictionary:(id)dictionary;
- (LCServiceBlackListedField)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation LCServiceBlackListedField

- (LCServiceBlackListedField)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = LCServiceBlackListedField;
  v5 = [(LCServiceBlackListedField *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fullyQualifiedPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LCServiceBlackListedField *)v5 setFullyQualifiedPath:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (LCServiceBlackListedField)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LCServiceBlackListedField *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LCServiceBlackListedField *)self dictionaryRepresentation];
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

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_fullyQualifiedPath)
  {
    fullyQualifiedPath = [(LCServiceBlackListedField *)self fullyQualifiedPath];
    v5 = [fullyQualifiedPath copy];
    [dictionary setObject:v5 forKeyedSubscript:@"fullyQualifiedPath"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    fullyQualifiedPath = [(LCServiceBlackListedField *)self fullyQualifiedPath];
    fullyQualifiedPath2 = [equalCopy fullyQualifiedPath];
    v7 = fullyQualifiedPath2;
    if ((fullyQualifiedPath != 0) != (fullyQualifiedPath2 == 0))
    {
      fullyQualifiedPath3 = [(LCServiceBlackListedField *)self fullyQualifiedPath];
      if (!fullyQualifiedPath3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = fullyQualifiedPath3;
      fullyQualifiedPath4 = [(LCServiceBlackListedField *)self fullyQualifiedPath];
      fullyQualifiedPath5 = [equalCopy fullyQualifiedPath];
      v12 = [fullyQualifiedPath4 isEqual:fullyQualifiedPath5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  fullyQualifiedPath = [(LCServiceBlackListedField *)self fullyQualifiedPath];

  if (fullyQualifiedPath)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end