@interface GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics
- (BOOL)isEqual:(id)equal;
- (GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics)initWithDictionary:(id)dictionary;
- (GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDraftModelInferenceCallCount:(BOOL)count;
- (void)setHasDraftModelTotalInferenceLatencyMillis:(BOOL)millis;
- (void)setHasDraftOutputTokenCount:(BOOL)count;
- (void)setHasDraftSteps:(BOOL)steps;
- (void)setHasTargetModelInferenceCallCount:(BOOL)count;
- (void)setHasTargetModelTotalInferenceLatencyMillis:(BOOL)millis;
- (void)setHasTargetOutputTokenCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics

- (GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics;
  v5 = [(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"speculativeDecodingAcceptanceRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics *)v5 setSpeculativeDecodingAcceptanceRate:?];
    }

    v16 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"draftModelInferenceCallCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics setDraftModelInferenceCallCount:](v5, "setDraftModelInferenceCallCount:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"targetModelInferenceCallCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics setTargetModelInferenceCallCount:](v5, "setTargetModelInferenceCallCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"draftOutputTokenCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics setDraftOutputTokenCount:](v5, "setDraftOutputTokenCount:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"targetOutputTokenCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics setTargetOutputTokenCount:](v5, "setTargetOutputTokenCount:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"draftModelTotalInferenceLatencyMillis"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics setDraftModelTotalInferenceLatencyMillis:](v5, "setDraftModelTotalInferenceLatencyMillis:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"targetModelTotalInferenceLatencyMillis"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics setTargetModelTotalInferenceLatencyMillis:](v5, "setTargetModelTotalInferenceLatencyMillis:", [v12 unsignedLongLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"draftSteps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics setDraftSteps:](v5, "setDraftSteps:", [v13 unsignedLongLongValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics draftModelInferenceCallCount](self, "draftModelInferenceCallCount")}];
    [dictionary setObject:v7 forKeyedSubscript:@"draftModelInferenceCallCount"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics draftModelTotalInferenceLatencyMillis](self, "draftModelTotalInferenceLatencyMillis")}];
  [dictionary setObject:v8 forKeyedSubscript:@"draftModelTotalInferenceLatencyMillis"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics draftOutputTokenCount](self, "draftOutputTokenCount")}];
  [dictionary setObject:v9 forKeyedSubscript:@"draftOutputTokenCount"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics draftSteps](self, "draftSteps")}];
  [dictionary setObject:v10 forKeyedSubscript:@"draftSteps"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = MEMORY[0x1E696AD98];
  [(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics *)self speculativeDecodingAcceptanceRate];
  v12 = [v11 numberWithFloat:?];
  [dictionary setObject:v12 forKeyedSubscript:@"speculativeDecodingAcceptanceRate"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics targetModelInferenceCallCount](self, "targetModelInferenceCallCount")}];
  [dictionary setObject:v13 forKeyedSubscript:@"targetModelInferenceCallCount"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics targetModelTotalInferenceLatencyMillis](self, "targetModelTotalInferenceLatencyMillis")}];
  [dictionary setObject:v14 forKeyedSubscript:@"targetModelTotalInferenceLatencyMillis"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics targetOutputTokenCount](self, "targetOutputTokenCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"targetOutputTokenCount"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    speculativeDecodingAcceptanceRate = self->_speculativeDecodingAcceptanceRate;
    if (speculativeDecodingAcceptanceRate >= 0.0)
    {
      v6 = speculativeDecodingAcceptanceRate;
    }

    else
    {
      v6 = -speculativeDecodingAcceptanceRate;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_draftModelInferenceCallCount;
    if ((*&self->_has & 4) != 0)
    {
LABEL_12:
      v10 = 2654435761 * self->_targetModelInferenceCallCount;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  v10 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    v11 = 2654435761 * self->_draftOutputTokenCount;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    v12 = 2654435761 * self->_targetOutputTokenCount;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    v13 = 2654435761u * self->_draftModelTotalInferenceLatencyMillis;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    v14 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v15 = 0;
    return v9 ^ v4 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_22:
  v13 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v14 = 2654435761u * self->_targetModelTotalInferenceLatencyMillis;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  v15 = 2654435761u * self->_draftSteps;
  return v9 ^ v4 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = equalCopy[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    speculativeDecodingAcceptanceRate = self->_speculativeDecodingAcceptanceRate;
    [equalCopy speculativeDecodingAcceptanceRate];
    if (speculativeDecodingAcceptanceRate != v8)
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v9)
  {
    draftModelInferenceCallCount = self->_draftModelInferenceCallCount;
    if (draftModelInferenceCallCount != [equalCopy draftModelInferenceCallCount])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_34;
  }

  if (v11)
  {
    targetModelInferenceCallCount = self->_targetModelInferenceCallCount;
    if (targetModelInferenceCallCount != [equalCopy targetModelInferenceCallCount])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v13 = (*&has >> 3) & 1;
  if (v13 != ((v6 >> 3) & 1))
  {
    goto LABEL_34;
  }

  if (v13)
  {
    draftOutputTokenCount = self->_draftOutputTokenCount;
    if (draftOutputTokenCount != [equalCopy draftOutputTokenCount])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v15 = (*&has >> 4) & 1;
  if (v15 != ((v6 >> 4) & 1))
  {
    goto LABEL_34;
  }

  if (v15)
  {
    targetOutputTokenCount = self->_targetOutputTokenCount;
    if (targetOutputTokenCount != [equalCopy targetOutputTokenCount])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v17 = (*&has >> 5) & 1;
  if (v17 != ((v6 >> 5) & 1))
  {
    goto LABEL_34;
  }

  if (v17)
  {
    draftModelTotalInferenceLatencyMillis = self->_draftModelTotalInferenceLatencyMillis;
    if (draftModelTotalInferenceLatencyMillis != [equalCopy draftModelTotalInferenceLatencyMillis])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v19 = (*&has >> 6) & 1;
  if (v19 != ((v6 >> 6) & 1))
  {
    goto LABEL_34;
  }

  if (v19)
  {
    targetModelTotalInferenceLatencyMillis = self->_targetModelTotalInferenceLatencyMillis;
    if (targetModelTotalInferenceLatencyMillis == [equalCopy targetModelTotalInferenceLatencyMillis])
    {
      has = self->_has;
      v6 = equalCopy[56];
      goto LABEL_30;
    }

LABEL_34:
    v22 = 0;
    goto LABEL_35;
  }

LABEL_30:
  if (((v6 ^ *&has) & 0x80) != 0)
  {
    goto LABEL_34;
  }

  if ((*&has & 0x80) != 0)
  {
    draftSteps = self->_draftSteps;
    if (draftSteps != [equalCopy draftSteps])
    {
      goto LABEL_34;
    }
  }

  v22 = 1;
LABEL_35:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
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

  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PBDataWriterWriteUint64Field();
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
  PBDataWriterWriteUint64Field();
LABEL_9:
}

- (void)setHasDraftSteps:(BOOL)steps
{
  if (steps)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasTargetModelTotalInferenceLatencyMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasDraftModelTotalInferenceLatencyMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTargetOutputTokenCount:(BOOL)count
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

- (void)setHasDraftOutputTokenCount:(BOOL)count
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

- (void)setHasTargetModelInferenceCallCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDraftModelInferenceCallCount:(BOOL)count
{
  if (count)
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