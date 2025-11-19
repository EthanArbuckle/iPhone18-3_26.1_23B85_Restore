@interface IASchemaIAVoiceTriggerEventSummary
- (BOOL)isEqual:(id)a3;
- (IASchemaIAVoiceTriggerEventSummary)initWithDictionary:(id)a3;
- (IASchemaIAVoiceTriggerEventSummary)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFirstPassPeakScoreHS:(BOOL)a3;
- (void)setHasFirstPassPeakScoreJS:(BOOL)a3;
- (void)setHasHasAppIntentEvent:(BOOL)a3;
- (void)setHasHasAppLaunchEvent:(BOOL)a3;
- (void)setHasHasDeviceUnlockEvent:(BOOL)a3;
- (void)setHasHasNextRejection:(BOOL)a3;
- (void)setHasHasNextTurn:(BOOL)a3;
- (void)setHasHasTextInputEvent:(BOOL)a3;
- (void)setHasInvocationTypeId:(BOOL)a3;
- (void)setHasIsNextTurnValid:(BOOL)a3;
- (void)setHasMitigationScore:(BOOL)a3;
- (void)setHasMitigationScoreThreshold:(BOOL)a3;
- (void)setHasNextTurnInvocationSource:(BOOL)a3;
- (void)setHasRepetitionSimilarityScore:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerCombinedScore:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerCombinedThreshold:(BOOL)a3;
- (void)setHasTimeDeltaToAppIntentEventInSec:(BOOL)a3;
- (void)setHasTimeDeltaToAppLaunchInSec:(BOOL)a3;
- (void)setHasTimeDeltaToDeviceUnlockInSec:(BOOL)a3;
- (void)setHasTimeDeltaToNextRejectionInSec:(BOOL)a3;
- (void)setHasTimeDeltaToNextTurnInSec:(BOOL)a3;
- (void)setHasTimeDeltaToTextInputInSec:(BOOL)a3;
- (void)setHasTriggerScoreHS:(BOOL)a3;
- (void)setHasTriggerScoreHSThreshold:(BOOL)a3;
- (void)setHasTriggerScoreJS:(BOOL)a3;
- (void)setHasTriggerScoreJSThreshold:(BOOL)a3;
- (void)setHasUserActionTimeThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IASchemaIAVoiceTriggerEventSummary

- (IASchemaIAVoiceTriggerEventSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v65.receiver = self;
  v65.super_class = IASchemaIAVoiceTriggerEventSummary;
  v5 = [(IASchemaIAVoiceTriggerEventSummary *)&v65 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"firstPassDetectionTimestampInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setFirstPassDetectionTimestampInSec:](v5, "setFirstPassDetectionTimestampInSec:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"firstPassPeakScoreHS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setFirstPassPeakScoreHS:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"firstPassPeakScoreJS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setFirstPassPeakScoreJS:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"invocationTypeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setInvocationTypeId:](v5, "setInvocationTypeId:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"triggerScoreHS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTriggerScoreHS:?];
    }

    v50 = v6;
    v11 = [v4 objectForKeyedSubscript:@"triggerScoreJS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTriggerScoreJS:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"mitigationScore"];
    objc_opt_class();
    v64 = v12;
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setMitigationScore:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];
    objc_opt_class();
    v63 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTdSpeakerRecognizerCombinedScore:?];
    }

    v14 = [v4 objectForKeyedSubscript:@"triggerScoreHSThreshold"];
    objc_opt_class();
    v62 = v14;
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTriggerScoreHSThreshold:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"triggerScoreJSThreshold"];
    objc_opt_class();
    v61 = v15;
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTriggerScoreJSThreshold:?];
    }

    v16 = [v4 objectForKeyedSubscript:@"mitigationScoreThreshold"];
    objc_opt_class();
    v60 = v16;
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setMitigationScoreThreshold:?];
    }

    v17 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThreshold"];
    objc_opt_class();
    v59 = v17;
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTdSpeakerRecognizerCombinedThreshold:?];
    }

    v18 = [v4 objectForKeyedSubscript:@"voiceTriggerConfigVersion"];
    objc_opt_class();
    v58 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setVoiceTriggerConfigVersion:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"userActionTimeThreshold"];
    objc_opt_class();
    v57 = v20;
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setUserActionTimeThreshold:?];
    }

    v21 = [v4 objectForKeyedSubscript:@"hasNextTurn"];
    objc_opt_class();
    v56 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setHasNextTurn:](v5, "setHasNextTurn:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"timeDeltaToNextTurnInSec"];
    objc_opt_class();
    v55 = v22;
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTimeDeltaToNextTurnInSec:?];
    }

    v47 = v9;
    v23 = [v4 objectForKeyedSubscript:@"nextTurnId"];
    objc_opt_class();
    v54 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [[SISchemaUUID alloc] initWithDictionary:v23];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setNextTurnId:v24];
    }

    v25 = v7;
    v26 = [v4 objectForKeyedSubscript:@"nextTurnInvocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setNextTurnInvocationSource:](v5, "setNextTurnInvocationSource:", [v26 unsignedIntValue]);
    }

    v27 = [v4 objectForKeyedSubscript:@"isNextTurnValid"];
    objc_opt_class();
    v53 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setIsNextTurnValid:](v5, "setIsNextTurnValid:", [v27 BOOLValue]);
    }

    v28 = v8;
    v29 = [v4 objectForKeyedSubscript:@"repetitionSimilarityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v29 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setRepetitionSimilarityScore:?];
    }

    v30 = [v4 objectForKeyedSubscript:@"hasNextRejection"];
    objc_opt_class();
    v52 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setHasNextRejection:](v5, "setHasNextRejection:", [v30 BOOLValue]);
    }

    v31 = [v4 objectForKeyedSubscript:@"timeDeltaToNextRejectionInSec"];
    objc_opt_class();
    v51 = v31;
    if (objc_opt_isKindOfClass())
    {
      [v31 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTimeDeltaToNextRejectionInSec:?];
    }

    v45 = v11;
    v32 = [v4 objectForKeyedSubscript:@"hasAppLaunchEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setHasAppLaunchEvent:](v5, "setHasAppLaunchEvent:", [v32 BOOLValue]);
    }

    v44 = v26;
    v33 = [v4 objectForKeyedSubscript:{@"timeDeltaToAppLaunchInSec", v32}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v33 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTimeDeltaToAppLaunchInSec:?];
    }

    v43 = v29;
    v34 = [v4 objectForKeyedSubscript:@"hasAppIntentEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setHasAppIntentEvent:](v5, "setHasAppIntentEvent:", [v34 BOOLValue]);
    }

    v49 = v25;
    v35 = [v4 objectForKeyedSubscript:@"timeDeltaToAppIntentEventInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v35 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTimeDeltaToAppIntentEventInSec:?];
    }

    v48 = v28;
    v36 = [v4 objectForKeyedSubscript:@"hasTextInputEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setHasTextInputEvent:](v5, "setHasTextInputEvent:", [v36 BOOLValue]);
    }

    v37 = [v4 objectForKeyedSubscript:@"timeDeltaToTextInputInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v37 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTimeDeltaToTextInputInSec:?];
    }

    v46 = v10;
    v38 = [v4 objectForKeyedSubscript:@"hasDeviceUnlockEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIAVoiceTriggerEventSummary setHasDeviceUnlockEvent:](v5, "setHasDeviceUnlockEvent:", [v38 BOOLValue]);
    }

    v39 = [v4 objectForKeyedSubscript:@"timeDeltaToDeviceUnlockInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v39 floatValue];
      [(IASchemaIAVoiceTriggerEventSummary *)v5 setTimeDeltaToDeviceUnlockInSec:?];
    }

    v40 = v5;
  }

  return v5;
}

- (IASchemaIAVoiceTriggerEventSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IASchemaIAVoiceTriggerEventSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IASchemaIAVoiceTriggerEventSummary *)self dictionaryRepresentation];
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
  if (*&has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IASchemaIAVoiceTriggerEventSummary firstPassDetectionTimestampInSec](self, "firstPassDetectionTimestampInSec")}];
    [v3 setObject:v9 forKeyedSubscript:@"firstPassDetectionTimestampInSec"];

    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self firstPassPeakScoreHS];
  v11 = [v10 numberWithFloat:?];
  [v3 setObject:v11 forKeyedSubscript:@"firstPassPeakScoreHS"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self firstPassPeakScoreJS];
  v13 = [v12 numberWithFloat:?];
  [v3 setObject:v13 forKeyedSubscript:@"firstPassPeakScoreJS"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[IASchemaIAVoiceTriggerEventSummary hasAppIntentEvent](self, "hasAppIntentEvent")}];
  [v3 setObject:v14 forKeyedSubscript:@"hasAppIntentEvent"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[IASchemaIAVoiceTriggerEventSummary hasAppLaunchEvent](self, "hasAppLaunchEvent")}];
  [v3 setObject:v15 forKeyedSubscript:@"hasAppLaunchEvent"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[IASchemaIAVoiceTriggerEventSummary hasDeviceUnlockEvent](self, "hasDeviceUnlockEvent")}];
  [v3 setObject:v16 forKeyedSubscript:@"hasDeviceUnlockEvent"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[IASchemaIAVoiceTriggerEventSummary hasNextRejection](self, "hasNextRejection")}];
  [v3 setObject:v17 forKeyedSubscript:@"hasNextRejection"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[IASchemaIAVoiceTriggerEventSummary hasNextTurn](self, "hasNextTurn")}];
  [v3 setObject:v18 forKeyedSubscript:@"hasNextTurn"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[IASchemaIAVoiceTriggerEventSummary hasTextInputEvent](self, "hasTextInputEvent")}];
  [v3 setObject:v19 forKeyedSubscript:@"hasTextInputEvent"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IASchemaIAVoiceTriggerEventSummary invocationTypeId](self, "invocationTypeId")}];
  [v3 setObject:v20 forKeyedSubscript:@"invocationTypeId"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[IASchemaIAVoiceTriggerEventSummary isNextTurnValid](self, "isNextTurnValid")}];
  [v3 setObject:v21 forKeyedSubscript:@"isNextTurnValid"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v22 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self mitigationScore];
  v23 = [v22 numberWithFloat:?];
  [v3 setObject:v23 forKeyedSubscript:@"mitigationScore"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_14:
    v5 = MEMORY[0x1E696AD98];
    [(IASchemaIAVoiceTriggerEventSummary *)self mitigationScoreThreshold];
    v6 = [v5 numberWithFloat:?];
    [v3 setObject:v6 forKeyedSubscript:@"mitigationScoreThreshold"];
  }

LABEL_15:
  if (self->_nextTurnId)
  {
    v7 = [(IASchemaIAVoiceTriggerEventSummary *)self nextTurnId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"nextTurnId"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"nextTurnId"];
    }
  }

  v25 = self->_has;
  if ((*&v25 & 0x8000) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IASchemaIAVoiceTriggerEventSummary nextTurnInvocationSource](self, "nextTurnInvocationSource")}];
    [v3 setObject:v31 forKeyedSubscript:@"nextTurnInvocationSource"];

    v25 = self->_has;
    if ((*&v25 & 0x20000) == 0)
    {
LABEL_35:
      if ((*&v25 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v25 & 0x20000) == 0)
  {
    goto LABEL_35;
  }

  v32 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self repetitionSimilarityScore];
  v33 = [v32 numberWithFloat:?];
  [v3 setObject:v33 forKeyedSubscript:@"repetitionSimilarityScore"];

  v25 = self->_has;
  if ((*&v25 & 0x80) == 0)
  {
LABEL_36:
    if ((*&v25 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_57;
  }

LABEL_56:
  v34 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self tdSpeakerRecognizerCombinedScore];
  v35 = [v34 numberWithFloat:?];
  [v3 setObject:v35 forKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];

  v25 = self->_has;
  if ((*&v25 & 0x800) == 0)
  {
LABEL_37:
    if ((*&v25 & 0x800000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_58;
  }

LABEL_57:
  v36 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self tdSpeakerRecognizerCombinedThreshold];
  v37 = [v36 numberWithFloat:?];
  [v3 setObject:v37 forKeyedSubscript:@"tdSpeakerRecognizerCombinedThreshold"];

  v25 = self->_has;
  if ((*&v25 & 0x800000) == 0)
  {
LABEL_38:
    if ((*&v25 & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_59;
  }

LABEL_58:
  v38 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self timeDeltaToAppIntentEventInSec];
  v39 = [v38 numberWithFloat:?];
  [v3 setObject:v39 forKeyedSubscript:@"timeDeltaToAppIntentEventInSec"];

  v25 = self->_has;
  if ((*&v25 & 0x200000) == 0)
  {
LABEL_39:
    if ((*&v25 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

LABEL_59:
  v40 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self timeDeltaToAppLaunchInSec];
  v41 = [v40 numberWithFloat:?];
  [v3 setObject:v41 forKeyedSubscript:@"timeDeltaToAppLaunchInSec"];

  v25 = self->_has;
  if ((*&v25 & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&v25 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_61;
  }

LABEL_60:
  v42 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self timeDeltaToDeviceUnlockInSec];
  v43 = [v42 numberWithFloat:?];
  [v3 setObject:v43 forKeyedSubscript:@"timeDeltaToDeviceUnlockInSec"];

  v25 = self->_has;
  if ((*&v25 & 0x80000) == 0)
  {
LABEL_41:
    if ((*&v25 & 0x4000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_62;
  }

LABEL_61:
  v44 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self timeDeltaToNextRejectionInSec];
  v45 = [v44 numberWithFloat:?];
  [v3 setObject:v45 forKeyedSubscript:@"timeDeltaToNextRejectionInSec"];

  v25 = self->_has;
  if ((*&v25 & 0x4000) == 0)
  {
LABEL_42:
    if ((*&v25 & 0x2000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_63;
  }

LABEL_62:
  v46 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self timeDeltaToNextTurnInSec];
  v47 = [v46 numberWithFloat:?];
  [v3 setObject:v47 forKeyedSubscript:@"timeDeltaToNextTurnInSec"];

  v25 = self->_has;
  if ((*&v25 & 0x2000000) == 0)
  {
LABEL_43:
    if ((*&v25 & 0x10) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_64;
  }

LABEL_63:
  v48 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self timeDeltaToTextInputInSec];
  v49 = [v48 numberWithFloat:?];
  [v3 setObject:v49 forKeyedSubscript:@"timeDeltaToTextInputInSec"];

  v25 = self->_has;
  if ((*&v25 & 0x10) == 0)
  {
LABEL_44:
    if ((*&v25 & 0x100) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_65;
  }

LABEL_64:
  v50 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self triggerScoreHS];
  v51 = [v50 numberWithFloat:?];
  [v3 setObject:v51 forKeyedSubscript:@"triggerScoreHS"];

  v25 = self->_has;
  if ((*&v25 & 0x100) == 0)
  {
LABEL_45:
    if ((*&v25 & 0x20) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_66;
  }

LABEL_65:
  v52 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self triggerScoreHSThreshold];
  v53 = [v52 numberWithFloat:?];
  [v3 setObject:v53 forKeyedSubscript:@"triggerScoreHSThreshold"];

  v25 = self->_has;
  if ((*&v25 & 0x20) == 0)
  {
LABEL_46:
    if ((*&v25 & 0x200) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_67;
  }

LABEL_66:
  v54 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self triggerScoreJS];
  v55 = [v54 numberWithFloat:?];
  [v3 setObject:v55 forKeyedSubscript:@"triggerScoreJS"];

  v25 = self->_has;
  if ((*&v25 & 0x200) == 0)
  {
LABEL_47:
    if ((*&v25 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_67:
  v56 = MEMORY[0x1E696AD98];
  [(IASchemaIAVoiceTriggerEventSummary *)self triggerScoreJSThreshold];
  v57 = [v56 numberWithFloat:?];
  [v3 setObject:v57 forKeyedSubscript:@"triggerScoreJSThreshold"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_48:
    v26 = MEMORY[0x1E696AD98];
    [(IASchemaIAVoiceTriggerEventSummary *)self userActionTimeThreshold];
    v27 = [v26 numberWithFloat:?];
    [v3 setObject:v27 forKeyedSubscript:@"userActionTimeThreshold"];
  }

LABEL_49:
  if (self->_voiceTriggerConfigVersion)
  {
    v28 = [(IASchemaIAVoiceTriggerEventSummary *)self voiceTriggerConfigVersion];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"voiceTriggerConfigVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 1) == 0)
  {
    v120 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v120 = 2654435761u * self->_firstPassDetectionTimestampInSec;
  if ((*&has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
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
  v10 = 2654435761u * *v2.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_10:
  if ((*&has & 4) != 0)
  {
    firstPassPeakScoreJS = self->_firstPassPeakScoreJS;
    if (firstPassPeakScoreJS >= 0.0)
    {
      v13 = firstPassPeakScoreJS;
    }

    else
    {
      v13 = -firstPassPeakScoreJS;
    }

    *v2.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v11 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v11 += v14;
      }
    }

    else
    {
      v11 -= fabs(v14);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&has & 8) == 0)
  {
    v117 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_23;
    }

LABEL_29:
    v20 = 0;
    goto LABEL_30;
  }

  v117 = 2654435761 * self->_invocationTypeId;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_29;
  }

LABEL_23:
  triggerScoreHS = self->_triggerScoreHS;
  if (triggerScoreHS >= 0.0)
  {
    v17 = triggerScoreHS;
  }

  else
  {
    v17 = -triggerScoreHS;
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

LABEL_30:
  if ((*&has & 0x20) != 0)
  {
    triggerScoreJS = self->_triggerScoreJS;
    if (triggerScoreJS >= 0.0)
    {
      v23 = triggerScoreJS;
    }

    else
    {
      v23 = -triggerScoreJS;
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

  if ((*&has & 0x40) != 0)
  {
    mitigationScore = self->_mitigationScore;
    if (mitigationScore >= 0.0)
    {
      v28 = mitigationScore;
    }

    else
    {
      v28 = -mitigationScore;
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

  if ((*&has & 0x80) != 0)
  {
    tdSpeakerRecognizerCombinedScore = self->_tdSpeakerRecognizerCombinedScore;
    if (tdSpeakerRecognizerCombinedScore >= 0.0)
    {
      v33 = tdSpeakerRecognizerCombinedScore;
    }

    else
    {
      v33 = -tdSpeakerRecognizerCombinedScore;
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

  if ((*&has & 0x100) != 0)
  {
    triggerScoreHSThreshold = self->_triggerScoreHSThreshold;
    if (triggerScoreHSThreshold >= 0.0)
    {
      v38 = triggerScoreHSThreshold;
    }

    else
    {
      v38 = -triggerScoreHSThreshold;
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

  if ((*&has & 0x200) != 0)
  {
    triggerScoreJSThreshold = self->_triggerScoreJSThreshold;
    if (triggerScoreJSThreshold >= 0.0)
    {
      v43 = triggerScoreJSThreshold;
    }

    else
    {
      v43 = -triggerScoreJSThreshold;
    }

    *v2.i64 = floor(v43 + 0.5);
    v44 = (v43 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v45.f64[0] = NAN;
    v45.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v45), v3, v2);
    v41 = 2654435761u * *v2.i64;
    if (v44 >= 0.0)
    {
      if (v44 > 0.0)
      {
        v41 += v44;
      }
    }

    else
    {
      v41 -= fabs(v44);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((*&has & 0x400) != 0)
  {
    mitigationScoreThreshold = self->_mitigationScoreThreshold;
    if (mitigationScoreThreshold >= 0.0)
    {
      v48 = mitigationScoreThreshold;
    }

    else
    {
      v48 = -mitigationScoreThreshold;
    }

    *v2.i64 = floor(v48 + 0.5);
    v49 = (v48 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v50.f64[0] = NAN;
    v50.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v50), v3, v2);
    v46 = 2654435761u * *v2.i64;
    if (v49 >= 0.0)
    {
      if (v49 > 0.0)
      {
        v46 += v49;
      }
    }

    else
    {
      v46 -= fabs(v49);
    }
  }

  else
  {
    v46 = 0;
  }

  v118 = v11;
  v119 = v10;
  v115 = v21;
  v116 = v20;
  v113 = v31;
  v114 = v26;
  if ((*&has & 0x800) != 0)
  {
    tdSpeakerRecognizerCombinedThreshold = self->_tdSpeakerRecognizerCombinedThreshold;
    if (tdSpeakerRecognizerCombinedThreshold >= 0.0)
    {
      v53 = tdSpeakerRecognizerCombinedThreshold;
    }

    else
    {
      v53 = -tdSpeakerRecognizerCombinedThreshold;
    }

    *v2.i64 = floor(v53 + 0.5);
    v54 = (v53 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v55.f64[0] = NAN;
    v55.f64[1] = NAN;
    v51 = 2654435761u * *vbslq_s8(vnegq_f64(v55), v3, v2).i64;
    if (v54 >= 0.0)
    {
      if (v54 > 0.0)
      {
        v51 += v54;
      }
    }

    else
    {
      v51 -= fabs(v54);
    }
  }

  else
  {
    v51 = 0;
  }

  v112 = [(NSString *)self->_voiceTriggerConfigVersion hash];
  v58 = self->_has;
  if ((*&v58 & 0x1000) != 0)
  {
    userActionTimeThreshold = self->_userActionTimeThreshold;
    if (userActionTimeThreshold >= 0.0)
    {
      v61 = userActionTimeThreshold;
    }

    else
    {
      v61 = -userActionTimeThreshold;
    }

    *v56.i64 = floor(v61 + 0.5);
    v62 = (v61 - *v56.i64) * 1.84467441e19;
    *v57.i64 = *v56.i64 - trunc(*v56.i64 * 5.42101086e-20) * 1.84467441e19;
    v63.f64[0] = NAN;
    v63.f64[1] = NAN;
    v56 = vbslq_s8(vnegq_f64(v63), v57, v56);
    v59 = 2654435761u * *v56.i64;
    if (v62 >= 0.0)
    {
      if (v62 > 0.0)
      {
        v59 += v62;
      }
    }

    else
    {
      v59 -= fabs(v62);
    }
  }

  else
  {
    v59 = 0;
  }

  if ((*&v58 & 0x2000) == 0)
  {
    v64 = 0;
    if ((*&v58 & 0x4000) != 0)
    {
      goto LABEL_106;
    }

LABEL_112:
    v69 = 0;
    goto LABEL_113;
  }

  v64 = 2654435761 * self->_hasNextTurn;
  if ((*&v58 & 0x4000) == 0)
  {
    goto LABEL_112;
  }

LABEL_106:
  timeDeltaToNextTurnInSec = self->_timeDeltaToNextTurnInSec;
  if (timeDeltaToNextTurnInSec >= 0.0)
  {
    v66 = timeDeltaToNextTurnInSec;
  }

  else
  {
    v66 = -timeDeltaToNextTurnInSec;
  }

  *v56.i64 = floor(v66 + 0.5);
  v67 = (v66 - *v56.i64) * 1.84467441e19;
  *v57.i64 = *v56.i64 - trunc(*v56.i64 * 5.42101086e-20) * 1.84467441e19;
  v68.f64[0] = NAN;
  v68.f64[1] = NAN;
  v69 = 2654435761u * *vbslq_s8(vnegq_f64(v68), v57, v56).i64;
  if (v67 >= 0.0)
  {
    if (v67 > 0.0)
    {
      v69 += v67;
    }
  }

  else
  {
    v69 -= fabs(v67);
  }

LABEL_113:
  v70 = [(SISchemaUUID *)self->_nextTurnId hash];
  v73 = self->_has;
  if ((*&v73 & 0x8000) != 0)
  {
    v74 = 2654435761 * self->_nextTurnInvocationSource;
    if ((*&v73 & 0x10000) != 0)
    {
LABEL_115:
      v75 = 2654435761 * self->_isNextTurnValid;
      if ((*&v73 & 0x20000) != 0)
      {
        goto LABEL_116;
      }

LABEL_123:
      v80 = 0;
      goto LABEL_124;
    }
  }

  else
  {
    v74 = 0;
    if ((*&v73 & 0x10000) != 0)
    {
      goto LABEL_115;
    }
  }

  v75 = 0;
  if ((*&v73 & 0x20000) == 0)
  {
    goto LABEL_123;
  }

LABEL_116:
  repetitionSimilarityScore = self->_repetitionSimilarityScore;
  if (repetitionSimilarityScore >= 0.0)
  {
    v77 = repetitionSimilarityScore;
  }

  else
  {
    v77 = -repetitionSimilarityScore;
  }

  *v71.i64 = floor(v77 + 0.5);
  v78 = (v77 - *v71.i64) * 1.84467441e19;
  *v72.i64 = *v71.i64 - trunc(*v71.i64 * 5.42101086e-20) * 1.84467441e19;
  v79.f64[0] = NAN;
  v79.f64[1] = NAN;
  v71 = vbslq_s8(vnegq_f64(v79), v72, v71);
  v80 = 2654435761u * *v71.i64;
  if (v78 >= 0.0)
  {
    if (v78 > 0.0)
    {
      v80 += v78;
    }
  }

  else
  {
    v80 -= fabs(v78);
  }

LABEL_124:
  if ((*&v73 & 0x40000) == 0)
  {
    v81 = 0;
    if ((*&v73 & 0x80000) != 0)
    {
      goto LABEL_126;
    }

LABEL_132:
    v86 = 0;
    goto LABEL_133;
  }

  v81 = 2654435761 * self->_hasNextRejection;
  if ((*&v73 & 0x80000) == 0)
  {
    goto LABEL_132;
  }

LABEL_126:
  timeDeltaToNextRejectionInSec = self->_timeDeltaToNextRejectionInSec;
  if (timeDeltaToNextRejectionInSec >= 0.0)
  {
    v83 = timeDeltaToNextRejectionInSec;
  }

  else
  {
    v83 = -timeDeltaToNextRejectionInSec;
  }

  *v71.i64 = floor(v83 + 0.5);
  v84 = (v83 - *v71.i64) * 1.84467441e19;
  *v72.i64 = *v71.i64 - trunc(*v71.i64 * 5.42101086e-20) * 1.84467441e19;
  v85.f64[0] = NAN;
  v85.f64[1] = NAN;
  v71 = vbslq_s8(vnegq_f64(v85), v72, v71);
  v86 = 2654435761u * *v71.i64;
  if (v84 >= 0.0)
  {
    if (v84 > 0.0)
    {
      v86 += v84;
    }
  }

  else
  {
    v86 -= fabs(v84);
  }

LABEL_133:
  if ((*&v73 & 0x100000) == 0)
  {
    v87 = 0;
    if ((*&v73 & 0x200000) != 0)
    {
      goto LABEL_135;
    }

LABEL_141:
    v92 = 0;
    goto LABEL_142;
  }

  v87 = 2654435761 * self->_hasAppLaunchEvent;
  if ((*&v73 & 0x200000) == 0)
  {
    goto LABEL_141;
  }

LABEL_135:
  timeDeltaToAppLaunchInSec = self->_timeDeltaToAppLaunchInSec;
  if (timeDeltaToAppLaunchInSec >= 0.0)
  {
    v89 = timeDeltaToAppLaunchInSec;
  }

  else
  {
    v89 = -timeDeltaToAppLaunchInSec;
  }

  *v71.i64 = floor(v89 + 0.5);
  v90 = (v89 - *v71.i64) * 1.84467441e19;
  *v72.i64 = *v71.i64 - trunc(*v71.i64 * 5.42101086e-20) * 1.84467441e19;
  v91.f64[0] = NAN;
  v91.f64[1] = NAN;
  v71 = vbslq_s8(vnegq_f64(v91), v72, v71);
  v92 = 2654435761u * *v71.i64;
  if (v90 >= 0.0)
  {
    if (v90 > 0.0)
    {
      v92 += v90;
    }
  }

  else
  {
    v92 -= fabs(v90);
  }

LABEL_142:
  if ((*&v73 & 0x400000) == 0)
  {
    v93 = 0;
    if ((*&v73 & 0x800000) != 0)
    {
      goto LABEL_144;
    }

LABEL_150:
    v98 = 0;
    goto LABEL_151;
  }

  v93 = 2654435761 * self->_hasAppIntentEvent;
  if ((*&v73 & 0x800000) == 0)
  {
    goto LABEL_150;
  }

LABEL_144:
  timeDeltaToAppIntentEventInSec = self->_timeDeltaToAppIntentEventInSec;
  if (timeDeltaToAppIntentEventInSec >= 0.0)
  {
    v95 = timeDeltaToAppIntentEventInSec;
  }

  else
  {
    v95 = -timeDeltaToAppIntentEventInSec;
  }

  *v71.i64 = floor(v95 + 0.5);
  v96 = (v95 - *v71.i64) * 1.84467441e19;
  *v72.i64 = *v71.i64 - trunc(*v71.i64 * 5.42101086e-20) * 1.84467441e19;
  v97.f64[0] = NAN;
  v97.f64[1] = NAN;
  v71 = vbslq_s8(vnegq_f64(v97), v72, v71);
  v98 = 2654435761u * *v71.i64;
  if (v96 >= 0.0)
  {
    if (v96 > 0.0)
    {
      v98 += v96;
    }
  }

  else
  {
    v98 -= fabs(v96);
  }

LABEL_151:
  if ((*&v73 & 0x1000000) == 0)
  {
    v99 = 0;
    if ((*&v73 & 0x2000000) != 0)
    {
      goto LABEL_153;
    }

LABEL_159:
    v104 = 0;
    goto LABEL_160;
  }

  v99 = 2654435761 * self->_hasTextInputEvent;
  if ((*&v73 & 0x2000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_153:
  timeDeltaToTextInputInSec = self->_timeDeltaToTextInputInSec;
  if (timeDeltaToTextInputInSec >= 0.0)
  {
    v101 = timeDeltaToTextInputInSec;
  }

  else
  {
    v101 = -timeDeltaToTextInputInSec;
  }

  *v71.i64 = floor(v101 + 0.5);
  v102 = (v101 - *v71.i64) * 1.84467441e19;
  *v72.i64 = *v71.i64 - trunc(*v71.i64 * 5.42101086e-20) * 1.84467441e19;
  v103.f64[0] = NAN;
  v103.f64[1] = NAN;
  v71 = vbslq_s8(vnegq_f64(v103), v72, v71);
  v104 = 2654435761u * *v71.i64;
  if (v102 >= 0.0)
  {
    if (v102 > 0.0)
    {
      v104 += v102;
    }
  }

  else
  {
    v104 -= fabs(v102);
  }

LABEL_160:
  if ((*&v73 & 0x4000000) != 0)
  {
    v105 = 2654435761 * self->_hasDeviceUnlockEvent;
    if ((*&v73 & 0x8000000) != 0)
    {
      goto LABEL_162;
    }

LABEL_168:
    v110 = 0;
    return v119 ^ v120 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v36 ^ v41 ^ v46 ^ v51 ^ v59 ^ v64 ^ v69 ^ v112 ^ v70 ^ v74 ^ v75 ^ v80 ^ v81 ^ v86 ^ v87 ^ v92 ^ v93 ^ v98 ^ v99 ^ v104 ^ v105 ^ v110;
  }

  v105 = 0;
  if ((*&v73 & 0x8000000) == 0)
  {
    goto LABEL_168;
  }

LABEL_162:
  timeDeltaToDeviceUnlockInSec = self->_timeDeltaToDeviceUnlockInSec;
  if (timeDeltaToDeviceUnlockInSec >= 0.0)
  {
    v107 = timeDeltaToDeviceUnlockInSec;
  }

  else
  {
    v107 = -timeDeltaToDeviceUnlockInSec;
  }

  *v71.i64 = floor(v107 + 0.5);
  v108 = (v107 - *v71.i64) * 1.84467441e19;
  *v72.i64 = *v71.i64 - trunc(*v71.i64 * 5.42101086e-20) * 1.84467441e19;
  v109.f64[0] = NAN;
  v109.f64[1] = NAN;
  v110 = 2654435761u * *vbslq_s8(vnegq_f64(v109), v72, v71).i64;
  if (v108 >= 0.0)
  {
    if (v108 > 0.0)
    {
      v110 += v108;
    }
  }

  else
  {
    v110 -= fabs(v108);
  }

  return v119 ^ v120 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v36 ^ v41 ^ v46 ^ v51 ^ v59 ^ v64 ^ v69 ^ v112 ^ v70 ^ v74 ^ v75 ^ v80 ^ v81 ^ v86 ^ v87 ^ v92 ^ v93 ^ v98 ^ v99 ^ v104 ^ v105 ^ v110;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_70;
  }

  has = self->_has;
  v6 = v4[37];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_70;
  }

  if (*&has)
  {
    firstPassDetectionTimestampInSec = self->_firstPassDetectionTimestampInSec;
    if (firstPassDetectionTimestampInSec != [v4 firstPassDetectionTimestampInSec])
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_70;
  }

  if (v8)
  {
    firstPassPeakScoreHS = self->_firstPassPeakScoreHS;
    [v4 firstPassPeakScoreHS];
    if (firstPassPeakScoreHS != v10)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_70;
  }

  if (v11)
  {
    firstPassPeakScoreJS = self->_firstPassPeakScoreJS;
    [v4 firstPassPeakScoreJS];
    if (firstPassPeakScoreJS != v13)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v14 = (*&has >> 3) & 1;
  if (v14 != ((v6 >> 3) & 1))
  {
    goto LABEL_70;
  }

  if (v14)
  {
    invocationTypeId = self->_invocationTypeId;
    if (invocationTypeId != [v4 invocationTypeId])
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v16 = (*&has >> 4) & 1;
  if (v16 != ((v6 >> 4) & 1))
  {
    goto LABEL_70;
  }

  if (v16)
  {
    triggerScoreHS = self->_triggerScoreHS;
    [v4 triggerScoreHS];
    if (triggerScoreHS != v18)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v19 = (*&has >> 5) & 1;
  if (v19 != ((v6 >> 5) & 1))
  {
    goto LABEL_70;
  }

  if (v19)
  {
    triggerScoreJS = self->_triggerScoreJS;
    [v4 triggerScoreJS];
    if (triggerScoreJS != v21)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v22 = (*&has >> 6) & 1;
  if (v22 != ((v6 >> 6) & 1))
  {
    goto LABEL_70;
  }

  if (v22)
  {
    mitigationScore = self->_mitigationScore;
    [v4 mitigationScore];
    if (mitigationScore != v24)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v25 = (*&has >> 7) & 1;
  if (v25 != ((v6 >> 7) & 1))
  {
    goto LABEL_70;
  }

  if (v25)
  {
    tdSpeakerRecognizerCombinedScore = self->_tdSpeakerRecognizerCombinedScore;
    [v4 tdSpeakerRecognizerCombinedScore];
    if (tdSpeakerRecognizerCombinedScore != v27)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v28 = (*&has >> 8) & 1;
  if (v28 != ((v6 >> 8) & 1))
  {
    goto LABEL_70;
  }

  if (v28)
  {
    triggerScoreHSThreshold = self->_triggerScoreHSThreshold;
    [v4 triggerScoreHSThreshold];
    if (triggerScoreHSThreshold != v30)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v31 = (*&has >> 9) & 1;
  if (v31 != ((v6 >> 9) & 1))
  {
    goto LABEL_70;
  }

  if (v31)
  {
    triggerScoreJSThreshold = self->_triggerScoreJSThreshold;
    [v4 triggerScoreJSThreshold];
    if (triggerScoreJSThreshold != v33)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v34 = (*&has >> 10) & 1;
  if (v34 != ((v6 >> 10) & 1))
  {
    goto LABEL_70;
  }

  if (v34)
  {
    mitigationScoreThreshold = self->_mitigationScoreThreshold;
    [v4 mitigationScoreThreshold];
    if (mitigationScoreThreshold != v36)
    {
      goto LABEL_70;
    }

    has = self->_has;
    v6 = v4[37];
  }

  v37 = (*&has >> 11) & 1;
  if (v37 != ((v6 >> 11) & 1))
  {
    goto LABEL_70;
  }

  if (v37)
  {
    tdSpeakerRecognizerCombinedThreshold = self->_tdSpeakerRecognizerCombinedThreshold;
    [v4 tdSpeakerRecognizerCombinedThreshold];
    if (tdSpeakerRecognizerCombinedThreshold != v39)
    {
      goto LABEL_70;
    }
  }

  v40 = [(IASchemaIAVoiceTriggerEventSummary *)self voiceTriggerConfigVersion];
  v41 = [v4 voiceTriggerConfigVersion];
  if ((v40 != 0) == (v41 == 0))
  {
    goto LABEL_69;
  }

  v42 = [(IASchemaIAVoiceTriggerEventSummary *)self voiceTriggerConfigVersion];
  if (v42)
  {
    v43 = v42;
    v44 = [(IASchemaIAVoiceTriggerEventSummary *)self voiceTriggerConfigVersion];
    v45 = [v4 voiceTriggerConfigVersion];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_70;
    }
  }

  else
  {
  }

  v47 = self->_has;
  v48 = (*&v47 >> 12) & 1;
  v49 = v4[37];
  if (v48 != ((v49 >> 12) & 1))
  {
    goto LABEL_70;
  }

  if (v48)
  {
    userActionTimeThreshold = self->_userActionTimeThreshold;
    [v4 userActionTimeThreshold];
    if (userActionTimeThreshold != v51)
    {
      goto LABEL_70;
    }

    v47 = self->_has;
    v49 = v4[37];
  }

  v52 = (*&v47 >> 13) & 1;
  if (v52 != ((v49 >> 13) & 1))
  {
    goto LABEL_70;
  }

  if (v52)
  {
    hasNextTurn = self->_hasNextTurn;
    if (hasNextTurn != [v4 hasNextTurn])
    {
      goto LABEL_70;
    }

    v47 = self->_has;
    v49 = v4[37];
  }

  v54 = (*&v47 >> 14) & 1;
  if (v54 != ((v49 >> 14) & 1))
  {
    goto LABEL_70;
  }

  if (v54)
  {
    timeDeltaToNextTurnInSec = self->_timeDeltaToNextTurnInSec;
    [v4 timeDeltaToNextTurnInSec];
    if (timeDeltaToNextTurnInSec != v56)
    {
      goto LABEL_70;
    }
  }

  v40 = [(IASchemaIAVoiceTriggerEventSummary *)self nextTurnId];
  v41 = [v4 nextTurnId];
  if ((v40 != 0) == (v41 == 0))
  {
LABEL_69:

    goto LABEL_70;
  }

  v57 = [(IASchemaIAVoiceTriggerEventSummary *)self nextTurnId];
  if (v57)
  {
    v58 = v57;
    v59 = [(IASchemaIAVoiceTriggerEventSummary *)self nextTurnId];
    v60 = [v4 nextTurnId];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_70;
    }
  }

  else
  {
  }

  v64 = self->_has;
  v65 = (*&v64 >> 15) & 1;
  v66 = v4[37];
  if (v65 == ((v66 >> 15) & 1))
  {
    if (v65)
    {
      nextTurnInvocationSource = self->_nextTurnInvocationSource;
      if (nextTurnInvocationSource != [v4 nextTurnInvocationSource])
      {
        goto LABEL_70;
      }

      v64 = self->_has;
      v66 = v4[37];
    }

    v68 = HIWORD(*&v64) & 1;
    if (v68 == (HIWORD(v66) & 1))
    {
      if (v68)
      {
        isNextTurnValid = self->_isNextTurnValid;
        if (isNextTurnValid != [v4 isNextTurnValid])
        {
          goto LABEL_70;
        }

        v64 = self->_has;
        v66 = v4[37];
      }

      v70 = (*&v64 >> 17) & 1;
      if (v70 == ((v66 >> 17) & 1))
      {
        if (v70)
        {
          repetitionSimilarityScore = self->_repetitionSimilarityScore;
          [v4 repetitionSimilarityScore];
          if (repetitionSimilarityScore != v72)
          {
            goto LABEL_70;
          }

          v64 = self->_has;
          v66 = v4[37];
        }

        v73 = (*&v64 >> 18) & 1;
        if (v73 == ((v66 >> 18) & 1))
        {
          if (v73)
          {
            hasNextRejection = self->_hasNextRejection;
            if (hasNextRejection != [v4 hasNextRejection])
            {
              goto LABEL_70;
            }

            v64 = self->_has;
            v66 = v4[37];
          }

          v75 = (*&v64 >> 19) & 1;
          if (v75 == ((v66 >> 19) & 1))
          {
            if (v75)
            {
              timeDeltaToNextRejectionInSec = self->_timeDeltaToNextRejectionInSec;
              [v4 timeDeltaToNextRejectionInSec];
              if (timeDeltaToNextRejectionInSec != v77)
              {
                goto LABEL_70;
              }

              v64 = self->_has;
              v66 = v4[37];
            }

            v78 = (*&v64 >> 20) & 1;
            if (v78 == ((v66 >> 20) & 1))
            {
              if (v78)
              {
                hasAppLaunchEvent = self->_hasAppLaunchEvent;
                if (hasAppLaunchEvent != [v4 hasAppLaunchEvent])
                {
                  goto LABEL_70;
                }

                v64 = self->_has;
                v66 = v4[37];
              }

              v80 = (*&v64 >> 21) & 1;
              if (v80 == ((v66 >> 21) & 1))
              {
                if (v80)
                {
                  timeDeltaToAppLaunchInSec = self->_timeDeltaToAppLaunchInSec;
                  [v4 timeDeltaToAppLaunchInSec];
                  if (timeDeltaToAppLaunchInSec != v82)
                  {
                    goto LABEL_70;
                  }

                  v64 = self->_has;
                  v66 = v4[37];
                }

                v83 = (*&v64 >> 22) & 1;
                if (v83 == ((v66 >> 22) & 1))
                {
                  if (v83)
                  {
                    hasAppIntentEvent = self->_hasAppIntentEvent;
                    if (hasAppIntentEvent != [v4 hasAppIntentEvent])
                    {
                      goto LABEL_70;
                    }

                    v64 = self->_has;
                    v66 = v4[37];
                  }

                  v85 = (*&v64 >> 23) & 1;
                  if (v85 == ((v66 >> 23) & 1))
                  {
                    if (v85)
                    {
                      timeDeltaToAppIntentEventInSec = self->_timeDeltaToAppIntentEventInSec;
                      [v4 timeDeltaToAppIntentEventInSec];
                      if (timeDeltaToAppIntentEventInSec != v87)
                      {
                        goto LABEL_70;
                      }

                      v64 = self->_has;
                      v66 = v4[37];
                    }

                    v88 = HIBYTE(*&v64) & 1;
                    if (v88 == (HIBYTE(v66) & 1))
                    {
                      if (v88)
                      {
                        hasTextInputEvent = self->_hasTextInputEvent;
                        if (hasTextInputEvent != [v4 hasTextInputEvent])
                        {
                          goto LABEL_70;
                        }

                        v64 = self->_has;
                        v66 = v4[37];
                      }

                      v90 = (*&v64 >> 25) & 1;
                      if (v90 == ((v66 >> 25) & 1))
                      {
                        if (v90)
                        {
                          timeDeltaToTextInputInSec = self->_timeDeltaToTextInputInSec;
                          [v4 timeDeltaToTextInputInSec];
                          if (timeDeltaToTextInputInSec != v92)
                          {
                            goto LABEL_70;
                          }

                          v64 = self->_has;
                          v66 = v4[37];
                        }

                        v93 = (*&v64 >> 26) & 1;
                        if (v93 == ((v66 >> 26) & 1))
                        {
                          if (v93)
                          {
                            hasDeviceUnlockEvent = self->_hasDeviceUnlockEvent;
                            if (hasDeviceUnlockEvent != [v4 hasDeviceUnlockEvent])
                            {
                              goto LABEL_70;
                            }

                            v64 = self->_has;
                            v66 = v4[37];
                          }

                          v95 = (*&v64 >> 27) & 1;
                          if (v95 == ((v66 >> 27) & 1))
                          {
                            if (!v95 || (timeDeltaToDeviceUnlockInSec = self->_timeDeltaToDeviceUnlockInSec, [v4 timeDeltaToDeviceUnlockInSec], timeDeltaToDeviceUnlockInSec == v97))
                            {
                              v62 = 1;
                              goto LABEL_71;
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
    }
  }

LABEL_70:
  v62 = 0;
LABEL_71:

  return v62;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (*&has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_49:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    PBDataWriterWriteFloatField();
  }

LABEL_14:
  v5 = [(IASchemaIAVoiceTriggerEventSummary *)self voiceTriggerConfigVersion];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x1000) != 0)
  {
    PBDataWriterWriteFloatField();
    v6 = self->_has;
    if ((*&v6 & 0x2000) == 0)
    {
LABEL_18:
      if ((*&v6 & 0x4000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&v6 & 0x2000) == 0)
  {
    goto LABEL_18;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_19:
    PBDataWriterWriteFloatField();
  }

LABEL_20:
  v7 = [(IASchemaIAVoiceTriggerEventSummary *)self nextTurnId];

  if (v7)
  {
    v8 = [(IASchemaIAVoiceTriggerEventSummary *)self nextTurnId];
    PBDataWriterWriteSubmessage();
  }

  v9 = self->_has;
  if ((*&v9 & 0x8000) != 0)
  {
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((*&v9 & 0x10000) == 0)
    {
LABEL_24:
      if ((*&v9 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v9 & 0x10000) == 0)
  {
    goto LABEL_24;
  }

  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x20000) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteFloatField();
  v9 = self->_has;
  if ((*&v9 & 0x40000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteFloatField();
  v9 = self->_has;
  if ((*&v9 & 0x100000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x200000) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteFloatField();
  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_31:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteFloatField();
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&v9 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x2000000) == 0)
  {
LABEL_33:
    if ((*&v9 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteFloatField();
  v9 = self->_has;
  if ((*&v9 & 0x4000000) == 0)
  {
LABEL_34:
    if ((*&v9 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_65:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x8000000) != 0)
  {
LABEL_35:
    PBDataWriterWriteFloatField();
  }

LABEL_36:
}

- (void)setHasTimeDeltaToDeviceUnlockInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasHasDeviceUnlockEvent:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasTimeDeltaToTextInputInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasHasTextInputEvent:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasTimeDeltaToAppIntentEventInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasHasAppIntentEvent:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasTimeDeltaToAppLaunchInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasHasAppLaunchEvent:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasTimeDeltaToNextRejectionInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasHasNextRejection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasRepetitionSimilarityScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasIsNextTurnValid:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasNextTurnInvocationSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasTimeDeltaToNextTurnInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasHasNextTurn:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasUserActionTimeThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTdSpeakerRecognizerCombinedThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasMitigationScoreThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasTriggerScoreJSThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTriggerScoreHSThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasTdSpeakerRecognizerCombinedScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMitigationScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTriggerScoreJS:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasTriggerScoreHS:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasInvocationTypeId:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasFirstPassPeakScoreJS:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasFirstPassPeakScoreHS:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IASchemaIAVoiceTriggerEventSummary;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IASchemaIAVoiceTriggerEventSummary *)self nextTurnId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IASchemaIAVoiceTriggerEventSummary *)self deleteNextTurnId];
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