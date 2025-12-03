@interface GMSSchemaGMSPrivateCloudMetrics
- (BOOL)isEqual:(id)equal;
- (GMSSchemaGMSPrivateCloudMetrics)initWithDictionary:(id)dictionary;
- (GMSSchemaGMSPrivateCloudMetrics)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasExtendLatencyMillis:(BOOL)millis;
- (void)setHasInputTokensCount:(BOOL)count;
- (void)setHasOutputTokensCount:(BOOL)count;
- (void)setHasTimeToFirstTokenMillis:(BOOL)millis;
- (void)writeTo:(id)to;
@end

@implementation GMSSchemaGMSPrivateCloudMetrics

- (GMSSchemaGMSPrivateCloudMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = GMSSchemaGMSPrivateCloudMetrics;
  v5 = [(GMSSchemaGMSPrivateCloudMetrics *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tokenRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(GMSSchemaGMSPrivateCloudMetrics *)v5 setTokenRate:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"timeToFirstTokenMillis"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(GMSSchemaGMSPrivateCloudMetrics *)v5 setTimeToFirstTokenMillis:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"extendLatencyMillis"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(GMSSchemaGMSPrivateCloudMetrics *)v5 setExtendLatencyMillis:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"outputTokensCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudMetrics setOutputTokensCount:](v5, "setOutputTokensCount:", [v9 longLongValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"inputTokensCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudMetrics setInputTokensCount:](v5, "setInputTokensCount:", [v10 longLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"gmsPrivateCloudSpeculativeDecodingMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics alloc] initWithDictionary:v11];
      [(GMSSchemaGMSPrivateCloudMetrics *)v5 setGmsPrivateCloudSpeculativeDecodingMetrics:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (GMSSchemaGMSPrivateCloudMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GMSSchemaGMSPrivateCloudMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GMSSchemaGMSPrivateCloudMetrics *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(GMSSchemaGMSPrivateCloudMetrics *)self extendLatencyMillis];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"extendLatencyMillis"];
  }

  if (self->_gmsPrivateCloudSpeculativeDecodingMetrics)
  {
    gmsPrivateCloudSpeculativeDecodingMetrics = [(GMSSchemaGMSPrivateCloudMetrics *)self gmsPrivateCloudSpeculativeDecodingMetrics];
    dictionaryRepresentation = [gmsPrivateCloudSpeculativeDecodingMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"gmsPrivateCloudSpeculativeDecodingMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"gmsPrivateCloudSpeculativeDecodingMetrics"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[GMSSchemaGMSPrivateCloudMetrics inputTokensCount](self, "inputTokensCount")}];
    [dictionary setObject:v13 forKeyedSubscript:@"inputTokensCount"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_10:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[GMSSchemaGMSPrivateCloudMetrics outputTokensCount](self, "outputTokensCount")}];
  [dictionary setObject:v14 forKeyedSubscript:@"outputTokensCount"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_18:
  v15 = MEMORY[0x1E696AD98];
  [(GMSSchemaGMSPrivateCloudMetrics *)self timeToFirstTokenMillis];
  v16 = [v15 numberWithDouble:?];
  [dictionary setObject:v16 forKeyedSubscript:@"timeToFirstTokenMillis"];

  if (*&self->_has)
  {
LABEL_12:
    v10 = MEMORY[0x1E696AD98];
    [(GMSSchemaGMSPrivateCloudMetrics *)self tokenRate];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"tokenRate"];
  }

LABEL_13:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    tokenRate = self->_tokenRate;
    if (tokenRate < 0.0)
    {
      tokenRate = -tokenRate;
    }

    *v6.i64 = floor(tokenRate + 0.5);
    v10 = (tokenRate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
    v8 = 2654435761u * *v6.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    timeToFirstTokenMillis = self->_timeToFirstTokenMillis;
    if (timeToFirstTokenMillis < 0.0)
    {
      timeToFirstTokenMillis = -timeToFirstTokenMillis;
    }

    *v6.i64 = floor(timeToFirstTokenMillis + 0.5);
    v14 = (timeToFirstTokenMillis - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v15), v7, v6);
    v12 = 2654435761u * *v6.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    extendLatencyMillis = self->_extendLatencyMillis;
    if (extendLatencyMillis < 0.0)
    {
      extendLatencyMillis = -extendLatencyMillis;
    }

    *v6.i64 = floor(extendLatencyMillis + 0.5);
    v18 = (extendLatencyMillis - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v7, v6).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v20 = 2654435761 * self->_outputTokensCount;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v21 = 0;
    return v12 ^ v8 ^ v16 ^ v20 ^ v21 ^ [(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics *)self->_gmsPrivateCloudSpeculativeDecodingMetrics hash:v3];
  }

  v20 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  v21 = 2654435761 * self->_inputTokensCount;
  return v12 ^ v8 ^ v16 ^ v20 ^ v21 ^ [(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics *)self->_gmsPrivateCloudSpeculativeDecodingMetrics hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = equalCopy[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    tokenRate = self->_tokenRate;
    [equalCopy tokenRate];
    if (tokenRate != v8)
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      timeToFirstTokenMillis = self->_timeToFirstTokenMillis;
      [equalCopy timeToFirstTokenMillis];
      if (timeToFirstTokenMillis != v11)
      {
        goto LABEL_26;
      }

      has = self->_has;
      v6 = equalCopy[56];
    }

    v12 = (*&has >> 2) & 1;
    if (v12 == ((v6 >> 2) & 1))
    {
      if (v12)
      {
        extendLatencyMillis = self->_extendLatencyMillis;
        [equalCopy extendLatencyMillis];
        if (extendLatencyMillis != v14)
        {
          goto LABEL_26;
        }

        has = self->_has;
        v6 = equalCopy[56];
      }

      v15 = (*&has >> 3) & 1;
      if (v15 == ((v6 >> 3) & 1))
      {
        if (v15)
        {
          outputTokensCount = self->_outputTokensCount;
          if (outputTokensCount != [equalCopy outputTokensCount])
          {
            goto LABEL_26;
          }

          has = self->_has;
          v6 = equalCopy[56];
        }

        v17 = (*&has >> 4) & 1;
        if (v17 == ((v6 >> 4) & 1))
        {
          if (!v17 || (inputTokensCount = self->_inputTokensCount, inputTokensCount == [equalCopy inputTokensCount]))
          {
            gmsPrivateCloudSpeculativeDecodingMetrics = [(GMSSchemaGMSPrivateCloudMetrics *)self gmsPrivateCloudSpeculativeDecodingMetrics];
            gmsPrivateCloudSpeculativeDecodingMetrics2 = [equalCopy gmsPrivateCloudSpeculativeDecodingMetrics];
            v21 = gmsPrivateCloudSpeculativeDecodingMetrics2;
            if ((gmsPrivateCloudSpeculativeDecodingMetrics != 0) != (gmsPrivateCloudSpeculativeDecodingMetrics2 == 0))
            {
              gmsPrivateCloudSpeculativeDecodingMetrics3 = [(GMSSchemaGMSPrivateCloudMetrics *)self gmsPrivateCloudSpeculativeDecodingMetrics];
              if (!gmsPrivateCloudSpeculativeDecodingMetrics3)
              {

LABEL_29:
                v27 = 1;
                goto LABEL_27;
              }

              v23 = gmsPrivateCloudSpeculativeDecodingMetrics3;
              gmsPrivateCloudSpeculativeDecodingMetrics4 = [(GMSSchemaGMSPrivateCloudMetrics *)self gmsPrivateCloudSpeculativeDecodingMetrics];
              gmsPrivateCloudSpeculativeDecodingMetrics5 = [equalCopy gmsPrivateCloudSpeculativeDecodingMetrics];
              v26 = [gmsPrivateCloudSpeculativeDecodingMetrics4 isEqual:gmsPrivateCloudSpeculativeDecodingMetrics5];

              if (v26)
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
  v27 = 0;
LABEL_27:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
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
  PBDataWriterWriteDoubleField();
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
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt64Field();
  }

LABEL_7:
  gmsPrivateCloudSpeculativeDecodingMetrics = [(GMSSchemaGMSPrivateCloudMetrics *)self gmsPrivateCloudSpeculativeDecodingMetrics];

  v6 = toCopy;
  if (gmsPrivateCloudSpeculativeDecodingMetrics)
  {
    gmsPrivateCloudSpeculativeDecodingMetrics2 = [(GMSSchemaGMSPrivateCloudMetrics *)self gmsPrivateCloudSpeculativeDecodingMetrics];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasInputTokensCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasOutputTokensCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasExtendLatencyMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTimeToFirstTokenMillis:(BOOL)millis
{
  if (millis)
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
  v9.super_class = GMSSchemaGMSPrivateCloudMetrics;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GMSSchemaGMSPrivateCloudMetrics *)self gmsPrivateCloudSpeculativeDecodingMetrics:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(GMSSchemaGMSPrivateCloudMetrics *)self deleteGmsPrivateCloudSpeculativeDecodingMetrics];
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