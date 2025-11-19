@interface MHSchemaMHVoiceTriggerRePrompted
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHVoiceTriggerRePrompted)initWithDictionary:(id)a3;
- (MHSchemaMHVoiceTriggerRePrompted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHVoiceTriggerRePrompted

- (MHSchemaMHVoiceTriggerRePrompted)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHVoiceTriggerRePrompted;
  v5 = [(MHSchemaMHVoiceTriggerRePrompted *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriSpeechID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHVoiceTriggerRePrompted *)v5 setSiriSpeechID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isRePrompted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerRePrompted setIsRePrompted:](v5, "setIsRePrompted:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"lastWhenRePrompted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(MHSchemaMHVoiceTriggerRePrompted *)v5 setLastWhenRePrompted:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceTriggerRePrompted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerRePrompted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHVoiceTriggerRePrompted *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerRePrompted isRePrompted](self, "isRePrompted")}];
    [v3 setObject:v4 forKeyedSubscript:@"isRePrompted"];
  }

  if (self->_lastWhenRePrompted)
  {
    v5 = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"lastWhenRePrompted"];
  }

  if (self->_siriSpeechID)
  {
    v7 = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"siriSpeechID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_siriSpeechID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isRePrompted;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_lastWhenRePrompted hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];
  v6 = [v4 siriSpeechID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];
    v10 = [v4 siriSpeechID];
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
    isRePrompted = self->_isRePrompted;
    if (isRePrompted != [v4 isRePrompted])
    {
      goto LABEL_15;
    }
  }

  v5 = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];
  v6 = [v4 lastWhenRePrompted];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];
    v16 = [v4 lastWhenRePrompted];
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
  v7 = a3;
  v4 = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end