@interface INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppContactAffinityScoreForPhoneCallReceived:(BOOL)received;
- (void)setHasAppContactAffinityScoreForPhoneCallUsingSiri:(BOOL)siri;
- (void)setHasAppContactFreqForPhoneCall10Min:(BOOL)min;
- (void)setHasAppContactFreqForPhoneCall1Day:(BOOL)day;
- (void)setHasAppContactFreqForPhoneCall1Hr:(BOOL)hr;
- (void)setHasAppContactFreqForPhoneCall28Day:(BOOL)day;
- (void)setHasAppContactFreqForPhoneCall2Min:(BOOL)min;
- (void)setHasAppContactFreqForPhoneCall6Hr:(BOOL)hr;
- (void)setHasAppContactFreqForPhoneCall7Day:(BOOL)day;
- (void)setHasAppContactFreqForPhoneCall:(BOOL)call;
- (void)setHasAppContactFreqForPhoneCallHaptic:(BOOL)haptic;
- (void)setHasAppContactFreqForPhoneCallInf:(BOOL)inf;
- (void)setHasAppContactFreqForPhoneCallUsingSiri:(BOOL)siri;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals;
  v5 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appContactAffinityScoreForPhoneCall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)v5 setAppContactAffinityScoreForPhoneCall:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"appContactAffinityScoreForPhoneCallUsingSiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)v5 setAppContactAffinityScoreForPhoneCallUsingSiri:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appContactAffinityScoreForPhoneCallReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)v5 setAppContactAffinityScoreForPhoneCallReceived:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCall2Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCall2Min:](v5, "setAppContactFreqForPhoneCall2Min:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCall10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCall10Min:](v5, "setAppContactFreqForPhoneCall10Min:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCall1Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCall1Hr:](v5, "setAppContactFreqForPhoneCall1Hr:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCall6Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCall6Hr:](v5, "setAppContactFreqForPhoneCall6Hr:", [v12 intValue]);
    }

    v29 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCall1Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCall1Day:](v5, "setAppContactFreqForPhoneCall1Day:", [v13 intValue]);
    }

    v23 = v13;
    v28 = v7;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCall7Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCall7Day:](v5, "setAppContactFreqForPhoneCall7Day:", [v14 intValue]);
    }

    v27 = v8;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCall28Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCall28Day:](v5, "setAppContactFreqForPhoneCall28Day:", [v15 intValue]);
    }

    v26 = v9;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCallInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCallInf:](v5, "setAppContactFreqForPhoneCallInf:", [v16 intValue]);
    }

    v24 = v12;
    v25 = v10;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCall:](v5, "setAppContactFreqForPhoneCall:", [v17 intValue]);
    }

    v18 = v11;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCallUsingSiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCallUsingSiri:](v5, "setAppContactFreqForPhoneCallUsingSiri:", [v19 intValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"appContactFreqForPhoneCallHaptic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals setAppContactFreqForPhoneCallHaptic:](v5, "setAppContactFreqForPhoneCallHaptic:", [v20 intValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)self dictionaryRepresentation];
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
  if (has)
  {
    v7 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)self appContactAffinityScoreForPhoneCall];
    v8 = [v7 numberWithFloat:?];
    [dictionary setObject:v8 forKeyedSubscript:@"appContactAffinityScoreForPhoneCall"];

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
  [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)self appContactAffinityScoreForPhoneCallReceived];
  v10 = [v9 numberWithFloat:?];
  [dictionary setObject:v10 forKeyedSubscript:@"appContactAffinityScoreForPhoneCallReceived"];

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
  [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals *)self appContactAffinityScoreForPhoneCallUsingSiri];
  v12 = [v11 numberWithFloat:?];
  [dictionary setObject:v12 forKeyedSubscript:@"appContactAffinityScoreForPhoneCallUsingSiri"];

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
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCall](self, "appContactFreqForPhoneCall")}];
  [dictionary setObject:v13 forKeyedSubscript:@"appContactFreqForPhoneCall"];

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
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCall10Min](self, "appContactFreqForPhoneCall10Min")}];
  [dictionary setObject:v14 forKeyedSubscript:@"appContactFreqForPhoneCall10Min"];

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
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCall1Day](self, "appContactFreqForPhoneCall1Day")}];
  [dictionary setObject:v15 forKeyedSubscript:@"appContactFreqForPhoneCall1Day"];

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
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCall1Hr](self, "appContactFreqForPhoneCall1Hr")}];
  [dictionary setObject:v16 forKeyedSubscript:@"appContactFreqForPhoneCall1Hr"];

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
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCall28Day](self, "appContactFreqForPhoneCall28Day")}];
  [dictionary setObject:v17 forKeyedSubscript:@"appContactFreqForPhoneCall28Day"];

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
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCall2Min](self, "appContactFreqForPhoneCall2Min")}];
  [dictionary setObject:v18 forKeyedSubscript:@"appContactFreqForPhoneCall2Min"];

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
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCall6Hr](self, "appContactFreqForPhoneCall6Hr")}];
  [dictionary setObject:v19 forKeyedSubscript:@"appContactFreqForPhoneCall6Hr"];

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
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCall7Day](self, "appContactFreqForPhoneCall7Day")}];
  [dictionary setObject:v20 forKeyedSubscript:@"appContactFreqForPhoneCall7Day"];

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
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCallHaptic](self, "appContactFreqForPhoneCallHaptic")}];
  [dictionary setObject:v21 forKeyedSubscript:@"appContactFreqForPhoneCallHaptic"];

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
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCallInf](self, "appContactFreqForPhoneCallInf")}];
  [dictionary setObject:v22 forKeyedSubscript:@"appContactFreqForPhoneCallInf"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals appContactFreqForPhoneCallUsingSiri](self, "appContactFreqForPhoneCallUsingSiri")}];
    [dictionary setObject:v5 forKeyedSubscript:@"appContactFreqForPhoneCallUsingSiri"];
  }

LABEL_16:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    appContactAffinityScoreForPhoneCall = self->_appContactAffinityScoreForPhoneCall;
    if (appContactAffinityScoreForPhoneCall >= 0.0)
    {
      v7 = appContactAffinityScoreForPhoneCall;
    }

    else
    {
      v7 = -appContactAffinityScoreForPhoneCall;
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
    appContactAffinityScoreForPhoneCallUsingSiri = self->_appContactAffinityScoreForPhoneCallUsingSiri;
    if (appContactAffinityScoreForPhoneCallUsingSiri >= 0.0)
    {
      v12 = appContactAffinityScoreForPhoneCallUsingSiri;
    }

    else
    {
      v12 = -appContactAffinityScoreForPhoneCallUsingSiri;
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
    appContactAffinityScoreForPhoneCallReceived = self->_appContactAffinityScoreForPhoneCallReceived;
    if (appContactAffinityScoreForPhoneCallReceived >= 0.0)
    {
      v17 = appContactAffinityScoreForPhoneCallReceived;
    }

    else
    {
      v17 = -appContactAffinityScoreForPhoneCallReceived;
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
    v20 = 2654435761 * self->_appContactFreqForPhoneCall2Min;
    if ((has & 0x10) != 0)
    {
LABEL_30:
      v21 = 2654435761 * self->_appContactFreqForPhoneCall10Min;
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
    v22 = 2654435761 * self->_appContactFreqForPhoneCall1Hr;
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
    v23 = 2654435761 * self->_appContactFreqForPhoneCall6Hr;
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
    v24 = 2654435761 * self->_appContactFreqForPhoneCall1Day;
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
    v25 = 2654435761 * self->_appContactFreqForPhoneCall7Day;
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
    v26 = 2654435761 * self->_appContactFreqForPhoneCall28Day;
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
    v27 = 2654435761 * self->_appContactFreqForPhoneCallInf;
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
    v28 = 2654435761 * self->_appContactFreqForPhoneCall;
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
  v29 = 2654435761 * self->_appContactFreqForPhoneCallUsingSiri;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  v30 = 2654435761 * self->_appContactFreqForPhoneCallHaptic;
  return v10 ^ v5 ^ v15 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_58;
  }

  if (*&has)
  {
    appContactAffinityScoreForPhoneCall = self->_appContactAffinityScoreForPhoneCall;
    [equalCopy appContactAffinityScoreForPhoneCall];
    if (appContactAffinityScoreForPhoneCall != v8)
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_58;
  }

  if (v9)
  {
    appContactAffinityScoreForPhoneCallUsingSiri = self->_appContactAffinityScoreForPhoneCallUsingSiri;
    [equalCopy appContactAffinityScoreForPhoneCallUsingSiri];
    if (appContactAffinityScoreForPhoneCallUsingSiri != v11)
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v12 = (*&has >> 2) & 1;
  if (v12 != ((v6 >> 2) & 1))
  {
    goto LABEL_58;
  }

  if (v12)
  {
    appContactAffinityScoreForPhoneCallReceived = self->_appContactAffinityScoreForPhoneCallReceived;
    [equalCopy appContactAffinityScoreForPhoneCallReceived];
    if (appContactAffinityScoreForPhoneCallReceived != v14)
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v15 = (*&has >> 3) & 1;
  if (v15 != ((v6 >> 3) & 1))
  {
    goto LABEL_58;
  }

  if (v15)
  {
    appContactFreqForPhoneCall2Min = self->_appContactFreqForPhoneCall2Min;
    if (appContactFreqForPhoneCall2Min != [equalCopy appContactFreqForPhoneCall2Min])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v17 = (*&has >> 4) & 1;
  if (v17 != ((v6 >> 4) & 1))
  {
    goto LABEL_58;
  }

  if (v17)
  {
    appContactFreqForPhoneCall10Min = self->_appContactFreqForPhoneCall10Min;
    if (appContactFreqForPhoneCall10Min != [equalCopy appContactFreqForPhoneCall10Min])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v19 = (*&has >> 5) & 1;
  if (v19 != ((v6 >> 5) & 1))
  {
    goto LABEL_58;
  }

  if (v19)
  {
    appContactFreqForPhoneCall1Hr = self->_appContactFreqForPhoneCall1Hr;
    if (appContactFreqForPhoneCall1Hr != [equalCopy appContactFreqForPhoneCall1Hr])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v21 = (*&has >> 6) & 1;
  if (v21 != ((v6 >> 6) & 1))
  {
    goto LABEL_58;
  }

  if (v21)
  {
    appContactFreqForPhoneCall6Hr = self->_appContactFreqForPhoneCall6Hr;
    if (appContactFreqForPhoneCall6Hr != [equalCopy appContactFreqForPhoneCall6Hr])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v23 = (*&has >> 7) & 1;
  if (v23 != ((v6 >> 7) & 1))
  {
    goto LABEL_58;
  }

  if (v23)
  {
    appContactFreqForPhoneCall1Day = self->_appContactFreqForPhoneCall1Day;
    if (appContactFreqForPhoneCall1Day != [equalCopy appContactFreqForPhoneCall1Day])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v25 = (*&has >> 8) & 1;
  if (v25 != ((v6 >> 8) & 1))
  {
    goto LABEL_58;
  }

  if (v25)
  {
    appContactFreqForPhoneCall7Day = self->_appContactFreqForPhoneCall7Day;
    if (appContactFreqForPhoneCall7Day != [equalCopy appContactFreqForPhoneCall7Day])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v27 = (*&has >> 9) & 1;
  if (v27 != ((v6 >> 9) & 1))
  {
    goto LABEL_58;
  }

  if (v27)
  {
    appContactFreqForPhoneCall28Day = self->_appContactFreqForPhoneCall28Day;
    if (appContactFreqForPhoneCall28Day != [equalCopy appContactFreqForPhoneCall28Day])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v29 = (*&has >> 10) & 1;
  if (v29 != ((v6 >> 10) & 1))
  {
    goto LABEL_58;
  }

  if (v29)
  {
    appContactFreqForPhoneCallInf = self->_appContactFreqForPhoneCallInf;
    if (appContactFreqForPhoneCallInf != [equalCopy appContactFreqForPhoneCallInf])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v31 = (*&has >> 11) & 1;
  if (v31 != ((v6 >> 11) & 1))
  {
    goto LABEL_58;
  }

  if (v31)
  {
    appContactFreqForPhoneCall = self->_appContactFreqForPhoneCall;
    if (appContactFreqForPhoneCall != [equalCopy appContactFreqForPhoneCall])
    {
      goto LABEL_58;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v33 = (*&has >> 12) & 1;
  if (v33 != ((v6 >> 12) & 1))
  {
    goto LABEL_58;
  }

  if (v33)
  {
    appContactFreqForPhoneCallUsingSiri = self->_appContactFreqForPhoneCallUsingSiri;
    if (appContactFreqForPhoneCallUsingSiri == [equalCopy appContactFreqForPhoneCallUsingSiri])
    {
      has = self->_has;
      v6 = equalCopy[32];
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
    appContactFreqForPhoneCallHaptic = self->_appContactFreqForPhoneCallHaptic;
    if (appContactFreqForPhoneCallHaptic != [equalCopy appContactFreqForPhoneCallHaptic])
    {
      goto LABEL_58;
    }
  }

  v37 = 1;
LABEL_59:

  return v37;
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

- (void)setHasAppContactFreqForPhoneCallHaptic:(BOOL)haptic
{
  if (haptic)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasAppContactFreqForPhoneCallUsingSiri:(BOOL)siri
{
  if (siri)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasAppContactFreqForPhoneCall:(BOOL)call
{
  if (call)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasAppContactFreqForPhoneCallInf:(BOOL)inf
{
  if (inf)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasAppContactFreqForPhoneCall28Day:(BOOL)day
{
  if (day)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasAppContactFreqForPhoneCall7Day:(BOOL)day
{
  if (day)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasAppContactFreqForPhoneCall1Day:(BOOL)day
{
  if (day)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasAppContactFreqForPhoneCall6Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasAppContactFreqForPhoneCall1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAppContactFreqForPhoneCall10Min:(BOOL)min
{
  if (min)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasAppContactFreqForPhoneCall2Min:(BOOL)min
{
  if (min)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAppContactAffinityScoreForPhoneCallReceived:(BOOL)received
{
  if (received)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAppContactAffinityScoreForPhoneCallUsingSiri:(BOOL)siri
{
  if (siri)
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