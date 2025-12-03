@interface MHSchemaMHVoiceTriggerRePrompted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceTriggerRePrompted)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceTriggerRePrompted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceTriggerRePrompted

- (MHSchemaMHVoiceTriggerRePrompted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MHSchemaMHVoiceTriggerRePrompted;
  v5 = [(MHSchemaMHVoiceTriggerRePrompted *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriSpeechID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHVoiceTriggerRePrompted *)v5 setSiriSpeechID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isRePrompted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerRePrompted setIsRePrompted:](v5, "setIsRePrompted:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"lastWhenRePrompted"];
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

- (MHSchemaMHVoiceTriggerRePrompted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerRePrompted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceTriggerRePrompted *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerRePrompted isRePrompted](self, "isRePrompted")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isRePrompted"];
  }

  if (self->_lastWhenRePrompted)
  {
    lastWhenRePrompted = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];
    v6 = [lastWhenRePrompted copy];
    [dictionary setObject:v6 forKeyedSubscript:@"lastWhenRePrompted"];
  }

  if (self->_siriSpeechID)
  {
    siriSpeechID = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];
    v8 = [siriSpeechID copy];
    [dictionary setObject:v8 forKeyedSubscript:@"siriSpeechID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  siriSpeechID = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];
  siriSpeechID2 = [equalCopy siriSpeechID];
  if ((siriSpeechID != 0) == (siriSpeechID2 == 0))
  {
    goto LABEL_14;
  }

  siriSpeechID3 = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];
  if (siriSpeechID3)
  {
    v8 = siriSpeechID3;
    siriSpeechID4 = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];
    siriSpeechID5 = [equalCopy siriSpeechID];
    v11 = [siriSpeechID4 isEqual:siriSpeechID5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isRePrompted = self->_isRePrompted;
    if (isRePrompted != [equalCopy isRePrompted])
    {
      goto LABEL_15;
    }
  }

  siriSpeechID = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];
  siriSpeechID2 = [equalCopy lastWhenRePrompted];
  if ((siriSpeechID != 0) != (siriSpeechID2 == 0))
  {
    lastWhenRePrompted = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];
    if (!lastWhenRePrompted)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = lastWhenRePrompted;
    lastWhenRePrompted2 = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];
    lastWhenRePrompted3 = [equalCopy lastWhenRePrompted];
    v17 = [lastWhenRePrompted2 isEqual:lastWhenRePrompted3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  siriSpeechID = [(MHSchemaMHVoiceTriggerRePrompted *)self siriSpeechID];

  if (siriSpeechID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  lastWhenRePrompted = [(MHSchemaMHVoiceTriggerRePrompted *)self lastWhenRePrompted];

  v6 = toCopy;
  if (lastWhenRePrompted)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end