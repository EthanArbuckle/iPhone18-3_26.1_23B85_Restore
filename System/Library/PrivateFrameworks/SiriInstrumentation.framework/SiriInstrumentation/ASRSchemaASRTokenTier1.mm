@interface ASRSchemaASRTokenTier1
- (ASRSchemaASRTokenTier1)initWithDictionary:(id)dictionary;
- (ASRSchemaASRTokenTier1)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRTokenTier1

- (ASRSchemaASRTokenTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ASRSchemaASRTokenTier1;
  v5 = [(ASRSchemaASRTokenTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRTokenTier1 *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"phoneSequence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRTokenTier1 *)v5 setPhoneSequence:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ipaPhoneSequence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRTokenTier1 *)v5 setIpaPhoneSequence:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ASRSchemaASRTokenTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRTokenTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRTokenTier1 *)self dictionaryRepresentation];
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
  if (self->_ipaPhoneSequence)
  {
    ipaPhoneSequence = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];
    v5 = [ipaPhoneSequence copy];
    [dictionary setObject:v5 forKeyedSubscript:@"ipaPhoneSequence"];
  }

  if (self->_phoneSequence)
  {
    phoneSequence = [(ASRSchemaASRTokenTier1 *)self phoneSequence];
    v7 = [phoneSequence copy];
    [dictionary setObject:v7 forKeyedSubscript:@"phoneSequence"];
  }

  if (self->_text)
  {
    text = [(ASRSchemaASRTokenTier1 *)self text];
    v9 = [text copy];
    [dictionary setObject:v9 forKeyedSubscript:@"text"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(NSString *)self->_phoneSequence hash]^ v3;
  return v4 ^ [(NSString *)self->_ipaPhoneSequence hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  text = [(ASRSchemaASRTokenTier1 *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  text3 = [(ASRSchemaASRTokenTier1 *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(ASRSchemaASRTokenTier1 *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(ASRSchemaASRTokenTier1 *)self phoneSequence];
  text2 = [equalCopy phoneSequence];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  phoneSequence = [(ASRSchemaASRTokenTier1 *)self phoneSequence];
  if (phoneSequence)
  {
    v13 = phoneSequence;
    phoneSequence2 = [(ASRSchemaASRTokenTier1 *)self phoneSequence];
    phoneSequence3 = [equalCopy phoneSequence];
    v16 = [phoneSequence2 isEqual:phoneSequence3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];
  text2 = [equalCopy ipaPhoneSequence];
  if ((text != 0) != (text2 == 0))
  {
    ipaPhoneSequence = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];
    if (!ipaPhoneSequence)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = ipaPhoneSequence;
    ipaPhoneSequence2 = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];
    ipaPhoneSequence3 = [equalCopy ipaPhoneSequence];
    v21 = [ipaPhoneSequence2 isEqual:ipaPhoneSequence3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(ASRSchemaASRTokenTier1 *)self text];

  if (text)
  {
    PBDataWriterWriteStringField();
  }

  phoneSequence = [(ASRSchemaASRTokenTier1 *)self phoneSequence];

  if (phoneSequence)
  {
    PBDataWriterWriteStringField();
  }

  ipaPhoneSequence = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];

  v7 = toCopy;
  if (ipaPhoneSequence)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = ASRSchemaASRTokenTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
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