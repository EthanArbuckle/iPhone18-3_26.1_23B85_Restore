@interface GMSSchemaGMSModelRequestEnded
- (BOOL)isEqual:(id)a3;
- (GMSSchemaGMSModelRequestEnded)initWithDictionary:(id)a3;
- (GMSSchemaGMSModelRequestEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasImageCount:(BOOL)a3;
- (void)setHasImagePerSecond:(BOOL)a3;
- (void)setHasKbPerSecond:(BOOL)a3;
- (void)setHasResponseCharactersCount:(BOOL)a3;
- (void)setHasResponseKbCount:(BOOL)a3;
- (void)setHasResponseTimeInMilliseconds:(BOOL)a3;
- (void)setHasResponseTokensCount:(BOOL)a3;
- (void)setHasTimeToFirstTokenInSeconds:(BOOL)a3;
- (void)setHasTimeToLastTokenInSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GMSSchemaGMSModelRequestEnded

- (GMSSchemaGMSModelRequestEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = GMSSchemaGMSModelRequestEnded;
  v5 = [(GMSSchemaGMSModelRequestEnded *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"tokensPerSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(GMSSchemaGMSModelRequestEnded *)v5 setTokensPerSecond:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"responseTokensCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestEnded setResponseTokensCount:](v5, "setResponseTokensCount:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"kbPerSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(GMSSchemaGMSModelRequestEnded *)v5 setKbPerSecond:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"responseKbCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestEnded setResponseKbCount:](v5, "setResponseKbCount:", [v9 unsignedIntValue]);
    }

    v19 = v9;
    v10 = [v4 objectForKeyedSubscript:@"imagePerSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(GMSSchemaGMSModelRequestEnded *)v5 setImagePerSecond:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"imageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestEnded setImageCount:](v5, "setImageCount:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"timeToFirstTokenInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(GMSSchemaGMSModelRequestEnded *)v5 setTimeToFirstTokenInSeconds:?];
    }

    v20 = v8;
    v21 = v6;
    v13 = [v4 objectForKeyedSubscript:@"timeToLastTokenInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(GMSSchemaGMSModelRequestEnded *)v5 setTimeToLastTokenInSeconds:?];
    }

    v14 = v7;
    v15 = [v4 objectForKeyedSubscript:@"responseCharactersCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestEnded setResponseCharactersCount:](v5, "setResponseCharactersCount:", [v15 unsignedIntValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"responseTimeInMilliseconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestEnded setResponseTimeInMilliseconds:](v5, "setResponseTimeInMilliseconds:", [v16 unsignedIntValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (GMSSchemaGMSModelRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GMSSchemaGMSModelRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GMSSchemaGMSModelRequestEnded *)self dictionaryRepresentation];
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
  if ((has & 0x20) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSModelRequestEnded imageCount](self, "imageCount")}];
    [v3 setObject:v8 forKeyedSubscript:@"imageCount"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E696AD98];
  [(GMSSchemaGMSModelRequestEnded *)self imagePerSecond];
  v10 = [v9 numberWithFloat:?];
  [v3 setObject:v10 forKeyedSubscript:@"imagePerSecond"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = MEMORY[0x1E696AD98];
  [(GMSSchemaGMSModelRequestEnded *)self kbPerSecond];
  v12 = [v11 numberWithDouble:?];
  [v3 setObject:v12 forKeyedSubscript:@"kbPerSecond"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSModelRequestEnded responseCharactersCount](self, "responseCharactersCount")}];
  [v3 setObject:v13 forKeyedSubscript:@"responseCharactersCount"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSModelRequestEnded responseKbCount](self, "responseKbCount")}];
  [v3 setObject:v14 forKeyedSubscript:@"responseKbCount"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSModelRequestEnded responseTimeInMilliseconds](self, "responseTimeInMilliseconds")}];
  [v3 setObject:v15 forKeyedSubscript:@"responseTimeInMilliseconds"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSModelRequestEnded responseTokensCount](self, "responseTokensCount")}];
  [v3 setObject:v16 forKeyedSubscript:@"responseTokensCount"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = MEMORY[0x1E696AD98];
  [(GMSSchemaGMSModelRequestEnded *)self timeToFirstTokenInSeconds];
  v18 = [v17 numberWithDouble:?];
  [v3 setObject:v18 forKeyedSubscript:@"timeToFirstTokenInSeconds"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v19 = MEMORY[0x1E696AD98];
  [(GMSSchemaGMSModelRequestEnded *)self timeToLastTokenInSeconds];
  v20 = [v19 numberWithDouble:?];
  [v3 setObject:v20 forKeyedSubscript:@"timeToLastTokenInSeconds"];

  if (*&self->_has)
  {
LABEL_11:
    v5 = MEMORY[0x1E696AD98];
    [(GMSSchemaGMSModelRequestEnded *)self tokensPerSecond];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"tokensPerSecond"];
  }

LABEL_12:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    tokensPerSecond = self->_tokensPerSecond;
    if (tokensPerSecond < 0.0)
    {
      tokensPerSecond = -tokensPerSecond;
    }

    *v2.i64 = floor(tokensPerSecond + 0.5);
    v7 = (tokensPerSecond - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((has & 2) != 0)
  {
    v9 = 2654435761 * self->_responseTokensCount;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v9 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  kbPerSecond = self->_kbPerSecond;
  if (kbPerSecond < 0.0)
  {
    kbPerSecond = -kbPerSecond;
  }

  *v2.i64 = floor(kbPerSecond + 0.5);
  v11 = (kbPerSecond - *v2.i64) * 1.84467441e19;
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

LABEL_17:
  if ((has & 8) == 0)
  {
    v14 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_19;
    }

LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  v14 = 2654435761 * self->_responseKbCount;
  if ((has & 0x10) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  imagePerSecond = self->_imagePerSecond;
  if (imagePerSecond >= 0.0)
  {
    v16 = imagePerSecond;
  }

  else
  {
    v16 = -imagePerSecond;
  }

  *v2.i64 = floor(v16 + 0.5);
  v17 = (v16 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v18), v3, v2);
  v19 = 2654435761u * *v2.i64;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v19 += v17;
    }
  }

  else
  {
    v19 -= fabs(v17);
  }

LABEL_26:
  if ((has & 0x20) != 0)
  {
    v20 = 2654435761 * self->_imageCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    v24 = 0;
    goto LABEL_34;
  }

  v20 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  timeToFirstTokenInSeconds = self->_timeToFirstTokenInSeconds;
  if (timeToFirstTokenInSeconds < 0.0)
  {
    timeToFirstTokenInSeconds = -timeToFirstTokenInSeconds;
  }

  *v2.i64 = floor(timeToFirstTokenInSeconds + 0.5);
  v22 = (timeToFirstTokenInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v23), v3, v2);
  v24 = 2654435761u * *v2.i64;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v24 += v22;
    }
  }

  else
  {
    v24 -= fabs(v22);
  }

LABEL_34:
  if ((has & 0x80) != 0)
  {
    timeToLastTokenInSeconds = self->_timeToLastTokenInSeconds;
    if (timeToLastTokenInSeconds < 0.0)
    {
      timeToLastTokenInSeconds = -timeToLastTokenInSeconds;
    }

    *v2.i64 = floor(timeToLastTokenInSeconds + 0.5);
    v27 = (timeToLastTokenInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v25 = 2654435761u * *vbslq_s8(vnegq_f64(v28), v3, v2).i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v29 = 2654435761 * self->_responseCharactersCount;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_50;
    }

LABEL_52:
    v30 = 0;
    return v9 ^ v5 ^ v13 ^ v14 ^ v19 ^ v20 ^ v24 ^ v25 ^ v29 ^ v30;
  }

  v29 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v30 = 2654435761 * self->_responseTimeInMilliseconds;
  return v9 ^ v5 ^ v13 ^ v14 ^ v19 ^ v20 ^ v24 ^ v25 ^ v29 ^ v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = v4[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    tokensPerSecond = self->_tokensPerSecond;
    [v4 tokensPerSecond];
    if (tokensPerSecond != v8)
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_42;
  }

  if (v9)
  {
    responseTokensCount = self->_responseTokensCount;
    if (responseTokensCount != [v4 responseTokensCount])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_42;
  }

  if (v11)
  {
    kbPerSecond = self->_kbPerSecond;
    [v4 kbPerSecond];
    if (kbPerSecond != v13)
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v14 = (*&has >> 3) & 1;
  if (v14 != ((v6 >> 3) & 1))
  {
    goto LABEL_42;
  }

  if (v14)
  {
    responseKbCount = self->_responseKbCount;
    if (responseKbCount != [v4 responseKbCount])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v16 = (*&has >> 4) & 1;
  if (v16 != ((v6 >> 4) & 1))
  {
    goto LABEL_42;
  }

  if (v16)
  {
    imagePerSecond = self->_imagePerSecond;
    [v4 imagePerSecond];
    if (imagePerSecond != v18)
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v19 = (*&has >> 5) & 1;
  if (v19 != ((v6 >> 5) & 1))
  {
    goto LABEL_42;
  }

  if (v19)
  {
    imageCount = self->_imageCount;
    if (imageCount != [v4 imageCount])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v21 = (*&has >> 6) & 1;
  if (v21 != ((v6 >> 6) & 1))
  {
    goto LABEL_42;
  }

  if (v21)
  {
    timeToFirstTokenInSeconds = self->_timeToFirstTokenInSeconds;
    [v4 timeToFirstTokenInSeconds];
    if (timeToFirstTokenInSeconds != v23)
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v24 = (*&has >> 7) & 1;
  if (v24 != ((v6 >> 7) & 1))
  {
    goto LABEL_42;
  }

  if (v24)
  {
    timeToLastTokenInSeconds = self->_timeToLastTokenInSeconds;
    [v4 timeToLastTokenInSeconds];
    if (timeToLastTokenInSeconds != v26)
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v27 = (*&has >> 8) & 1;
  if (v27 != ((v6 >> 8) & 1))
  {
    goto LABEL_42;
  }

  if (v27)
  {
    responseCharactersCount = self->_responseCharactersCount;
    if (responseCharactersCount == [v4 responseCharactersCount])
    {
      has = self->_has;
      v6 = v4[36];
      goto LABEL_38;
    }

LABEL_42:
    v31 = 0;
    goto LABEL_43;
  }

LABEL_38:
  v29 = (*&has >> 9) & 1;
  if (v29 != ((v6 >> 9) & 1))
  {
    goto LABEL_42;
  }

  if (v29)
  {
    responseTimeInMilliseconds = self->_responseTimeInMilliseconds;
    if (responseTimeInMilliseconds != [v4 responseTimeInMilliseconds])
    {
      goto LABEL_42;
    }
  }

  v31 = 1;
LABEL_43:

  return v31;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
}

- (void)setHasResponseTimeInMilliseconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasResponseCharactersCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTimeToLastTokenInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTimeToFirstTokenInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasImageCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasImagePerSecond:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasResponseKbCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasKbPerSecond:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasResponseTokensCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end