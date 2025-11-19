@interface MHSchemaMHCoreSpeechPreprocessorCompleted
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHCoreSpeechPreprocessorCompleted)initWithDictionary:(id)a3;
- (MHSchemaMHCoreSpeechPreprocessorCompleted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMidSegmentContinousZeros:(id)a3;
- (void)setHasAboveNinetyFivepcOfMax:(BOOL)a3;
- (void)setHasAbsMaxVal:(BOOL)a3;
- (void)setHasBeepPower:(BOOL)a3;
- (void)setHasInitialContinousZeros:(BOOL)a3;
- (void)setHasMaxContinousZeros:(BOOL)a3;
- (void)setHasNumTotalInputSamples:(BOOL)a3;
- (void)setHasNumTotalOutputSamples:(BOOL)a3;
- (void)setHasOriginalPower:(BOOL)a3;
- (void)setHasSignalPower:(BOOL)a3;
- (void)setHasStatsComputed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHCoreSpeechPreprocessorCompleted

- (MHSchemaMHCoreSpeechPreprocessorCompleted)initWithDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46.receiver = self;
  v46.super_class = MHSchemaMHCoreSpeechPreprocessorCompleted;
  v5 = [(MHSchemaMHCoreSpeechPreprocessorCompleted *)&v46 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"beepLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCoreSpeechPreprocessorCompleted setBeepLocation:](v5, "setBeepLocation:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"statsComputed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCoreSpeechPreprocessorCompleted setStatsComputed:](v5, "setStatsComputed:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"beepPower"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHCoreSpeechPreprocessorCompleted *)v5 setBeepPower:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"signalPower"];
    objc_opt_class();
    v41 = v9;
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHCoreSpeechPreprocessorCompleted *)v5 setSignalPower:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"originalPower"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(MHSchemaMHCoreSpeechPreprocessorCompleted *)v5 setOriginalPower:?];
    }

    v40 = v7;
    v11 = [v4 objectForKeyedSubscript:@"absMaxVal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(MHSchemaMHCoreSpeechPreprocessorCompleted *)v5 setAbsMaxVal:?];
    }

    v12 = v6;
    v13 = [v4 objectForKeyedSubscript:@"aboveNinetyFivepcOfMax"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(MHSchemaMHCoreSpeechPreprocessorCompleted *)v5 setAboveNinetyFivepcOfMax:?];
    }

    v14 = [v4 objectForKeyedSubscript:@"numTotalInputSamples"];
    objc_opt_class();
    v39 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCoreSpeechPreprocessorCompleted setNumTotalInputSamples:](v5, "setNumTotalInputSamples:", [v14 unsignedLongLongValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"numTotalOutputSamples"];
    objc_opt_class();
    v38 = v15;
    v16 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCoreSpeechPreprocessorCompleted setNumTotalOutputSamples:](v5, "setNumTotalOutputSamples:", [v38 unsignedLongLongValue]);
    }

    v17 = v8;
    v18 = [v4 objectForKeyedSubscript:@"initialContinousZeros"];
    objc_opt_class();
    v37 = v18;
    v19 = v40;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCoreSpeechPreprocessorCompleted setInitialContinousZeros:](v5, "setInitialContinousZeros:", [v37 unsignedLongLongValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"maxContinousZeros"];
    objc_opt_class();
    v36 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCoreSpeechPreprocessorCompleted setMaxContinousZeros:](v5, "setMaxContinousZeros:", [v20 unsignedLongLongValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"midSegmentContinousZeros"];
    objc_opt_class();
    v22 = v41;
    if (objc_opt_isKindOfClass())
    {
      v32 = v13;
      v33 = v11;
      v34 = v10;
      v35 = v17;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v43;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v42 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[MHSchemaMHCoreSpeechZeroFilterRunPair alloc] initWithDictionary:v28];
              [(MHSchemaMHCoreSpeechPreprocessorCompleted *)v5 addMidSegmentContinousZeros:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v25);
      }

      v17 = v35;
      v19 = v40;
      v22 = v41;
      v11 = v33;
      v10 = v34;
      v13 = v32;
    }

    v30 = v5;
  }

  return v5;
}

- (MHSchemaMHCoreSpeechPreprocessorCompleted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self dictionaryRepresentation];
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
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v17 = MEMORY[0x1E696AD98];
    [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self aboveNinetyFivepcOfMax];
    v18 = [v17 numberWithFloat:?];
    [v3 setObject:v18 forKeyedSubscript:@"aboveNinetyFivepcOfMax"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v19 = MEMORY[0x1E696AD98];
  [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self absMaxVal];
  v20 = [v19 numberWithFloat:?];
  [v3 setObject:v20 forKeyedSubscript:@"absMaxVal"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[MHSchemaMHCoreSpeechPreprocessorCompleted beepLocation](self, "beepLocation")}];
  [v3 setObject:v21 forKeyedSubscript:@"beepLocation"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = MEMORY[0x1E696AD98];
  [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self beepPower];
  v23 = [v22 numberWithFloat:?];
  [v3 setObject:v23 forKeyedSubscript:@"beepPower"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_33:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHCoreSpeechPreprocessorCompleted initialContinousZeros](self, "initialContinousZeros")}];
  [v3 setObject:v24 forKeyedSubscript:@"initialContinousZeros"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHCoreSpeechPreprocessorCompleted maxContinousZeros](self, "maxContinousZeros")}];
    [v3 setObject:v5 forKeyedSubscript:@"maxContinousZeros"];
  }

LABEL_8:
  if ([(NSArray *)self->_midSegmentContinousZeros count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = self->_midSegmentContinousZeros;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"midSegmentContinousZeros"];
  }

  v14 = self->_has;
  if ((v14 & 0x80) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHCoreSpeechPreprocessorCompleted numTotalInputSamples](self, "numTotalInputSamples")}];
    [v3 setObject:v25 forKeyedSubscript:@"numTotalInputSamples"];

    v14 = self->_has;
    if ((v14 & 0x100) == 0)
    {
LABEL_22:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_22;
  }

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHCoreSpeechPreprocessorCompleted numTotalOutputSamples](self, "numTotalOutputSamples")}];
  [v3 setObject:v26 forKeyedSubscript:@"numTotalOutputSamples"];

  v14 = self->_has;
  if ((v14 & 0x10) == 0)
  {
LABEL_23:
    if ((v14 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  v27 = MEMORY[0x1E696AD98];
  [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self originalPower];
  v28 = [v27 numberWithFloat:?];
  [v3 setObject:v28 forKeyedSubscript:@"originalPower"];

  v14 = self->_has;
  if ((v14 & 8) == 0)
  {
LABEL_24:
    if ((v14 & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_38:
  v29 = MEMORY[0x1E696AD98];
  [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self signalPower];
  v30 = [v29 numberWithFloat:?];
  [v3 setObject:v30 forKeyedSubscript:@"signalPower"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_25:
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[MHSchemaMHCoreSpeechPreprocessorCompleted statsComputed](self, "statsComputed")}];
    [v3 setObject:v15 forKeyedSubscript:@"statsComputed"];
  }

LABEL_26:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v9 = 2654435761 * self->_beepLocation;
    if ((has & 2) != 0)
    {
LABEL_3:
      v10 = 2654435761 * self->_statsComputed;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  beepPower = self->_beepPower;
  if (beepPower >= 0.0)
  {
    v12 = beepPower;
  }

  else
  {
    v12 = -beepPower;
  }

  *v6.i64 = floor(v12 + 0.5);
  v13 = (v12 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v14), v7, v6);
  v15 = 2654435761u * *v6.i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_12:
  if ((has & 8) != 0)
  {
    signalPower = self->_signalPower;
    if (signalPower >= 0.0)
    {
      v18 = signalPower;
    }

    else
    {
      v18 = -signalPower;
    }

    *v6.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v20), v7, v6);
    v16 = 2654435761u * *v6.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v16 += v19;
      }
    }

    else
    {
      v16 -= fabs(v19);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((has & 0x10) != 0)
  {
    originalPower = self->_originalPower;
    if (originalPower >= 0.0)
    {
      v23 = originalPower;
    }

    else
    {
      v23 = -originalPower;
    }

    *v6.i64 = floor(v23 + 0.5);
    v24 = (v23 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v25), v7, v6);
    v21 = 2654435761u * *v6.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v21 += v24;
      }
    }

    else
    {
      v21 -= fabs(v24);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((has & 0x20) != 0)
  {
    absMaxVal = self->_absMaxVal;
    if (absMaxVal >= 0.0)
    {
      v28 = absMaxVal;
    }

    else
    {
      v28 = -absMaxVal;
    }

    *v6.i64 = floor(v28 + 0.5);
    v29 = (v28 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v30), v7, v6);
    v26 = 2654435761u * *v6.i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v26 += v29;
      }
    }

    else
    {
      v26 -= fabs(v29);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((has & 0x40) != 0)
  {
    aboveNinetyFivepcOfMax = self->_aboveNinetyFivepcOfMax;
    if (aboveNinetyFivepcOfMax >= 0.0)
    {
      v33 = aboveNinetyFivepcOfMax;
    }

    else
    {
      v33 = -aboveNinetyFivepcOfMax;
    }

    *v6.i64 = floor(v33 + 0.5);
    v34 = (v33 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v35.f64[0] = NAN;
    v35.f64[1] = NAN;
    v31 = 2654435761u * *vbslq_s8(vnegq_f64(v35), v7, v6).i64;
    if (v34 >= 0.0)
    {
      if (v34 > 0.0)
      {
        v31 += v34;
      }
    }

    else
    {
      v31 -= fabs(v34);
    }
  }

  else
  {
    v31 = 0;
  }

  if ((has & 0x80) != 0)
  {
    v36 = 2654435761u * self->_numTotalInputSamples;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_52:
      v37 = 2654435761u * self->_numTotalOutputSamples;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_53;
      }

LABEL_57:
      v38 = 0;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_54;
      }

LABEL_58:
      v39 = 0;
      return v10 ^ v9 ^ v15 ^ v16 ^ v21 ^ v26 ^ v31 ^ v36 ^ v37 ^ v38 ^ v39 ^ [(NSArray *)self->_midSegmentContinousZeros hash:v3];
    }
  }

  else
  {
    v36 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_52;
    }
  }

  v37 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_57;
  }

LABEL_53:
  v38 = 2654435761u * self->_initialContinousZeros;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_58;
  }

LABEL_54:
  v39 = 2654435761u * self->_maxContinousZeros;
  return v10 ^ v9 ^ v15 ^ v16 ^ v21 ^ v26 ^ v31 ^ v36 ^ v37 ^ v38 ^ v39 ^ [(NSArray *)self->_midSegmentContinousZeros hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_50;
  }

  if (*&has)
  {
    beepLocation = self->_beepLocation;
    if (beepLocation != [v4 beepLocation])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      statsComputed = self->_statsComputed;
      if (statsComputed != [v4 statsComputed])
      {
        goto LABEL_50;
      }

      has = self->_has;
      v6 = v4[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        beepPower = self->_beepPower;
        [v4 beepPower];
        if (beepPower != v12)
        {
          goto LABEL_50;
        }

        has = self->_has;
        v6 = v4[40];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (v13)
        {
          signalPower = self->_signalPower;
          [v4 signalPower];
          if (signalPower != v15)
          {
            goto LABEL_50;
          }

          has = self->_has;
          v6 = v4[40];
        }

        v16 = (*&has >> 4) & 1;
        if (v16 == ((v6 >> 4) & 1))
        {
          if (v16)
          {
            originalPower = self->_originalPower;
            [v4 originalPower];
            if (originalPower != v18)
            {
              goto LABEL_50;
            }

            has = self->_has;
            v6 = v4[40];
          }

          v19 = (*&has >> 5) & 1;
          if (v19 == ((v6 >> 5) & 1))
          {
            if (v19)
            {
              absMaxVal = self->_absMaxVal;
              [v4 absMaxVal];
              if (absMaxVal != v21)
              {
                goto LABEL_50;
              }

              has = self->_has;
              v6 = v4[40];
            }

            v22 = (*&has >> 6) & 1;
            if (v22 == ((v6 >> 6) & 1))
            {
              if (v22)
              {
                aboveNinetyFivepcOfMax = self->_aboveNinetyFivepcOfMax;
                [v4 aboveNinetyFivepcOfMax];
                if (aboveNinetyFivepcOfMax != v24)
                {
                  goto LABEL_50;
                }

                has = self->_has;
                v6 = v4[40];
              }

              v25 = (*&has >> 7) & 1;
              if (v25 == ((v6 >> 7) & 1))
              {
                if (v25)
                {
                  numTotalInputSamples = self->_numTotalInputSamples;
                  if (numTotalInputSamples != [v4 numTotalInputSamples])
                  {
                    goto LABEL_50;
                  }

                  has = self->_has;
                  v6 = v4[40];
                }

                v27 = (*&has >> 8) & 1;
                if (v27 == ((v6 >> 8) & 1))
                {
                  if (v27)
                  {
                    numTotalOutputSamples = self->_numTotalOutputSamples;
                    if (numTotalOutputSamples != [v4 numTotalOutputSamples])
                    {
                      goto LABEL_50;
                    }

                    has = self->_has;
                    v6 = v4[40];
                  }

                  v29 = (*&has >> 9) & 1;
                  if (v29 == ((v6 >> 9) & 1))
                  {
                    if (v29)
                    {
                      initialContinousZeros = self->_initialContinousZeros;
                      if (initialContinousZeros != [v4 initialContinousZeros])
                      {
                        goto LABEL_50;
                      }

                      has = self->_has;
                      v6 = v4[40];
                    }

                    v31 = (*&has >> 10) & 1;
                    if (v31 == ((v6 >> 10) & 1))
                    {
                      if (!v31 || (maxContinousZeros = self->_maxContinousZeros, maxContinousZeros == [v4 maxContinousZeros]))
                      {
                        v33 = [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self midSegmentContinousZeros];
                        v34 = [v4 midSegmentContinousZeros];
                        v35 = v34;
                        if ((v33 != 0) != (v34 == 0))
                        {
                          v36 = [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self midSegmentContinousZeros];
                          if (!v36)
                          {

LABEL_53:
                            v41 = 1;
                            goto LABEL_51;
                          }

                          v37 = v36;
                          v38 = [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self midSegmentContinousZeros];
                          v39 = [v4 midSegmentContinousZeros];
                          v40 = [v38 isEqual:v39];

                          if (v40)
                          {
                            goto LABEL_53;
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
            }
          }
        }
      }
    }
  }

LABEL_50:
  v41 = 0;
LABEL_51:

  return v41;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
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
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_30:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    PBDataWriterWriteUint64Field();
  }

LABEL_13:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_midSegmentContinousZeros;
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

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addMidSegmentContinousZeros:(id)a3
{
  v4 = a3;
  midSegmentContinousZeros = self->_midSegmentContinousZeros;
  v8 = v4;
  if (!midSegmentContinousZeros)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_midSegmentContinousZeros;
    self->_midSegmentContinousZeros = v6;

    v4 = v8;
    midSegmentContinousZeros = self->_midSegmentContinousZeros;
  }

  [(NSArray *)midSegmentContinousZeros addObject:v4];
}

- (void)setHasMaxContinousZeros:(BOOL)a3
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

- (void)setHasInitialContinousZeros:(BOOL)a3
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

- (void)setHasNumTotalOutputSamples:(BOOL)a3
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

- (void)setHasNumTotalInputSamples:(BOOL)a3
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

- (void)setHasAboveNinetyFivepcOfMax:(BOOL)a3
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

- (void)setHasAbsMaxVal:(BOOL)a3
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

- (void)setHasOriginalPower:(BOOL)a3
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

- (void)setHasSignalPower:(BOOL)a3
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

- (void)setHasBeepPower:(BOOL)a3
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

- (void)setHasStatsComputed:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = MHSchemaMHCoreSpeechPreprocessorCompleted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self midSegmentContinousZeros:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self setMidSegmentContinousZeros:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end