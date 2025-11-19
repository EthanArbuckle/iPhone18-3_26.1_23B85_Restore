@interface ASRSchemaASRTokenTier1
- (ASRSchemaASRTokenTier1)initWithDictionary:(id)a3;
- (ASRSchemaASRTokenTier1)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRTokenTier1

- (ASRSchemaASRTokenTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASRSchemaASRTokenTier1;
  v5 = [(ASRSchemaASRTokenTier1 *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASRTokenTier1 *)v5 setText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"phoneSequence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASRTokenTier1 *)v5 setPhoneSequence:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ipaPhoneSequence"];
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

- (ASRSchemaASRTokenTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRTokenTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRTokenTier1 *)self dictionaryRepresentation];
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
  if (self->_ipaPhoneSequence)
  {
    v4 = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"ipaPhoneSequence"];
  }

  if (self->_phoneSequence)
  {
    v6 = [(ASRSchemaASRTokenTier1 *)self phoneSequence];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"phoneSequence"];
  }

  if (self->_text)
  {
    v8 = [(ASRSchemaASRTokenTier1 *)self text];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"text"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(NSString *)self->_phoneSequence hash]^ v3;
  return v4 ^ [(NSString *)self->_ipaPhoneSequence hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(ASRSchemaASRTokenTier1 *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(ASRSchemaASRTokenTier1 *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRTokenTier1 *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRTokenTier1 *)self phoneSequence];
  v6 = [v4 phoneSequence];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(ASRSchemaASRTokenTier1 *)self phoneSequence];
  if (v12)
  {
    v13 = v12;
    v14 = [(ASRSchemaASRTokenTier1 *)self phoneSequence];
    v15 = [v4 phoneSequence];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];
  v6 = [v4 ipaPhoneSequence];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];
    v20 = [v4 ipaPhoneSequence];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ASRSchemaASRTokenTier1 *)self text];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(ASRSchemaASRTokenTier1 *)self phoneSequence];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(ASRSchemaASRTokenTier1 *)self ipaPhoneSequence];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASRSchemaASRTokenTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
  }

  if ([v4 isConditionSet:4])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
  }

  if ([v4 isConditionSet:5])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
  }

  if ([v4 isConditionSet:6])
  {
    [(ASRSchemaASRTokenTier1 *)self deleteText];
    [(ASRSchemaASRTokenTier1 *)self deletePhoneSequence];
    [(ASRSchemaASRTokenTier1 *)self deleteIpaPhoneSequence];
  }

  if ([v4 isConditionSet:7])
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