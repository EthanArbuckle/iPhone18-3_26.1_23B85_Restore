@interface TTSSchemaTTSSynthesisEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (TTSSchemaTTSSynthesisEnded)initWithDictionary:(id)a3;
- (TTSSchemaTTSSynthesisEnded)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)errorCodesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addErrorCodes:(int)a3;
- (void)setHasPromptCount:(BOOL)a3;
- (void)setHasSynthesisLatencyInSecond:(BOOL)a3;
- (void)setHasSynthesisRealTimeFactor:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TTSSchemaTTSSynthesisEnded

- (TTSSchemaTTSSynthesisEnded)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = TTSSchemaTTSSynthesisEnded;
  v5 = [(TTSSchemaTTSSynthesisEnded *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"synthesizedAudioDurationInSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(TTSSchemaTTSSynthesisEnded *)v5 setSynthesizedAudioDurationInSecond:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"synthesisLatencyInSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(TTSSchemaTTSSynthesisEnded *)v5 setSynthesisLatencyInSecond:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"synthesisRealTimeFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(TTSSchemaTTSSynthesisEnded *)v5 setSynthesisRealTimeFactor:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"promptCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSynthesisEnded setPromptCount:](v5, "setPromptCount:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"errorCodes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v20 = v7;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[TTSSchemaTTSSynthesisEnded addErrorCodes:](v5, "addErrorCodes:", [v16 intValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v7 = v20;
      v6 = v21;
      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (TTSSchemaTTSSynthesisEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTSSchemaTTSSynthesisEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTSSchemaTTSSynthesisEnded *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_errorCodes count])
  {
    v4 = [(TTSSchemaTTSSynthesisEnded *)self errorCodes];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"errorCodes"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[TTSSchemaTTSSynthesisEnded promptCount](self, "promptCount")}];
    [v3 setObject:v10 forKeyedSubscript:@"promptCount"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v11 = MEMORY[0x1E696AD98];
  [(TTSSchemaTTSSynthesisEnded *)self synthesisLatencyInSecond];
  v12 = [v11 numberWithFloat:?];
  [v3 setObject:v12 forKeyedSubscript:@"synthesisLatencyInSecond"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v13 = MEMORY[0x1E696AD98];
  [(TTSSchemaTTSSynthesisEnded *)self synthesisRealTimeFactor];
  v14 = [v13 numberWithFloat:?];
  [v3 setObject:v14 forKeyedSubscript:@"synthesisRealTimeFactor"];

  if (*&self->_has)
  {
LABEL_7:
    v7 = MEMORY[0x1E696AD98];
    [(TTSSchemaTTSSynthesisEnded *)self synthesizedAudioDurationInSecond];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"synthesizedAudioDurationInSecond"];
  }

LABEL_8:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    synthesizedAudioDurationInSecond = self->_synthesizedAudioDurationInSecond;
    if (synthesizedAudioDurationInSecond >= 0.0)
    {
      v10 = synthesizedAudioDurationInSecond;
    }

    else
    {
      v10 = -synthesizedAudioDurationInSecond;
    }

    *v6.i64 = floor(v10 + 0.5);
    v11 = (v10 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v12), v7, v6);
    v8 = 2654435761u * *v6.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    synthesisLatencyInSecond = self->_synthesisLatencyInSecond;
    if (synthesisLatencyInSecond >= 0.0)
    {
      v15 = synthesisLatencyInSecond;
    }

    else
    {
      v15 = -synthesisLatencyInSecond;
    }

    *v6.i64 = floor(v15 + 0.5);
    v16 = (v15 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v17), v7, v6);
    v13 = 2654435761u * *v6.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v13 += v16;
      }
    }

    else
    {
      v13 -= fabs(v16);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    synthesisRealTimeFactor = self->_synthesisRealTimeFactor;
    if (synthesisRealTimeFactor >= 0.0)
    {
      v20 = synthesisRealTimeFactor;
    }

    else
    {
      v20 = -synthesisRealTimeFactor;
    }

    *v6.i64 = floor(v20 + 0.5);
    v21 = (v20 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v22), v7, v6).i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v18 += v21;
      }
    }

    else
    {
      v18 -= fabs(v21);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v23 = 2654435761 * self->_promptCount;
  }

  else
  {
    v23 = 0;
  }

  return v13 ^ v8 ^ v18 ^ v23 ^ [(NSArray *)self->_errorCodes hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    synthesizedAudioDurationInSecond = self->_synthesizedAudioDurationInSecond;
    [v4 synthesizedAudioDurationInSecond];
    if (synthesizedAudioDurationInSecond != v8)
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      synthesisLatencyInSecond = self->_synthesisLatencyInSecond;
      [v4 synthesisLatencyInSecond];
      if (synthesisLatencyInSecond != v11)
      {
        goto LABEL_22;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v12 = (*&has >> 2) & 1;
    if (v12 == ((v6 >> 2) & 1))
    {
      if (v12)
      {
        synthesisRealTimeFactor = self->_synthesisRealTimeFactor;
        [v4 synthesisRealTimeFactor];
        if (synthesisRealTimeFactor != v14)
        {
          goto LABEL_22;
        }

        has = self->_has;
        v6 = v4[32];
      }

      v15 = (*&has >> 3) & 1;
      if (v15 == ((v6 >> 3) & 1))
      {
        if (!v15 || (promptCount = self->_promptCount, promptCount == [v4 promptCount]))
        {
          v17 = [(TTSSchemaTTSSynthesisEnded *)self errorCodes];
          v18 = [v4 errorCodes];
          v19 = v18;
          if ((v17 != 0) != (v18 == 0))
          {
            v20 = [(TTSSchemaTTSSynthesisEnded *)self errorCodes];
            if (!v20)
            {

LABEL_25:
              v25 = 1;
              goto LABEL_23;
            }

            v21 = v20;
            v22 = [(TTSSchemaTTSSynthesisEnded *)self errorCodes];
            v23 = [v4 errorCodes];
            v24 = [v22 isEqual:v23];

            if (v24)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }
        }
      }
    }
  }

LABEL_22:
  v25 = 0;
LABEL_23:

  return v25;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      goto LABEL_16;
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_errorCodes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (int)errorCodesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_errorCodes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addErrorCodes:(int)a3
{
  v3 = *&a3;
  errorCodes = self->_errorCodes;
  if (!errorCodes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_errorCodes;
    self->_errorCodes = v6;

    errorCodes = self->_errorCodes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)errorCodes addObject:v8];
}

- (void)setHasPromptCount:(BOOL)a3
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

- (void)setHasSynthesisRealTimeFactor:(BOOL)a3
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

- (void)setHasSynthesisLatencyInSecond:(BOOL)a3
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