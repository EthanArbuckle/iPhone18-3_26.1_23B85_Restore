@interface CMSchemaCMSearchEnded
- (BOOL)isEqual:(id)a3;
- (CMSchemaCMSearchEnded)initWithDictionary:(id)a3;
- (CMSchemaCMSearchEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHighestMatchScore:(BOOL)a3;
- (void)setHasLowestMatchScore:(BOOL)a3;
- (void)setHasResultCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CMSchemaCMSearchEnded

- (CMSchemaCMSearchEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CMSchemaCMSearchEnded;
  v5 = [(CMSchemaCMSearchEnded *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"searchStrategy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CMSchemaCMSearchEnded setSearchStrategy:](v5, "setSearchStrategy:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"resultCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CMSchemaCMSearchEnded setResultCount:](v5, "setResultCount:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"highestMatchScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(CMSchemaCMSearchEnded *)v5 setHighestMatchScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"lowestMatchScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(CMSchemaCMSearchEnded *)v5 setLowestMatchScore:?];
    }

    v10 = v5;
  }

  return v5;
}

- (CMSchemaCMSearchEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CMSchemaCMSearchEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CMSchemaCMSearchEnded *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v9 = MEMORY[0x1E696AD98];
    [(CMSchemaCMSearchEnded *)self highestMatchScore];
    v10 = [v9 numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"highestMatchScore"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_16:
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[CMSchemaCMSearchEnded resultCount](self, "resultCount")}];
      [v3 setObject:v13 forKeyedSubscript:@"resultCount"];

      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v11 = MEMORY[0x1E696AD98];
  [(CMSchemaCMSearchEnded *)self lowestMatchScore];
  v12 = [v11 numberWithDouble:?];
  [v3 setObject:v12 forKeyedSubscript:@"lowestMatchScore"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v5 = [(CMSchemaCMSearchEnded *)self searchStrategy];
  v6 = @"CMSEARCHSTRATEGY_UNKNOWN";
  if (v5 == 1)
  {
    v6 = @"CMSEARCHSTRATEGY_EXACT_MATCH";
  }

  if (v5 == 2)
  {
    v7 = @"CMSEARCHSTRATEGY_APPROXIMATE_MATCH";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"searchStrategy"];
LABEL_11:
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
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v4 = 2654435761 * self->_searchStrategy;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761 * self->_resultCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  highestMatchScore = self->_highestMatchScore;
  if (highestMatchScore < 0.0)
  {
    highestMatchScore = -highestMatchScore;
  }

  *v2.i64 = floor(highestMatchScore + 0.5);
  v7 = (highestMatchScore - *v2.i64) * 1.84467441e19;
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

LABEL_11:
  if ((*&self->_has & 8) != 0)
  {
    lowestMatchScore = self->_lowestMatchScore;
    if (lowestMatchScore < 0.0)
    {
      lowestMatchScore = -lowestMatchScore;
    }

    *v2.i64 = floor(lowestMatchScore + 0.5);
    v12 = (lowestMatchScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v5 ^ v4 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_17;
  }

  if (*&has)
  {
    searchStrategy = self->_searchStrategy;
    if (searchStrategy != [v4 searchStrategy])
    {
      goto LABEL_17;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      resultCount = self->_resultCount;
      if (resultCount != [v4 resultCount])
      {
        goto LABEL_17;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        highestMatchScore = self->_highestMatchScore;
        [v4 highestMatchScore];
        if (highestMatchScore != v12)
        {
          goto LABEL_17;
        }

        has = self->_has;
        v6 = v4[32];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (!v13 || (lowestMatchScore = self->_lowestMatchScore, [v4 lowestMatchScore], lowestMatchScore == v15))
        {
          v16 = 1;
          goto LABEL_18;
        }
      }
    }
  }

LABEL_17:
  v16 = 0;
LABEL_18:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

      goto LABEL_11;
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
}

- (void)setHasLowestMatchScore:(BOOL)a3
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

- (void)setHasHighestMatchScore:(BOOL)a3
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

- (void)setHasResultCount:(BOOL)a3
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