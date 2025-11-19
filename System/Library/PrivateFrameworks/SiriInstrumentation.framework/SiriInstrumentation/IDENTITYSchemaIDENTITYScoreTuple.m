@interface IDENTITYSchemaIDENTITYScoreTuple
- (BOOL)isEqual:(id)a3;
- (IDENTITYSchemaIDENTITYScoreTuple)initWithDictionary:(id)a3;
- (IDENTITYSchemaIDENTITYScoreTuple)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IDENTITYSchemaIDENTITYScoreTuple

- (IDENTITYSchemaIDENTITYScoreTuple)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IDENTITYSchemaIDENTITYScoreTuple;
  v5 = [(IDENTITYSchemaIDENTITYScoreTuple *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IDENTITYSchemaIDENTITYScoreTuple *)v5 setLoggableSharedUserId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"confidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYScoreTuple setConfidenceScore:](v5, "setConfidenceScore:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(IDENTITYSchemaIDENTITYScoreTuple *)v5 setUserEphemeralId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYScoreTuple)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYScoreTuple *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IDENTITYSchemaIDENTITYScoreTuple *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDENTITYSchemaIDENTITYScoreTuple confidenceScore](self, "confidenceScore")}];
    [v3 setObject:v4 forKeyedSubscript:@"confidenceScore"];
  }

  if (self->_loggableSharedUserId)
  {
    v5 = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_userEphemeralId)
  {
    v7 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"userEphemeralId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"userEphemeralId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_loggableSharedUserId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_confidenceScore;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaUUID *)self->_userEphemeralId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];
  v6 = [v4 loggableSharedUserId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];
    v10 = [v4 loggableSharedUserId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    confidenceScore = self->_confidenceScore;
    if (confidenceScore != [v4 confidenceScore])
    {
      goto LABEL_15;
    }
  }

  v5 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
  v6 = [v4 userEphemeralId];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
    v16 = [v4 userEphemeralId];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(IDENTITYSchemaIDENTITYScoreTuple *)self loggableSharedUserId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];

  v6 = v8;
  if (v5)
  {
    v7 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IDENTITYSchemaIDENTITYScoreTuple;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(IDENTITYSchemaIDENTITYScoreTuple *)self deleteLoggableSharedUserId];
  }

  v6 = [(IDENTITYSchemaIDENTITYScoreTuple *)self userEphemeralId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IDENTITYSchemaIDENTITYScoreTuple *)self deleteUserEphemeralId];
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