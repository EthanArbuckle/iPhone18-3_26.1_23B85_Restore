@interface INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppContactAffinityScoreForMessagesReceived:(BOOL)a3;
- (void)setHasAppContactAffinityScoreForMessagesUsingSiri:(BOOL)a3;
- (void)setHasAppContactFreqForMessages10Min:(BOOL)a3;
- (void)setHasAppContactFreqForMessages1Day:(BOOL)a3;
- (void)setHasAppContactFreqForMessages1Hr:(BOOL)a3;
- (void)setHasAppContactFreqForMessages28Day:(BOOL)a3;
- (void)setHasAppContactFreqForMessages2Min:(BOOL)a3;
- (void)setHasAppContactFreqForMessages6Hr:(BOOL)a3;
- (void)setHasAppContactFreqForMessages7Day:(BOOL)a3;
- (void)setHasAppContactFreqForMessages:(BOOL)a3;
- (void)setHasAppContactFreqForMessagesHaptic:(BOOL)a3;
- (void)setHasAppContactFreqForMessagesInf:(BOOL)a3;
- (void)setHasAppContactFreqForMessagesUsingSiri:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals;
  v5 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appContactAffinityScoreForMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)v5 setAppContactAffinityScoreForMessages:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"appContactAffinityScoreForMessagesUsingSiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)v5 setAppContactAffinityScoreForMessagesUsingSiri:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"appContactAffinityScoreForMessagesReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)v5 setAppContactAffinityScoreForMessagesReceived:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"appContactFreqForMessages2Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessages2Min:](v5, "setAppContactFreqForMessages2Min:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"appContactFreqForMessages10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessages10Min:](v5, "setAppContactFreqForMessages10Min:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"appContactFreqForMessages1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessages1Hr:](v5, "setAppContactFreqForMessages1Hr:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"appContactFreqForMessages6Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessages6Hr:](v5, "setAppContactFreqForMessages6Hr:", [v12 intValue]);
    }

    v29 = v6;
    v13 = [v4 objectForKeyedSubscript:@"appContactFreqForMessages1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessages1Day:](v5, "setAppContactFreqForMessages1Day:", [v13 intValue]);
    }

    v23 = v13;
    v28 = v7;
    v14 = [v4 objectForKeyedSubscript:@"appContactFreqForMessages7Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessages7Day:](v5, "setAppContactFreqForMessages7Day:", [v14 intValue]);
    }

    v27 = v8;
    v15 = [v4 objectForKeyedSubscript:@"appContactFreqForMessages28Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessages28Day:](v5, "setAppContactFreqForMessages28Day:", [v15 intValue]);
    }

    v26 = v9;
    v16 = [v4 objectForKeyedSubscript:@"appContactFreqForMessagesInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessagesInf:](v5, "setAppContactFreqForMessagesInf:", [v16 intValue]);
    }

    v24 = v12;
    v25 = v10;
    v17 = [v4 objectForKeyedSubscript:@"appContactFreqForMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessages:](v5, "setAppContactFreqForMessages:", [v17 intValue]);
    }

    v18 = v11;
    v19 = [v4 objectForKeyedSubscript:@"appContactFreqForMessagesUsingSiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessagesUsingSiri:](v5, "setAppContactFreqForMessagesUsingSiri:", [v19 intValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"appContactFreqForMessagesHaptic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals setAppContactFreqForMessagesHaptic:](v5, "setAppContactFreqForMessagesHaptic:", [v20 intValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)self dictionaryRepresentation];
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
    v7 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)self appContactAffinityScoreForMessages];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"appContactAffinityScoreForMessages"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)self appContactAffinityScoreForMessagesReceived];
  v10 = [v9 numberWithFloat:?];
  [v3 setObject:v10 forKeyedSubscript:@"appContactAffinityScoreForMessagesReceived"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals *)self appContactAffinityScoreForMessagesUsingSiri];
  v12 = [v11 numberWithFloat:?];
  [v3 setObject:v12 forKeyedSubscript:@"appContactAffinityScoreForMessagesUsingSiri"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessages](self, "appContactFreqForMessages")}];
  [v3 setObject:v13 forKeyedSubscript:@"appContactFreqForMessages"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessages10Min](self, "appContactFreqForMessages10Min")}];
  [v3 setObject:v14 forKeyedSubscript:@"appContactFreqForMessages10Min"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessages1Day](self, "appContactFreqForMessages1Day")}];
  [v3 setObject:v15 forKeyedSubscript:@"appContactFreqForMessages1Day"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessages1Hr](self, "appContactFreqForMessages1Hr")}];
  [v3 setObject:v16 forKeyedSubscript:@"appContactFreqForMessages1Hr"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessages28Day](self, "appContactFreqForMessages28Day")}];
  [v3 setObject:v17 forKeyedSubscript:@"appContactFreqForMessages28Day"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessages2Min](self, "appContactFreqForMessages2Min")}];
  [v3 setObject:v18 forKeyedSubscript:@"appContactFreqForMessages2Min"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessages6Hr](self, "appContactFreqForMessages6Hr")}];
  [v3 setObject:v19 forKeyedSubscript:@"appContactFreqForMessages6Hr"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessages7Day](self, "appContactFreqForMessages7Day")}];
  [v3 setObject:v20 forKeyedSubscript:@"appContactFreqForMessages7Day"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessagesHaptic](self, "appContactFreqForMessagesHaptic")}];
  [v3 setObject:v21 forKeyedSubscript:@"appContactFreqForMessagesHaptic"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessagesInf](self, "appContactFreqForMessagesInf")}];
  [v3 setObject:v22 forKeyedSubscript:@"appContactFreqForMessagesInf"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals appContactFreqForMessagesUsingSiri](self, "appContactFreqForMessagesUsingSiri")}];
    [v3 setObject:v5 forKeyedSubscript:@"appContactFreqForMessagesUsingSiri"];
  }

LABEL_16:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    appContactAffinityScoreForMessages = self->_appContactAffinityScoreForMessages;
    if (appContactAffinityScoreForMessages >= 0.0)
    {
      v7 = appContactAffinityScoreForMessages;
    }

    else
    {
      v7 = -appContactAffinityScoreForMessages;
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
    appContactAffinityScoreForMessagesUsingSiri = self->_appContactAffinityScoreForMessagesUsingSiri;
    if (appContactAffinityScoreForMessagesUsingSiri >= 0.0)
    {
      v12 = appContactAffinityScoreForMessagesUsingSiri;
    }

    else
    {
      v12 = -appContactAffinityScoreForMessagesUsingSiri;
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

  if ((has & 4) != 0)
  {
    appContactAffinityScoreForMessagesReceived = self->_appContactAffinityScoreForMessagesReceived;
    if (appContactAffinityScoreForMessagesReceived >= 0.0)
    {
      v17 = appContactAffinityScoreForMessagesReceived;
    }

    else
    {
      v17 = -appContactAffinityScoreForMessagesReceived;
    }

    *v2.i64 = floor(v17 + 0.5);
    v18 = (v17 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v3, v2).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v15 += v18;
      }
    }

    else
    {
      v15 -= fabs(v18);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((has & 8) != 0)
  {
    v20 = 2654435761 * self->_appContactFreqForMessages2Min;
    if ((has & 0x10) != 0)
    {
LABEL_30:
      v21 = 2654435761 * self->_appContactFreqForMessages10Min;
      if ((has & 0x20) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v20 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_30;
    }
  }

  v21 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_31:
    v22 = 2654435761 * self->_appContactFreqForMessages1Hr;
    if ((has & 0x40) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_32:
    v23 = 2654435761 * self->_appContactFreqForMessages6Hr;
    if ((has & 0x80) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_43:
  v23 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_33:
    v24 = 2654435761 * self->_appContactFreqForMessages1Day;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_45;
  }

LABEL_44:
  v24 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_34:
    v25 = 2654435761 * self->_appContactFreqForMessages7Day;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

LABEL_45:
  v25 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_35:
    v26 = 2654435761 * self->_appContactFreqForMessages28Day;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_47;
  }

LABEL_46:
  v26 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_36:
    v27 = 2654435761 * self->_appContactFreqForMessagesInf;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_48;
  }

LABEL_47:
  v27 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_37:
    v28 = 2654435761 * self->_appContactFreqForMessages;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_38;
    }

LABEL_49:
    v29 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_39;
    }

LABEL_50:
    v30 = 0;
    return v10 ^ v5 ^ v15 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_48:
  v28 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_49;
  }

LABEL_38:
  v29 = 2654435761 * self->_appContactFreqForMessagesUsingSiri;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  v30 = 2654435761 * self->_appContactFreqForMessagesHaptic;
  return v10 ^ v5 ^ v15 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_58;
  }

  if (*&has)
  {
    appContactAffinityScoreForMessages = self->_appContactAffinityScoreForMessages;
    [v4 appContactAffinityScoreForMessages];
    if (appContactAffinityScoreForMessages != v8)
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_58;
  }

  if (v9)
  {
    appContactAffinityScoreForMessagesUsingSiri = self->_appContactAffinityScoreForMessagesUsingSiri;
    [v4 appContactAffinityScoreForMessagesUsingSiri];
    if (appContactAffinityScoreForMessagesUsingSiri != v11)
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v6 >> 2) & 1))
  {
    goto LABEL_58;
  }

  if (v12)
  {
    appContactAffinityScoreForMessagesReceived = self->_appContactAffinityScoreForMessagesReceived;
    [v4 appContactAffinityScoreForMessagesReceived];
    if (appContactAffinityScoreForMessagesReceived != v14)
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v15 = (*&has >> 3) & 1;
  if (v15 != ((v6 >> 3) & 1))
  {
    goto LABEL_58;
  }

  if (v15)
  {
    appContactFreqForMessages2Min = self->_appContactFreqForMessages2Min;
    if (appContactFreqForMessages2Min != [v4 appContactFreqForMessages2Min])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v17 = (*&has >> 4) & 1;
  if (v17 != ((v6 >> 4) & 1))
  {
    goto LABEL_58;
  }

  if (v17)
  {
    appContactFreqForMessages10Min = self->_appContactFreqForMessages10Min;
    if (appContactFreqForMessages10Min != [v4 appContactFreqForMessages10Min])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v19 = (*&has >> 5) & 1;
  if (v19 != ((v6 >> 5) & 1))
  {
    goto LABEL_58;
  }

  if (v19)
  {
    appContactFreqForMessages1Hr = self->_appContactFreqForMessages1Hr;
    if (appContactFreqForMessages1Hr != [v4 appContactFreqForMessages1Hr])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v21 = (*&has >> 6) & 1;
  if (v21 != ((v6 >> 6) & 1))
  {
    goto LABEL_58;
  }

  if (v21)
  {
    appContactFreqForMessages6Hr = self->_appContactFreqForMessages6Hr;
    if (appContactFreqForMessages6Hr != [v4 appContactFreqForMessages6Hr])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v23 = (*&has >> 7) & 1;
  if (v23 != ((v6 >> 7) & 1))
  {
    goto LABEL_58;
  }

  if (v23)
  {
    appContactFreqForMessages1Day = self->_appContactFreqForMessages1Day;
    if (appContactFreqForMessages1Day != [v4 appContactFreqForMessages1Day])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v25 = (*&has >> 8) & 1;
  if (v25 != ((v6 >> 8) & 1))
  {
    goto LABEL_58;
  }

  if (v25)
  {
    appContactFreqForMessages7Day = self->_appContactFreqForMessages7Day;
    if (appContactFreqForMessages7Day != [v4 appContactFreqForMessages7Day])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v27 = (*&has >> 9) & 1;
  if (v27 != ((v6 >> 9) & 1))
  {
    goto LABEL_58;
  }

  if (v27)
  {
    appContactFreqForMessages28Day = self->_appContactFreqForMessages28Day;
    if (appContactFreqForMessages28Day != [v4 appContactFreqForMessages28Day])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v29 = (*&has >> 10) & 1;
  if (v29 != ((v6 >> 10) & 1))
  {
    goto LABEL_58;
  }

  if (v29)
  {
    appContactFreqForMessagesInf = self->_appContactFreqForMessagesInf;
    if (appContactFreqForMessagesInf != [v4 appContactFreqForMessagesInf])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v31 = (*&has >> 11) & 1;
  if (v31 != ((v6 >> 11) & 1))
  {
    goto LABEL_58;
  }

  if (v31)
  {
    appContactFreqForMessages = self->_appContactFreqForMessages;
    if (appContactFreqForMessages != [v4 appContactFreqForMessages])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v33 = (*&has >> 12) & 1;
  if (v33 != ((v6 >> 12) & 1))
  {
    goto LABEL_58;
  }

  if (v33)
  {
    appContactFreqForMessagesUsingSiri = self->_appContactFreqForMessagesUsingSiri;
    if (appContactFreqForMessagesUsingSiri == [v4 appContactFreqForMessagesUsingSiri])
    {
      has = self->_has;
      v6 = v4[32];
      goto LABEL_54;
    }

LABEL_58:
    v37 = 0;
    goto LABEL_59;
  }

LABEL_54:
  v35 = (*&has >> 13) & 1;
  if (v35 != ((v6 >> 13) & 1))
  {
    goto LABEL_58;
  }

  if (v35)
  {
    appContactFreqForMessagesHaptic = self->_appContactFreqForMessagesHaptic;
    if (appContactFreqForMessagesHaptic != [v4 appContactFreqForMessagesHaptic])
    {
      goto LABEL_58;
    }
  }

  v37 = 1;
LABEL_59:

  return v37;
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

      goto LABEL_21;
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

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    PBDataWriterWriteInt32Field();
  }

LABEL_16:
}

- (void)setHasAppContactFreqForMessagesHaptic:(BOOL)a3
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

- (void)setHasAppContactFreqForMessagesUsingSiri:(BOOL)a3
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

- (void)setHasAppContactFreqForMessages:(BOOL)a3
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

- (void)setHasAppContactFreqForMessagesInf:(BOOL)a3
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

- (void)setHasAppContactFreqForMessages28Day:(BOOL)a3
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

- (void)setHasAppContactFreqForMessages7Day:(BOOL)a3
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

- (void)setHasAppContactFreqForMessages1Day:(BOOL)a3
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

- (void)setHasAppContactFreqForMessages6Hr:(BOOL)a3
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

- (void)setHasAppContactFreqForMessages1Hr:(BOOL)a3
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

- (void)setHasAppContactFreqForMessages10Min:(BOOL)a3
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

- (void)setHasAppContactFreqForMessages2Min:(BOOL)a3
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

- (void)setHasAppContactAffinityScoreForMessagesReceived:(BOOL)a3
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

- (void)setHasAppContactAffinityScoreForMessagesUsingSiri:(BOOL)a3
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