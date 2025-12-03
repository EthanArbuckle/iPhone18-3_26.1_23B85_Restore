@interface INFERENCESchemaINFERENCEResolutionRequestStarted
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEResolutionRequestStarted)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEResolutionRequestStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEResolutionRequestStarted

- (INFERENCESchemaINFERENCEResolutionRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = INFERENCESchemaINFERENCEResolutionRequestStarted;
  v5 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"slotType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEResolutionRequestStarted setSlotType:](v5, "setSlotType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"resolverConfig"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[INFERENCESchemaINFERENCEResolverConfig alloc] initWithDictionary:v7];
      [(INFERENCESchemaINFERENCEResolutionRequestStarted *)v5 setResolverConfig:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEResolutionRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self dictionaryRepresentation];
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
  if (self->_resolverConfig)
  {
    resolverConfig = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
    dictionaryRepresentation = [resolverConfig dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"resolverConfig"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"resolverConfig"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self slotType]- 1;
    if (v7 > 3)
    {
      v8 = @"INFERENCESLOTTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D8B30[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"slotType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_slotType;
  }

  else
  {
    v2 = 0;
  }

  return [(INFERENCESchemaINFERENCEResolverConfig *)self->_resolverConfig hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (slotType = self->_slotType, slotType == [equalCopy slotType]))
      {
        resolverConfig = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
        resolverConfig2 = [equalCopy resolverConfig];
        v8 = resolverConfig2;
        if ((resolverConfig != 0) != (resolverConfig2 == 0))
        {
          resolverConfig3 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
          if (!resolverConfig3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = resolverConfig3;
          resolverConfig4 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
          resolverConfig5 = [equalCopy resolverConfig];
          v13 = [resolverConfig4 isEqual:resolverConfig5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  resolverConfig = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];

  v5 = toCopy;
  if (resolverConfig)
  {
    resolverConfig2 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEResolutionRequestStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self resolverConfig:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(INFERENCESchemaINFERENCEResolutionRequestStarted *)self deleteResolverConfig];
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