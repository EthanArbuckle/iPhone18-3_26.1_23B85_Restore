@interface ASRSchemaASRDictationVoiceCommandInfoTier1
- (ASRSchemaASRDictationVoiceCommandInfoTier1)initWithDictionary:(id)a3;
- (ASRSchemaASRDictationVoiceCommandInfoTier1)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRDictationVoiceCommandInfoTier1

- (ASRSchemaASRDictationVoiceCommandInfoTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ASRSchemaASRDictationVoiceCommandInfoTier1;
  v5 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"previousUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setPreviousUtterance:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"commandUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setCommandUtterance:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"target"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setTarget:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"payload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setPayload:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"dictationVoiceCommandLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setDictationVoiceCommandLinkId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ASRSchemaASRDictationVoiceCommandInfoTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictionaryRepresentation];
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
  if (self->_commandUtterance)
  {
    v4 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"commandUtterance"];
  }

  if (self->_dictationVoiceCommandLinkId)
  {
    v6 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"dictationVoiceCommandLinkId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"dictationVoiceCommandLinkId"];
    }
  }

  if (self->_payload)
  {
    v9 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"payload"];
  }

  if (self->_previousUtterance)
  {
    v11 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"previousUtterance"];
  }

  if (self->_target)
  {
    v13 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"target"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_previousUtterance hash];
  v4 = [(NSString *)self->_commandUtterance hash]^ v3;
  v5 = [(NSString *)self->_target hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_payload hash];
  return v6 ^ [(SISchemaUUID *)self->_dictationVoiceCommandLinkId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];
  v6 = [v4 previousUtterance];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];
    v10 = [v4 previousUtterance];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];
  v6 = [v4 commandUtterance];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];
  if (v12)
  {
    v13 = v12;
    v14 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];
    v15 = [v4 commandUtterance];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];
  v6 = [v4 target];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];
  if (v17)
  {
    v18 = v17;
    v19 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];
    v20 = [v4 target];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];
  v6 = [v4 payload];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];
  if (v22)
  {
    v23 = v22;
    v24 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];
    v25 = [v4 payload];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
  v6 = [v4 dictationVoiceCommandLinkId];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
    v30 = [v4 dictationVoiceCommandLinkId];
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
  v11 = a3;
  v4 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];

  v9 = v11;
  if (v8)
  {
    v10 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRDictationVoiceCommandInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  if ([v4 isConditionSet:4])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  if ([v4 isConditionSet:5])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  if ([v4 isConditionSet:6])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  if ([v4 isConditionSet:7])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  v6 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteDictationVoiceCommandLinkId];
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