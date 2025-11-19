@interface CAARSchemaCAARProactiveFeatures
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARProactiveFeatures)initWithDictionary:(id)a3;
- (CAARSchemaCAARProactiveFeatures)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppRelevanceScore:(BOOL)a3;
- (void)setHasIntentRelevanceScore:(BOOL)a3;
- (void)setHasIsAppInTopFiveRelevance:(BOOL)a3;
- (void)setHasIsAppInTopTenRelevance:(BOOL)a3;
- (void)setHasIsIntentInTopFiveRelevance:(BOOL)a3;
- (void)setHasIsIntentInTopOneRelevance:(BOOL)a3;
- (void)setHasIsIntentInTopTenRelevance:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARProactiveFeatures

- (CAARSchemaCAARProactiveFeatures)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CAARSchemaCAARProactiveFeatures;
  v5 = [(CAARSchemaCAARProactiveFeatures *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isAppInTopOneRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsAppInTopOneRelevance:](v5, "setIsAppInTopOneRelevance:", [v6 BOOLValue]);
    }

    v16 = v6;
    v7 = [v4 objectForKeyedSubscript:@"isAppInTopFiveRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsAppInTopFiveRelevance:](v5, "setIsAppInTopFiveRelevance:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isAppInTopTenRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsAppInTopTenRelevance:](v5, "setIsAppInTopTenRelevance:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isIntentInTopOneRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsIntentInTopOneRelevance:](v5, "setIsIntentInTopOneRelevance:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isIntentInTopFiveRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsIntentInTopFiveRelevance:](v5, "setIsIntentInTopFiveRelevance:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isIntentInTopTenRelevance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARProactiveFeatures setIsIntentInTopTenRelevance:](v5, "setIsIntentInTopTenRelevance:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"appRelevanceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(CAARSchemaCAARProactiveFeatures *)v5 setAppRelevanceScore:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"intentRelevanceScore"];
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

- (CAARSchemaCAARProactiveFeatures)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARProactiveFeatures *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARProactiveFeatures *)self dictionaryRepresentation];
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
  if ((has & 0x40) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(CAARSchemaCAARProactiveFeatures *)self appRelevanceScore];
    v8 = [v7 numberWithDouble:?];
    [v3 setObject:v8 forKeyedSubscript:@"appRelevanceScore"];

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
  [v3 setObject:v10 forKeyedSubscript:@"intentRelevanceScore"];

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
  [v3 setObject:v11 forKeyedSubscript:@"isAppInTopFiveRelevance"];

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
  [v3 setObject:v12 forKeyedSubscript:@"isAppInTopOneRelevance"];

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
  [v3 setObject:v13 forKeyedSubscript:@"isAppInTopTenRelevance"];

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
  [v3 setObject:v14 forKeyedSubscript:@"isIntentInTopFiveRelevance"];

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
  [v3 setObject:v15 forKeyedSubscript:@"isIntentInTopOneRelevance"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARProactiveFeatures isIntentInTopTenRelevance](self, "isIntentInTopTenRelevance")}];
    [v3 setObject:v5 forKeyedSubscript:@"isIntentInTopTenRelevance"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    isAppInTopOneRelevance = self->_isAppInTopOneRelevance;
    if (isAppInTopOneRelevance != [v4 isAppInTopOneRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    isAppInTopFiveRelevance = self->_isAppInTopFiveRelevance;
    if (isAppInTopFiveRelevance != [v4 isAppInTopFiveRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_34;
  }

  if (v10)
  {
    isAppInTopTenRelevance = self->_isAppInTopTenRelevance;
    if (isAppInTopTenRelevance != [v4 isAppInTopTenRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_34;
  }

  if (v12)
  {
    isIntentInTopOneRelevance = self->_isIntentInTopOneRelevance;
    if (isIntentInTopOneRelevance != [v4 isIntentInTopOneRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_34;
  }

  if (v14)
  {
    isIntentInTopFiveRelevance = self->_isIntentInTopFiveRelevance;
    if (isIntentInTopFiveRelevance != [v4 isIntentInTopFiveRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_34;
  }

  if (v16)
  {
    isIntentInTopTenRelevance = self->_isIntentInTopTenRelevance;
    if (isIntentInTopTenRelevance != [v4 isIntentInTopTenRelevance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_34;
  }

  if (v18)
  {
    appRelevanceScore = self->_appRelevanceScore;
    [v4 appRelevanceScore];
    if (appRelevanceScore == v20)
    {
      has = self->_has;
      v6 = v4[32];
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
    [v4 intentRelevanceScore];
    if (intentRelevanceScore != v23)
    {
      goto LABEL_34;
    }
  }

  v21 = 1;
LABEL_35:

  return v21;
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

- (void)setHasIntentRelevanceScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasAppRelevanceScore:(BOOL)a3
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

- (void)setHasIsIntentInTopTenRelevance:(BOOL)a3
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

- (void)setHasIsIntentInTopFiveRelevance:(BOOL)a3
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

- (void)setHasIsIntentInTopOneRelevance:(BOOL)a3
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

- (void)setHasIsAppInTopTenRelevance:(BOOL)a3
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

- (void)setHasIsAppInTopFiveRelevance:(BOOL)a3
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