@interface MHSchemaMHAdMatchingEnded
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAdMatchingEnded)initWithDictionary:(id)a3;
- (MHSchemaMHAdMatchingEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAdBlockerSource:(BOOL)a3;
- (void)setHasShazamScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAdMatchingEnded

- (MHSchemaMHAdMatchingEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHAdMatchingEnded;
  v5 = [(MHSchemaMHAdMatchingEnded *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"adBlockerDismissalType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdMatchingEnded setAdBlockerDismissalType:](v5, "setAdBlockerDismissalType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"adName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(MHSchemaMHAdMatchingEnded *)v5 setAdName:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"shazamScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHAdMatchingEnded *)v5 setShazamScore:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"adBlockerSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdMatchingEnded setAdBlockerSource:](v5, "setAdBlockerSource:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHAdMatchingEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAdMatchingEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAdMatchingEnded *)self dictionaryRepresentation];
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
    v5 = [(MHSchemaMHAdMatchingEnded *)self adBlockerDismissalType]- 1;
    if (v5 > 3)
    {
      v6 = @"ADBLOCKERDISMISSALTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D8DF8[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"adBlockerDismissalType"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [(MHSchemaMHAdMatchingEnded *)self adBlockerSource];
    v8 = @"MHADBLOCKERSOURCE_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"MHADBLOCKERSOURCE_BUILTIN";
    }

    if (v7 == 2)
    {
      v9 = @"MHADBLOCKERSOURCE_ENDPOINT";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"adBlockerSource"];
  }

  if (self->_adName)
  {
    v10 = [(MHSchemaMHAdMatchingEnded *)self adName];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"adName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(MHSchemaMHAdMatchingEnded *)self shazamScore];
    v13 = [v12 numberWithFloat:?];
    [v3 setObject:v13 forKeyedSubscript:@"shazamScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_adBlockerDismissalType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_adName hash];
  if ((*&self->_has & 2) != 0)
  {
    shazamScore = self->_shazamScore;
    if (shazamScore >= 0.0)
    {
      v9 = shazamScore;
    }

    else
    {
      v9 = -shazamScore;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v7 += v10;
      }
    }

    else
    {
      v7 -= fabs(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_adBlockerSource;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    adBlockerDismissalType = self->_adBlockerDismissalType;
    if (adBlockerDismissalType != [v4 adBlockerDismissalType])
    {
      goto LABEL_19;
    }
  }

  v6 = [(MHSchemaMHAdMatchingEnded *)self adName];
  v7 = [v4 adName];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

    goto LABEL_19;
  }

  v9 = [(MHSchemaMHAdMatchingEnded *)self adName];
  if (v9)
  {
    v10 = v9;
    v11 = [(MHSchemaMHAdMatchingEnded *)self adName];
    v12 = [v4 adName];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v15 = (*&has >> 1) & 1;
  v16 = v4[32];
  if (v15 != ((v16 >> 1) & 1))
  {
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  if (v15)
  {
    shazamScore = self->_shazamScore;
    [v4 shazamScore];
    if (shazamScore == v18)
    {
      has = self->_has;
      v16 = v4[32];
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_15:
  v19 = (*&has >> 2) & 1;
  if (v19 != ((v16 >> 2) & 1))
  {
    goto LABEL_19;
  }

  if (v19)
  {
    adBlockerSource = self->_adBlockerSource;
    if (adBlockerSource != [v4 adBlockerSource])
    {
      goto LABEL_19;
    }
  }

  v21 = 1;
LABEL_20:

  return v21;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(MHSchemaMHAdMatchingEnded *)self adName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasAdBlockerSource:(BOOL)a3
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

- (void)setHasShazamScore:(BOOL)a3
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