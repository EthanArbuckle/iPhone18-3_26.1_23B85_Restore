@interface NLXSchemaSSUUserRequestCacheEntryInfo
- (BOOL)isEqual:(id)equal;
- (NLXSchemaSSUUserRequestCacheEntryInfo)initWithDictionary:(id)dictionary;
- (NLXSchemaSSUUserRequestCacheEntryInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCategoryType:(BOOL)type;
- (void)setHasClosestNegativeExampleScore:(BOOL)score;
- (void)setHasClosestPositiveExampleScore:(BOOL)score;
- (void)setHasNumEncodingSimilarityScoreComparisons:(BOOL)comparisons;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaSSUUserRequestCacheEntryInfo

- (NLXSchemaSSUUserRequestCacheEntryInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = NLXSchemaSSUUserRequestCacheEntryInfo;
  v5 = [(NLXSchemaSSUUserRequestCacheEntryInfo *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"triggerReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUUserRequestCacheEntryInfo setTriggerReason:](v5, "setTriggerReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"categoryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUUserRequestCacheEntryInfo setCategoryType:](v5, "setCategoryType:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numEncodingSimilarityScoreComparisons"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUUserRequestCacheEntryInfo setNumEncodingSimilarityScoreComparisons:](v5, "setNumEncodingSimilarityScoreComparisons:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"closestNegativeExampleScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(NLXSchemaSSUUserRequestCacheEntryInfo *)v5 setClosestNegativeExampleScore:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"closestPositiveExampleScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(NLXSchemaSSUUserRequestCacheEntryInfo *)v5 setClosestPositiveExampleScore:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"matchInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[NLXSchemaSSUUserRequestMatchInfo alloc] initWithDictionary:v11];
      [(NLXSchemaSSUUserRequestCacheEntryInfo *)v5 setMatchInfo:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (NLXSchemaSSUUserRequestCacheEntryInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self categoryType]- 1;
    if (v5 > 3)
    {
      v6 = @"SSUCATEGORYTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DC8C0[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"categoryType"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(NLXSchemaSSUUserRequestCacheEntryInfo *)self closestNegativeExampleScore];
    v8 = [v7 numberWithDouble:?];
    [dictionary setObject:v8 forKeyedSubscript:@"closestNegativeExampleScore"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v9 = MEMORY[0x1E696AD98];
    [(NLXSchemaSSUUserRequestCacheEntryInfo *)self closestPositiveExampleScore];
    v10 = [v9 numberWithDouble:?];
    [dictionary setObject:v10 forKeyedSubscript:@"closestPositiveExampleScore"];
  }

  if (self->_matchInfo)
  {
    matchInfo = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self matchInfo];
    dictionaryRepresentation = [matchInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"matchInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"matchInfo"];
    }
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaSSUUserRequestCacheEntryInfo numEncodingSimilarityScoreComparisons](self, "numEncodingSimilarityScoreComparisons")}];
    [dictionary setObject:v15 forKeyedSubscript:@"numEncodingSimilarityScoreComparisons"];

    v14 = self->_has;
  }

  if (v14)
  {
    v16 = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self triggerReason]- 1;
    if (v16 > 2)
    {
      v17 = @"SSUCACHETRIGGERREASON_UNKNOWN";
    }

    else
    {
      v17 = off_1E78DC8E0[v16];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"triggerReason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_triggerReason;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_categoryType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 2654435761 * self->_numEncodingSimilarityScoreComparisons;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  closestNegativeExampleScore = self->_closestNegativeExampleScore;
  if (closestNegativeExampleScore < 0.0)
  {
    closestNegativeExampleScore = -closestNegativeExampleScore;
  }

  *v6.i64 = floor(closestNegativeExampleScore + 0.5);
  v12 = (closestNegativeExampleScore - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v13), v7, v6);
  v14 = 2654435761u * *v6.i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_13:
  if ((*&self->_has & 0x10) != 0)
  {
    closestPositiveExampleScore = self->_closestPositiveExampleScore;
    if (closestPositiveExampleScore < 0.0)
    {
      closestPositiveExampleScore = -closestPositiveExampleScore;
    }

    *v6.i64 = floor(closestPositiveExampleScore + 0.5);
    v17 = (closestPositiveExampleScore - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v7, v6).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  return v9 ^ v8 ^ v10 ^ v14 ^ v15 ^ [(NLXSchemaSSUUserRequestMatchInfo *)self->_matchInfo hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = equalCopy[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    triggerReason = self->_triggerReason;
    if (triggerReason != [equalCopy triggerReason])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      categoryType = self->_categoryType;
      if (categoryType != [equalCopy categoryType])
      {
        goto LABEL_26;
      }

      has = self->_has;
      v6 = equalCopy[48];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        numEncodingSimilarityScoreComparisons = self->_numEncodingSimilarityScoreComparisons;
        if (numEncodingSimilarityScoreComparisons != [equalCopy numEncodingSimilarityScoreComparisons])
        {
          goto LABEL_26;
        }

        has = self->_has;
        v6 = equalCopy[48];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          closestNegativeExampleScore = self->_closestNegativeExampleScore;
          [equalCopy closestNegativeExampleScore];
          if (closestNegativeExampleScore != v14)
          {
            goto LABEL_26;
          }

          has = self->_has;
          v6 = equalCopy[48];
        }

        v15 = (*&has >> 4) & 1;
        if (v15 == ((v6 >> 4) & 1))
        {
          if (!v15 || (closestPositiveExampleScore = self->_closestPositiveExampleScore, [equalCopy closestPositiveExampleScore], closestPositiveExampleScore == v17))
          {
            matchInfo = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self matchInfo];
            matchInfo2 = [equalCopy matchInfo];
            v20 = matchInfo2;
            if ((matchInfo != 0) != (matchInfo2 == 0))
            {
              matchInfo3 = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self matchInfo];
              if (!matchInfo3)
              {

LABEL_29:
                v26 = 1;
                goto LABEL_27;
              }

              v22 = matchInfo3;
              matchInfo4 = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self matchInfo];
              matchInfo5 = [equalCopy matchInfo];
              v25 = [matchInfo4 isEqual:matchInfo5];

              if (v25)
              {
                goto LABEL_29;
              }
            }

            else
            {
            }
          }
        }
      }
    }
  }

LABEL_26:
  v26 = 0;
LABEL_27:

  return v26;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteDoubleField();
  }

LABEL_7:
  matchInfo = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self matchInfo];

  v6 = toCopy;
  if (matchInfo)
  {
    matchInfo2 = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self matchInfo];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasClosestPositiveExampleScore:(BOOL)score
{
  if (score)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasClosestNegativeExampleScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumEncodingSimilarityScoreComparisons:(BOOL)comparisons
{
  if (comparisons)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCategoryType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaSSUUserRequestCacheEntryInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaSSUUserRequestCacheEntryInfo *)self matchInfo:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaSSUUserRequestCacheEntryInfo *)self deleteMatchInfo];
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