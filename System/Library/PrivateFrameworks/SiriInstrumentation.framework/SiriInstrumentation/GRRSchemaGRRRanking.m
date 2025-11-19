@interface GRRSchemaGRRRanking
- (BOOL)isEqual:(id)a3;
- (GRRSchemaGRRRanking)initWithDictionary:(id)a3;
- (GRRSchemaGRRRanking)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GRRSchemaGRRRanking

- (GRRSchemaGRRRanking)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GRRSchemaGRRRanking;
  v5 = [(GRRSchemaGRRRanking *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"parseId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GRRSchemaGRRRanking *)v5 setParseId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"parseType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRRanking setParseType:](v5, "setParseType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(GRRSchemaGRRRanking *)v5 setScore:?];
    }

    v10 = v5;
  }

  return v5;
}

- (GRRSchemaGRRRanking)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRRSchemaGRRRanking *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRRSchemaGRRRanking *)self dictionaryRepresentation];
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
  if (self->_parseId)
  {
    v4 = [(GRRSchemaGRRRanking *)self parseId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"parseId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"parseId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [(GRRSchemaGRRRanking *)self parseType]- 1;
    if (v8 > 5)
    {
      v9 = @"GRRPARSETYPE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D7988[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"parseType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(GRRSchemaGRRRanking *)self score];
    v11 = [v10 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"score"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_parseId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_parseType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v4.i64 = floor(score + 0.5);
  v8 = (score - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v6 ^ v3 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(GRRSchemaGRRRanking *)self parseId];
  v6 = [v4 parseId];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(GRRSchemaGRRRanking *)self parseId];
    if (v8)
    {
      v9 = v8;
      v10 = [(GRRSchemaGRRRanking *)self parseId];
      v11 = [v4 parseId];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = v4[32];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        parseType = self->_parseType;
        if (parseType != [v4 parseType])
        {
          goto LABEL_15;
        }

        has = self->_has;
        v14 = v4[32];
      }

      v16 = (*&has >> 1) & 1;
      if (v16 == ((v14 >> 1) & 1))
      {
        if (!v16 || (score = self->_score, [v4 score], score == v18))
        {
          v19 = 1;
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(GRRSchemaGRRRanking *)self parseId];

  if (v4)
  {
    v5 = [(GRRSchemaGRRRanking *)self parseId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v7 = v8;
  }
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = GRRSchemaGRRRanking;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(GRRSchemaGRRRanking *)self parseId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(GRRSchemaGRRRanking *)self deleteParseId];
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