@interface PEGASUSSchemaPEGASUSKGQAQualifierTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSKGQAQualifierTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSKGQAQualifierTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSKGQAQualifierTier1

- (PEGASUSSchemaPEGASUSKGQAQualifierTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSKGQAQualifierTier1;
  v5 = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"propId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)v5 setPropId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)v5 setValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSKGQAQualifierTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self dictionaryRepresentation];
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
  if (self->_propId)
  {
    propId = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self propId];
    v5 = [propId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"propId"];
  }

  if (self->_value)
  {
    value = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self value];
    v7 = [value copy];
    [dictionary setObject:v7 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  propId = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self propId];
  propId2 = [equalCopy propId];
  if ((propId != 0) == (propId2 == 0))
  {
    goto LABEL_11;
  }

  propId3 = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self propId];
  if (propId3)
  {
    v8 = propId3;
    propId4 = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self propId];
    propId5 = [equalCopy propId];
    v11 = [propId4 isEqual:propId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  propId = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self value];
  propId2 = [equalCopy value];
  if ((propId != 0) != (propId2 == 0))
  {
    value = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self value];
    if (!value)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = value;
    value2 = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self value];
    value3 = [equalCopy value];
    v16 = [value2 isEqual:value3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  propId = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self propId];

  if (propId)
  {
    PBDataWriterWriteStringField();
  }

  value = [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self value];

  if (value)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSKGQAQualifierTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deleteValue];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deleteValue];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deleteValue];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deleteValue];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAQualifierTier1 *)self deleteValue];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end