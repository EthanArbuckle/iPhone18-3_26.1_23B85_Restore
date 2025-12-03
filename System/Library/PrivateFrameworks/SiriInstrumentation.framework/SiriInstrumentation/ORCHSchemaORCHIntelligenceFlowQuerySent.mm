@interface ORCHSchemaORCHIntelligenceFlowQuerySent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHIntelligenceFlowQuerySent)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHIntelligenceFlowQuerySent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHIntelligenceFlowQuerySent

- (ORCHSchemaORCHIntelligenceFlowQuerySent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHIntelligenceFlowQuerySent;
  v5 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"plannerQueryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHIntelligenceFlowQuerySent *)v5 setPlannerQueryId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHIntelligenceFlowQuerySent *)v5 setTrpId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHIntelligenceFlowQuerySent *)v5 setSubRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHIntelligenceFlowQuerySent *)v5 setTraceId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHIntelligenceFlowQuerySent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self dictionaryRepresentation];
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
  if (self->_plannerQueryId)
  {
    plannerQueryId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self plannerQueryId];
    dictionaryRepresentation = [plannerQueryId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"plannerQueryId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"plannerQueryId"];
    }
  }

  if (self->_subRequestId)
  {
    subRequestId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self subRequestId];
    dictionaryRepresentation2 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_traceId)
  {
    traceId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self traceId];
    dictionaryRepresentation3 = [traceId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"traceId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"traceId"];
    }
  }

  if (self->_trpId)
  {
    trpId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self trpId];
    dictionaryRepresentation4 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_plannerQueryId hash];
  v4 = [(SISchemaUUID *)self->_trpId hash]^ v3;
  v5 = [(SISchemaUUID *)self->_subRequestId hash];
  return v4 ^ v5 ^ [(SISchemaUUID *)self->_traceId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  plannerQueryId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self plannerQueryId];
  plannerQueryId2 = [equalCopy plannerQueryId];
  if ((plannerQueryId != 0) == (plannerQueryId2 == 0))
  {
    goto LABEL_21;
  }

  plannerQueryId3 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self plannerQueryId];
  if (plannerQueryId3)
  {
    v8 = plannerQueryId3;
    plannerQueryId4 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self plannerQueryId];
    plannerQueryId5 = [equalCopy plannerQueryId];
    v11 = [plannerQueryId4 isEqual:plannerQueryId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  plannerQueryId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self trpId];
  plannerQueryId2 = [equalCopy trpId];
  if ((plannerQueryId != 0) == (plannerQueryId2 == 0))
  {
    goto LABEL_21;
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self trpId];
  if (trpId)
  {
    v13 = trpId;
    trpId2 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self trpId];
    trpId3 = [equalCopy trpId];
    v16 = [trpId2 isEqual:trpId3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  plannerQueryId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self subRequestId];
  plannerQueryId2 = [equalCopy subRequestId];
  if ((plannerQueryId != 0) == (plannerQueryId2 == 0))
  {
    goto LABEL_21;
  }

  subRequestId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self subRequestId];
  if (subRequestId)
  {
    v18 = subRequestId;
    subRequestId2 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v21 = [subRequestId2 isEqual:subRequestId3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  plannerQueryId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self traceId];
  plannerQueryId2 = [equalCopy traceId];
  if ((plannerQueryId != 0) != (plannerQueryId2 == 0))
  {
    traceId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self traceId];
    if (!traceId)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = traceId;
    traceId2 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self traceId];
    traceId3 = [equalCopy traceId];
    v26 = [traceId2 isEqual:traceId3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  plannerQueryId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self plannerQueryId];

  if (plannerQueryId)
  {
    plannerQueryId2 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self plannerQueryId];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self trpId];

  if (trpId)
  {
    trpId2 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  subRequestId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  traceId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self traceId];

  v11 = toCopy;
  if (traceId)
  {
    traceId2 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self traceId];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ORCHSchemaORCHIntelligenceFlowQuerySent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  plannerQueryId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self plannerQueryId];
  v7 = [plannerQueryId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self deletePlannerQueryId];
  }

  trpId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self trpId];
  v10 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self deleteTrpId];
  }

  subRequestId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self subRequestId];
  v13 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self deleteSubRequestId];
  }

  traceId = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self traceId];
  v16 = [traceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self deleteTraceId];
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