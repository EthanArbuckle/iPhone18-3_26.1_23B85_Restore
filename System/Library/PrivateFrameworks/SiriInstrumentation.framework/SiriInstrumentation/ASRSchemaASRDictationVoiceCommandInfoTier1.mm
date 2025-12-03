@interface ASRSchemaASRDictationVoiceCommandInfoTier1
- (ASRSchemaASRDictationVoiceCommandInfoTier1)initWithDictionary:(id)dictionary;
- (ASRSchemaASRDictationVoiceCommandInfoTier1)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRDictationVoiceCommandInfoTier1

- (ASRSchemaASRDictationVoiceCommandInfoTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ASRSchemaASRDictationVoiceCommandInfoTier1;
  v5 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"previousUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setPreviousUtterance:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"commandUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setCommandUtterance:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"target"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setTarget:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"payload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)v5 setPayload:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"dictationVoiceCommandLinkId"];
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

- (ASRSchemaASRDictationVoiceCommandInfoTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictionaryRepresentation];
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
  if (self->_commandUtterance)
  {
    commandUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];
    v5 = [commandUtterance copy];
    [dictionary setObject:v5 forKeyedSubscript:@"commandUtterance"];
  }

  if (self->_dictationVoiceCommandLinkId)
  {
    dictationVoiceCommandLinkId = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
    dictionaryRepresentation = [dictationVoiceCommandLinkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dictationVoiceCommandLinkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dictationVoiceCommandLinkId"];
    }
  }

  if (self->_payload)
  {
    payload = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];
    v10 = [payload copy];
    [dictionary setObject:v10 forKeyedSubscript:@"payload"];
  }

  if (self->_previousUtterance)
  {
    previousUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];
    v12 = [previousUtterance copy];
    [dictionary setObject:v12 forKeyedSubscript:@"previousUtterance"];
  }

  if (self->_target)
  {
    target = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];
    v14 = [target copy];
    [dictionary setObject:v14 forKeyedSubscript:@"target"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_previousUtterance hash];
  v4 = [(NSString *)self->_commandUtterance hash]^ v3;
  v5 = [(NSString *)self->_target hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_payload hash];
  return v6 ^ [(SISchemaUUID *)self->_dictationVoiceCommandLinkId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  previousUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];
  previousUtterance2 = [equalCopy previousUtterance];
  if ((previousUtterance != 0) == (previousUtterance2 == 0))
  {
    goto LABEL_26;
  }

  previousUtterance3 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];
  if (previousUtterance3)
  {
    v8 = previousUtterance3;
    previousUtterance4 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];
    previousUtterance5 = [equalCopy previousUtterance];
    v11 = [previousUtterance4 isEqual:previousUtterance5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  previousUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];
  previousUtterance2 = [equalCopy commandUtterance];
  if ((previousUtterance != 0) == (previousUtterance2 == 0))
  {
    goto LABEL_26;
  }

  commandUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];
  if (commandUtterance)
  {
    v13 = commandUtterance;
    commandUtterance2 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];
    commandUtterance3 = [equalCopy commandUtterance];
    v16 = [commandUtterance2 isEqual:commandUtterance3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  previousUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];
  previousUtterance2 = [equalCopy target];
  if ((previousUtterance != 0) == (previousUtterance2 == 0))
  {
    goto LABEL_26;
  }

  target = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];
  if (target)
  {
    v18 = target;
    target2 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];
    target3 = [equalCopy target];
    v21 = [target2 isEqual:target3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  previousUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];
  previousUtterance2 = [equalCopy payload];
  if ((previousUtterance != 0) == (previousUtterance2 == 0))
  {
    goto LABEL_26;
  }

  payload = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];
  if (payload)
  {
    v23 = payload;
    payload2 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];
    payload3 = [equalCopy payload];
    v26 = [payload2 isEqual:payload3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  previousUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
  previousUtterance2 = [equalCopy dictationVoiceCommandLinkId];
  if ((previousUtterance != 0) != (previousUtterance2 == 0))
  {
    dictationVoiceCommandLinkId = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
    if (!dictationVoiceCommandLinkId)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = dictationVoiceCommandLinkId;
    dictationVoiceCommandLinkId2 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
    dictationVoiceCommandLinkId3 = [equalCopy dictationVoiceCommandLinkId];
    v31 = [dictationVoiceCommandLinkId2 isEqual:dictationVoiceCommandLinkId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  previousUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self previousUtterance];

  if (previousUtterance)
  {
    PBDataWriterWriteStringField();
  }

  commandUtterance = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self commandUtterance];

  if (commandUtterance)
  {
    PBDataWriterWriteStringField();
  }

  target = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self target];

  if (target)
  {
    PBDataWriterWriteStringField();
  }

  payload = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self payload];

  if (payload)
  {
    PBDataWriterWriteStringField();
  }

  dictationVoiceCommandLinkId = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];

  v9 = toCopy;
  if (dictationVoiceCommandLinkId)
  {
    dictationVoiceCommandLinkId2 = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRDictationVoiceCommandInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePreviousUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteCommandUtterance];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deleteTarget];
    [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self deletePayload];
  }

  dictationVoiceCommandLinkId = [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self dictationVoiceCommandLinkId];
  v7 = [dictationVoiceCommandLinkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
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