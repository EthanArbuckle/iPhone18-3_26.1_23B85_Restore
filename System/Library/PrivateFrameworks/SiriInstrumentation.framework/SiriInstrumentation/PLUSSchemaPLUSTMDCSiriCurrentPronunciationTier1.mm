@interface PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1

- (PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1;
  v5 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"phonemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)v5 setPhonemes:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self dictionaryRepresentation];
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
  if (self->_phonemes)
  {
    phonemes = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];
    v5 = [phonemes copy];
    [dictionary setObject:v5 forKeyedSubscript:@"phonemes"];
  }

  if (*&self->_has)
  {
    source = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self source];
    v7 = @"PLUSTMDCSIRICURRENTPRONUNCIATIONSOURCE_UNKNOWN";
    if (source == 1)
    {
      v7 = @"PLUSTMDCSIRICURRENTPRONUNCIATIONSOURCE_TTS";
    }

    if (source == 2)
    {
      v8 = @"PLUSTMDCSIRICURRENTPRONUNCIATIONSOURCE_TMDC";
    }

    else
    {
      v8 = v7;
    }

    [dictionary setObject:v8 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_phonemes hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_source;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  phonemes = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];
  phonemes2 = [equalCopy phonemes];
  v7 = phonemes2;
  if ((phonemes != 0) == (phonemes2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  phonemes3 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];
  if (phonemes3)
  {
    v9 = phonemes3;
    phonemes4 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];
    phonemes5 = [equalCopy phonemes];
    v12 = [phonemes4 isEqual:phonemes5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    source = self->_source;
    if (source != [equalCopy source])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  phonemes = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];

  if (phonemes)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
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