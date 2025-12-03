@interface PEGASUSSchemaPEGASUSIntentArg
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSIntentArg)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSIntentArg)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSIntentArg

- (PEGASUSSchemaPEGASUSIntentArg)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSIntentArg;
  v5 = [(PEGASUSSchemaPEGASUSIntentArg *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSIntentArg *)v5 setKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"attributeType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSIntentArg *)v5 setAttributeType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSEntityInfo alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSIntentArg *)v5 setEntity:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSIntentArg)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSIntentArg *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSIntentArg *)self dictionaryRepresentation];
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
  if (self->_attributeType)
  {
    attributeType = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];
    v5 = [attributeType copy];
    [dictionary setObject:v5 forKeyedSubscript:@"attributeType"];
  }

  if (self->_entity)
  {
    entity = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
    dictionaryRepresentation = [entity dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entity"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entity"];
    }
  }

  if (self->_key)
  {
    v9 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];
    v10 = [v9 copy];
    [dictionary setObject:v10 forKeyedSubscript:@"key"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_attributeType hash]^ v3;
  return v4 ^ [(PEGASUSSchemaPEGASUSEntityInfo *)self->_entity hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  attributeType = [(PEGASUSSchemaPEGASUSIntentArg *)self key];
  attributeType2 = [equalCopy key];
  if ((attributeType != 0) == (attributeType2 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  attributeType = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];
  attributeType2 = [equalCopy attributeType];
  if ((attributeType != 0) == (attributeType2 == 0))
  {
    goto LABEL_16;
  }

  attributeType3 = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];
  if (attributeType3)
  {
    v13 = attributeType3;
    attributeType4 = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];
    attributeType5 = [equalCopy attributeType];
    v16 = [attributeType4 isEqual:attributeType5];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  attributeType = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
  attributeType2 = [equalCopy entity];
  if ((attributeType != 0) != (attributeType2 == 0))
  {
    entity = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
    if (!entity)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = entity;
    entity2 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
    entity3 = [equalCopy entity];
    v21 = [entity2 isEqual:entity3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  attributeType = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];

  if (attributeType)
  {
    PBDataWriterWriteStringField();
  }

  entity = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];

  v7 = toCopy;
  if (entity)
  {
    entity2 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSIntentArg;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PEGASUSSchemaPEGASUSIntentArg *)self deleteEntity];
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