@interface PEGASUSSchemaPEGASUSPersonalizedItemInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSPersonalizedItemInfo)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSPersonalizedItemInfo)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPersonalizationArtistAffinity:(BOOL)a3;
- (void)setHasPersonalizationCosineSimilarity:(BOOL)a3;
- (void)setHasPersonalizationPafFrequency:(BOOL)a3;
- (void)setHasPersonalizationRankingScore:(BOOL)a3;
- (void)setHasPositionWithoutPersonalization:(BOOL)a3;
- (void)setHasScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSPersonalizedItemInfo

- (PEGASUSSchemaPEGASUSPersonalizedItemInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PEGASUSSchemaPEGASUSPersonalizedItemInfo;
  v5 = [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isPersonalized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSPersonalizedItemInfo setIsPersonalized:](v5, "setIsPersonalized:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)v5 setScore:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"personalizationRankingScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)v5 setPersonalizationRankingScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"positionWithoutPersonalization"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSPersonalizedItemInfo setPositionWithoutPersonalization:](v5, "setPositionWithoutPersonalization:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"personalizationCosineSimilarity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)v5 setPersonalizationCosineSimilarity:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"personalizationArtistAffinity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)v5 setPersonalizationArtistAffinity:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"personalizationPafFrequency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)v5 setPersonalizationPafFrequency:?];
    }

    v13 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSPersonalizedItemInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSPersonalizedItemInfo isPersonalized](self, "isPersonalized")}];
    [v3 setObject:v8 forKeyedSubscript:@"isPersonalized"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E696AD98];
  [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)self personalizationArtistAffinity];
  v10 = [v9 numberWithFloat:?];
  [v3 setObject:v10 forKeyedSubscript:@"personalizationArtistAffinity"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = MEMORY[0x1E696AD98];
  [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)self personalizationCosineSimilarity];
  v12 = [v11 numberWithFloat:?];
  [v3 setObject:v12 forKeyedSubscript:@"personalizationCosineSimilarity"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v13 = MEMORY[0x1E696AD98];
  [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)self personalizationPafFrequency];
  v14 = [v13 numberWithFloat:?];
  [v3 setObject:v14 forKeyedSubscript:@"personalizationPafFrequency"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15 = MEMORY[0x1E696AD98];
  [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)self personalizationRankingScore];
  v16 = [v15 numberWithFloat:?];
  [v3 setObject:v16 forKeyedSubscript:@"personalizationRankingScore"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSPersonalizedItemInfo positionWithoutPersonalization](self, "positionWithoutPersonalization")}];
  [v3 setObject:v17 forKeyedSubscript:@"positionWithoutPersonalization"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v5 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSPersonalizedItemInfo *)self score];
    v6 = [v5 numberWithFloat:?];
    [v3 setObject:v6 forKeyedSubscript:@"score"];
  }

LABEL_9:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v4 = 2654435761 * self->_isPersonalized;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  score = self->_score;
  if (score >= 0.0)
  {
    v6 = score;
  }

  else
  {
    v6 = -score;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_10:
  if ((*&self->_has & 4) != 0)
  {
    personalizationRankingScore = self->_personalizationRankingScore;
    if (personalizationRankingScore >= 0.0)
    {
      v12 = personalizationRankingScore;
    }

    else
    {
      v12 = -personalizationRankingScore;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v10 += v13;
      }
    }

    else
    {
      v10 -= fabs(v13);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 8) == 0)
  {
    v15 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_23;
    }

LABEL_29:
    v20 = 0;
    goto LABEL_30;
  }

  v15 = 2654435761 * self->_positionWithoutPersonalization;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_29;
  }

LABEL_23:
  personalizationCosineSimilarity = self->_personalizationCosineSimilarity;
  if (personalizationCosineSimilarity >= 0.0)
  {
    v17 = personalizationCosineSimilarity;
  }

  else
  {
    v17 = -personalizationCosineSimilarity;
  }

  *v2.i64 = floor(v17 + 0.5);
  v18 = (v17 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
  v20 = 2654435761u * *v2.i64;
  if (v18 >= 0.0)
  {
    if (v18 > 0.0)
    {
      v20 += v18;
    }
  }

  else
  {
    v20 -= fabs(v18);
  }

LABEL_30:
  if ((*&self->_has & 0x20) != 0)
  {
    personalizationArtistAffinity = self->_personalizationArtistAffinity;
    if (personalizationArtistAffinity >= 0.0)
    {
      v23 = personalizationArtistAffinity;
    }

    else
    {
      v23 = -personalizationArtistAffinity;
    }

    *v2.i64 = floor(v23 + 0.5);
    v24 = (v23 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v25), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v21 += v24;
      }
    }

    else
    {
      v21 -= fabs(v24);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    personalizationPafFrequency = self->_personalizationPafFrequency;
    if (personalizationPafFrequency >= 0.0)
    {
      v28 = personalizationPafFrequency;
    }

    else
    {
      v28 = -personalizationPafFrequency;
    }

    *v2.i64 = floor(v28 + 0.5);
    v29 = (v28 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v26 = 2654435761u * *vbslq_s8(vnegq_f64(v30), v3, v2).i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v26 += v29;
      }
    }

    else
    {
      v26 -= fabs(v29);
    }
  }

  else
  {
    v26 = 0;
  }

  return v9 ^ v4 ^ v10 ^ v15 ^ v20 ^ v21 ^ v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = v4[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    isPersonalized = self->_isPersonalized;
    if (isPersonalized != [v4 isPersonalized])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      score = self->_score;
      [v4 score];
      if (score != v10)
      {
        goto LABEL_29;
      }

      has = self->_has;
      v6 = v4[36];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        personalizationRankingScore = self->_personalizationRankingScore;
        [v4 personalizationRankingScore];
        if (personalizationRankingScore != v13)
        {
          goto LABEL_29;
        }

        has = self->_has;
        v6 = v4[36];
      }

      v14 = (*&has >> 3) & 1;
      if (v14 == ((v6 >> 3) & 1))
      {
        if (v14)
        {
          positionWithoutPersonalization = self->_positionWithoutPersonalization;
          if (positionWithoutPersonalization != [v4 positionWithoutPersonalization])
          {
            goto LABEL_29;
          }

          has = self->_has;
          v6 = v4[36];
        }

        v16 = (*&has >> 4) & 1;
        if (v16 == ((v6 >> 4) & 1))
        {
          if (v16)
          {
            personalizationCosineSimilarity = self->_personalizationCosineSimilarity;
            [v4 personalizationCosineSimilarity];
            if (personalizationCosineSimilarity != v18)
            {
              goto LABEL_29;
            }

            has = self->_has;
            v6 = v4[36];
          }

          v19 = (*&has >> 5) & 1;
          if (v19 == ((v6 >> 5) & 1))
          {
            if (v19)
            {
              personalizationArtistAffinity = self->_personalizationArtistAffinity;
              [v4 personalizationArtistAffinity];
              if (personalizationArtistAffinity != v21)
              {
                goto LABEL_29;
              }

              has = self->_has;
              v6 = v4[36];
            }

            v22 = (*&has >> 6) & 1;
            if (v22 == ((v6 >> 6) & 1))
            {
              if (!v22 || (personalizationPafFrequency = self->_personalizationPafFrequency, [v4 personalizationPafFrequency], personalizationPafFrequency == v24))
              {
                v25 = 1;
                goto LABEL_30;
              }
            }
          }
        }
      }
    }
  }

LABEL_29:
  v25 = 0;
LABEL_30:

  return v25;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
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

  PBDataWriterWriteFloatField();
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
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteFloatField();
  }

LABEL_9:
}

- (void)setHasPersonalizationPafFrequency:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasPersonalizationArtistAffinity:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPersonalizationCosineSimilarity:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPositionWithoutPersonalization:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPersonalizationRankingScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasScore:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end