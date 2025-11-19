@interface NLXSchemaCDMSiriVocabularySpanDataTier1
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMSiriVocabularySpanDataTier1)initWithDictionary:(id)a3;
- (NLXSchemaCDMSiriVocabularySpanDataTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPriorScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMSiriVocabularySpanDataTier1

- (NLXSchemaCDMSiriVocabularySpanDataTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMSiriVocabularySpanDataTier1;
  v5 = [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"priorOrdinality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMSiriVocabularySpanDataTier1 setPriorOrdinality:](v5, "setPriorOrdinality:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"priorScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)v5 setPriorScore:?];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSiriVocabularySpanDataTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMSiriVocabularySpanDataTier1 priorOrdinality](self, "priorOrdinality")}];
    [v3 setObject:v5 forKeyedSubscript:@"priorOrdinality"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self priorScore];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"priorScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_priorOrdinality;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    return v8 ^ v4;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  priorScore = self->_priorScore;
  if (priorScore < 0.0)
  {
    priorScore = -priorScore;
  }

  *v2.i64 = floor(priorScore + 0.5);
  v6 = (priorScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    priorOrdinality = self->_priorOrdinality;
    if (priorOrdinality != [v4 priorOrdinality])
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (priorScore = self->_priorScore, [v4 priorScore], priorScore == v10))
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)setHasPriorScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NLXSchemaCDMSiriVocabularySpanDataTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorOrdinality];
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorScore];
  }

  if ([v4 isConditionSet:4])
  {
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorOrdinality];
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorScore];
  }

  if ([v4 isConditionSet:5])
  {
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorOrdinality];
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorScore];
  }

  if ([v4 isConditionSet:6])
  {
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorOrdinality];
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorScore];
  }

  if ([v4 isConditionSet:7])
  {
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorOrdinality];
    [(NLXSchemaCDMSiriVocabularySpanDataTier1 *)self deletePriorScore];
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