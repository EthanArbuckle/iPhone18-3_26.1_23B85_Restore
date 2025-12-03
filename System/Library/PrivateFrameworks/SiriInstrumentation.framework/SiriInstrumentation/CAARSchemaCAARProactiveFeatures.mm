@interface CAARSchemaCAARProactiveFeatures
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARProactiveFeatures)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARProactiveFeatures)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppRelevanceScore:(BOOL)score;
- (void)setHasIntentRelevanceScore:(BOOL)score;
- (void)setHasIsAppInTopFiveRelevance:(BOOL)relevance;
- (void)setHasIsAppInTopTenRelevance:(BOOL)relevance;
- (void)setHasIsIntentInTopFiveRelevance:(BOOL)relevance;
- (void)setHasIsIntentInTopOneRelevance:(BOOL)relevance;
- (void)setHasIsIntentInTopTenRelevance:(BOOL)relevance;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARProactiveFeatures

- (CAARSchemaCAARProactiveFeatures)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = CAARSchemaCAARProactiveFeatures;
  v5 = [(CAARSchemaCAARProactiveFeatures *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isAppInTopOneRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsAppInTopOneRelevance:](v5, "setIsAppInTopOneRelevance:", [v6 BOOLValue]);
    }

    v16 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"isAppInTopFiveRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsAppInTopFiveRelevance:](v5, "setIsAppInTopFiveRelevance:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isAppInTopTenRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsAppInTopTenRelevance:](v5, "setIsAppInTopTenRelevance:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isIntentInTopOneRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsIntentInTopOneRelevance:](v5, "setIsIntentInTopOneRelevance:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isIntentInTopFiveRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsIntentInTopFiveRelevance:](v5, "setIsIntentInTopFiveRelevance:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isIntentInTopTenRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsIntentInTopTenRelevance:](v5, "setIsIntentInTopTenRelevance:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"appRelevanceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(CAARSchemaCAARProactiveFeatures *)v5 setAppRelevanceScore:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"intentRelevanceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(CAARSchemaCAARProactiveFeatures *)v5 setIntentRelevanceScore:?];
    }

    v14 = v5;
  }

  return v5;
}

- (CAARSchemaCAARProactiveFeatures)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARProactiveFeatures *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARProactiveFeatures *)self dictionaryRepresentation];
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
  if ((has & 0x40) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(CAARSchemaCAARProactiveFeatures *)self appRelevanceScore];
    v8 = [v7 numberWithDouble:?];
    [dictionary setObject:v8 forKeyedSubscript:@"appRelevanceScore"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E696AD98];
  [(CAARSchemaCAARProactiveFeatures *)self intentRelevanceScore];
  v10 = [v9 numberWithDouble:?];
  [dictionary setObject:v10 forKeyedSubscript:@"intentRelevanceScore"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARProactiveFeatures isAppInTopFiveRelevance](self, "isAppInTopFiveRelevance")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isAppInTopFiveRelevance"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARProactiveFeatures isAppInTopOneRelevance](self, "isAppInTopOneRelevance")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isAppInTopOneRelevance"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARProactiveFeatures isAppInTopTenRelevance](self, "isAppInTopTenRelevance")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isAppInTopTenRelevance"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARProactiveFeatures isIntentInTopFiveRelevance](self, "isIntentInTopFiveRelevance")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isIntentInTopFiveRelevance"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARProactiveFeatures isIntentInTopOneRelevance](self, "isIntentInTopOneRelevance")}];
  [dictionary setObject:v15 forKeyedSubscript:@"isIntentInTopOneRelevance"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARProactiveFeatures isIntentInTopTenRelevance](self, "isIntentInTopTenRelevance")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isIntentInTopTenRelevance"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isAppInTopOneRelevance;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_isAppInTopFiveRelevance;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_isAppInTopTenRelevance;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_isIntentInTopOneRelevance;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_isIntentInTopFiveRelevance;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    v9 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

LABEL_16:
  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  v9 = 2654435761 * self->_isIntentInTopTenRelevance;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  appRelevanceScore = self->_appRelevanceScore;
  if (appRelevanceScore < 0.0)
  {
    appRelevanceScore = -appRelevanceScore;
  }

  *v2.i64 = floor(appRelevanceScore + 0.5);
  v11 = (appRelevanceScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
  v13 = 2654435761u * *v2.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_19:
  if ((*&self->_has & 0x80) != 0)
  {
    intentRelevanceScore = self->_intentRelevanceScore;
    if (intentRelevanceScore < 0.0)
    {
      intentRelevanceScore = -intentRelevanceScore;
    }

    *v2.i64 = floor(intentRelevanceScore + 0.5);
    v16 = (intentRelevanceScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v3, v2).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    isAppInTopOneRelevance = self->_isAppInTopOneRelevance;
    if (isAppInTopOneRelevance != [equalCopy isAppInTopOneRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    isAppInTopFiveRelevance = self->_isAppInTopFiveRelevance;
    if (isAppInTopFiveRelevance != [equalCopy isAppInTopFiveRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_34;
  }

  if (v10)
  {
    isAppInTopTenRelevance = self->_isAppInTopTenRelevance;
    if (isAppInTopTenRelevance != [equalCopy isAppInTopTenRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_34;
  }

  if (v12)
  {
    isIntentInTopOneRelevance = self->_isIntentInTopOneRelevance;
    if (isIntentInTopOneRelevance != [equalCopy isIntentInTopOneRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_34;
  }

  if (v14)
  {
    isIntentInTopFiveRelevance = self->_isIntentInTopFiveRelevance;
    if (isIntentInTopFiveRelevance != [equalCopy isIntentInTopFiveRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_34;
  }

  if (v16)
  {
    isIntentInTopTenRelevance = self->_isIntentInTopTenRelevance;
    if (isIntentInTopTenRelevance != [equalCopy isIntentInTopTenRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_34;
  }

  if (v18)
  {
    appRelevanceScore = self->_appRelevanceScore;
    [equalCopy appRelevanceScore];
    if (appRelevanceScore == v20)
    {
      has = self->_has;
      v6 = equalCopy[32];
      goto LABEL_30;
    }

LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

LABEL_30:
  if (((v6 ^ *&has) & 0x80) != 0)
  {
    goto LABEL_34;
  }

  if ((*&has & 0x80) != 0)
  {
    intentRelevanceScore = self->_intentRelevanceScore;
    [equalCopy intentRelevanceScore];
    if (intentRelevanceScore != v23)
    {
      goto LABEL_34;
    }
  }

  v21 = 1;
LABEL_35:

  return v21;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  PBDataWriterWriteBOOLField();
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
  PBDataWriterWriteBOOLField();
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
  PBDataWriterWriteBOOLField();
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
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PBDataWriterWriteDoubleField();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PBDataWriterWriteDoubleField();
LABEL_9:
}

- (void)setHasIntentRelevanceScore:(BOOL)score
{
  if (score)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasAppRelevanceScore:(BOOL)score
{
  if (score)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsIntentInTopTenRelevance:(BOOL)relevance
{
  if (relevance)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsIntentInTopFiveRelevance:(BOOL)relevance
{
  if (relevance)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsIntentInTopOneRelevance:(BOOL)relevance
{
  if (relevance)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsAppInTopTenRelevance:(BOOL)relevance
{
  if (relevance)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsAppInTopFiveRelevance:(BOOL)relevance
{
  if (relevance)
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