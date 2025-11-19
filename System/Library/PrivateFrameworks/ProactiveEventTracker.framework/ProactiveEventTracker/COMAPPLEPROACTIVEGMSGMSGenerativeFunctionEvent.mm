@interface COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPromptConstructionMillis:(BOOL)a3;
- (void)setHasResponseProcessingMillis:(BOOL)a3;
- (void)setHasTotalLatencyMillis:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 64) & 0x10) != 0)
  {
    self->_version = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

  v6 = v4;
  if (*(v4 + 6))
  {
    [(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)self setFunctionIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)self setInvocationIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 64);
  if ((v5 & 8) != 0)
  {
    self->_totalLatencyMillis = *(v4 + 4);
    *&self->_has |= 8u;
    v5 = *(v4 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 64) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_promptConstructionMillis = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_inferenceMillis = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 64) & 4) != 0)
  {
LABEL_11:
    self->_responseProcessingMillis = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_12:
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_functionIdentifier hash];
  v5 = [(NSString *)self->_invocationIdentifier hash];
  if ((*&self->_has & 8) != 0)
  {
    totalLatencyMillis = self->_totalLatencyMillis;
    if (totalLatencyMillis < 0.0)
    {
      totalLatencyMillis = -totalLatencyMillis;
    }

    *v6.i64 = floor(totalLatencyMillis + 0.5);
    v10 = (totalLatencyMillis - *v6.i64) * 1.84467441e19;
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
    promptConstructionMillis = self->_promptConstructionMillis;
    if (promptConstructionMillis < 0.0)
    {
      promptConstructionMillis = -promptConstructionMillis;
    }

    *v6.i64 = floor(promptConstructionMillis + 0.5);
    v14 = (promptConstructionMillis - *v6.i64) * 1.84467441e19;
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

  if (*&self->_has)
  {
    inferenceMillis = self->_inferenceMillis;
    if (inferenceMillis < 0.0)
    {
      inferenceMillis = -inferenceMillis;
    }

    *v6.i64 = floor(inferenceMillis + 0.5);
    v18 = (inferenceMillis - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v19), v7, v6);
    v16 = 2654435761u * *v6.i64;
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

  if ((*&self->_has & 4) != 0)
  {
    responseProcessingMillis = self->_responseProcessingMillis;
    if (responseProcessingMillis < 0.0)
    {
      responseProcessingMillis = -responseProcessingMillis;
    }

    *v6.i64 = floor(responseProcessingMillis + 0.5);
    v22 = (responseProcessingMillis - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v7, v6).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v16 ^ v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = *(v4 + 64);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 64) & 0x10) == 0 || self->_version != *(v4 + 5))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 64) & 0x10) != 0)
  {
LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  functionIdentifier = self->_functionIdentifier;
  if (functionIdentifier | *(v4 + 6) && ![(NSString *)functionIdentifier isEqual:?])
  {
    goto LABEL_30;
  }

  invocationIdentifier = self->_invocationIdentifier;
  if (invocationIdentifier | *(v4 + 7))
  {
    if (![(NSString *)invocationIdentifier isEqual:?])
    {
      goto LABEL_30;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_totalLatencyMillis != *(v4 + 4))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_promptConstructionMillis != *(v4 + 2))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_inferenceMillis != *(v4 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_30;
  }

  v8 = (*(v4 + 64) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_responseProcessingMillis != *(v4 + 3))
    {
      goto LABEL_30;
    }

    v8 = 1;
  }

LABEL_31:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_version;
    *(v5 + 64) |= 0x10u;
  }

  v7 = [(NSString *)self->_functionIdentifier copyWithZone:a3];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  v9 = [(NSString *)self->_invocationIdentifier copyWithZone:a3];
  v10 = *(v6 + 56);
  *(v6 + 56) = v9;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 32) = self->_totalLatencyMillis;
    *(v6 + 64) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 8) = self->_inferenceMillis;
      *(v6 + 64) |= 1u;
      if ((*&self->_has & 4) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_promptConstructionMillis;
  *(v6 + 64) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(v6 + 24) = self->_responseProcessingMillis;
    *(v6 + 64) |= 4u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x10) != 0)
  {
    v4[5] = self->_version;
    *(v4 + 64) |= 0x10u;
  }

  v6 = v4;
  if (self->_functionIdentifier)
  {
    [v4 setFunctionIdentifier:?];
    v4 = v6;
  }

  if (self->_invocationIdentifier)
  {
    [v6 setInvocationIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[4] = *&self->_totalLatencyMillis;
    *(v4 + 64) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v4[2] = *&self->_promptConstructionMillis;
  *(v4 + 64) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  v4[1] = *&self->_inferenceMillis;
  *(v4 + 64) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v4[3] = *&self->_responseProcessingMillis;
    *(v4 + 64) |= 4u;
  }

LABEL_12:
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ((*&self->_has & 0x10) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
  }

  if (self->_functionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_invocationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    totalLatencyMillis = self->_totalLatencyMillis;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  promptConstructionMillis = self->_promptConstructionMillis;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  inferenceMillis = self->_inferenceMillis;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    responseProcessingMillis = self->_responseProcessingMillis;
    PBDataWriterWriteDoubleField();
  }

LABEL_12:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  functionIdentifier = self->_functionIdentifier;
  if (functionIdentifier)
  {
    [v3 setObject:functionIdentifier forKey:@"functionIdentifier"];
  }

  invocationIdentifier = self->_invocationIdentifier;
  if (invocationIdentifier)
  {
    [v3 setObject:invocationIdentifier forKey:@"invocationIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_totalLatencyMillis];
    [v3 setObject:v10 forKey:@"totalLatencyMillis"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_promptConstructionMillis];
  [v3 setObject:v11 forKey:@"promptConstructionMillis"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_inferenceMillis];
  [v3 setObject:v12 forKey:@"inferenceMillis"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_responseProcessingMillis];
    [v3 setObject:v8 forKey:@"responseProcessingMillis"];
  }

LABEL_12:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent;
  v4 = [(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)&v8 description];
  v5 = [(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasResponseProcessingMillis:(BOOL)a3
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

- (void)setHasPromptConstructionMillis:(BOOL)a3
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

- (void)setHasTotalLatencyMillis:(BOOL)a3
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

- (void)setHasVersion:(BOOL)a3
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

@end