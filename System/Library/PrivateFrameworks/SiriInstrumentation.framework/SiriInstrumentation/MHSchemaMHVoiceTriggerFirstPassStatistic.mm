@interface MHSchemaMHVoiceTriggerFirstPassStatistic
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHVoiceTriggerFirstPassStatistic)initWithDictionary:(id)a3;
- (MHSchemaMHVoiceTriggerFirstPassStatistic)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFirstPassPeakScoreJS:(BOOL)a3;
- (void)setHasFirstPassTriggerSource:(BOOL)a3;
- (void)setHasInvocationTypeId:(BOOL)a3;
- (void)setHasKeywordThresholdHS:(BOOL)a3;
- (void)setHasKeywordThresholdJS:(BOOL)a3;
- (void)setHasMitigationScore:(BOOL)a3;
- (void)setHasRecognizerScoreHS:(BOOL)a3;
- (void)setHasRecognizerScoreJS:(BOOL)a3;
- (void)setHasRepetitionSimilarityScore:(BOOL)a3;
- (void)setHasSecondsSinceEpoch:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerCombinedScore:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerCombinedThresholdHS:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerCombinedThresholdJS:(BOOL)a3;
- (void)setHasTriggerScoreHS:(BOOL)a3;
- (void)setHasTriggerScoreJS:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHVoiceTriggerFirstPassStatistic

- (MHSchemaMHVoiceTriggerFirstPassStatistic)initWithDictionary:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = MHSchemaMHVoiceTriggerFirstPassStatistic;
  v5 = [(MHSchemaMHVoiceTriggerFirstPassStatistic *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"firstPassPeakScoreHS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setFirstPassPeakScoreHS:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"firstPassPeakScoreJS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setFirstPassPeakScoreJS:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerFirstPassStatistic setFirstPassTriggerSource:](v5, "setFirstPassTriggerSource:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"recognizerScoreHS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setRecognizerScoreHS:?];
    }

    v32 = v8;
    v10 = [v4 objectForKeyedSubscript:@"recognizerScoreJS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setRecognizerScoreJS:?];
    }

    v11 = v7;
    v12 = [v4 objectForKeyedSubscript:@"triggerScoreHS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setTriggerScoreHS:?];
    }

    v13 = v6;
    v14 = [v4 objectForKeyedSubscript:@"triggerScoreJS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setTriggerScoreJS:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"mitigationScore"];
    objc_opt_class();
    v35 = v15;
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setMitigationScore:?];
    }

    v34 = v13;
    v16 = [v4 objectForKeyedSubscript:@"invocationTypeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerFirstPassStatistic setInvocationTypeId:](v5, "setInvocationTypeId:", [v16 intValue]);
    }

    v33 = v11;
    v17 = [v4 objectForKeyedSubscript:@"secondsSinceEpoch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerFirstPassStatistic setSecondsSinceEpoch:](v5, "setSecondsSinceEpoch:", [v17 longLongValue]);
    }

    v27 = v17;
    v18 = [v4 objectForKeyedSubscript:@"repetitionSimilarityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setRepetitionSimilarityScore:?];
    }

    v31 = v9;
    v19 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setTdSpeakerRecognizerCombinedScore:?];
    }

    v30 = v10;
    v20 = [v4 objectForKeyedSubscript:@"keywordThresholdHS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setKeywordThresholdHS:?];
    }

    v28 = v16;
    v29 = v12;
    v21 = [v4 objectForKeyedSubscript:@"keywordThresholdJS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setKeywordThresholdJS:?];
    }

    v22 = v14;
    v23 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThresholdHS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v23 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setTdSpeakerRecognizerCombinedThresholdHS:?];
    }

    v24 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThresholdJS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 floatValue];
      [(MHSchemaMHVoiceTriggerFirstPassStatistic *)v5 setTdSpeakerRecognizerCombinedThresholdJS:?];
    }

    v25 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceTriggerFirstPassStatistic)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self dictionaryRepresentation];
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
    v8 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self firstPassPeakScoreHS];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"firstPassPeakScoreHS"];

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

  v10 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self firstPassPeakScoreJS];
  v11 = [v10 numberWithFloat:?];
  [v3 setObject:v11 forKeyedSubscript:@"firstPassPeakScoreJS"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_23:
  v12 = [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self firstPassTriggerSource]- 1;
  if (v12 > 9)
  {
    v13 = @"MHVOICETRIGGERFIRSTPASSSOURCE_UNKNOWN";
  }

  else
  {
    v13 = off_1E78D9A50[v12];
  }

  [v3 setObject:v13 forKeyedSubscript:@"firstPassTriggerSource"];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[MHSchemaMHVoiceTriggerFirstPassStatistic invocationTypeId](self, "invocationTypeId")}];
  [v3 setObject:v14 forKeyedSubscript:@"invocationTypeId"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self keywordThresholdHS];
  v16 = [v15 numberWithFloat:?];
  [v3 setObject:v16 forKeyedSubscript:@"keywordThresholdHS"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self keywordThresholdJS];
  v18 = [v17 numberWithFloat:?];
  [v3 setObject:v18 forKeyedSubscript:@"keywordThresholdJS"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self mitigationScore];
  v20 = [v19 numberWithFloat:?];
  [v3 setObject:v20 forKeyedSubscript:@"mitigationScore"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self recognizerScoreHS];
  v22 = [v21 numberWithFloat:?];
  [v3 setObject:v22 forKeyedSubscript:@"recognizerScoreHS"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v23 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self recognizerScoreJS];
  v24 = [v23 numberWithFloat:?];
  [v3 setObject:v24 forKeyedSubscript:@"recognizerScoreJS"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v25 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self repetitionSimilarityScore];
  v26 = [v25 numberWithFloat:?];
  [v3 setObject:v26 forKeyedSubscript:@"repetitionSimilarityScore"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MHSchemaMHVoiceTriggerFirstPassStatistic secondsSinceEpoch](self, "secondsSinceEpoch")}];
  [v3 setObject:v27 forKeyedSubscript:@"secondsSinceEpoch"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v28 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self tdSpeakerRecognizerCombinedScore];
  v29 = [v28 numberWithFloat:?];
  [v3 setObject:v29 forKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_14:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v30 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self tdSpeakerRecognizerCombinedThresholdHS];
  v31 = [v30 numberWithFloat:?];
  [v3 setObject:v31 forKeyedSubscript:@"tdSpeakerRecognizerCombinedThresholdHS"];

  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v32 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self tdSpeakerRecognizerCombinedThresholdJS];
  v33 = [v32 numberWithFloat:?];
  [v3 setObject:v33 forKeyedSubscript:@"tdSpeakerRecognizerCombinedThresholdJS"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_38:
  v34 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self triggerScoreHS];
  v35 = [v34 numberWithFloat:?];
  [v3 setObject:v35 forKeyedSubscript:@"triggerScoreHS"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    v5 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerFirstPassStatistic *)self triggerScoreJS];
    v6 = [v5 numberWithFloat:?];
    [v3 setObject:v6 forKeyedSubscript:@"triggerScoreJS"];
  }

LABEL_18:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    firstPassPeakScoreHS = self->_firstPassPeakScoreHS;
    if (firstPassPeakScoreHS >= 0.0)
    {
      v7 = firstPassPeakScoreHS;
    }

    else
    {
      v7 = -firstPassPeakScoreHS;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((has & 2) != 0)
  {
    firstPassPeakScoreJS = self->_firstPassPeakScoreJS;
    if (firstPassPeakScoreJS >= 0.0)
    {
      v12 = firstPassPeakScoreJS;
    }

    else
    {
      v12 = -firstPassPeakScoreJS;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v10 += v13;
      }
    }

    else
    {
      v10 -= fabs(v13);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((has & 4) == 0)
  {
    v15 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    v20 = 0;
    goto LABEL_28;
  }

  v15 = 2654435761 * self->_firstPassTriggerSource;
  if ((has & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  recognizerScoreHS = self->_recognizerScoreHS;
  if (recognizerScoreHS >= 0.0)
  {
    v17 = recognizerScoreHS;
  }

  else
  {
    v17 = -recognizerScoreHS;
  }

  *v2.i64 = floor(v17 + 0.5);
  v18 = (v17 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
  v20 = 2654435761u * *v2.i64;
  if (v18 >= 0.0)
  {
    if (v18 > 0.0)
    {
      v20 += v18;
    }
  }

  else
  {
    v20 -= fabs(v18);
  }

LABEL_28:
  if ((has & 0x10) != 0)
  {
    recognizerScoreJS = self->_recognizerScoreJS;
    if (recognizerScoreJS >= 0.0)
    {
      v23 = recognizerScoreJS;
    }

    else
    {
      v23 = -recognizerScoreJS;
    }

    *v2.i64 = floor(v23 + 0.5);
    v24 = (v23 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v25), v3, v2);
    v21 = 2654435761u * *v2.i64;
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
    triggerScoreHS = self->_triggerScoreHS;
    if (triggerScoreHS >= 0.0)
    {
      v28 = triggerScoreHS;
    }

    else
    {
      v28 = -triggerScoreHS;
    }

    *v2.i64 = floor(v28 + 0.5);
    v29 = (v28 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v30), v3, v2);
    v26 = 2654435761u * *v2.i64;
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
    triggerScoreJS = self->_triggerScoreJS;
    if (triggerScoreJS >= 0.0)
    {
      v33 = triggerScoreJS;
    }

    else
    {
      v33 = -triggerScoreJS;
    }

    *v2.i64 = floor(v33 + 0.5);
    v34 = (v33 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v35.f64[0] = NAN;
    v35.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v35), v3, v2);
    v31 = 2654435761u * *v2.i64;
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
    mitigationScore = self->_mitigationScore;
    if (mitigationScore >= 0.0)
    {
      v38 = mitigationScore;
    }

    else
    {
      v38 = -mitigationScore;
    }

    *v2.i64 = floor(v38 + 0.5);
    v39 = (v38 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v40), v3, v2);
    v36 = 2654435761u * *v2.i64;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v36 += v39;
      }
    }

    else
    {
      v36 -= fabs(v39);
    }
  }

  else
  {
    v36 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v41 = 2654435761 * self->_invocationTypeId;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_68:
      v42 = 2654435761 * self->_secondsSinceEpoch;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_69;
      }

LABEL_76:
      v47 = 0;
      goto LABEL_77;
    }
  }

  else
  {
    v41 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_68;
    }
  }

  v42 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_76;
  }

LABEL_69:
  repetitionSimilarityScore = self->_repetitionSimilarityScore;
  if (repetitionSimilarityScore >= 0.0)
  {
    v44 = repetitionSimilarityScore;
  }

  else
  {
    v44 = -repetitionSimilarityScore;
  }

  *v2.i64 = floor(v44 + 0.5);
  v45 = (v44 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v46.f64[0] = NAN;
  v46.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v46), v3, v2);
  v47 = 2654435761u * *v2.i64;
  if (v45 >= 0.0)
  {
    if (v45 > 0.0)
    {
      v47 += v45;
    }
  }

  else
  {
    v47 -= fabs(v45);
  }

LABEL_77:
  if ((*&self->_has & 0x800) != 0)
  {
    tdSpeakerRecognizerCombinedScore = self->_tdSpeakerRecognizerCombinedScore;
    if (tdSpeakerRecognizerCombinedScore >= 0.0)
    {
      v50 = tdSpeakerRecognizerCombinedScore;
    }

    else
    {
      v50 = -tdSpeakerRecognizerCombinedScore;
    }

    *v2.i64 = floor(v50 + 0.5);
    v51 = (v50 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v52.f64[0] = NAN;
    v52.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v52), v3, v2);
    v48 = 2654435761u * *v2.i64;
    if (v51 >= 0.0)
    {
      if (v51 > 0.0)
      {
        v48 += v51;
      }
    }

    else
    {
      v48 -= fabs(v51);
    }
  }

  else
  {
    v48 = 0;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    keywordThresholdHS = self->_keywordThresholdHS;
    if (keywordThresholdHS >= 0.0)
    {
      v55 = keywordThresholdHS;
    }

    else
    {
      v55 = -keywordThresholdHS;
    }

    *v2.i64 = floor(v55 + 0.5);
    v56 = (v55 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v57), v3, v2);
    v53 = 2654435761u * *v2.i64;
    if (v56 >= 0.0)
    {
      if (v56 > 0.0)
      {
        v53 += v56;
      }
    }

    else
    {
      v53 -= fabs(v56);
    }
  }

  else
  {
    v53 = 0;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    keywordThresholdJS = self->_keywordThresholdJS;
    if (keywordThresholdJS >= 0.0)
    {
      v60 = keywordThresholdJS;
    }

    else
    {
      v60 = -keywordThresholdJS;
    }

    *v2.i64 = floor(v60 + 0.5);
    v61 = (v60 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v62.f64[0] = NAN;
    v62.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v62), v3, v2);
    v58 = 2654435761u * *v2.i64;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v58 += v61;
      }
    }

    else
    {
      v58 -= fabs(v61);
    }
  }

  else
  {
    v58 = 0;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    tdSpeakerRecognizerCombinedThresholdHS = self->_tdSpeakerRecognizerCombinedThresholdHS;
    if (tdSpeakerRecognizerCombinedThresholdHS >= 0.0)
    {
      v65 = tdSpeakerRecognizerCombinedThresholdHS;
    }

    else
    {
      v65 = -tdSpeakerRecognizerCombinedThresholdHS;
    }

    *v2.i64 = floor(v65 + 0.5);
    v66 = (v65 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v67.f64[0] = NAN;
    v67.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v67), v3, v2);
    v63 = 2654435761u * *v2.i64;
    if (v66 >= 0.0)
    {
      if (v66 > 0.0)
      {
        v63 += v66;
      }
    }

    else
    {
      v63 -= fabs(v66);
    }
  }

  else
  {
    v63 = 0;
  }

  if ((*&self->_has & 0x8000) != 0)
  {
    tdSpeakerRecognizerCombinedThresholdJS = self->_tdSpeakerRecognizerCombinedThresholdJS;
    if (tdSpeakerRecognizerCombinedThresholdJS >= 0.0)
    {
      v70 = tdSpeakerRecognizerCombinedThresholdJS;
    }

    else
    {
      v70 = -tdSpeakerRecognizerCombinedThresholdJS;
    }

    *v2.i64 = floor(v70 + 0.5);
    v71 = (v70 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v72.f64[0] = NAN;
    v72.f64[1] = NAN;
    v68 = 2654435761u * *vbslq_s8(vnegq_f64(v72), v3, v2).i64;
    if (v71 >= 0.0)
    {
      if (v71 > 0.0)
      {
        v68 += v71;
      }
    }

    else
    {
      v68 -= fabs(v71);
    }
  }

  else
  {
    v68 = 0;
  }

  return v10 ^ v5 ^ v15 ^ v20 ^ v21 ^ v26 ^ v31 ^ v36 ^ v41 ^ v42 ^ v47 ^ v48 ^ v53 ^ v58 ^ v63 ^ v68;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_66;
  }

  if (*&has)
  {
    firstPassPeakScoreHS = self->_firstPassPeakScoreHS;
    [v4 firstPassPeakScoreHS];
    if (firstPassPeakScoreHS != v8)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_66;
  }

  if (v9)
  {
    firstPassPeakScoreJS = self->_firstPassPeakScoreJS;
    [v4 firstPassPeakScoreJS];
    if (firstPassPeakScoreJS != v11)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v6 >> 2) & 1))
  {
    goto LABEL_66;
  }

  if (v12)
  {
    firstPassTriggerSource = self->_firstPassTriggerSource;
    if (firstPassTriggerSource != [v4 firstPassTriggerSource])
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v14 = (*&has >> 3) & 1;
  if (v14 != ((v6 >> 3) & 1))
  {
    goto LABEL_66;
  }

  if (v14)
  {
    recognizerScoreHS = self->_recognizerScoreHS;
    [v4 recognizerScoreHS];
    if (recognizerScoreHS != v16)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v17 = (*&has >> 4) & 1;
  if (v17 != ((v6 >> 4) & 1))
  {
    goto LABEL_66;
  }

  if (v17)
  {
    recognizerScoreJS = self->_recognizerScoreJS;
    [v4 recognizerScoreJS];
    if (recognizerScoreJS != v19)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v20 = (*&has >> 5) & 1;
  if (v20 != ((v6 >> 5) & 1))
  {
    goto LABEL_66;
  }

  if (v20)
  {
    triggerScoreHS = self->_triggerScoreHS;
    [v4 triggerScoreHS];
    if (triggerScoreHS != v22)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v23 = (*&has >> 6) & 1;
  if (v23 != ((v6 >> 6) & 1))
  {
    goto LABEL_66;
  }

  if (v23)
  {
    triggerScoreJS = self->_triggerScoreJS;
    [v4 triggerScoreJS];
    if (triggerScoreJS != v25)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v26 = (*&has >> 7) & 1;
  if (v26 != ((v6 >> 7) & 1))
  {
    goto LABEL_66;
  }

  if (v26)
  {
    mitigationScore = self->_mitigationScore;
    [v4 mitigationScore];
    if (mitigationScore != v28)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v29 = (*&has >> 8) & 1;
  if (v29 != ((v6 >> 8) & 1))
  {
    goto LABEL_66;
  }

  if (v29)
  {
    invocationTypeId = self->_invocationTypeId;
    if (invocationTypeId != [v4 invocationTypeId])
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v31 = (*&has >> 9) & 1;
  if (v31 != ((v6 >> 9) & 1))
  {
    goto LABEL_66;
  }

  if (v31)
  {
    secondsSinceEpoch = self->_secondsSinceEpoch;
    if (secondsSinceEpoch != [v4 secondsSinceEpoch])
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v33 = (*&has >> 10) & 1;
  if (v33 != ((v6 >> 10) & 1))
  {
    goto LABEL_66;
  }

  if (v33)
  {
    repetitionSimilarityScore = self->_repetitionSimilarityScore;
    [v4 repetitionSimilarityScore];
    if (repetitionSimilarityScore != v35)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v36 = (*&has >> 11) & 1;
  if (v36 != ((v6 >> 11) & 1))
  {
    goto LABEL_66;
  }

  if (v36)
  {
    tdSpeakerRecognizerCombinedScore = self->_tdSpeakerRecognizerCombinedScore;
    [v4 tdSpeakerRecognizerCombinedScore];
    if (tdSpeakerRecognizerCombinedScore != v38)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v39 = (*&has >> 12) & 1;
  if (v39 != ((v6 >> 12) & 1))
  {
    goto LABEL_66;
  }

  if (v39)
  {
    keywordThresholdHS = self->_keywordThresholdHS;
    [v4 keywordThresholdHS];
    if (keywordThresholdHS != v41)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v42 = (*&has >> 13) & 1;
  if (v42 != ((v6 >> 13) & 1))
  {
    goto LABEL_66;
  }

  if (v42)
  {
    keywordThresholdJS = self->_keywordThresholdJS;
    [v4 keywordThresholdJS];
    if (keywordThresholdJS != v44)
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v45 = (*&has >> 14) & 1;
  if (v45 != ((v6 >> 14) & 1))
  {
    goto LABEL_66;
  }

  if (v45)
  {
    tdSpeakerRecognizerCombinedThresholdHS = self->_tdSpeakerRecognizerCombinedThresholdHS;
    [v4 tdSpeakerRecognizerCombinedThresholdHS];
    if (tdSpeakerRecognizerCombinedThresholdHS == v47)
    {
      has = self->_has;
      v6 = v4[40];
      goto LABEL_62;
    }

LABEL_66:
    v48 = 0;
    goto LABEL_67;
  }

LABEL_62:
  if (((v6 ^ *&has) & 0x8000) != 0)
  {
    goto LABEL_66;
  }

  if ((*&has & 0x8000) != 0)
  {
    tdSpeakerRecognizerCombinedThresholdJS = self->_tdSpeakerRecognizerCombinedThresholdJS;
    [v4 tdSpeakerRecognizerCombinedThresholdJS];
    if (tdSpeakerRecognizerCombinedThresholdJS != v50)
    {
      goto LABEL_66;
    }
  }

  v48 = 1;
LABEL_67:

  return v48;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

      goto LABEL_22;
    }
  }

  else if ((has & 2) == 0)
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
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_34:
    PBDataWriterWriteFloatField();
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_33:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x4000) != 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  if ((has & 0x8000) == 0)
  {
    goto LABEL_17;
  }

LABEL_35:
  PBDataWriterWriteFloatField();
LABEL_17:
}

- (void)setHasTdSpeakerRecognizerCombinedThresholdJS:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasTdSpeakerRecognizerCombinedThresholdHS:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasKeywordThresholdJS:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasKeywordThresholdHS:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasTdSpeakerRecognizerCombinedScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasRepetitionSimilarityScore:(BOOL)a3
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

- (void)setHasSecondsSinceEpoch:(BOOL)a3
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

- (void)setHasInvocationTypeId:(BOOL)a3
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

- (void)setHasMitigationScore:(BOOL)a3
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

- (void)setHasTriggerScoreJS:(BOOL)a3
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

- (void)setHasTriggerScoreHS:(BOOL)a3
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

- (void)setHasRecognizerScoreJS:(BOOL)a3
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

- (void)setHasRecognizerScoreHS:(BOOL)a3
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

- (void)setHasFirstPassTriggerSource:(BOOL)a3
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

- (void)setHasFirstPassPeakScoreJS:(BOOL)a3
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