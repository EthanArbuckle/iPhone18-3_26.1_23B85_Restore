@interface POMMESSchemaPOMMESPegasusRequestEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusRequestEnded)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESPegasusRequestEnded)initWithJSON:(id)a3;
- (POMMESSchemaPOMMESPegasusResponseClientDrivenContext)clientDriven;
- (POMMESSchemaPOMMESPegasusResponseServerDrivenContext)serverDriven;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteClientDriven;
- (void)deleteServerDriven;
- (void)setClientDriven:(id)a3;
- (void)setHasConfidenceScore:(BOOL)a3;
- (void)setHasIsRewrittenUtteranceUsed:(BOOL)a3;
- (void)setHasPayloadSizeInKB:(BOOL)a3;
- (void)setServerDriven:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESPegasusRequestEnded

- (POMMESSchemaPOMMESPegasusRequestEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = POMMESSchemaPOMMESPegasusRequestEnded;
  v5 = [(POMMESSchemaPOMMESPegasusRequestEnded *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestEnded setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"confidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setConfidenceScore:?];
    }

    v8 = [v4 objectForKeyedSubscript:{@"payloadSizeInKB", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setPayloadSizeInKB:?];
    }

    v23 = v6;
    v9 = [v4 objectForKeyedSubscript:@"serverDriven"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[POMMESSchemaPOMMESPegasusResponseServerDrivenContext alloc] initWithDictionary:v9];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setServerDriven:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"clientDriven"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[POMMESSchemaPOMMESPegasusResponseClientDrivenContext alloc] initWithDictionary:v11];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setClientDriven:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"pegasusDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setPegasusDomain:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"isRewrittenUtteranceUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestEnded setIsRewrittenUtteranceUsed:](v5, "setIsRewrittenUtteranceUsed:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"requestArguments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[POMMESSchemaPOMMESPegasusRequestArguments alloc] initWithDictionary:v16];
      [(POMMESSchemaPOMMESPegasusRequestEnded *)v5 setRequestArguments:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"kfedLatency"];
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

- (POMMESSchemaPOMMESPegasusRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self dictionaryRepresentation];
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

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_clientDriven)
  {
    v4 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"clientDriven"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"clientDriven"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self confidenceScore];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"confidenceScore"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusRequestEnded isRewrittenUtteranceUsed](self, "isRewrittenUtteranceUsed")}];
    [v3 setObject:v10 forKeyedSubscript:@"isRewrittenUtteranceUsed"];
  }

  if (self->_kfedLatency)
  {
    v11 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"kfedLatency"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"kfedLatency"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self payloadSizeInKB];
    v15 = [v14 numberWithDouble:?];
    [v3 setObject:v15 forKeyedSubscript:@"payloadSizeInKB"];
  }

  if (self->_pegasusDomain)
  {
    v16 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"pegasusDomain"];
  }

  if (self->_requestArguments)
  {
    v18 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"requestArguments"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"requestArguments"];
    }
  }

  if (self->_serverDriven)
  {
    v21 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"serverDriven"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"serverDriven"];
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

    [v3 setObject:v25 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = *&self->_hasKfedLatency;
  if (v5 != [v4 whichContextevent])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v7 = v4[80];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    status = self->_status;
    if (status != [v4 status])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v7 = v4[80];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v7 >> 1) & 1))
  {
    if (v9)
    {
      confidenceScore = self->_confidenceScore;
      [v4 confidenceScore];
      if (confidenceScore != v11)
      {
        goto LABEL_42;
      }

      has = self->_has;
      v7 = v4[80];
    }

    v12 = (*&has >> 2) & 1;
    if (v12 != ((v7 >> 2) & 1))
    {
      goto LABEL_42;
    }

    if (v12)
    {
      payloadSizeInKB = self->_payloadSizeInKB;
      [v4 payloadSizeInKB];
      if (payloadSizeInKB != v14)
      {
        goto LABEL_42;
      }
    }

    v15 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
    v16 = [v4 serverDriven];
    if ((v15 != 0) == (v16 == 0))
    {
      goto LABEL_41;
    }

    v17 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
    if (v17)
    {
      v18 = v17;
      v19 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
      v20 = [v4 serverDriven];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    v15 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
    v16 = [v4 clientDriven];
    if ((v15 != 0) == (v16 == 0))
    {
      goto LABEL_41;
    }

    v22 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
    if (v22)
    {
      v23 = v22;
      v24 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
      v25 = [v4 clientDriven];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    v15 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];
    v16 = [v4 pegasusDomain];
    if ((v15 != 0) == (v16 == 0))
    {
      goto LABEL_41;
    }

    v27 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];
    if (v27)
    {
      v28 = v27;
      v29 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];
      v30 = [v4 pegasusDomain];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    v32 = (*&self->_has >> 3) & 1;
    if (v32 != ((v4[80] >> 3) & 1))
    {
      goto LABEL_42;
    }

    if (v32)
    {
      isRewrittenUtteranceUsed = self->_isRewrittenUtteranceUsed;
      if (isRewrittenUtteranceUsed != [v4 isRewrittenUtteranceUsed])
      {
        goto LABEL_42;
      }
    }

    v15 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
    v16 = [v4 requestArguments];
    if ((v15 != 0) == (v16 == 0))
    {
      goto LABEL_41;
    }

    v34 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
    if (v34)
    {
      v35 = v34;
      v36 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
      v37 = [v4 requestArguments];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    v15 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
    v16 = [v4 kfedLatency];
    if ((v15 != 0) != (v16 == 0))
    {
      v39 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
      if (!v39)
      {

LABEL_45:
        v44 = 1;
        goto LABEL_43;
      }

      v40 = v39;
      v41 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
      v42 = [v4 kfedLatency];
      v43 = [v41 isEqual:v42];

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

- (void)writeTo:(id)a3
{
  v15 = a3;
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
  v5 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];

  if (v5)
  {
    v6 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];

  if (v7)
  {
    v8 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self pegasusDomain];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v10 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];

  if (v10)
  {
    v11 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];

  v13 = v15;
  if (v12)
  {
    v14 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)setHasIsRewrittenUtteranceUsed:(BOOL)a3
{
  if (a3)
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

- (void)setClientDriven:(id)a3
{
  v4 = a3;
  serverDriven = self->_serverDriven;
  self->_serverDriven = 0;

  v6 = 5;
  if (!v4)
  {
    v6 = 0;
  }

  *&self->_hasKfedLatency = v6;
  clientDriven = self->_clientDriven;
  self->_clientDriven = v4;
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

- (void)setServerDriven:(id)a3
{
  v4 = a3;
  clientDriven = self->_clientDriven;
  self->_clientDriven = 0;

  *&self->_hasKfedLatency = 4 * (v4 != 0);
  serverDriven = self->_serverDriven;
  self->_serverDriven = v4;
}

- (void)setHasPayloadSizeInKB:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasConfidenceScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = POMMESSchemaPOMMESPegasusRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self serverDriven];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self deleteServerDriven];
  }

  v9 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self clientDriven];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self deleteClientDriven];
  }

  v12 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self requestArguments];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(POMMESSchemaPOMMESPegasusRequestEnded *)self deleteRequestArguments];
  }

  v15 = [(POMMESSchemaPOMMESPegasusRequestEnded *)self kfedLatency];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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