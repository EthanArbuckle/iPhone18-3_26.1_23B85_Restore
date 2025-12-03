@interface ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)initWithDictionary:(id)dictionary;
- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAsrTask:(BOOL)task;
- (void)setHasAudioCodec:(BOOL)codec;
- (void)setHasAudioSkippedNumSamples:(BOOL)samples;
- (void)setHasAudioSource:(BOOL)source;
- (void)setHasInvocationSource:(BOOL)source;
- (void)setHasIsDeviceHandHeld:(BOOL)held;
- (void)setHasIsMediaPlaying:(BOOL)playing;
- (void)setHasIsPersonalRequest:(BOOL)request;
- (void)setHasIsPersonalizedRequest:(BOOL)request;
- (void)setHasIsWakeFromSleep:(BOOL)sleep;
- (void)setHasMotionActivity:(BOOL)activity;
- (void)setHasOrchCancelledReason:(BOOL)reason;
- (void)setHasStartDatestampInDaysSince1970:(BOOL)since1970;
- (void)setHasTriggerPhrase:(BOOL)phrase;
- (void)writeTo:(id)to;
@end

@implementation ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v64.receiver = self;
  v64.super_class = ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported;
  v5 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)&v64 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isEnrollmentSample"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsEnrollmentSample:](v5, "setIsEnrollmentSample:", [v6 BOOLValue]);
    }

    v52 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"startDatestampInDaysSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setStartDatestampInDaysSince1970:](v5, "setStartDatestampInDaysSince1970:", [v7 unsignedLongLongValue]);
    }

    v51 = v7;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setDeviceType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setSystemBuild:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setAudioInterfaceVendorId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"firstPartyAudioInterfaceProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setFirstPartyAudioInterfaceProductId:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaISOLocale alloc] initWithDictionary:v16];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setSiriInputLocale:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"invocationSource"];
    objc_opt_class();
    v63 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setInvocationSource:](v5, "setInvocationSource:", [v18 intValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"motionActivity"];
    objc_opt_class();
    v62 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setMotionActivity:](v5, "setMotionActivity:", [v19 intValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isWakeFromSleep"];
    objc_opt_class();
    v61 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsWakeFromSleep:](v5, "setIsWakeFromSleep:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"isMediaPlaying"];
    objc_opt_class();
    v60 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsMediaPlaying:](v5, "setIsMediaPlaying:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isDeviceHandHeld"];
    objc_opt_class();
    v59 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsDeviceHandHeld:](v5, "setIsDeviceHandHeld:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"audioCodec"];
    objc_opt_class();
    v58 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setAudioCodec:](v5, "setAudioCodec:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"audioSource"];
    objc_opt_class();
    v57 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setAudioSource:](v5, "setAudioSource:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"asrTask"];
    objc_opt_class();
    v56 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setAsrTask:](v5, "setAsrTask:", [v25 intValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"audioSkippedNumSamples"];
    objc_opt_class();
    v55 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setAudioSkippedNumSamples:](v5, "setAudioSkippedNumSamples:", [v26 unsignedLongLongValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"preItn1Best"];
    objc_opt_class();
    v54 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setPreItn1Best:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"subDomain"];
    objc_opt_class();
    v53 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setSubDomain:v30];
    }

    v50 = v8;
    v31 = [dictionaryCopy objectForKeyedSubscript:@"isPersonalRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsPersonalRequest:](v5, "setIsPersonalRequest:", [v31 BOOLValue]);
    }

    v49 = v10;
    v32 = [dictionaryCopy objectForKeyedSubscript:{@"isPersonalizedRequest", v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setIsPersonalizedRequest:](v5, "setIsPersonalizedRequest:", [v32 BOOLValue]);
    }

    v48 = v12;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"responseId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 copy];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setResponseId:v34];
    }

    v47 = v14;
    v35 = [dictionaryCopy objectForKeyedSubscript:@"orchCancelledReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setOrchCancelledReason:](v5, "setOrchCancelledReason:", [v35 intValue]);
    }

    v46 = v16;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"audioId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[SISchemaUUID alloc] initWithDictionary:v36];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setAudioId:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported setTriggerPhrase:](v5, "setTriggerPhrase:", [v38 intValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[SISchemaLocation alloc] initWithDictionary:v39];
      [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)v5 setLocation:v40];
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"postItn1Best"];
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

- (ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self dictionaryRepresentation];
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

    [dictionary setObject:v6 forKeyedSubscript:@"asrTask"];
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

    [dictionary setObject:v8 forKeyedSubscript:@"audioCodec"];
  }

  if (self->_audioId)
  {
    audioId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
    dictionaryRepresentation = [audioId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioId"];
    }
  }

  if (self->_audioInterfaceVendorId)
  {
    audioInterfaceVendorId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];
    v13 = [audioInterfaceVendorId copy];
    [dictionary setObject:v13 forKeyedSubscript:@"audioInterfaceVendorId"];
  }

  v14 = self->_has;
  if ((v14 & 0x400) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported audioSkippedNumSamples](self, "audioSkippedNumSamples")}];
    [dictionary setObject:v15 forKeyedSubscript:@"audioSkippedNumSamples"];

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

    [dictionary setObject:v17 forKeyedSubscript:@"audioSource"];
  }

  if (self->_deviceType)
  {
    deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];
    v19 = [deviceType copy];
    [dictionary setObject:v19 forKeyedSubscript:@"deviceType"];
  }

  if (self->_firstPartyAudioInterfaceProductId)
  {
    firstPartyAudioInterfaceProductId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];
    v21 = [firstPartyAudioInterfaceProductId copy];
    [dictionary setObject:v21 forKeyedSubscript:@"firstPartyAudioInterfaceProductId"];
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

    [dictionary setObject:v27 forKeyedSubscript:@"invocationSource"];
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
  [dictionary setObject:v28 forKeyedSubscript:@"isDeviceHandHeld"];

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
  [dictionary setObject:v29 forKeyedSubscript:@"isEnrollmentSample"];

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
  [dictionary setObject:v30 forKeyedSubscript:@"isMediaPlaying"];

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
  [dictionary setObject:v31 forKeyedSubscript:@"isPersonalRequest"];

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
  [dictionary setObject:v32 forKeyedSubscript:@"isPersonalizedRequest"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_36:
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported isWakeFromSleep](self, "isWakeFromSleep")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isWakeFromSleep"];
  }

LABEL_37:
  if (self->_location)
  {
    location = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
    dictionaryRepresentation2 = [location dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"location"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"location"];
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

    [dictionary setObject:v36 forKeyedSubscript:@"motionActivity"];
    v34 = self->_has;
  }

  if ((v34 & 0x2000) != 0)
  {
    orchCancelledReason = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self orchCancelledReason];
    v38 = @"ORCHREQUESTCANCELLATIONREASON_UNKNOWN";
    if (orchCancelledReason == 1)
    {
      v38 = @"ORCHREQUESTCANCELLATIONREASON_MITIGATED";
    }

    if (orchCancelledReason == 2)
    {
      v39 = @"ORCHREQUESTCANCELLATIONREASON_CANCEL_COMMAND";
    }

    else
    {
      v39 = v38;
    }

    [dictionary setObject:v39 forKeyedSubscript:@"orchCancelledReason"];
  }

  if (self->_postItn1Best)
  {
    postItn1Best = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];
    v41 = [postItn1Best copy];
    [dictionary setObject:v41 forKeyedSubscript:@"postItn1Best"];
  }

  if (self->_preItn1Best)
  {
    preItn1Best = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];
    v43 = [preItn1Best copy];
    [dictionary setObject:v43 forKeyedSubscript:@"preItn1Best"];
  }

  if (self->_responseId)
  {
    responseId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];
    v45 = [responseId copy];
    [dictionary setObject:v45 forKeyedSubscript:@"responseId"];
  }

  if (self->_siriInputLocale)
  {
    siriInputLocale = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
    dictionaryRepresentation3 = [siriInputLocale dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported startDatestampInDaysSince1970](self, "startDatestampInDaysSince1970")}];
    [dictionary setObject:v49 forKeyedSubscript:@"startDatestampInDaysSince1970"];
  }

  if (self->_subDomain)
  {
    subDomain = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];
    v51 = [subDomain copy];
    [dictionary setObject:v51 forKeyedSubscript:@"subDomain"];
  }

  if (self->_systemBuild)
  {
    systemBuild = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];
    v53 = [systemBuild copy];
    [dictionary setObject:v53 forKeyedSubscript:@"systemBuild"];
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    triggerPhrase = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self triggerPhrase];
    v55 = @"TRIGGERPHRASE_UNKNOWN";
    if (triggerPhrase == 1)
    {
      v55 = @"TRIGGERPHRASE_HEY_SIRI";
    }

    if (triggerPhrase == 2)
    {
      v56 = @"TRIGGERPHRASE_SIRI";
    }

    else
    {
      v56 = v55;
    }

    [dictionary setObject:v56 forKeyedSubscript:@"triggerPhrase"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v57 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_112;
  }

  has = self->_has;
  v6 = equalCopy[84];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_112;
  }

  if (*&has)
  {
    isEnrollmentSample = self->_isEnrollmentSample;
    if (isEnrollmentSample != [equalCopy isEnrollmentSample])
    {
      goto LABEL_112;
    }

    has = self->_has;
    v6 = equalCopy[84];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_112;
  }

  if (v8)
  {
    startDatestampInDaysSince1970 = self->_startDatestampInDaysSince1970;
    if (startDatestampInDaysSince1970 != [equalCopy startDatestampInDaysSince1970])
    {
      goto LABEL_112;
    }
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];
  deviceType2 = [equalCopy deviceType];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  deviceType3 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];
  if (deviceType3)
  {
    v13 = deviceType3;
    deviceType4 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];
    deviceType5 = [equalCopy deviceType];
    v16 = [deviceType4 isEqual:deviceType5];

    if (!v16)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];
  deviceType2 = [equalCopy systemBuild];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  systemBuild = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];
  if (systemBuild)
  {
    v18 = systemBuild;
    systemBuild2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];
    systemBuild3 = [equalCopy systemBuild];
    v21 = [systemBuild2 isEqual:systemBuild3];

    if (!v21)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];
  deviceType2 = [equalCopy audioInterfaceVendorId];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  audioInterfaceVendorId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];
  if (audioInterfaceVendorId)
  {
    v23 = audioInterfaceVendorId;
    audioInterfaceVendorId2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];
    audioInterfaceVendorId3 = [equalCopy audioInterfaceVendorId];
    v26 = [audioInterfaceVendorId2 isEqual:audioInterfaceVendorId3];

    if (!v26)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];
  deviceType2 = [equalCopy firstPartyAudioInterfaceProductId];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  firstPartyAudioInterfaceProductId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];
  if (firstPartyAudioInterfaceProductId)
  {
    v28 = firstPartyAudioInterfaceProductId;
    firstPartyAudioInterfaceProductId2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];
    firstPartyAudioInterfaceProductId3 = [equalCopy firstPartyAudioInterfaceProductId];
    v31 = [firstPartyAudioInterfaceProductId2 isEqual:firstPartyAudioInterfaceProductId3];

    if (!v31)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
  deviceType2 = [equalCopy siriInputLocale];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  siriInputLocale = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
  if (siriInputLocale)
  {
    v33 = siriInputLocale;
    siriInputLocale2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
    siriInputLocale3 = [equalCopy siriInputLocale];
    v36 = [siriInputLocale2 isEqual:siriInputLocale3];

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
  v39 = equalCopy[84];
  if (v38 != ((v39 >> 2) & 1))
  {
    goto LABEL_112;
  }

  if (v38)
  {
    invocationSource = self->_invocationSource;
    if (invocationSource != [equalCopy invocationSource])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = equalCopy[84];
  }

  v41 = (*&v37 >> 3) & 1;
  if (v41 != ((v39 >> 3) & 1))
  {
    goto LABEL_112;
  }

  if (v41)
  {
    motionActivity = self->_motionActivity;
    if (motionActivity != [equalCopy motionActivity])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = equalCopy[84];
  }

  v43 = (*&v37 >> 4) & 1;
  if (v43 != ((v39 >> 4) & 1))
  {
    goto LABEL_112;
  }

  if (v43)
  {
    isWakeFromSleep = self->_isWakeFromSleep;
    if (isWakeFromSleep != [equalCopy isWakeFromSleep])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = equalCopy[84];
  }

  v45 = (*&v37 >> 5) & 1;
  if (v45 != ((v39 >> 5) & 1))
  {
    goto LABEL_112;
  }

  if (v45)
  {
    isMediaPlaying = self->_isMediaPlaying;
    if (isMediaPlaying != [equalCopy isMediaPlaying])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = equalCopy[84];
  }

  v47 = (*&v37 >> 6) & 1;
  if (v47 != ((v39 >> 6) & 1))
  {
    goto LABEL_112;
  }

  if (v47)
  {
    isDeviceHandHeld = self->_isDeviceHandHeld;
    if (isDeviceHandHeld != [equalCopy isDeviceHandHeld])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = equalCopy[84];
  }

  v49 = (*&v37 >> 7) & 1;
  if (v49 != ((v39 >> 7) & 1))
  {
    goto LABEL_112;
  }

  if (v49)
  {
    audioCodec = self->_audioCodec;
    if (audioCodec != [equalCopy audioCodec])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = equalCopy[84];
  }

  v51 = (*&v37 >> 8) & 1;
  if (v51 != ((v39 >> 8) & 1))
  {
    goto LABEL_112;
  }

  if (v51)
  {
    audioSource = self->_audioSource;
    if (audioSource != [equalCopy audioSource])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = equalCopy[84];
  }

  v53 = (*&v37 >> 9) & 1;
  if (v53 != ((v39 >> 9) & 1))
  {
    goto LABEL_112;
  }

  if (v53)
  {
    asrTask = self->_asrTask;
    if (asrTask != [equalCopy asrTask])
    {
      goto LABEL_112;
    }

    v37 = self->_has;
    v39 = equalCopy[84];
  }

  v55 = (*&v37 >> 10) & 1;
  if (v55 != ((v39 >> 10) & 1))
  {
    goto LABEL_112;
  }

  if (v55)
  {
    audioSkippedNumSamples = self->_audioSkippedNumSamples;
    if (audioSkippedNumSamples != [equalCopy audioSkippedNumSamples])
    {
      goto LABEL_112;
    }
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];
  deviceType2 = [equalCopy preItn1Best];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  preItn1Best = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];
  if (preItn1Best)
  {
    v58 = preItn1Best;
    preItn1Best2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];
    preItn1Best3 = [equalCopy preItn1Best];
    v61 = [preItn1Best2 isEqual:preItn1Best3];

    if (!v61)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];
  deviceType2 = [equalCopy subDomain];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  subDomain = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];
  if (subDomain)
  {
    v63 = subDomain;
    subDomain2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];
    subDomain3 = [equalCopy subDomain];
    v66 = [subDomain2 isEqual:subDomain3];

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
  v69 = equalCopy[84];
  if (v68 != ((v69 >> 11) & 1))
  {
    goto LABEL_112;
  }

  if (v68)
  {
    isPersonalRequest = self->_isPersonalRequest;
    if (isPersonalRequest != [equalCopy isPersonalRequest])
    {
      goto LABEL_112;
    }

    v67 = self->_has;
    v69 = equalCopy[84];
  }

  v71 = (*&v67 >> 12) & 1;
  if (v71 != ((v69 >> 12) & 1))
  {
    goto LABEL_112;
  }

  if (v71)
  {
    isPersonalizedRequest = self->_isPersonalizedRequest;
    if (isPersonalizedRequest != [equalCopy isPersonalizedRequest])
    {
      goto LABEL_112;
    }
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];
  deviceType2 = [equalCopy responseId];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  responseId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];
  if (responseId)
  {
    v74 = responseId;
    responseId2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];
    responseId3 = [equalCopy responseId];
    v77 = [responseId2 isEqual:responseId3];

    if (!v77)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v78 = (*&self->_has >> 13) & 1;
  if (v78 != ((equalCopy[84] >> 13) & 1))
  {
    goto LABEL_112;
  }

  if (v78)
  {
    orchCancelledReason = self->_orchCancelledReason;
    if (orchCancelledReason != [equalCopy orchCancelledReason])
    {
      goto LABEL_112;
    }
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
  deviceType2 = [equalCopy audioId];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  audioId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
  if (audioId)
  {
    v81 = audioId;
    audioId2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
    audioId3 = [equalCopy audioId];
    v84 = [audioId2 isEqual:audioId3];

    if (!v84)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  v85 = (*&self->_has >> 14) & 1;
  if (v85 != ((equalCopy[84] >> 14) & 1))
  {
    goto LABEL_112;
  }

  if (v85)
  {
    triggerPhrase = self->_triggerPhrase;
    if (triggerPhrase != [equalCopy triggerPhrase])
    {
      goto LABEL_112;
    }
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
  deviceType2 = [equalCopy location];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
    goto LABEL_111;
  }

  location = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
  if (location)
  {
    v88 = location;
    location2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
    location3 = [equalCopy location];
    v91 = [location2 isEqual:location3];

    if (!v91)
    {
      goto LABEL_112;
    }
  }

  else
  {
  }

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];
  deviceType2 = [equalCopy postItn1Best];
  if ((deviceType != 0) == (deviceType2 == 0))
  {
LABEL_111:

    goto LABEL_112;
  }

  postItn1Best = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];
  if (!postItn1Best)
  {

LABEL_115:
    v97 = 1;
    goto LABEL_113;
  }

  v93 = postItn1Best;
  postItn1Best2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];
  postItn1Best3 = [equalCopy postItn1Best];
  v96 = [postItn1Best2 isEqual:postItn1Best3];

  if (v96)
  {
    goto LABEL_115;
  }

LABEL_112:
  v97 = 0;
LABEL_113:

  return v97;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  deviceType = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  systemBuild = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  audioInterfaceVendorId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioInterfaceVendorId];

  if (audioInterfaceVendorId)
  {
    PBDataWriterWriteStringField();
  }

  firstPartyAudioInterfaceProductId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self firstPartyAudioInterfaceProductId];

  if (firstPartyAudioInterfaceProductId)
  {
    PBDataWriterWriteStringField();
  }

  siriInputLocale = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];

  if (siriInputLocale)
  {
    siriInputLocale2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
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
  preItn1Best = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self preItn1Best];

  if (preItn1Best)
  {
    PBDataWriterWriteStringField();
  }

  subDomain = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self subDomain];

  if (subDomain)
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

  responseId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self responseId];

  if (responseId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  audioId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];

  if (audioId)
  {
    audioId2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  location = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];

  if (location)
  {
    location2 = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
    PBDataWriterWriteSubmessage();
  }

  postItn1Best = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self postItn1Best];

  v21 = toCopy;
  if (postItn1Best)
  {
    PBDataWriterWriteStringField();
    v21 = toCopy;
  }
}

- (void)setHasTriggerPhrase:(BOOL)phrase
{
  if (phrase)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasOrchCancelledReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasIsPersonalizedRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasIsPersonalRequest:(BOOL)request
{
  if (request)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasAudioSkippedNumSamples:(BOOL)samples
{
  if (samples)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasAsrTask:(BOOL)task
{
  if (task)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasAudioSource:(BOOL)source
{
  if (source)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasAudioCodec:(BOOL)codec
{
  if (codec)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsDeviceHandHeld:(BOOL)held
{
  if (held)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsMediaPlaying:(BOOL)playing
{
  if (playing)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsWakeFromSleep:(BOOL)sleep
{
  if (sleep)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasMotionActivity:(BOOL)activity
{
  if (activity)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasInvocationSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasStartDatestampInDaysSince1970:(BOOL)since1970
{
  if (since1970)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  siriInputLocale = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self siriInputLocale];
  v7 = [siriInputLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deleteSiriInputLocale];
  }

  audioId = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self audioId];
  v10 = [audioId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self deleteAudioId];
  }

  location = [(ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported *)self location];
  v13 = [location applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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