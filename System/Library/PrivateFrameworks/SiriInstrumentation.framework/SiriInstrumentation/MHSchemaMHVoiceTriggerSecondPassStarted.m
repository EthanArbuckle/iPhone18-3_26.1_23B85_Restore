@interface MHSchemaMHVoiceTriggerSecondPassStarted
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHVoiceTriggerSecondPassStarted)initWithDictionary:(id)a3;
- (MHSchemaMHVoiceTriggerSecondPassStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addChannelSelectionScores:(id)a3;
- (void)setHasEarlyDetectFiredTime:(BOOL)a3;
- (void)setHasEarlyDetectFiredTimeOffsetInNs:(BOOL)a3;
- (void)setHasFirstPassChannelSelectionDelayNs:(BOOL)a3;
- (void)setHasFirstPassEndSampleCount:(BOOL)a3;
- (void)setHasFirstPassFireSampleCount:(BOOL)a3;
- (void)setHasFirstPassInfoDispatchTimeInNs:(BOOL)a3;
- (void)setHasFirstPassInfoReceptionTimeInNs:(BOOL)a3;
- (void)setHasFirstPassMasterChannelScoreBoost:(BOOL)a3;
- (void)setHasFirstPassOnsetChannel:(BOOL)a3;
- (void)setHasFirstPassOnsetScore:(BOOL)a3;
- (void)setHasFirstPassPrimaryChannelScoreBoost:(BOOL)a3;
- (void)setHasFirstPassScore:(BOOL)a3;
- (void)setHasFirstPassStartSampleCount:(BOOL)a3;
- (void)setHasFirstPassTriggerSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHVoiceTriggerSecondPassStarted

- (MHSchemaMHVoiceTriggerSecondPassStarted)initWithDictionary:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = MHSchemaMHVoiceTriggerSecondPassStarted;
  v5 = [(MHSchemaMHVoiceTriggerSecondPassStarted *)&v44 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"firstPassDetectedChannel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassDetectedChannel:](v5, "setFirstPassDetectedChannel:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"firstPassScore"];
    objc_opt_class();
    v39 = v7;
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(MHSchemaMHVoiceTriggerSecondPassStarted *)v5 setFirstPassScore:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"firstPassOnsetChannel"];
    objc_opt_class();
    v38 = v8;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassOnsetChannel:](v5, "setFirstPassOnsetChannel:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"firstPassOnsetScore"];
    objc_opt_class();
    v37 = v9;
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHVoiceTriggerSecondPassStarted *)v5 setFirstPassOnsetScore:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"channelSelectionScores"];
    objc_opt_class();
    v36 = v10;
    if (objc_opt_isKindOfClass())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v41;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v40 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[MHSchemaFirstPassChannelSelectionScore alloc] initWithDictionary:v16];
              [(MHSchemaMHVoiceTriggerSecondPassStarted *)v5 addChannelSelectionScores:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v13);
      }
    }

    v18 = [v4 objectForKeyedSubscript:@"firstPassChannelSelectionDelayNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassChannelSelectionDelayNs:](v5, "setFirstPassChannelSelectionDelayNs:", [v18 unsignedLongLongValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"firstPassMasterChannelScoreBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(MHSchemaMHVoiceTriggerSecondPassStarted *)v5 setFirstPassMasterChannelScoreBoost:?];
    }

    v20 = [v4 objectForKeyedSubscript:@"firstPassStartSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassStartSampleCount:](v5, "setFirstPassStartSampleCount:", [v20 unsignedLongLongValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"firstPassEndSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassEndSampleCount:](v5, "setFirstPassEndSampleCount:", [v21 unsignedLongLongValue]);
    }

    v34 = v20;
    v22 = [v4 objectForKeyedSubscript:@"firstPassFireSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassFireSampleCount:](v5, "setFirstPassFireSampleCount:", [v22 unsignedLongLongValue]);
    }

    v32 = v22;
    v33 = v21;
    v23 = [v4 objectForKeyedSubscript:@"firstPassTriggerSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassTriggerSource:](v5, "setFirstPassTriggerSource:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"earlyDetectFiredTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setEarlyDetectFiredTimeOffsetInNs:](v5, "setEarlyDetectFiredTimeOffsetInNs:", [v24 unsignedLongLongValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"earlyDetectFiredTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v25 floatValue];
      [(MHSchemaMHVoiceTriggerSecondPassStarted *)v5 setEarlyDetectFiredTime:?];
    }

    v35 = v18;
    v26 = [v4 objectForKeyedSubscript:@"firstPassPrimaryChannelScoreBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v26 floatValue];
      [(MHSchemaMHVoiceTriggerSecondPassStarted *)v5 setFirstPassPrimaryChannelScoreBoost:?];
    }

    v27 = v6;
    v28 = [v4 objectForKeyedSubscript:@"firstPassInfoDispatchTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassInfoDispatchTimeInNs:](v5, "setFirstPassInfoDispatchTimeInNs:", [v28 unsignedLongLongValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"firstPassInfoReceptionTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassStarted setFirstPassInfoReceptionTimeInNs:](v5, "setFirstPassInfoReceptionTimeInNs:", [v29 unsignedLongLongValue]);
    }

    v30 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceTriggerSecondPassStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerSecondPassStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHVoiceTriggerSecondPassStarted *)self dictionaryRepresentation];
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
  v40 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_channelSelectionScores count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = self->_channelSelectionScores;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"channelSelectionScores"];
  }

  has = self->_has;
  if ((has & 0x800) != 0)
  {
    v13 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerSecondPassStarted *)self earlyDetectFiredTime];
    v14 = [v13 numberWithFloat:?];
    [v3 setObject:v14 forKeyedSubscript:@"earlyDetectFiredTime"];

    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_15:
      if ((has & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_15;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerSecondPassStarted earlyDetectFiredTimeOffsetInNs](self, "earlyDetectFiredTimeOffsetInNs", v35)}];
  [v3 setObject:v15 forKeyedSubscript:@"earlyDetectFiredTimeOffsetInNs"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerSecondPassStarted firstPassChannelSelectionDelayNs](self, "firstPassChannelSelectionDelayNs", v35)}];
  [v3 setObject:v16 forKeyedSubscript:@"firstPassChannelSelectionDelayNs"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_17:
    if ((has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerSecondPassStarted firstPassDetectedChannel](self, "firstPassDetectedChannel", v35)}];
  [v3 setObject:v17 forKeyedSubscript:@"firstPassDetectedChannel"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_18:
    if ((has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerSecondPassStarted firstPassEndSampleCount](self, "firstPassEndSampleCount", v35)}];
  [v3 setObject:v18 forKeyedSubscript:@"firstPassEndSampleCount"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_19:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerSecondPassStarted firstPassFireSampleCount](self, "firstPassFireSampleCount", v35)}];
  [v3 setObject:v19 forKeyedSubscript:@"firstPassFireSampleCount"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_20:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerSecondPassStarted firstPassInfoDispatchTimeInNs](self, "firstPassInfoDispatchTimeInNs", v35)}];
  [v3 setObject:v20 forKeyedSubscript:@"firstPassInfoDispatchTimeInNs"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_21:
    if ((has & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerSecondPassStarted firstPassInfoReceptionTimeInNs](self, "firstPassInfoReceptionTimeInNs", v35)}];
  [v3 setObject:v21 forKeyedSubscript:@"firstPassInfoReceptionTimeInNs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_22:
    if ((has & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerSecondPassStarted *)self firstPassMasterChannelScoreBoost];
  v23 = [v22 numberWithFloat:?];
  [v3 setObject:v23 forKeyedSubscript:@"firstPassMasterChannelScoreBoost"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_23:
    if ((has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerSecondPassStarted firstPassOnsetChannel](self, "firstPassOnsetChannel", v35)}];
  [v3 setObject:v24 forKeyedSubscript:@"firstPassOnsetChannel"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_24:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_39:
  v25 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerSecondPassStarted *)self firstPassOnsetScore];
  v26 = [v25 numberWithFloat:?];
  [v3 setObject:v26 forKeyedSubscript:@"firstPassOnsetScore"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_25:
    if ((has & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_41;
  }

LABEL_40:
  v27 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerSecondPassStarted *)self firstPassPrimaryChannelScoreBoost];
  v28 = [v27 numberWithFloat:?];
  [v3 setObject:v28 forKeyedSubscript:@"firstPassPrimaryChannelScoreBoost"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_26:
    if ((has & 0x40) == 0)
    {
      goto LABEL_27;
    }

LABEL_42:
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerSecondPassStarted firstPassStartSampleCount](self, "firstPassStartSampleCount", v35)}];
    [v3 setObject:v31 forKeyedSubscript:@"firstPassStartSampleCount"];

    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_47;
    }

LABEL_43:
    v32 = [(MHSchemaMHVoiceTriggerSecondPassStarted *)self firstPassTriggerSource]- 1;
    if (v32 > 9)
    {
      v33 = @"MHVOICETRIGGERFIRSTPASSSOURCE_UNKNOWN";
    }

    else
    {
      v33 = off_1E78D9AE8[v32];
    }

    [v3 setObject:v33 forKeyedSubscript:@"firstPassTriggerSource"];
    goto LABEL_47;
  }

LABEL_41:
  v29 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerSecondPassStarted *)self firstPassScore];
  v30 = [v29 numberWithFloat:?];
  [v3 setObject:v30 forKeyedSubscript:@"firstPassScore"];

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  if ((has & 0x200) != 0)
  {
    goto LABEL_43;
  }

LABEL_47:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v35];

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

  v6 = 2654435761 * self->_firstPassDetectedChannel;
  if ((has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  firstPassScore = self->_firstPassScore;
  if (firstPassScore >= 0.0)
  {
    v8 = firstPassScore;
  }

  else
  {
    v8 = -firstPassScore;
  }

  *v2.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v10), v3, v2);
  v11 = 2654435761u * *v2.i64;
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
  if ((has & 4) == 0)
  {
    v12 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v12 = 2654435761 * self->_firstPassOnsetChannel;
  if ((has & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  firstPassOnsetScore = self->_firstPassOnsetScore;
  if (firstPassOnsetScore >= 0.0)
  {
    v14 = firstPassOnsetScore;
  }

  else
  {
    v14 = -firstPassOnsetScore;
  }

  *v2.i64 = floor(v14 + 0.5);
  v15 = (v14 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v3, v2).i64;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabs(v15);
  }

LABEL_19:
  v18 = [(NSArray *)self->_channelSelectionScores hash];
  v21 = self->_has;
  if ((v21 & 0x10) == 0)
  {
    v22 = 0;
    if ((v21 & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    v27 = 0;
    goto LABEL_28;
  }

  v22 = 2654435761u * self->_firstPassChannelSelectionDelayNs;
  if ((v21 & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  firstPassMasterChannelScoreBoost = self->_firstPassMasterChannelScoreBoost;
  if (firstPassMasterChannelScoreBoost >= 0.0)
  {
    v24 = firstPassMasterChannelScoreBoost;
  }

  else
  {
    v24 = -firstPassMasterChannelScoreBoost;
  }

  *v19.i64 = floor(v24 + 0.5);
  v25 = (v24 - *v19.i64) * 1.84467441e19;
  *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
  v26.f64[0] = NAN;
  v26.f64[1] = NAN;
  v19 = vbslq_s8(vnegq_f64(v26), v20, v19);
  v27 = 2654435761u * *v19.i64;
  if (v25 >= 0.0)
  {
    if (v25 > 0.0)
    {
      v27 += v25;
    }
  }

  else
  {
    v27 -= fabs(v25);
  }

LABEL_28:
  if ((v21 & 0x40) != 0)
  {
    v28 = 2654435761u * self->_firstPassStartSampleCount;
    if ((v21 & 0x80) != 0)
    {
LABEL_30:
      v29 = 2654435761u * self->_firstPassEndSampleCount;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v28 = 0;
    if ((v21 & 0x80) != 0)
    {
      goto LABEL_30;
    }
  }

  v29 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_31:
    v30 = 2654435761u * self->_firstPassFireSampleCount;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_42;
  }

LABEL_41:
  v30 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_32:
    v31 = 2654435761 * self->_firstPassTriggerSource;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_43;
  }

LABEL_42:
  v31 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_33:
    v32 = 2654435761u * self->_earlyDetectFiredTimeOffsetInNs;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_34;
    }

LABEL_44:
    v37 = 0;
    goto LABEL_45;
  }

LABEL_43:
  v32 = 0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_44;
  }

LABEL_34:
  earlyDetectFiredTime = self->_earlyDetectFiredTime;
  if (earlyDetectFiredTime >= 0.0)
  {
    v34 = earlyDetectFiredTime;
  }

  else
  {
    v34 = -earlyDetectFiredTime;
  }

  *v19.i64 = floor(v34 + 0.5);
  v35 = (v34 - *v19.i64) * 1.84467441e19;
  *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v19 = vbslq_s8(vnegq_f64(v36), v20, v19);
  v37 = 2654435761u * *v19.i64;
  if (v35 >= 0.0)
  {
    if (v35 > 0.0)
    {
      v37 += v35;
    }
  }

  else
  {
    v37 -= fabs(v35);
  }

LABEL_45:
  if ((*&self->_has & 0x1000) != 0)
  {
    firstPassPrimaryChannelScoreBoost = self->_firstPassPrimaryChannelScoreBoost;
    if (firstPassPrimaryChannelScoreBoost >= 0.0)
    {
      v40 = firstPassPrimaryChannelScoreBoost;
    }

    else
    {
      v40 = -firstPassPrimaryChannelScoreBoost;
    }

    *v19.i64 = floor(v40 + 0.5);
    v41 = (v40 - *v19.i64) * 1.84467441e19;
    *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
    v42.f64[0] = NAN;
    v42.f64[1] = NAN;
    v38 = 2654435761u * *vbslq_s8(vnegq_f64(v42), v20, v19).i64;
    if (v41 >= 0.0)
    {
      if (v41 > 0.0)
      {
        v38 += v41;
      }
    }

    else
    {
      v38 -= fabs(v41);
    }
  }

  else
  {
    v38 = 0;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    v43 = 2654435761u * self->_firstPassInfoDispatchTimeInNs;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_64;
    }

LABEL_66:
    v44 = 0;
    return v11 ^ v6 ^ v12 ^ v17 ^ v22 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v37 ^ v38 ^ v18 ^ v43 ^ v44;
  }

  v43 = 0;
  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_66;
  }

LABEL_64:
  v44 = 2654435761u * self->_firstPassInfoReceptionTimeInNs;
  return v11 ^ v6 ^ v12 ^ v17 ^ v22 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v37 ^ v38 ^ v18 ^ v43 ^ v44;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  has = self->_has;
  v6 = v4[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_67;
  }

  if (*&has)
  {
    firstPassDetectedChannel = self->_firstPassDetectedChannel;
    if (firstPassDetectedChannel != [v4 firstPassDetectedChannel])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_67;
  }

  if (v8)
  {
    firstPassScore = self->_firstPassScore;
    [v4 firstPassScore];
    if (firstPassScore != v10)
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_67;
  }

  if (v11)
  {
    firstPassOnsetChannel = self->_firstPassOnsetChannel;
    if (firstPassOnsetChannel != [v4 firstPassOnsetChannel])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v13 = (*&has >> 3) & 1;
  if (v13 != ((v6 >> 3) & 1))
  {
    goto LABEL_67;
  }

  if (v13)
  {
    firstPassOnsetScore = self->_firstPassOnsetScore;
    [v4 firstPassOnsetScore];
    if (firstPassOnsetScore != v15)
    {
      goto LABEL_67;
    }
  }

  v16 = [(MHSchemaMHVoiceTriggerSecondPassStarted *)self channelSelectionScores];
  v17 = [v4 channelSelectionScores];
  v18 = v17;
  if ((v16 != 0) == (v17 == 0))
  {

    goto LABEL_67;
  }

  v19 = [(MHSchemaMHVoiceTriggerSecondPassStarted *)self channelSelectionScores];
  if (v19)
  {
    v20 = v19;
    v21 = [(MHSchemaMHVoiceTriggerSecondPassStarted *)self channelSelectionScores];
    v22 = [v4 channelSelectionScores];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v24 = self->_has;
  v25 = (*&v24 >> 4) & 1;
  v26 = v4[56];
  if (v25 != ((v26 >> 4) & 1))
  {
LABEL_67:
    v51 = 0;
    goto LABEL_68;
  }

  if (v25)
  {
    firstPassChannelSelectionDelayNs = self->_firstPassChannelSelectionDelayNs;
    if (firstPassChannelSelectionDelayNs != [v4 firstPassChannelSelectionDelayNs])
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v28 = (*&v24 >> 5) & 1;
  if (v28 != ((v26 >> 5) & 1))
  {
    goto LABEL_67;
  }

  if (v28)
  {
    firstPassMasterChannelScoreBoost = self->_firstPassMasterChannelScoreBoost;
    [v4 firstPassMasterChannelScoreBoost];
    if (firstPassMasterChannelScoreBoost != v30)
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v31 = (*&v24 >> 6) & 1;
  if (v31 != ((v26 >> 6) & 1))
  {
    goto LABEL_67;
  }

  if (v31)
  {
    firstPassStartSampleCount = self->_firstPassStartSampleCount;
    if (firstPassStartSampleCount != [v4 firstPassStartSampleCount])
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v33 = (*&v24 >> 7) & 1;
  if (v33 != ((v26 >> 7) & 1))
  {
    goto LABEL_67;
  }

  if (v33)
  {
    firstPassEndSampleCount = self->_firstPassEndSampleCount;
    if (firstPassEndSampleCount != [v4 firstPassEndSampleCount])
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v35 = (*&v24 >> 8) & 1;
  if (v35 != ((v26 >> 8) & 1))
  {
    goto LABEL_67;
  }

  if (v35)
  {
    firstPassFireSampleCount = self->_firstPassFireSampleCount;
    if (firstPassFireSampleCount != [v4 firstPassFireSampleCount])
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v37 = (*&v24 >> 9) & 1;
  if (v37 != ((v26 >> 9) & 1))
  {
    goto LABEL_67;
  }

  if (v37)
  {
    firstPassTriggerSource = self->_firstPassTriggerSource;
    if (firstPassTriggerSource != [v4 firstPassTriggerSource])
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v39 = (*&v24 >> 10) & 1;
  if (v39 != ((v26 >> 10) & 1))
  {
    goto LABEL_67;
  }

  if (v39)
  {
    earlyDetectFiredTimeOffsetInNs = self->_earlyDetectFiredTimeOffsetInNs;
    if (earlyDetectFiredTimeOffsetInNs != [v4 earlyDetectFiredTimeOffsetInNs])
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v41 = (*&v24 >> 11) & 1;
  if (v41 != ((v26 >> 11) & 1))
  {
    goto LABEL_67;
  }

  if (v41)
  {
    earlyDetectFiredTime = self->_earlyDetectFiredTime;
    [v4 earlyDetectFiredTime];
    if (earlyDetectFiredTime != v43)
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v44 = (*&v24 >> 12) & 1;
  if (v44 != ((v26 >> 12) & 1))
  {
    goto LABEL_67;
  }

  if (v44)
  {
    firstPassPrimaryChannelScoreBoost = self->_firstPassPrimaryChannelScoreBoost;
    [v4 firstPassPrimaryChannelScoreBoost];
    if (firstPassPrimaryChannelScoreBoost != v46)
    {
      goto LABEL_67;
    }

    v24 = self->_has;
    v26 = v4[56];
  }

  v47 = (*&v24 >> 13) & 1;
  if (v47 != ((v26 >> 13) & 1))
  {
    goto LABEL_67;
  }

  if (v47)
  {
    firstPassInfoDispatchTimeInNs = self->_firstPassInfoDispatchTimeInNs;
    if (firstPassInfoDispatchTimeInNs == [v4 firstPassInfoDispatchTimeInNs])
    {
      v24 = self->_has;
      v26 = v4[56];
      goto LABEL_63;
    }

    goto LABEL_67;
  }

LABEL_63:
  v49 = (*&v24 >> 14) & 1;
  if (v49 != ((v26 >> 14) & 1))
  {
    goto LABEL_67;
  }

  if (v49)
  {
    firstPassInfoReceptionTimeInNs = self->_firstPassInfoReceptionTimeInNs;
    if (firstPassInfoReceptionTimeInNs != [v4 firstPassInfoReceptionTimeInNs])
    {
      goto LABEL_67;
    }
  }

  v51 = 1;
LABEL_68:

  return v51;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_28:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteFloatField();
  }

LABEL_6:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_channelSelectionScores;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    PBDataWriterWriteUint64Field();
    v11 = self->_has;
    if ((v11 & 0x20) == 0)
    {
LABEL_15:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_15;
  }

  PBDataWriterWriteFloatField();
  v11 = self->_has;
  if ((v11 & 0x40) == 0)
  {
LABEL_16:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteUint64Field();
  v11 = self->_has;
  if ((v11 & 0x80) == 0)
  {
LABEL_17:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteUint64Field();
  v11 = self->_has;
  if ((v11 & 0x100) == 0)
  {
LABEL_18:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint64Field();
  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_19:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteInt32Field();
  v11 = self->_has;
  if ((v11 & 0x400) == 0)
  {
LABEL_20:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteUint64Field();
  v11 = self->_has;
  if ((v11 & 0x800) == 0)
  {
LABEL_21:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteFloatField();
  v11 = self->_has;
  if ((v11 & 0x1000) == 0)
  {
LABEL_22:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

LABEL_39:
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_38:
  PBDataWriterWriteFloatField();
  v11 = self->_has;
  if ((v11 & 0x2000) != 0)
  {
    goto LABEL_39;
  }

LABEL_23:
  if ((v11 & 0x4000) != 0)
  {
LABEL_24:
    PBDataWriterWriteUint64Field();
  }

LABEL_25:
}

- (void)setHasFirstPassInfoReceptionTimeInNs:(BOOL)a3
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

- (void)setHasFirstPassInfoDispatchTimeInNs:(BOOL)a3
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

- (void)setHasFirstPassPrimaryChannelScoreBoost:(BOOL)a3
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

- (void)setHasEarlyDetectFiredTime:(BOOL)a3
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

- (void)setHasEarlyDetectFiredTimeOffsetInNs:(BOOL)a3
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

- (void)setHasFirstPassTriggerSource:(BOOL)a3
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

- (void)setHasFirstPassFireSampleCount:(BOOL)a3
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

- (void)setHasFirstPassEndSampleCount:(BOOL)a3
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

- (void)setHasFirstPassStartSampleCount:(BOOL)a3
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

- (void)setHasFirstPassMasterChannelScoreBoost:(BOOL)a3
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

- (void)setHasFirstPassChannelSelectionDelayNs:(BOOL)a3
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

- (void)addChannelSelectionScores:(id)a3
{
  v4 = a3;
  channelSelectionScores = self->_channelSelectionScores;
  v8 = v4;
  if (!channelSelectionScores)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_channelSelectionScores;
    self->_channelSelectionScores = v6;

    v4 = v8;
    channelSelectionScores = self->_channelSelectionScores;
  }

  [(NSArray *)channelSelectionScores addObject:v4];
}

- (void)setHasFirstPassOnsetScore:(BOOL)a3
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

- (void)setHasFirstPassOnsetChannel:(BOOL)a3
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

- (void)setHasFirstPassScore:(BOOL)a3
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
  v9.super_class = MHSchemaMHVoiceTriggerSecondPassStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHVoiceTriggerSecondPassStarted *)self channelSelectionScores:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(MHSchemaMHVoiceTriggerSecondPassStarted *)self setChannelSelectionScores:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end