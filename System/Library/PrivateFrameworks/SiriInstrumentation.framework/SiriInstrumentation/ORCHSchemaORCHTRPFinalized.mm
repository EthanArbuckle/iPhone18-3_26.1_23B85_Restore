@interface ORCHSchemaORCHTRPFinalized
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHTRPFinalized)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHTRPFinalized)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHTRPFinalized

- (ORCHSchemaORCHTRPFinalized)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHTRPFinalized;
  v5 = [(ORCHSchemaORCHTRPFinalized *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHTRPFinalized *)v5 setTrpId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHTRPFinalized)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHTRPFinalized *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHTRPFinalized *)self dictionaryRepresentation];
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
  if (self->_trpId)
  {
    trpId = [(ORCHSchemaORCHTRPFinalized *)self trpId];
    dictionaryRepresentation = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"trpId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    trpId = [(ORCHSchemaORCHTRPFinalized *)self trpId];
    trpId2 = [equalCopy trpId];
    v7 = trpId2;
    if ((trpId != 0) != (trpId2 == 0))
    {
      trpId3 = [(ORCHSchemaORCHTRPFinalized *)self trpId];
      if (!trpId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = trpId3;
      trpId4 = [(ORCHSchemaORCHTRPFinalized *)self trpId];
      trpId5 = [equalCopy trpId];
      v12 = [trpId4 isEqual:trpId5];

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
  trpId = [(ORCHSchemaORCHTRPFinalized *)self trpId];

  if (trpId)
  {
    trpId2 = [(ORCHSchemaORCHTRPFinalized *)self trpId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ORCHSchemaORCHTRPFinalized;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ORCHSchemaORCHTRPFinalized *)self trpId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ORCHSchemaORCHTRPFinalized *)self deleteTrpId];
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