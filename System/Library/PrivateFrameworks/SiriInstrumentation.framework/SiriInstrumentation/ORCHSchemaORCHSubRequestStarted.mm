@interface ORCHSchemaORCHSubRequestStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHSubRequestStarted)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHSubRequestStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHSubRequestStarted

- (ORCHSchemaORCHSubRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHSubRequestStarted;
  v5 = [(ORCHSchemaORCHSubRequestStarted *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHSubRequestStarted *)v5 setTrpId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"subRequestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHSubRequestStarted setSubRequestType:](v5, "setSubRequestType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"genAIMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ORCHSchemaORCHNLRouterDecisionGenAIMetadata alloc] initWithDictionary:v9];
      [(ORCHSchemaORCHSubRequestStarted *)v5 setGenAIMetadata:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHSubRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHSubRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHSubRequestStarted *)self dictionaryRepresentation];
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
  if (self->_genAIMetadata)
  {
    genAIMetadata = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
    dictionaryRepresentation = [genAIMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"genAIMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"genAIMetadata"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(ORCHSchemaORCHSubRequestStarted *)self subRequestType]- 1;
    if (v7 > 0xB)
    {
      v8 = @"SUBREQUESTTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DF018[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"subRequestType"];
  }

  if (self->_trpId)
  {
    trpId = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
    dictionaryRepresentation2 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_trpId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_subRequestType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(ORCHSchemaORCHNLRouterDecisionGenAIMetadata *)self->_genAIMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  trpId = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
  trpId2 = [equalCopy trpId];
  if ((trpId != 0) == (trpId2 == 0))
  {
    goto LABEL_14;
  }

  trpId3 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
  if (trpId3)
  {
    v8 = trpId3;
    trpId4 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
    trpId5 = [equalCopy trpId];
    v11 = [trpId4 isEqual:trpId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    subRequestType = self->_subRequestType;
    if (subRequestType != [equalCopy subRequestType])
    {
      goto LABEL_15;
    }
  }

  trpId = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
  trpId2 = [equalCopy genAIMetadata];
  if ((trpId != 0) != (trpId2 == 0))
  {
    genAIMetadata = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
    if (!genAIMetadata)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = genAIMetadata;
    genAIMetadata2 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
    genAIMetadata3 = [equalCopy genAIMetadata];
    v17 = [genAIMetadata2 isEqual:genAIMetadata3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  trpId = [(ORCHSchemaORCHSubRequestStarted *)self trpId];

  if (trpId)
  {
    trpId2 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  genAIMetadata = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];

  v7 = toCopy;
  if (genAIMetadata)
  {
    genAIMetadata2 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHSubRequestStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  trpId = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
  v7 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHSubRequestStarted *)self deleteTrpId];
  }

  genAIMetadata = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
  v10 = [genAIMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHSubRequestStarted *)self deleteGenAIMetadata];
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