@interface ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)initWithDictionary:(id)a3;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAsrTask:(BOOL)a3;
- (void)setHasAudioCodec:(BOOL)a3;
- (void)setHasAudioSkippedNumSamples:(BOOL)a3;
- (void)setHasAudioSource:(BOOL)a3;
- (void)setHasInvocationSource:(BOOL)a3;
- (void)setHasIsDeviceHandHeld:(BOOL)a3;
- (void)setHasIsMediaPlaying:(BOOL)a3;
- (void)setHasIsPersonalRequest:(BOOL)a3;
- (void)setHasIsPersonalizedRequest:(BOOL)a3;
- (void)setHasIsWakeFromSleep:(BOOL)a3;
- (void)setHasMotionActivity:(BOOL)a3;
- (void)setHasOrchCancelledReason:(BOOL)a3;
- (void)setHasStartDatestampInDaysSince1970:(BOOL)a3;
- (void)setHasTriggerPhrase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported;
  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)&v64 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isEnrollmentSample"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsEnrollmentSample:](v5, "setIsEnrollmentSample:", [v6 BOOLValue]);
    }

    v52 = v6;
    v7 = [v4 objectForKeyedSubscript:@"startDatestampInDaysSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setStartDatestampInDaysSince1970:](v5, "setStartDatestampInDaysSince1970:", [v7 unsignedLongLongValue]);
    }

    v51 = v7;
    v8 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setDeviceType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setSystemBuild:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setAudioInterfaceVendorId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"firstPartyAudioInterfaceProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setFirstPartyAudioInterfaceProductId:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaISOLocale alloc] initWithDictionary:v16];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setSiriInputLocale:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"invocationSource"];
    objc_opt_class();
    v63 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setInvocationSource:](v5, "setInvocationSource:", [v18 intValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"motionActivity"];
    objc_opt_class();
    v62 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setMotionActivity:](v5, "setMotionActivity:", [v19 intValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"isWakeFromSleep"];
    objc_opt_class();
    v61 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsWakeFromSleep:](v5, "setIsWakeFromSleep:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"isMediaPlaying"];
    objc_opt_class();
    v60 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsMediaPlaying:](v5, "setIsMediaPlaying:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"isDeviceHandHeld"];
    objc_opt_class();
    v59 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsDeviceHandHeld:](v5, "setIsDeviceHandHeld:", [v22 BOOLValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"audioCodec"];
    objc_opt_class();
    v58 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setAudioCodec:](v5, "setAudioCodec:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"audioSource"];
    objc_opt_class();
    v57 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setAudioSource:](v5, "setAudioSource:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"asrTask"];
    objc_opt_class();
    v56 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setAsrTask:](v5, "setAsrTask:", [v25 intValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"audioSkippedNumSamples"];
    objc_opt_class();
    v55 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setAudioSkippedNumSamples:](v5, "setAudioSkippedNumSamples:", [v26 unsignedLongLongValue]);
    }

    v27 = [v4 objectForKeyedSubscript:@"preItn1Best"];
    objc_opt_class();
    v54 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setPreItn1Best:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"subDomain"];
    objc_opt_class();
    v53 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setSubDomain:v30];
    }

    v50 = v8;
    v31 = [v4 objectForKeyedSubscript:@"isPersonalRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsPersonalRequest:](v5, "setIsPersonalRequest:", [v31 BOOLValue]);
    }

    v49 = v10;
    v32 = [v4 objectForKeyedSubscript:{@"isPersonalizedRequest", v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsPersonalizedRequest:](v5, "setIsPersonalizedRequest:", [v32 BOOLValue]);
    }

    v48 = v12;
    v33 = [v4 objectForKeyedSubscript:@"responseId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setResponseId:v34];
    }

    v47 = v14;
    v35 = [v4 objectForKeyedSubscript:@"orchCancelledReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setOrchCancelledReason:](v5, "setOrchCancelledReason:", [v35 intValue]);
    }

    v46 = v16;
    v36 = [v4 objectForKeyedSubscript:@"audioId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[SISchemaUUID alloc] initWithDictionary:v36];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setAudioId:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setTriggerPhrase:](v5, "setTriggerPhrase:", [v38 intValue]);
    }

    v39 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[SISchemaLocation alloc] initWithDictionary:v39];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setLocation:v40];
    }

    v41 = [v4 objectForKeyedSubscript:@"postItn1Best"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [v41 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setPostItn1Best:v42];
    }

    v43 = v5;
  }

  return v5;
}

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self dictionaryRepresentation];
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
  if ((has & 0x200) != 0)
  {
    v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self asrTask]- 1;
    if (v5 > 7)
    {
      v6 = @"ASRDATAPACKTASK_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DE1B0[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"asrTask"];
    has = self->_has;
  }

  if ((has & 0x80) != 0)
  {
    v7 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioCodec]- 1;
    if (v7 > 0xA)
    {
      v8 = @"MHASRAUDIOCODEC_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DE1F0[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"audioCodec"];
  }

  if (self->_audioId)
  {
    v9 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"audioId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"audioId"];
    }
  }

  if (self->_audioInterfaceVendorId)
  {
    v12 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"audioInterfaceVendorId"];
  }

  v14 = self->_has;
  if ((v14 & 0x400) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported audioSkippedNumSamples](self, "audioSkippedNumSamples")}];
    [v3 setObject:v15 forKeyedSubscript:@"audioSkippedNumSamples"];

    v14 = self->_has;
  }

  if ((v14 & 0x100) != 0)
  {
    v16 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioSource]- 1;
    if (v16 > 7)
    {
      v17 = @"MHASSISTANTDAEMONAUDIOSOURCE_UNKNOWN";
    }

    else
    {
      v17 = off_1E78DE248[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"audioSource"];
  }

  if (self->_deviceType)
  {
    v18 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"deviceType"];
  }

  if (self->_firstPartyAudioInterfaceProductId)
  {
    v20 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"firstPartyAudioInterfaceProductId"];
  }

  v22 = self->_has;
  if ((v22 & 4) != 0)
  {
    v26 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self invocationSource]- 1;
    if (v26 > 0x66)
    {
      v27 = @"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE";
    }

    else
    {
      v27 = off_1E78DE288[v26];
    }

    [v3 setObject:v27 forKeyedSubscript:@"invocationSource"];
    v22 = self->_has;
    if ((v22 & 0x40) == 0)
    {
LABEL_31:
      if ((v22 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_45;
    }
  }

  else if ((v22 & 0x40) == 0)
  {
    goto LABEL_31;
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported isDeviceHandHeld](self, "isDeviceHandHeld")}];
  [v3 setObject:v28 forKeyedSubscript:@"isDeviceHandHeld"];

  v22 = self->_has;
  if ((v22 & 1) == 0)
  {
LABEL_32:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_46;
  }

LABEL_45:
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported isEnrollmentSample](self, "isEnrollmentSample")}];
  [v3 setObject:v29 forKeyedSubscript:@"isEnrollmentSample"];

  v22 = self->_has;
  if ((v22 & 0x20) == 0)
  {
LABEL_33:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_46:
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported isMediaPlaying](self, "isMediaPlaying")}];
  [v3 setObject:v30 forKeyedSubscript:@"isMediaPlaying"];

  v22 = self->_has;
  if ((v22 & 0x800) == 0)
  {
LABEL_34:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

LABEL_47:
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported isPersonalRequest](self, "isPersonalRequest")}];
  [v3 setObject:v31 forKeyedSubscript:@"isPersonalRequest"];

  v22 = self->_has;
  if ((v22 & 0x1000) == 0)
  {
LABEL_35:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_48:
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported isPersonalizedRequest](self, "isPersonalizedRequest")}];
  [v3 setObject:v32 forKeyedSubscript:@"isPersonalizedRequest"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_36:
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported isWakeFromSleep](self, "isWakeFromSleep")}];
    [v3 setObject:v23 forKeyedSubscript:@"isWakeFromSleep"];
  }

LABEL_37:
  if (self->_location)
  {
    v24 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"location"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"location"];
    }
  }

  v34 = self->_has;
  if ((v34 & 8) != 0)
  {
    v35 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self motionActivity]- 1;
    if (v35 > 4)
    {
      v36 = @"ORCHMOTIONACTIVITY_UNKNOWN";
    }

    else
    {
      v36 = off_1E78DE5C0[v35];
    }

    [v3 setObject:v36 forKeyedSubscript:@"motionActivity"];
    v34 = self->_has;
  }

  if ((v34 & 0x2000) != 0)
  {
    v37 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self orchCancelledReason];
    v38 = @"ORCHREQUESTCANCELLATIONREASON_UNKNOWN";
    if (v37 == 1)
    {
      v38 = @"ORCHREQUESTCANCELLATIONREASON_MITIGATED";
    }

    if (v37 == 2)
    {
      v39 = @"ORCHREQUESTCANCELLATIONREASON_CANCEL_COMMAND";
    }

    else
    {
      v39 = v38;
    }

    [v3 setObject:v39 forKeyedSubscript:@"orchCancelledReason"];
  }

  if (self->_postItn1Best)
  {
    v40 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];
    v41 = [v40 copy];
    [v3 setObject:v41 forKeyedSubscript:@"postItn1Best"];
  }

  if (self->_preItn1Best)
  {
    v42 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];
    v43 = [v42 copy];
    [v3 setObject:v43 forKeyedSubscript:@"preItn1Best"];
  }

  if (self->_responseId)
  {
    v44 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];
    v45 = [v44 copy];
    [v3 setObject:v45 forKeyedSubscript:@"responseId"];
  }

  if (self->_siriInputLocale)
  {
    v46 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported startDatestampInDaysSince1970](self, "startDatestampInDaysSince1970")}];
    [v3 setObject:v49 forKeyedSubscript:@"startDatestampInDaysSince1970"];
  }

  if (self->_subDomain)
  {
    v50 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"subDomain"];
  }

  if (self->_systemBuild)
  {
    v52 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];
    v53 = [v52 copy];
    [v3 setObject:v53 forKeyedSubscript:@"systemBuild"];
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    v54 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self triggerPhrase];
    v55 = @"TRIGGERPHRASE_UNKNOWN";
    if (v54 == 1)
    {
      v55 = @"TRIGGERPHRASE_HEY_SIRI";
    }

    if (v54 == 2)
    {
      v56 = @"TRIGGERPHRASE_SIRI";
    }

    else
    {
      v56 = v55;
    }

    [v3 setObject:v56 forKeyedSubscript:@"triggerPhrase"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v57 = v3;

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v31 = 2654435761 * self->_isEnrollmentSample;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = 0;
    if ((has & 2) != 0)
    {
LABEL_3:
      v30 = 2654435761u * self->_startDatestampInDaysSince1970;
      goto LABEL_6;
    }
  }

  v30 = 0;
LABEL_6:
  v29 = [(NSString *)self->_deviceType hash];
  v28 = [(NSString *)self->_systemBuild hash];
  v27 = [(NSString *)self->_audioInterfaceVendorId hash];
  v26 = [(NSString *)self->_firstPartyAudioInterfaceProductId hash];
  v25 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  v4 = self->_has;
  if ((v4 & 4) != 0)
  {
    v24 = 2654435761 * self->_invocationSource;
    if ((v4 & 8) != 0)
    {
LABEL_8:
      v23 = 2654435761 * self->_motionActivity;
      if ((v4 & 0x10) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v24 = 0;
    if ((v4 & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  v23 = 0;
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v22 = 2654435761 * self->_isWakeFromSleep;
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v22 = 0;
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v21 = 2654435761 * self->_isMediaPlaying;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v21 = 0;
  if ((v4 & 0x40) != 0)
  {
LABEL_11:
    v20 = 2654435761 * self->_isDeviceHandHeld;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v20 = 0;
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v19 = 2654435761 * self->_audioCodec;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v19 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    v18 = 2654435761 * self->_audioSource;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v17 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_22:
  v18 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  v17 = 2654435761 * self->_asrTask;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_15:
    v5 = 2654435761u * self->_audioSkippedNumSamples;
    goto LABEL_25;
  }

LABEL_24:
  v5 = 0;
LABEL_25:
  v6 = [(NSString *)self->_preItn1Best hash];
  v7 = [(NSString *)self->_subDomain hash];
  if ((*&self->_has & 0x800) != 0)
  {
    v8 = 2654435761 * self->_isPersonalRequest;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_27:
      v9 = 2654435761 * self->_isPersonalizedRequest;
      goto LABEL_30;
    }
  }

  v9 = 0;
LABEL_30:
  v10 = [(NSString *)self->_responseId hash];
  if ((*&self->_has & 0x2000) != 0)
  {
    v11 = 2654435761 * self->_orchCancelledReason;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SISchemaUUID *)self->_audioId hash];
  if ((*&self->_has & 0x4000) != 0)
  {
    v13 = 2654435761 * self->_triggerPhrase;
  }

  else
  {
    v13 = 0;
  }

  v14 = v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  v15 = [(SISchemaLocation *)self->_location hash];
  return v14 ^ v15 ^ [(NSString *)self->_postItn1Best hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_112;
  }

  has = self->_has;
  v6 = v4[84];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_112;
  }

  if (*&has)
  {
    isEnrollmentSample = self->_isEnrollmentSample;
    if (isEnrollmentSample != [v4 isEnrollmentSample])
    {
      goto LABEL_112;
    }

    has = self->_has;
    v6 = v4[84];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_112;
  }

  if (v8)
  {
    startDatestampInDaysSince1970 = self->_startDatestampInDaysSince1970;
    if (startDatestampInDaysSince1970 != [v4 startDatestampInDaysSince1970])
    {
      goto LABEL_112;
    }
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];
  v11 = [v4 deviceType];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v12 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];
    v15 = [v4 deviceType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];
  v11 = [v4 systemBuild];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v17 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];
    v20 = [v4 systemBuild];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];
  v11 = [v4 audioInterfaceVendorId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v22 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];
    v25 = [v4 audioInterfaceVendorId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];
  v11 = [v4 firstPartyAudioInterfaceProductId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v27 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];
  if (v27)
  {
    v28 = v27;
    v29 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];
    v30 = [v4 firstPartyAudioInterfaceProductId];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
  v11 = [v4 siriInputLocale];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v32 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
  if (v32)
  {
    v33 = v32;
    v34 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
    v35 = [v4 siriInputLocale];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v37 = self->_has;
  v38 = (*&v37 >> 2) & 1;
  v39 = v4[84];
  if (v38 != ((v39 >> 2) & 1))
  {
    goto LABEL_112;
  }

  if (v38)
  {
    invocationSource = self->_invocationSource;
    if (invocationSource != [v4 invocationSource])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = v4[84];
  }

  v41 = (*&v37 >> 3) & 1;
  if (v41 != ((v39 >> 3) & 1))
  {
    goto LABEL_112;
  }

  if (v41)
  {
    motionActivity = self->_motionActivity;
    if (motionActivity != [v4 motionActivity])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = v4[84];
  }

  v43 = (*&v37 >> 4) & 1;
  if (v43 != ((v39 >> 4) & 1))
  {
    goto LABEL_112;
  }

  if (v43)
  {
    isWakeFromSleep = self->_isWakeFromSleep;
    if (isWakeFromSleep != [v4 isWakeFromSleep])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = v4[84];
  }

  v45 = (*&v37 >> 5) & 1;
  if (v45 != ((v39 >> 5) & 1))
  {
    goto LABEL_112;
  }

  if (v45)
  {
    isMediaPlaying = self->_isMediaPlaying;
    if (isMediaPlaying != [v4 isMediaPlaying])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = v4[84];
  }

  v47 = (*&v37 >> 6) & 1;
  if (v47 != ((v39 >> 6) & 1))
  {
    goto LABEL_112;
  }

  if (v47)
  {
    isDeviceHandHeld = self->_isDeviceHandHeld;
    if (isDeviceHandHeld != [v4 isDeviceHandHeld])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = v4[84];
  }

  v49 = (*&v37 >> 7) & 1;
  if (v49 != ((v39 >> 7) & 1))
  {
    goto LABEL_112;
  }

  if (v49)
  {
    audioCodec = self->_audioCodec;
    if (audioCodec != [v4 audioCodec])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = v4[84];
  }

  v51 = (*&v37 >> 8) & 1;
  if (v51 != ((v39 >> 8) & 1))
  {
    goto LABEL_112;
  }

  if (v51)
  {
    audioSource = self->_audioSource;
    if (audioSource != [v4 audioSource])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = v4[84];
  }

  v53 = (*&v37 >> 9) & 1;
  if (v53 != ((v39 >> 9) & 1))
  {
    goto LABEL_112;
  }

  if (v53)
  {
    asrTask = self->_asrTask;
    if (asrTask != [v4 asrTask])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = v4[84];
  }

  v55 = (*&v37 >> 10) & 1;
  if (v55 != ((v39 >> 10) & 1))
  {
    goto LABEL_112;
  }

  if (v55)
  {
    audioSkippedNumSamples = self->_audioSkippedNumSamples;
    if (audioSkippedNumSamples != [v4 audioSkippedNumSamples])
    {
      goto LABEL_112;
    }
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];
  v11 = [v4 preItn1Best];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v57 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];
  if (v57)
  {
    v58 = v57;
    v59 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];
    v60 = [v4 preItn1Best];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];
  v11 = [v4 subDomain];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v62 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];
  if (v62)
  {
    v63 = v62;
    v64 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];
    v65 = [v4 subDomain];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v67 = self->_has;
  v68 = (*&v67 >> 11) & 1;
  v69 = v4[84];
  if (v68 != ((v69 >> 11) & 1))
  {
    goto LABEL_112;
  }

  if (v68)
  {
    isPersonalRequest = self->_isPersonalRequest;
    if (isPersonalRequest != [v4 isPersonalRequest])
    {
      goto LABEL_112;
    }

    v67 = self->_has;
    v69 = v4[84];
  }

  v71 = (*&v67 >> 12) & 1;
  if (v71 != ((v69 >> 12) & 1))
  {
    goto LABEL_112;
  }

  if (v71)
  {
    isPersonalizedRequest = self->_isPersonalizedRequest;
    if (isPersonalizedRequest != [v4 isPersonalizedRequest])
    {
      goto LABEL_112;
    }
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];
  v11 = [v4 responseId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v73 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];
  if (v73)
  {
    v74 = v73;
    v75 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];
    v76 = [v4 responseId];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v78 = (*&self->_has >> 13) & 1;
  if (v78 != ((v4[84] >> 13) & 1))
  {
    goto LABEL_112;
  }

  if (v78)
  {
    orchCancelledReason = self->_orchCancelledReason;
    if (orchCancelledReason != [v4 orchCancelledReason])
    {
      goto LABEL_112;
    }
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
  v11 = [v4 audioId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v80 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
  if (v80)
  {
    v81 = v80;
    v82 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
    v83 = [v4 audioId];
    v84 = [v82 isEqual:v83];

    if (!v84)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v85 = (*&self->_has >> 14) & 1;
  if (v85 != ((v4[84] >> 14) & 1))
  {
    goto LABEL_112;
  }

  if (v85)
  {
    triggerPhrase = self->_triggerPhrase;
    if (triggerPhrase != [v4 triggerPhrase])
    {
      goto LABEL_112;
    }
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
  v11 = [v4 location];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_111;
  }

  v87 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
  if (v87)
  {
    v88 = v87;
    v89 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
    v90 = [v4 location];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];
  v11 = [v4 postItn1Best];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_111:

    goto LABEL_112;
  }

  v92 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];
  if (!v92)
  {

LABEL_115:
    v97 = 1;
    goto LABEL_113;
  }

  v93 = v92;
  v94 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];
  v95 = [v4 postItn1Best];
  v96 = [v94 isEqual:v95];

  if (v96)
  {
    goto LABEL_115;
  }

LABEL_112:
  v97 = 0;
LABEL_113:

  return v97;
}

- (void)writeTo:(id)a3
{
  v22 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];

  if (v9)
  {
    v10 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v11 = self->_has;
    if ((v11 & 8) == 0)
    {
LABEL_17:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_17;
  }

  PBDataWriterWriteInt32Field();
  v11 = self->_has;
  if ((v11 & 0x10) == 0)
  {
LABEL_18:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteBOOLField();
  v11 = self->_has;
  if ((v11 & 0x20) == 0)
  {
LABEL_19:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  PBDataWriterWriteBOOLField();
  v11 = self->_has;
  if ((v11 & 0x40) == 0)
  {
LABEL_20:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  PBDataWriterWriteBOOLField();
  v11 = self->_has;
  if ((v11 & 0x80) == 0)
  {
LABEL_21:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteInt32Field();
  v11 = self->_has;
  if ((v11 & 0x100) == 0)
  {
LABEL_22:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteInt32Field();
  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_23:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_55:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_24:
    PBDataWriterWriteUint64Field();
  }

LABEL_25:
  v12 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];

  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  v14 = self->_has;
  if ((v14 & 0x800) != 0)
  {
    PBDataWriterWriteBOOLField();
    v14 = self->_has;
  }

  if ((v14 & 0x1000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v15 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];

  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v16 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];

  if (v16)
  {
    v17 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v18 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];

  if (v18)
  {
    v19 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];

  v21 = v22;
  if (v20)
  {
    PBDataWriterWriteStringField();
    v21 = v22;
  }
}

- (void)setHasTriggerPhrase:(BOOL)a3
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

- (void)setHasOrchCancelledReason:(BOOL)a3
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

- (void)setHasIsPersonalizedRequest:(BOOL)a3
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

- (void)setHasIsPersonalRequest:(BOOL)a3
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

- (void)setHasAudioSkippedNumSamples:(BOOL)a3
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

- (void)setHasAsrTask:(BOOL)a3
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

- (void)setHasAudioSource:(BOOL)a3
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

- (void)setHasAudioCodec:(BOOL)a3
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

- (void)setHasIsDeviceHandHeld:(BOOL)a3
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

- (void)setHasIsMediaPlaying:(BOOL)a3
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

- (void)setHasIsWakeFromSleep:(BOOL)a3
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

- (void)setHasMotionActivity:(BOOL)a3
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

- (void)setHasInvocationSource:(BOOL)a3
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

- (void)setHasStartDatestampInDaysSince1970:(BOOL)a3
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
  v16.receiver = self;
  v16.super_class = ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deleteSiriInputLocale];
  }

  v9 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deleteAudioId];
  }

  v12 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deleteLocation];
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