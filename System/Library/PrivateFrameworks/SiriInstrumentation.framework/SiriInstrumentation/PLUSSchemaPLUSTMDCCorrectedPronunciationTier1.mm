@interface PLUSSchemaPLUSTMDCCorrectedPronunciationTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSTMDCCorrectedPronunciationTier1)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSTMDCCorrectedPronunciationTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSTMDCCorrectedPronunciationTier1

- (PLUSSchemaPLUSTMDCCorrectedPronunciationTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSTMDCCorrectedPronunciationTier1;
  v5 = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"firstNamePhonemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)v5 setFirstNamePhonemes:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"lastNamePhonemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)v5 setLastNamePhonemes:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"nicknamePhonemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)v5 setNicknamePhonemes:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSTMDCCorrectedPronunciationTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self dictionaryRepresentation];
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
  if (self->_firstNamePhonemes)
  {
    firstNamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self firstNamePhonemes];
    v5 = [firstNamePhonemes copy];
    [dictionary setObject:v5 forKeyedSubscript:@"firstNamePhonemes"];
  }

  if (self->_lastNamePhonemes)
  {
    lastNamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self lastNamePhonemes];
    v7 = [lastNamePhonemes copy];
    [dictionary setObject:v7 forKeyedSubscript:@"lastNamePhonemes"];
  }

  if (self->_nicknamePhonemes)
  {
    nicknamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self nicknamePhonemes];
    v9 = [nicknamePhonemes copy];
    [dictionary setObject:v9 forKeyedSubscript:@"nicknamePhonemes"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_firstNamePhonemes hash];
  v4 = [(NSString *)self->_lastNamePhonemes hash]^ v3;
  return v4 ^ [(NSString *)self->_nicknamePhonemes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  firstNamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self firstNamePhonemes];
  firstNamePhonemes2 = [equalCopy firstNamePhonemes];
  if ((firstNamePhonemes != 0) == (firstNamePhonemes2 == 0))
  {
    goto LABEL_16;
  }

  firstNamePhonemes3 = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self firstNamePhonemes];
  if (firstNamePhonemes3)
  {
    v8 = firstNamePhonemes3;
    firstNamePhonemes4 = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self firstNamePhonemes];
    firstNamePhonemes5 = [equalCopy firstNamePhonemes];
    v11 = [firstNamePhonemes4 isEqual:firstNamePhonemes5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  firstNamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self lastNamePhonemes];
  firstNamePhonemes2 = [equalCopy lastNamePhonemes];
  if ((firstNamePhonemes != 0) == (firstNamePhonemes2 == 0))
  {
    goto LABEL_16;
  }

  lastNamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self lastNamePhonemes];
  if (lastNamePhonemes)
  {
    v13 = lastNamePhonemes;
    lastNamePhonemes2 = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self lastNamePhonemes];
    lastNamePhonemes3 = [equalCopy lastNamePhonemes];
    v16 = [lastNamePhonemes2 isEqual:lastNamePhonemes3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  firstNamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self nicknamePhonemes];
  firstNamePhonemes2 = [equalCopy nicknamePhonemes];
  if ((firstNamePhonemes != 0) != (firstNamePhonemes2 == 0))
  {
    nicknamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self nicknamePhonemes];
    if (!nicknamePhonemes)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = nicknamePhonemes;
    nicknamePhonemes2 = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self nicknamePhonemes];
    nicknamePhonemes3 = [equalCopy nicknamePhonemes];
    v21 = [nicknamePhonemes2 isEqual:nicknamePhonemes3];

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
  firstNamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self firstNamePhonemes];

  if (firstNamePhonemes)
  {
    PBDataWriterWriteStringField();
  }

  lastNamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self lastNamePhonemes];

  if (lastNamePhonemes)
  {
    PBDataWriterWriteStringField();
  }

  nicknamePhonemes = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self nicknamePhonemes];

  v7 = toCopy;
  if (nicknamePhonemes)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PLUSSchemaPLUSTMDCCorrectedPronunciationTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteFirstNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteLastNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteNicknamePhonemes];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteFirstNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteLastNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteNicknamePhonemes];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteFirstNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteLastNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteNicknamePhonemes];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteFirstNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteLastNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteNicknamePhonemes];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteFirstNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteLastNamePhonemes];
    [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self deleteNicknamePhonemes];
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