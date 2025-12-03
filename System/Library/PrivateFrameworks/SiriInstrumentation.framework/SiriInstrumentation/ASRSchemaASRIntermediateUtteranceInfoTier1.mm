@interface ASRSchemaASRIntermediateUtteranceInfoTier1
- (ASRSchemaASRIntermediateUtteranceInfoTier1)initWithDictionary:(id)dictionary;
- (ASRSchemaASRIntermediateUtteranceInfoTier1)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRIntermediateUtteranceInfoTier1

- (ASRSchemaASRIntermediateUtteranceInfoTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ASRSchemaASRIntermediateUtteranceInfoTier1;
  v5 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"unrepairedPostItn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setUnrepairedPostItn:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"phoneticMatchInput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setPhoneticMatchInput:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"phoneticMatchOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setPhoneticMatchOutput:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"loggableSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)v5 setLoggableSharedUserId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"loggableUserIdHash"];
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

- (ASRSchemaASRIntermediateUtteranceInfoTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self dictionaryRepresentation];
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
  if (self->_loggableSharedUserId)
  {
    loggableSharedUserId = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];
    v5 = [loggableSharedUserId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"loggableSharedUserId"];
  }

  if (self->_loggableUserIdHash)
  {
    loggableUserIdHash = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];
    v7 = [loggableUserIdHash copy];
    [dictionary setObject:v7 forKeyedSubscript:@"loggableUserIdHash"];
  }

  if (self->_phoneticMatchInput)
  {
    phoneticMatchInput = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];
    v9 = [phoneticMatchInput copy];
    [dictionary setObject:v9 forKeyedSubscript:@"phoneticMatchInput"];
  }

  if (self->_phoneticMatchOutput)
  {
    phoneticMatchOutput = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];
    v11 = [phoneticMatchOutput copy];
    [dictionary setObject:v11 forKeyedSubscript:@"phoneticMatchOutput"];
  }

  if (self->_unrepairedPostItn)
  {
    unrepairedPostItn = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];
    v13 = [unrepairedPostItn copy];
    [dictionary setObject:v13 forKeyedSubscript:@"unrepairedPostItn"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_unrepairedPostItn hash];
  v4 = [(NSString *)self->_phoneticMatchInput hash]^ v3;
  v5 = [(NSString *)self->_phoneticMatchOutput hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_loggableSharedUserId hash];
  return v6 ^ [(NSString *)self->_loggableUserIdHash hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  unrepairedPostItn = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];
  unrepairedPostItn2 = [equalCopy unrepairedPostItn];
  if ((unrepairedPostItn != 0) == (unrepairedPostItn2 == 0))
  {
    goto LABEL_26;
  }

  unrepairedPostItn3 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];
  if (unrepairedPostItn3)
  {
    v8 = unrepairedPostItn3;
    unrepairedPostItn4 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];
    unrepairedPostItn5 = [equalCopy unrepairedPostItn];
    v11 = [unrepairedPostItn4 isEqual:unrepairedPostItn5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  unrepairedPostItn = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];
  unrepairedPostItn2 = [equalCopy phoneticMatchInput];
  if ((unrepairedPostItn != 0) == (unrepairedPostItn2 == 0))
  {
    goto LABEL_26;
  }

  phoneticMatchInput = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];
  if (phoneticMatchInput)
  {
    v13 = phoneticMatchInput;
    phoneticMatchInput2 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];
    phoneticMatchInput3 = [equalCopy phoneticMatchInput];
    v16 = [phoneticMatchInput2 isEqual:phoneticMatchInput3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  unrepairedPostItn = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];
  unrepairedPostItn2 = [equalCopy phoneticMatchOutput];
  if ((unrepairedPostItn != 0) == (unrepairedPostItn2 == 0))
  {
    goto LABEL_26;
  }

  phoneticMatchOutput = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];
  if (phoneticMatchOutput)
  {
    v18 = phoneticMatchOutput;
    phoneticMatchOutput2 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];
    phoneticMatchOutput3 = [equalCopy phoneticMatchOutput];
    v21 = [phoneticMatchOutput2 isEqual:phoneticMatchOutput3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  unrepairedPostItn = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];
  unrepairedPostItn2 = [equalCopy loggableSharedUserId];
  if ((unrepairedPostItn != 0) == (unrepairedPostItn2 == 0))
  {
    goto LABEL_26;
  }

  loggableSharedUserId = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];
  if (loggableSharedUserId)
  {
    v23 = loggableSharedUserId;
    loggableSharedUserId2 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];
    loggableSharedUserId3 = [equalCopy loggableSharedUserId];
    v26 = [loggableSharedUserId2 isEqual:loggableSharedUserId3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  unrepairedPostItn = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];
  unrepairedPostItn2 = [equalCopy loggableUserIdHash];
  if ((unrepairedPostItn != 0) != (unrepairedPostItn2 == 0))
  {
    loggableUserIdHash = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];
    if (!loggableUserIdHash)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = loggableUserIdHash;
    loggableUserIdHash2 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];
    loggableUserIdHash3 = [equalCopy loggableUserIdHash];
    v31 = [loggableUserIdHash2 isEqual:loggableUserIdHash3];

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
  unrepairedPostItn = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self unrepairedPostItn];

  if (unrepairedPostItn)
  {
    PBDataWriterWriteStringField();
  }

  phoneticMatchInput = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchInput];

  if (phoneticMatchInput)
  {
    PBDataWriterWriteStringField();
  }

  phoneticMatchOutput = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self phoneticMatchOutput];

  if (phoneticMatchOutput)
  {
    PBDataWriterWriteStringField();
  }

  loggableSharedUserId = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableSharedUserId];

  if (loggableSharedUserId)
  {
    PBDataWriterWriteStringField();
  }

  loggableUserIdHash = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self loggableUserIdHash];

  v9 = toCopy;
  if (loggableUserIdHash)
  {
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = ASRSchemaASRIntermediateUtteranceInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deleteUnrepairedPostItn];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchInput];
    [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self deletePhoneticMatchOutput];
  }

  if ([policyCopy isConditionSet:8])
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