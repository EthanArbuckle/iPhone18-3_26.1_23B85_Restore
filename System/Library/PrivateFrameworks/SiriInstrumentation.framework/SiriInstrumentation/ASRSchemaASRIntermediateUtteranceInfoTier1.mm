@interface ASRSchemaASRIntermediateUtteranceInfoTier1
- (ASRSchemaASRIntermediateUtteranceInfoTier1)initWithDictionary:(id)a3;
- (ASRSchemaASRIntermediateUtteranceInfoTier1)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRIntermediateUtteranceInfoTier1

- (ASRSchemaASRIntermediateUtteranceInfoTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ASRSchemaASRIntermediateUtteranceInfoTier1;
  v5 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"unrepairedPostItn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setUnrepairedPostItn:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"phoneticMatchInput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setPhoneticMatchInput:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"phoneticMatchOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setPhoneticMatchOutput:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setLoggableSharedUserId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"loggableUserIdHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setLoggableUserIdHash:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ASRSchemaASRIntermediateUtteranceInfoTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self dictionaryRepresentation];
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
    v4 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    v6 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (self->_phoneticMatchInput)
  {
    v8 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"phoneticMatchInput"];
  }

  if (self->_phoneticMatchOutput)
  {
    v10 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"phoneticMatchOutput"];
  }

  if (self->_unrepairedPostItn)
  {
    v12 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"unrepairedPostItn"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_unrepairedPostItn hash];
  v4 = [(NSString *)self->_phoneticMatchInput hash]^ v3;
  v5 = [(NSString *)self->_phoneticMatchOutput hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_loggableSharedUserId hash];
  return v6 ^ [(NSString *)self->_loggableUserIdHash hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];
  v6 = [v4 unrepairedPostItn];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];
    v10 = [v4 unrepairedPostItn];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];
  v6 = [v4 phoneticMatchInput];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];
  if (v12)
  {
    v13 = v12;
    v14 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];
    v15 = [v4 phoneticMatchInput];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];
  v6 = [v4 phoneticMatchOutput];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];
  if (v17)
  {
    v18 = v17;
    v19 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];
    v20 = [v4 phoneticMatchOutput];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];
  v6 = [v4 loggableSharedUserId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];
  if (v22)
  {
    v23 = v22;
    v24 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];
    v25 = [v4 loggableSharedUserId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];
  v6 = [v4 loggableUserIdHash];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];
    v30 = [v4 loggableUserIdHash];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];

  v9 = v10;
  if (v8)
  {
    PBDataWriterWriteStringField();
    v9 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASRSchemaASRIntermediateUtteranceInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([v4 isConditionSet:4])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([v4 isConditionSet:5])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([v4 isConditionSet:6])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([v4 isConditionSet:7])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([v4 isConditionSet:8])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteLoggableSharedUserId];
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