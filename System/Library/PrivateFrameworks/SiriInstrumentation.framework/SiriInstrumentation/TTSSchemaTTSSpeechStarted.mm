@interface TTSSchemaTTSSpeechStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (TTSSchemaTTSSpeechStarted)initWithDictionary:(id)a3;
- (TTSSchemaTTSSpeechStarted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAssetSelectionLatencyInSecond:(BOOL)a3;
- (void)setHasAudioQueueLatencyInSecond:(BOOL)a3;
- (void)setHasCustomerPerceivedLatencyInSecond:(BOOL)a3;
- (void)setHasIsWarmStart:(BOOL)a3;
- (void)setHasLlmStylePrompt:(BOOL)a3;
- (void)setHasSynthesisEffect:(BOOL)a3;
- (void)setHasSynthesisSource:(BOOL)a3;
- (void)setHasThermalLevel:(BOOL)a3;
- (void)setHasThermalState:(BOOL)a3;
- (void)setHasVolume:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TTSSchemaTTSSpeechStarted

- (TTSSchemaTTSSpeechStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = TTSSchemaTTSSpeechStarted;
  v5 = [(TTSSchemaTTSSpeechStarted *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioOutputRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSpeechStarted setAudioOutputRoute:](v5, "setAudioOutputRoute:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"customerPerceivedLatencyInSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(TTSSchemaTTSSpeechStarted *)v5 setCustomerPerceivedLatencyInSecond:?];
    }

    v27 = v7;
    v28 = v6;
    v8 = [v4 objectForKeyedSubscript:@"synthesisSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSpeechStarted setSynthesisSource:](v5, "setSynthesisSource:", [v8 intValue]);
    }

    v26 = v8;
    v9 = [v4 objectForKeyedSubscript:@"voiceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[TTSSchemaTTSVoiceContext alloc] initWithDictionary:v9];
      [(TTSSchemaTTSSpeechStarted *)v5 setVoiceContext:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"synthesisEffect"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSpeechStarted setSynthesisEffect:](v5, "setSynthesisEffect:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"audioInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[TTSSchemaTTSAudioInterface alloc] initWithDictionary:v12];
      [(TTSSchemaTTSSpeechStarted *)v5 setAudioInterface:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"volume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(TTSSchemaTTSSpeechStarted *)v5 setVolume:?];
    }

    v15 = [v4 objectForKeyedSubscript:{@"thermalState", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSpeechStarted setThermalState:](v5, "setThermalState:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"assetSelectionLatencyInSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(TTSSchemaTTSSpeechStarted *)v5 setAssetSelectionLatencyInSecond:?];
    }

    v25 = v9;
    v17 = [v4 objectForKeyedSubscript:@"audioQueueLatencyInSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(TTSSchemaTTSSpeechStarted *)v5 setAudioQueueLatencyInSecond:?];
    }

    v24 = v11;
    v18 = [v4 objectForKeyedSubscript:@"isWarmStart"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSpeechStarted setIsWarmStart:](v5, "setIsWarmStart:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"llmStylePrompt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSpeechStarted setLlmStylePrompt:](v5, "setLlmStylePrompt:", [v19 intValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"thermalLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSpeechStarted setThermalLevel:](v5, "setThermalLevel:", [v20 intValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (TTSSchemaTTSSpeechStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTSSchemaTTSSpeechStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTSSchemaTTSSpeechStarted *)self dictionaryRepresentation];
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
  if ((*&self->_has & 0x40) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(TTSSchemaTTSSpeechStarted *)self assetSelectionLatencyInSecond];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"assetSelectionLatencyInSecond"];
  }

  if (self->_audioInterface)
  {
    v6 = [(TTSSchemaTTSSpeechStarted *)self audioInterface];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"audioInterface"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"audioInterface"];
    }
  }

  has = self->_has;
  if (has)
  {
    v10 = [(TTSSchemaTTSSpeechStarted *)self audioOutputRoute]- 1;
    if (v10 > 7)
    {
      v11 = @"UNKNOWN";
    }

    else
    {
      v11 = off_1E78E8100[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"audioOutputRoute"];
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_10:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_10;
  }

  v12 = MEMORY[0x1E696AD98];
  [(TTSSchemaTTSSpeechStarted *)self audioQueueLatencyInSecond];
  v13 = [v12 numberWithFloat:?];
  [v3 setObject:v13 forKeyedSubscript:@"audioQueueLatencyInSecond"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = MEMORY[0x1E696AD98];
  [(TTSSchemaTTSSpeechStarted *)self customerPerceivedLatencyInSecond];
  v15 = [v14 numberWithFloat:?];
  [v3 setObject:v15 forKeyedSubscript:@"customerPerceivedLatencyInSecond"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[TTSSchemaTTSSpeechStarted isWarmStart](self, "isWarmStart")}];
  [v3 setObject:v16 forKeyedSubscript:@"isWarmStart"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_25:
  v17 = [(TTSSchemaTTSSpeechStarted *)self llmStylePrompt]- 1;
  if (v17 > 3)
  {
    v18 = @"TTSLLMSTYLEPROMPT_UNKNOWN";
  }

  else
  {
    v18 = off_1E78E8140[v17];
  }

  [v3 setObject:v18 forKeyedSubscript:@"llmStylePrompt"];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_29:
  v19 = [(TTSSchemaTTSSpeechStarted *)self synthesisEffect]- 1;
  if (v19 > 2)
  {
    v20 = @"UNKNOWN";
  }

  else
  {
    v20 = off_1E78E8160[v19];
  }

  [v3 setObject:v20 forKeyedSubscript:@"synthesisEffect"];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_33:
  v21 = [(TTSSchemaTTSSpeechStarted *)self synthesisSource]- 1;
  if (v21 > 8)
  {
    v22 = @"UNKNOWN";
  }

  else
  {
    v22 = off_1E78E8178[v21];
  }

  [v3 setObject:v22 forKeyedSubscript:@"synthesisSource"];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_37:
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[TTSSchemaTTSSpeechStarted thermalLevel](self, "thermalLevel")}];
  [v3 setObject:v23 forKeyedSubscript:@"thermalLevel"];

  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v24 = [(TTSSchemaTTSSpeechStarted *)self thermalState]- 1;
  if (v24 > 3)
  {
    v25 = @"DEVICETHERMALSTATE_UNKNOWN";
  }

  else
  {
    v25 = off_1E78E81C0[v24];
  }

  [v3 setObject:v25 forKeyedSubscript:@"thermalState"];
LABEL_42:
  if (self->_voiceContext)
  {
    v26 = [(TTSSchemaTTSSpeechStarted *)self voiceContext];
    v27 = [v26 dictionaryRepresentation];
    if (v27)
    {
      [v3 setObject:v27 forKeyedSubscript:@"voiceContext"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"voiceContext"];
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v29 = MEMORY[0x1E696AD98];
    [(TTSSchemaTTSSpeechStarted *)self volume];
    v30 = [v29 numberWithFloat:?];
    [v3 setObject:v30 forKeyedSubscript:@"volume"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    v6 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v6 = 2654435761 * self->_audioOutputRoute;
  if ((has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  customerPerceivedLatencyInSecond = self->_customerPerceivedLatencyInSecond;
  if (customerPerceivedLatencyInSecond >= 0.0)
  {
    v8 = customerPerceivedLatencyInSecond;
  }

  else
  {
    v8 = -customerPerceivedLatencyInSecond;
  }

  *v2.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v3, v2).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_10:
  if ((has & 4) != 0)
  {
    v12 = 2654435761 * self->_synthesisSource;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(TTSSchemaTTSVoiceContext *)self->_voiceContext hash];
  if ((*&self->_has & 8) != 0)
  {
    v14 = 2654435761 * self->_synthesisEffect;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(TTSSchemaTTSAudioInterface *)self->_audioInterface hash];
  v18 = self->_has;
  if ((v18 & 0x10) != 0)
  {
    volume = self->_volume;
    if (volume >= 0.0)
    {
      v21 = volume;
    }

    else
    {
      v21 = -volume;
    }

    *v16.i64 = floor(v21 + 0.5);
    v22 = (v21 - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v23), v17, v16);
    v19 = 2654435761u * *v16.i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v19 += v22;
      }
    }

    else
    {
      v19 -= fabs(v22);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((v18 & 0x20) == 0)
  {
    v24 = 0;
    if ((v18 & 0x40) != 0)
    {
      goto LABEL_29;
    }

LABEL_35:
    v29 = 0;
    goto LABEL_36;
  }

  v24 = 2654435761 * self->_thermalState;
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  assetSelectionLatencyInSecond = self->_assetSelectionLatencyInSecond;
  if (assetSelectionLatencyInSecond >= 0.0)
  {
    v26 = assetSelectionLatencyInSecond;
  }

  else
  {
    v26 = -assetSelectionLatencyInSecond;
  }

  *v16.i64 = floor(v26 + 0.5);
  v27 = (v26 - *v16.i64) * 1.84467441e19;
  *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  v16 = vbslq_s8(vnegq_f64(v28), v17, v16);
  v29 = 2654435761u * *v16.i64;
  if (v27 >= 0.0)
  {
    if (v27 > 0.0)
    {
      v29 += v27;
    }
  }

  else
  {
    v29 -= fabs(v27);
  }

LABEL_36:
  if ((v18 & 0x80) != 0)
  {
    audioQueueLatencyInSecond = self->_audioQueueLatencyInSecond;
    if (audioQueueLatencyInSecond >= 0.0)
    {
      v32 = audioQueueLatencyInSecond;
    }

    else
    {
      v32 = -audioQueueLatencyInSecond;
    }

    *v16.i64 = floor(v32 + 0.5);
    v33 = (v32 - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v30 = 2654435761u * *vbslq_s8(vnegq_f64(v34), v17, v16).i64;
    if (v33 >= 0.0)
    {
      if (v33 > 0.0)
      {
        v30 += v33;
      }
    }

    else
    {
      v30 -= fabs(v33);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    v35 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    v36 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    v37 = 0;
    return v11 ^ v6 ^ v12 ^ v14 ^ v13 ^ v15 ^ v19 ^ v24 ^ v29 ^ v30 ^ v35 ^ v36 ^ v37;
  }

  v35 = 2654435761 * self->_isWarmStart;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  v36 = 2654435761 * self->_llmStylePrompt;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_53;
  }

LABEL_50:
  v37 = 2654435761 * self->_thermalLevel;
  return v11 ^ v6 ^ v12 ^ v14 ^ v13 ^ v15 ^ v19 ^ v24 ^ v29 ^ v30 ^ v35 ^ v36 ^ v37;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = v4[38];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    audioOutputRoute = self->_audioOutputRoute;
    if (audioOutputRoute != [v4 audioOutputRoute])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[38];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      customerPerceivedLatencyInSecond = self->_customerPerceivedLatencyInSecond;
      [v4 customerPerceivedLatencyInSecond];
      if (customerPerceivedLatencyInSecond != v10)
      {
        goto LABEL_26;
      }

      has = self->_has;
      v6 = v4[38];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 != ((v6 >> 2) & 1))
    {
      goto LABEL_26;
    }

    if (v11)
    {
      synthesisSource = self->_synthesisSource;
      if (synthesisSource != [v4 synthesisSource])
      {
        goto LABEL_26;
      }
    }

    v13 = [(TTSSchemaTTSSpeechStarted *)self voiceContext];
    v14 = [v4 voiceContext];
    if ((v13 != 0) == (v14 == 0))
    {
      goto LABEL_25;
    }

    v15 = [(TTSSchemaTTSSpeechStarted *)self voiceContext];
    if (v15)
    {
      v16 = v15;
      v17 = [(TTSSchemaTTSSpeechStarted *)self voiceContext];
      v18 = [v4 voiceContext];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v20 = (*&self->_has >> 3) & 1;
    if (v20 != ((v4[38] >> 3) & 1))
    {
      goto LABEL_26;
    }

    if (v20)
    {
      synthesisEffect = self->_synthesisEffect;
      if (synthesisEffect != [v4 synthesisEffect])
      {
        goto LABEL_26;
      }
    }

    v13 = [(TTSSchemaTTSSpeechStarted *)self audioInterface];
    v14 = [v4 audioInterface];
    if ((v13 != 0) == (v14 == 0))
    {
LABEL_25:

      goto LABEL_26;
    }

    v22 = [(TTSSchemaTTSSpeechStarted *)self audioInterface];
    if (v22)
    {
      v23 = v22;
      v24 = [(TTSSchemaTTSSpeechStarted *)self audioInterface];
      v25 = [v4 audioInterface];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v29 = self->_has;
    v30 = (*&v29 >> 4) & 1;
    v31 = v4[38];
    if (v30 == ((v31 >> 4) & 1))
    {
      if (v30)
      {
        volume = self->_volume;
        [v4 volume];
        if (volume != v33)
        {
          goto LABEL_26;
        }

        v29 = self->_has;
        v31 = v4[38];
      }

      v34 = (*&v29 >> 5) & 1;
      if (v34 == ((v31 >> 5) & 1))
      {
        if (v34)
        {
          thermalState = self->_thermalState;
          if (thermalState != [v4 thermalState])
          {
            goto LABEL_26;
          }

          v29 = self->_has;
          v31 = v4[38];
        }

        v36 = (*&v29 >> 6) & 1;
        if (v36 == ((v31 >> 6) & 1))
        {
          if (v36)
          {
            assetSelectionLatencyInSecond = self->_assetSelectionLatencyInSecond;
            [v4 assetSelectionLatencyInSecond];
            if (assetSelectionLatencyInSecond != v38)
            {
              goto LABEL_26;
            }

            v29 = self->_has;
            v31 = v4[38];
          }

          v39 = (*&v29 >> 7) & 1;
          if (v39 == ((v31 >> 7) & 1))
          {
            if (v39)
            {
              audioQueueLatencyInSecond = self->_audioQueueLatencyInSecond;
              [v4 audioQueueLatencyInSecond];
              if (audioQueueLatencyInSecond != v41)
              {
                goto LABEL_26;
              }

              v29 = self->_has;
              v31 = v4[38];
            }

            v42 = (*&v29 >> 8) & 1;
            if (v42 == ((v31 >> 8) & 1))
            {
              if (v42)
              {
                isWarmStart = self->_isWarmStart;
                if (isWarmStart != [v4 isWarmStart])
                {
                  goto LABEL_26;
                }

                v29 = self->_has;
                v31 = v4[38];
              }

              v44 = (*&v29 >> 9) & 1;
              if (v44 == ((v31 >> 9) & 1))
              {
                if (v44)
                {
                  llmStylePrompt = self->_llmStylePrompt;
                  if (llmStylePrompt != [v4 llmStylePrompt])
                  {
                    goto LABEL_26;
                  }

                  v29 = self->_has;
                  v31 = v4[38];
                }

                v46 = (*&v29 >> 10) & 1;
                if (v46 == ((v31 >> 10) & 1))
                {
                  if (!v46 || (thermalLevel = self->_thermalLevel, thermalLevel == [v4 thermalLevel]))
                  {
                    v27 = 1;
                    goto LABEL_27;
                  }
                }
              }
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

- (void)writeTo:(id)a3
{
  v10 = a3;
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  v5 = [(TTSSchemaTTSSpeechStarted *)self voiceContext];

  if (v5)
  {
    v6 = [(TTSSchemaTTSSpeechStarted *)self voiceContext];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(TTSSchemaTTSSpeechStarted *)self audioInterface];

  if (v7)
  {
    v8 = [(TTSSchemaTTSSpeechStarted *)self audioInterface];
    PBDataWriterWriteSubmessage();
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    PBDataWriterWriteFloatField();
    v9 = self->_has;
    if ((v9 & 0x20) == 0)
    {
LABEL_13:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((v9 & 0x40) == 0)
  {
LABEL_14:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteFloatField();
  v9 = self->_has;
  if ((v9 & 0x80) == 0)
  {
LABEL_15:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteFloatField();
  v9 = self->_has;
  if ((v9 & 0x100) == 0)
  {
LABEL_16:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((v9 & 0x200) == 0)
  {
LABEL_17:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_30:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    PBDataWriterWriteInt32Field();
  }

LABEL_19:
}

- (void)setHasThermalLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasLlmStylePrompt:(BOOL)a3
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

- (void)setHasIsWarmStart:(BOOL)a3
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

- (void)setHasAudioQueueLatencyInSecond:(BOOL)a3
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

- (void)setHasAssetSelectionLatencyInSecond:(BOOL)a3
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

- (void)setHasThermalState:(BOOL)a3
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

- (void)setHasVolume:(BOOL)a3
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

- (void)setHasSynthesisEffect:(BOOL)a3
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

- (void)setHasSynthesisSource:(BOOL)a3
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

- (void)setHasCustomerPerceivedLatencyInSecond:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TTSSchemaTTSSpeechStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(TTSSchemaTTSSpeechStarted *)self voiceContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(TTSSchemaTTSSpeechStarted *)self deleteVoiceContext];
  }

  v9 = [(TTSSchemaTTSSpeechStarted *)self audioInterface];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(TTSSchemaTTSSpeechStarted *)self deleteAudioInterface];
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