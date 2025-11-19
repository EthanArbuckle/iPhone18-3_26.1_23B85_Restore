@interface ORCHSchemaORCHMultiUserScore
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHMultiUserScore)initWithDictionary:(id)a3;
- (ORCHSchemaORCHMultiUserScore)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserScoreIdHash:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHMultiUserScore

- (ORCHSchemaORCHMultiUserScore)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHMultiUserScore;
  v5 = [(ORCHSchemaORCHMultiUserScore *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ORCHSchemaORCHMultiUserScore *)v5 setLoggableSharedUserId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMultiUserScore setScore:](v5, "setScore:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(ORCHSchemaORCHMultiUserScore *)v5 setUserEphemeralId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"userScoreIdHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMultiUserScore setUserScoreIdHash:](v5, "setUserScoreIdHash:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"loggableUserIdHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ORCHSchemaORCHMultiUserScore *)v5 setLoggableUserIdHash:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHMultiUserScore)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMultiUserScore *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHMultiUserScore *)self dictionaryRepresentation];
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
  if (self->_loggableSharedUserId)
  {
    v4 = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    v6 = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ORCHSchemaORCHMultiUserScore score](self, "score")}];
    [v3 setObject:v8 forKeyedSubscript:@"score"];
  }

  if (self->_userEphemeralId)
  {
    v9 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"userEphemeralId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"userEphemeralId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ORCHSchemaORCHMultiUserScore userScoreIdHash](self, "userScoreIdHash")}];
    [v3 setObject:v12 forKeyedSubscript:@"userScoreIdHash"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_loggableSharedUserId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_score;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SISchemaUUID *)self->_userEphemeralId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_userScoreIdHash;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_loggableUserIdHash hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];
  v6 = [v4 loggableSharedUserId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v7 = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];
    v10 = [v4 loggableSharedUserId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    score = self->_score;
    if (score != [v4 score])
    {
      goto LABEL_23;
    }
  }

  v5 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
  v6 = [v4 userEphemeralId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
  if (v13)
  {
    v14 = v13;
    v15 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
    v16 = [v4 userEphemeralId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 1) & 1;
  if (v18 != ((v4[48] >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    userScoreIdHash = self->_userScoreIdHash;
    if (userScoreIdHash != [v4 userScoreIdHash])
    {
      goto LABEL_23;
    }
  }

  v5 = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];
  v6 = [v4 loggableUserIdHash];
  if ((v5 != 0) != (v6 == 0))
  {
    v20 = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];
    if (!v20)
    {

LABEL_26:
      v25 = 1;
      goto LABEL_24;
    }

    v21 = v20;
    v22 = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];
    v23 = [v4 loggableUserIdHash];
    v24 = [v22 isEqual:v23];

    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v25 = 0;
LABEL_24:

  return v25;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(ORCHSchemaORCHMultiUserScore *)self loggableSharedUserId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];

  if (v5)
  {
    v6 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v7 = [(ORCHSchemaORCHMultiUserScore *)self loggableUserIdHash];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (void)setHasUserScoreIdHash:(BOOL)a3
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
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHMultiUserScore;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(ORCHSchemaORCHMultiUserScore *)self deleteLoggableSharedUserId];
  }

  v6 = [(ORCHSchemaORCHMultiUserScore *)self userEphemeralId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHMultiUserScore *)self deleteUserEphemeralId];
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