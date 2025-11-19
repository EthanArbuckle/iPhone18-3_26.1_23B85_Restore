@interface PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1

- (PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1;
  v5 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"phonemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)v5 setPhonemes:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self dictionaryRepresentation];
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
  if (self->_phonemes)
  {
    v4 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"phonemes"];
  }

  if (*&self->_has)
  {
    v6 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self source];
    v7 = @"PLUSTMDCSIRICURRENTPRONUNCIATIONSOURCE_UNKNOWN";
    if (v6 == 1)
    {
      v7 = @"PLUSTMDCSIRICURRENTPRONUNCIATIONSOURCE_TTS";
    }

    if (v6 == 2)
    {
      v8 = @"PLUSTMDCSIRICURRENTPRONUNCIATIONSOURCE_TMDC";
    }

    else
    {
      v8 = v7;
    }

    [v3 setObject:v8 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];
  v6 = [v4 phonemes];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];
  if (v8)
  {
    v9 = v8;
    v10 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];
    v11 = [v4 phonemes];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    source = self->_source;
    if (source != [v4 source])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self phonemes];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
  }

  if ([v4 isConditionSet:4])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
  }

  if ([v4 isConditionSet:5])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
  }

  if ([v4 isConditionSet:6])
  {
    [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self deletePhonemes];
  }

  if ([v4 isConditionSet:7])
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