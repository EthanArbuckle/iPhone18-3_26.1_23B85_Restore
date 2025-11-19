@interface FLOWSchemaFLOWHomeAutomationRequest
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWHomeAutomationRequest)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWHomeAutomationRequest)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHomeAutomationRequestErrorReason:(id)a3;
- (void)setHasHomeAutomationRequestDuration:(BOOL)a3;
- (void)setHasHomeAutomationRequestOutcome:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWHomeAutomationRequest

- (FLOWSchemaFLOWHomeAutomationRequest)initWithDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = FLOWSchemaFLOWHomeAutomationRequest;
  v5 = [(FLOWSchemaFLOWHomeAutomationRequest *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"homeAutomationRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWHomeAutomationRequest *)v5 setHomeAutomationRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"homeAutomationRequestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequest setHomeAutomationRequestType:](v5, "setHomeAutomationRequestType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"homeAutomationRequestOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequest setHomeAutomationRequestOutcome:](v5, "setHomeAutomationRequestOutcome:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"homeAutomationRequestErrorReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v8;
      v24 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 copy];
              [(FLOWSchemaFLOWHomeAutomationRequest *)v5 addHomeAutomationRequestErrorReason:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v13);
      }

      v8 = v23;
    }

    v18 = [v4 objectForKeyedSubscript:{@"homeAutomationRequestDuration", v23, v24, v25}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequest setHomeAutomationRequestDuration:](v5, "setHomeAutomationRequestDuration:", [v18 unsignedIntValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"homeAutomationRequestMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[FLOWSchemaFLOWHomeAutomationRequestMetadata alloc] initWithDictionary:v19];
      [(FLOWSchemaFLOWHomeAutomationRequest *)v5 setHomeAutomationRequestMetadata:v20];
    }

    v21 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWHomeAutomationRequest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeAutomationRequest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWHomeAutomationRequest *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeAutomationRequest homeAutomationRequestDuration](self, "homeAutomationRequestDuration")}];
    [v3 setObject:v4 forKeyedSubscript:@"homeAutomationRequestDuration"];
  }

  if (self->_homeAutomationRequestErrorReasons)
  {
    v5 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestErrorReasons];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"homeAutomationRequestErrorReason"];
  }

  if (self->_homeAutomationRequestId)
  {
    v7 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"homeAutomationRequestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"homeAutomationRequestId"];
    }
  }

  if (self->_homeAutomationRequestMetadata)
  {
    v10 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"homeAutomationRequestMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"homeAutomationRequestMetadata"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestOutcome]- 1;
    if (v14 > 2)
    {
      v15 = @"FLOWHOMEAUTOMATIONOUTCOME_UNKOWN";
    }

    else
    {
      v15 = off_1E78D5180[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"homeAutomationRequestOutcome"];
    has = self->_has;
  }

  if (has)
  {
    v16 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestType]- 1;
    if (v16 > 9)
    {
      v17 = @"FLOWHOMEAUTOMATIONREQUESTTYPE_UNKNOWN";
    }

    else
    {
      v17 = off_1E78D5198[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"homeAutomationRequestType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_homeAutomationRequestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_homeAutomationRequestType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_homeAutomationRequestOutcome;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSArray *)self->_homeAutomationRequestErrorReasons hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_homeAutomationRequestDuration;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(FLOWSchemaFLOWHomeAutomationRequestMetadata *)self->_homeAutomationRequestMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
  v6 = [v4 homeAutomationRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
    v10 = [v4 homeAutomationRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[48];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    homeAutomationRequestType = self->_homeAutomationRequestType;
    if (homeAutomationRequestType != [v4 homeAutomationRequestType])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[48];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    homeAutomationRequestOutcome = self->_homeAutomationRequestOutcome;
    if (homeAutomationRequestOutcome != [v4 homeAutomationRequestOutcome])
    {
      goto LABEL_27;
    }
  }

  v5 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestErrorReasons];
  v6 = [v4 homeAutomationRequestErrorReasons];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestErrorReasons];
  if (v17)
  {
    v18 = v17;
    v19 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestErrorReasons];
    v20 = [v4 homeAutomationRequestErrorReasons];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v22 = (*&self->_has >> 2) & 1;
  if (v22 != ((v4[48] >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v22)
  {
    homeAutomationRequestDuration = self->_homeAutomationRequestDuration;
    if (homeAutomationRequestDuration != [v4 homeAutomationRequestDuration])
    {
      goto LABEL_27;
    }
  }

  v5 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
  v6 = [v4 homeAutomationRequestMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v24 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
  if (!v24)
  {

LABEL_30:
    v29 = 1;
    goto LABEL_28;
  }

  v25 = v24;
  v26 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
  v27 = [v4 homeAutomationRequestMetadata];
  v28 = [v26 isEqual:v27];

  if (v28)
  {
    goto LABEL_30;
  }

LABEL_27:
  v29 = 0;
LABEL_28:

  return v29;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];

  if (v5)
  {
    v6 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_homeAutomationRequestErrorReasons;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteStringField();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v13 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];

  if (v13)
  {
    v14 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasHomeAutomationRequestDuration:(BOOL)a3
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

- (void)addHomeAutomationRequestErrorReason:(id)a3
{
  v4 = a3;
  homeAutomationRequestErrorReasons = self->_homeAutomationRequestErrorReasons;
  v8 = v4;
  if (!homeAutomationRequestErrorReasons)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_homeAutomationRequestErrorReasons;
    self->_homeAutomationRequestErrorReasons = v6;

    v4 = v8;
    homeAutomationRequestErrorReasons = self->_homeAutomationRequestErrorReasons;
  }

  [(NSArray *)homeAutomationRequestErrorReasons addObject:v4];
}

- (void)setHasHomeAutomationRequestOutcome:(BOOL)a3
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
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWHomeAutomationRequest;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWHomeAutomationRequest *)self deleteHomeAutomationRequestId];
  }

  v9 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWHomeAutomationRequest *)self deleteHomeAutomationRequestMetadata];
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