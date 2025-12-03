@interface FLOWSchemaFLOWHomeAutomationRequest
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWHomeAutomationRequest)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWHomeAutomationRequest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHomeAutomationRequestErrorReason:(id)reason;
- (void)setHasHomeAutomationRequestDuration:(BOOL)duration;
- (void)setHasHomeAutomationRequestOutcome:(BOOL)outcome;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWHomeAutomationRequest

- (FLOWSchemaFLOWHomeAutomationRequest)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = FLOWSchemaFLOWHomeAutomationRequest;
  v5 = [(FLOWSchemaFLOWHomeAutomationRequest *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"homeAutomationRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWHomeAutomationRequest *)v5 setHomeAutomationRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"homeAutomationRequestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequest setHomeAutomationRequestType:](v5, "setHomeAutomationRequestType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"homeAutomationRequestOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequest setHomeAutomationRequestOutcome:](v5, "setHomeAutomationRequestOutcome:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"homeAutomationRequestErrorReason"];
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

    v18 = [dictionaryCopy objectForKeyedSubscript:{@"homeAutomationRequestDuration", v23, v24, v25}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationRequest setHomeAutomationRequestDuration:](v5, "setHomeAutomationRequestDuration:", [v18 unsignedIntValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"homeAutomationRequestMetadata"];
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

- (FLOWSchemaFLOWHomeAutomationRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeAutomationRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWHomeAutomationRequest *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeAutomationRequest homeAutomationRequestDuration](self, "homeAutomationRequestDuration")}];
    [dictionary setObject:v4 forKeyedSubscript:@"homeAutomationRequestDuration"];
  }

  if (self->_homeAutomationRequestErrorReasons)
  {
    homeAutomationRequestErrorReasons = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestErrorReasons];
    v6 = [homeAutomationRequestErrorReasons copy];
    [dictionary setObject:v6 forKeyedSubscript:@"homeAutomationRequestErrorReason"];
  }

  if (self->_homeAutomationRequestId)
  {
    homeAutomationRequestId = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
    dictionaryRepresentation = [homeAutomationRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"homeAutomationRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"homeAutomationRequestId"];
    }
  }

  if (self->_homeAutomationRequestMetadata)
  {
    homeAutomationRequestMetadata = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
    dictionaryRepresentation2 = [homeAutomationRequestMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"homeAutomationRequestMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"homeAutomationRequestMetadata"];
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

    [dictionary setObject:v15 forKeyedSubscript:@"homeAutomationRequestOutcome"];
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

    [dictionary setObject:v17 forKeyedSubscript:@"homeAutomationRequestType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  homeAutomationRequestId = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
  homeAutomationRequestId2 = [equalCopy homeAutomationRequestId];
  if ((homeAutomationRequestId != 0) == (homeAutomationRequestId2 == 0))
  {
    goto LABEL_26;
  }

  homeAutomationRequestId3 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
  if (homeAutomationRequestId3)
  {
    v8 = homeAutomationRequestId3;
    homeAutomationRequestId4 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
    homeAutomationRequestId5 = [equalCopy homeAutomationRequestId];
    v11 = [homeAutomationRequestId4 isEqual:homeAutomationRequestId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[48];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    homeAutomationRequestType = self->_homeAutomationRequestType;
    if (homeAutomationRequestType != [equalCopy homeAutomationRequestType])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[48];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    homeAutomationRequestOutcome = self->_homeAutomationRequestOutcome;
    if (homeAutomationRequestOutcome != [equalCopy homeAutomationRequestOutcome])
    {
      goto LABEL_27;
    }
  }

  homeAutomationRequestId = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestErrorReasons];
  homeAutomationRequestId2 = [equalCopy homeAutomationRequestErrorReasons];
  if ((homeAutomationRequestId != 0) == (homeAutomationRequestId2 == 0))
  {
    goto LABEL_26;
  }

  homeAutomationRequestErrorReasons = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestErrorReasons];
  if (homeAutomationRequestErrorReasons)
  {
    v18 = homeAutomationRequestErrorReasons;
    homeAutomationRequestErrorReasons2 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestErrorReasons];
    homeAutomationRequestErrorReasons3 = [equalCopy homeAutomationRequestErrorReasons];
    v21 = [homeAutomationRequestErrorReasons2 isEqual:homeAutomationRequestErrorReasons3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v22 = (*&self->_has >> 2) & 1;
  if (v22 != ((equalCopy[48] >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v22)
  {
    homeAutomationRequestDuration = self->_homeAutomationRequestDuration;
    if (homeAutomationRequestDuration != [equalCopy homeAutomationRequestDuration])
    {
      goto LABEL_27;
    }
  }

  homeAutomationRequestId = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
  homeAutomationRequestId2 = [equalCopy homeAutomationRequestMetadata];
  if ((homeAutomationRequestId != 0) == (homeAutomationRequestId2 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  homeAutomationRequestMetadata = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
  if (!homeAutomationRequestMetadata)
  {

LABEL_30:
    v29 = 1;
    goto LABEL_28;
  }

  v25 = homeAutomationRequestMetadata;
  homeAutomationRequestMetadata2 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
  homeAutomationRequestMetadata3 = [equalCopy homeAutomationRequestMetadata];
  v28 = [homeAutomationRequestMetadata2 isEqual:homeAutomationRequestMetadata3];

  if (v28)
  {
    goto LABEL_30;
  }

LABEL_27:
  v29 = 0;
LABEL_28:

  return v29;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  homeAutomationRequestId = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];

  if (homeAutomationRequestId)
  {
    homeAutomationRequestId2 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
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

  homeAutomationRequestMetadata = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];

  if (homeAutomationRequestMetadata)
  {
    homeAutomationRequestMetadata2 = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasHomeAutomationRequestDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addHomeAutomationRequestErrorReason:(id)reason
{
  reasonCopy = reason;
  homeAutomationRequestErrorReasons = self->_homeAutomationRequestErrorReasons;
  v8 = reasonCopy;
  if (!homeAutomationRequestErrorReasons)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_homeAutomationRequestErrorReasons;
    self->_homeAutomationRequestErrorReasons = array;

    reasonCopy = v8;
    homeAutomationRequestErrorReasons = self->_homeAutomationRequestErrorReasons;
  }

  [(NSArray *)homeAutomationRequestErrorReasons addObject:reasonCopy];
}

- (void)setHasHomeAutomationRequestOutcome:(BOOL)outcome
{
  if (outcome)
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
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWHomeAutomationRequest;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  homeAutomationRequestId = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestId];
  v7 = [homeAutomationRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWHomeAutomationRequest *)self deleteHomeAutomationRequestId];
  }

  homeAutomationRequestMetadata = [(FLOWSchemaFLOWHomeAutomationRequest *)self homeAutomationRequestMetadata];
  v10 = [homeAutomationRequestMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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