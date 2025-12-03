@interface POMMESSchemaPOMMESPegasusRequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusRequestEnded)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESPegasusRequestEnded)initWithJSON:(id)n;
- (POMMESSchemaPOMMESPegasusResponseClientDrivenContext)clientDriven;
- (POMMESSchemaPOMMESPegasusResponseServerDrivenContext)serverDriven;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteClientDriven;
- (void)deleteServerDriven;
- (void)setClientDriven:(id)driven;
- (void)setHasConfidenceScore:(BOOL)score;
- (void)setHasIsRewrittenUtteranceUsed:(BOOL)used;
- (void)setHasPayloadSizeInKB:(BOOL)b;
- (void)setServerDriven:(id)driven;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESPegasusRequestEnded

- (POMMESSchemaPOMMESPegasusRequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = POMMESSchemaPOMMESPegasusRequestEnded;
  v5 = [(POMMESSchemaPOMMESPegasusRequestEnded *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestEnded setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"confidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setConfidenceScore:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:{@"payloadSizeInKB", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setPayloadSizeInKB:?];
    }

    v23 = v6;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"serverDriven"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[POMMESSchemaPOMMESPegasusResponseServerDrivenContext alloc] initWithDictionary:v9];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setServerDriven:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"clientDriven"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[POMMESSchemaPOMMESPegasusResponseClientDrivenContext alloc] initWithDictionary:v11];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setClientDriven:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"pegasusDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setPegasusDomain:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isRewrittenUtteranceUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestEnded setIsRewrittenUtteranceUsed:](v5, "setIsRewrittenUtteranceUsed:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"requestArguments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[POMMESSchemaPOMMESPegasusRequestArguments alloc] initWithDictionary:v16];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setRequestArguments:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"kfedLatency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[POMMESSchemaPOMMESPegasusRequestKfedLatency alloc] initWithDictionary:v18];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setKfedLatency:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESPegasusRequestEnded *)self dictionaryRepresentation];
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
  if (self->_clientDriven)
  {
    clientDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
    dictionaryRepresentation = [clientDriven dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientDriven"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientDriven"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self confidenceScore];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:@"confidenceScore"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusRequestEnded isRewrittenUtteranceUsed](self, "isRewrittenUtteranceUsed")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isRewrittenUtteranceUsed"];
  }

  if (self->_kfedLatency)
  {
    kfedLatency = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
    dictionaryRepresentation2 = [kfedLatency dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"kfedLatency"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"kfedLatency"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self payloadSizeInKB];
    v15 = [v14 numberWithDouble:?];
    [dictionary setObject:v15 forKeyedSubscript:@"payloadSizeInKB"];
  }

  if (self->_pegasusDomain)
  {
    pegasusDomain = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];
    v17 = [pegasusDomain copy];
    [dictionary setObject:v17 forKeyedSubscript:@"pegasusDomain"];
  }

  if (self->_requestArguments)
  {
    requestArguments = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
    dictionaryRepresentation3 = [requestArguments dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"requestArguments"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"requestArguments"];
    }
  }

  if (self->_serverDriven)
  {
    serverDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
    dictionaryRepresentation4 = [serverDriven dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"serverDriven"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"serverDriven"];
    }
  }

  if (*&self->_has)
  {
    v24 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self status]- 1;
    if (v24 > 2)
    {
      v25 = @"POMMESPEGASUSRESPONSESTATUS_UNKNOWN";
    }

    else
    {
      v25 = off_1E78E0F00[v24];
    }

    [dictionary setObject:v25 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_status;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  confidenceScore = self->_confidenceScore;
  if (confidenceScore < 0.0)
  {
    confidenceScore = -confidenceScore;
  }

  *v2.i64 = floor(confidenceScore + 0.5);
  v7 = (confidenceScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    payloadSizeInKB = self->_payloadSizeInKB;
    if (payloadSizeInKB < 0.0)
    {
      payloadSizeInKB = -payloadSizeInKB;
    }

    *v2.i64 = floor(payloadSizeInKB + 0.5);
    v12 = (payloadSizeInKB - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = [(POMMESSchemaPOMMESPegasusResponseServerDrivenContext *)self->_serverDriven hash];
  v15 = [(POMMESSchemaPOMMESPegasusResponseClientDrivenContext *)self->_clientDriven hash];
  v16 = [(NSString *)self->_pegasusDomain hash];
  if ((*&self->_has & 8) != 0)
  {
    v17 = 2654435761 * self->_isRewrittenUtteranceUsed;
  }

  else
  {
    v17 = 0;
  }

  v18 = v9 ^ v5 ^ v10 ^ v14 ^ v15 ^ v16;
  v19 = v17 ^ [(POMMESSchemaPOMMESPegasusRequestArguments *)self->_requestArguments hash];
  return v18 ^ v19 ^ [(POMMESSchemaPOMMESPegasusRequestKfedLatency *)self->_kfedLatency hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = *&self->_hasKfedLatency;
  if (v5 != [equalCopy whichContextevent])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v7 = equalCopy[80];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    status = self->_status;
    if (status != [equalCopy status])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v7 = equalCopy[80];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v7 >> 1) & 1))
  {
    if (v9)
    {
      confidenceScore = self->_confidenceScore;
      [equalCopy confidenceScore];
      if (confidenceScore != v11)
      {
        goto LABEL_42;
      }

      has = self->_has;
      v7 = equalCopy[80];
    }

    v12 = (*&has >> 2) & 1;
    if (v12 != ((v7 >> 2) & 1))
    {
      goto LABEL_42;
    }

    if (v12)
    {
      payloadSizeInKB = self->_payloadSizeInKB;
      [equalCopy payloadSizeInKB];
      if (payloadSizeInKB != v14)
      {
        goto LABEL_42;
      }
    }

    serverDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
    serverDriven2 = [equalCopy serverDriven];
    if ((serverDriven != 0) == (serverDriven2 == 0))
    {
      goto LABEL_41;
    }

    serverDriven3 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
    if (serverDriven3)
    {
      v18 = serverDriven3;
      serverDriven4 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
      serverDriven5 = [equalCopy serverDriven];
      v21 = [serverDriven4 isEqual:serverDriven5];

      if (!v21)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    serverDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
    serverDriven2 = [equalCopy clientDriven];
    if ((serverDriven != 0) == (serverDriven2 == 0))
    {
      goto LABEL_41;
    }

    clientDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
    if (clientDriven)
    {
      v23 = clientDriven;
      clientDriven2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
      clientDriven3 = [equalCopy clientDriven];
      v26 = [clientDriven2 isEqual:clientDriven3];

      if (!v26)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    serverDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];
    serverDriven2 = [equalCopy pegasusDomain];
    if ((serverDriven != 0) == (serverDriven2 == 0))
    {
      goto LABEL_41;
    }

    pegasusDomain = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];
    if (pegasusDomain)
    {
      v28 = pegasusDomain;
      pegasusDomain2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];
      pegasusDomain3 = [equalCopy pegasusDomain];
      v31 = [pegasusDomain2 isEqual:pegasusDomain3];

      if (!v31)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    v32 = (*&self->_has >> 3) & 1;
    if (v32 != ((equalCopy[80] >> 3) & 1))
    {
      goto LABEL_42;
    }

    if (v32)
    {
      isRewrittenUtteranceUsed = self->_isRewrittenUtteranceUsed;
      if (isRewrittenUtteranceUsed != [equalCopy isRewrittenUtteranceUsed])
      {
        goto LABEL_42;
      }
    }

    serverDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
    serverDriven2 = [equalCopy requestArguments];
    if ((serverDriven != 0) == (serverDriven2 == 0))
    {
      goto LABEL_41;
    }

    requestArguments = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
    if (requestArguments)
    {
      v35 = requestArguments;
      requestArguments2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
      requestArguments3 = [equalCopy requestArguments];
      v38 = [requestArguments2 isEqual:requestArguments3];

      if (!v38)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    serverDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
    serverDriven2 = [equalCopy kfedLatency];
    if ((serverDriven != 0) != (serverDriven2 == 0))
    {
      kfedLatency = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
      if (!kfedLatency)
      {

LABEL_45:
        v44 = 1;
        goto LABEL_43;
      }

      v40 = kfedLatency;
      kfedLatency2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
      kfedLatency3 = [equalCopy kfedLatency];
      v43 = [kfedLatency2 isEqual:kfedLatency3];

      if (v43)
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_41:
    }
  }

LABEL_42:
  v44 = 0;
LABEL_43:

  return v44;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteDoubleField();
  }

LABEL_5:
  serverDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];

  if (serverDriven)
  {
    serverDriven2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
    PBDataWriterWriteSubmessage();
  }

  clientDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];

  if (clientDriven)
  {
    clientDriven2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
    PBDataWriterWriteSubmessage();
  }

  pegasusDomain = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];

  if (pegasusDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  requestArguments = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];

  if (requestArguments)
  {
    requestArguments2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
    PBDataWriterWriteSubmessage();
  }

  kfedLatency = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];

  v13 = toCopy;
  if (kfedLatency)
  {
    kfedLatency2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)setHasIsRewrittenUtteranceUsed:(BOOL)used
{
  if (used)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)deleteClientDriven
{
  if (*&self->_hasKfedLatency == 5)
  {
    *&self->_hasKfedLatency = 0;
    self->_clientDriven = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESPegasusResponseClientDrivenContext)clientDriven
{
  if (*&self->_hasKfedLatency == 5)
  {
    v3 = self->_clientDriven;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setClientDriven:(id)driven
{
  drivenCopy = driven;
  serverDriven = self->_serverDriven;
  self->_serverDriven = 0;

  v6 = 5;
  if (!drivenCopy)
  {
    v6 = 0;
  }

  *&self->_hasKfedLatency = v6;
  clientDriven = self->_clientDriven;
  self->_clientDriven = drivenCopy;
}

- (void)deleteServerDriven
{
  if (*&self->_hasKfedLatency == 4)
  {
    *&self->_hasKfedLatency = 0;
    self->_serverDriven = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (POMMESSchemaPOMMESPegasusResponseServerDrivenContext)serverDriven
{
  if (*&self->_hasKfedLatency == 4)
  {
    v3 = self->_serverDriven;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerDriven:(id)driven
{
  drivenCopy = driven;
  clientDriven = self->_clientDriven;
  self->_clientDriven = 0;

  *&self->_hasKfedLatency = 4 * (drivenCopy != 0);
  serverDriven = self->_serverDriven;
  self->_serverDriven = drivenCopy;
}

- (void)setHasPayloadSizeInKB:(BOOL)b
{
  if (b)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasConfidenceScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = POMMESSchemaPOMMESPegasusRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  serverDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
  v7 = [serverDriven applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self deleteServerDriven];
  }

  clientDriven = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
  v10 = [clientDriven applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self deleteClientDriven];
  }

  requestArguments = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
  v13 = [requestArguments applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self deleteRequestArguments];
  }

  kfedLatency = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
  v16 = [kfedLatency applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self deleteKfedLatency];
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