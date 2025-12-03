@interface GRRSchemaGRRFeature
- (BOOL)isEqual:(id)equal;
- (GRRSchemaGRRFeature)initWithDictionary:(id)dictionary;
- (GRRSchemaGRRFeature)initWithJSON:(id)n;
- (GRRSchemaGRRStringList)applicationsInForeground;
- (GRRSchemaGRRStringList)topTopics;
- (NSData)jsonData;
- (NSString)configuredSiriLanguage;
- (NSString)inputOrigin;
- (NSString)previousFlowDomain;
- (double)contactMatchConfidence;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unint64_t)requestTimeBeginMs;
- (unint64_t)timeSinceLastValidRequestMs;
- (unsigned)asrRank;
- (unsigned)numberOfContactsResolved;
- (void)deleteApplicationsInForeground;
- (void)deleteAsrRank;
- (void)deleteCanResolveContactByRelationship;
- (void)deleteConfiguredSiriLanguage;
- (void)deleteContactHasRequestedAddressDetail;
- (void)deleteContactMatchConfidence;
- (void)deleteDeviceIsPlayingAudio;
- (void)deleteInputOrigin;
- (void)deleteIsActiveAlarmPresent;
- (void)deleteIsActiveAppointmentPresent;
- (void)deleteIsAnnounceEnabled;
- (void)deleteIsAppInstalled;
- (void)deleteIsAppMatchPresent;
- (void)deleteIsAppRunning;
- (void)deleteIsArtistPresent;
- (void)deleteIsAudioPlaying;
- (void)deleteIsContactNameResolved;
- (void)deleteIsEmailAvailable;
- (void)deleteIsFollowUp;
- (void)deleteIsMediaItemEntityPresent;
- (void)deleteIsMessagingPossible;
- (void)deleteIsMessagingPossibleForSendMessageIntent;
- (void)deleteIsPhoneCallPossible;
- (void)deleteIsPhoneCallPossibleForPhoneCallIntent;
- (void)deleteIsPhoneNumberAvailable;
- (void)deleteIsPhoneNumberContactResolvable;
- (void)deleteIsPreviousTurnSendEmptyMessage;
- (void)deleteIsSettingOn;
- (void)deleteIsTimerActive;
- (void)deleteIsVideoPlaying;
- (void)deleteNumberOfContactsResolved;
- (void)deletePreviousFlowDomain;
- (void)deleteRequestTimeBeginMs;
- (void)deleteSharingAppActive;
- (void)deleteSharingEntityPresent;
- (void)deleteSharingRecipientPresent;
- (void)deleteSmsAttachmentExists;
- (void)deleteSmsAttributeRecipientExists;
- (void)deleteSmsAttributeSenderExists;
- (void)deleteSmsPhoneNumberMentioned;
- (void)deleteSmsTextPayloadExists;
- (void)deleteTimeSinceLastValidRequestMs;
- (void)deleteTopTopics;
- (void)setApplicationsInForeground:(id)foreground;
- (void)setAsrRank:(unsigned int)rank;
- (void)setCanResolveContactByRelationship:(BOOL)relationship;
- (void)setConfiguredSiriLanguage:(id)language;
- (void)setContactHasRequestedAddressDetail:(BOOL)detail;
- (void)setContactMatchConfidence:(double)confidence;
- (void)setDeviceIsPlayingAudio:(BOOL)audio;
- (void)setInputOrigin:(id)origin;
- (void)setIsActiveAlarmPresent:(BOOL)present;
- (void)setIsActiveAppointmentPresent:(BOOL)present;
- (void)setIsAnnounceEnabled:(BOOL)enabled;
- (void)setIsAppInstalled:(BOOL)installed;
- (void)setIsAppMatchPresent:(BOOL)present;
- (void)setIsAppRunning:(BOOL)running;
- (void)setIsArtistPresent:(BOOL)present;
- (void)setIsAudioPlaying:(BOOL)playing;
- (void)setIsContactNameResolved:(BOOL)resolved;
- (void)setIsEmailAvailable:(BOOL)available;
- (void)setIsFollowUp:(BOOL)up;
- (void)setIsMediaItemEntityPresent:(BOOL)present;
- (void)setIsMessagingPossible:(BOOL)possible;
- (void)setIsMessagingPossibleForSendMessageIntent:(BOOL)intent;
- (void)setIsPhoneCallPossible:(BOOL)possible;
- (void)setIsPhoneCallPossibleForPhoneCallIntent:(BOOL)intent;
- (void)setIsPhoneNumberAvailable:(BOOL)available;
- (void)setIsPhoneNumberContactResolvable:(BOOL)resolvable;
- (void)setIsPreviousTurnSendEmptyMessage:(BOOL)message;
- (void)setIsSettingOn:(BOOL)on;
- (void)setIsTimerActive:(BOOL)active;
- (void)setIsVideoPlaying:(BOOL)playing;
- (void)setNumberOfContactsResolved:(unsigned int)resolved;
- (void)setPreviousFlowDomain:(id)domain;
- (void)setRequestTimeBeginMs:(unint64_t)ms;
- (void)setSharingAppActive:(BOOL)active;
- (void)setSharingEntityPresent:(BOOL)present;
- (void)setSharingRecipientPresent:(BOOL)present;
- (void)setSmsAttachmentExists:(BOOL)exists;
- (void)setSmsAttributeRecipientExists:(BOOL)exists;
- (void)setSmsAttributeSenderExists:(BOOL)exists;
- (void)setSmsPhoneNumberMentioned:(BOOL)mentioned;
- (void)setSmsTextPayloadExists:(BOOL)exists;
- (void)setTimeSinceLastValidRequestMs:(unint64_t)ms;
- (void)setTopTopics:(id)topics;
- (void)writeTo:(id)to;
@end

@implementation GRRSchemaGRRFeature

- (GRRSchemaGRRFeature)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v95.receiver = self;
  v95.super_class = GRRSchemaGRRFeature;
  v5 = [(GRRSchemaGRRFeature *)&v95 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"applicationsInForeground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRRSchemaGRRStringList alloc] initWithDictionary:v6];
      [(GRRSchemaGRRFeature *)v5 setApplicationsInForeground:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"asrRank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setAsrRank:](v5, "setAsrRank:", [v8 unsignedIntValue]);
    }

    v67 = v6;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"canResolveContactByRelationship"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setCanResolveContactByRelationship:](v5, "setCanResolveContactByRelationship:", [v9 BOOLValue]);
    }

    v65 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"configuredSiriLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(GRRSchemaGRRFeature *)v5 setConfiguredSiriLanguage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"contactHasRequestedAddressDetail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setContactHasRequestedAddressDetail:](v5, "setContactHasRequestedAddressDetail:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"contactMatchConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(GRRSchemaGRRFeature *)v5 setContactMatchConfidence:?];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"deviceIsPlayingAudio"];
    objc_opt_class();
    v94 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setDeviceIsPlayingAudio:](v5, "setDeviceIsPlayingAudio:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"inputOrigin"];
    objc_opt_class();
    v93 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(GRRSchemaGRRFeature *)v5 setInputOrigin:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"isActiveAlarmPresent"];
    objc_opt_class();
    v92 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsActiveAlarmPresent:](v5, "setIsActiveAlarmPresent:", [v17 BOOLValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"isActiveAppointmentPresent"];
    objc_opt_class();
    v91 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsActiveAppointmentPresent:](v5, "setIsActiveAppointmentPresent:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"isAnnounceEnabled"];
    objc_opt_class();
    v90 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsAnnounceEnabled:](v5, "setIsAnnounceEnabled:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isAudioPlaying"];
    objc_opt_class();
    v89 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsAudioPlaying:](v5, "setIsAudioPlaying:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"isAppInstalled"];
    objc_opt_class();
    v88 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsAppInstalled:](v5, "setIsAppInstalled:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isAppMatchPresent"];
    objc_opt_class();
    v87 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsAppMatchPresent:](v5, "setIsAppMatchPresent:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"isAppRunning"];
    objc_opt_class();
    v86 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsAppRunning:](v5, "setIsAppRunning:", [v23 BOOLValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"isArtistPresent"];
    objc_opt_class();
    v85 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsArtistPresent:](v5, "setIsArtistPresent:", [v24 BOOLValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"isContactNameResolved"];
    objc_opt_class();
    v84 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsContactNameResolved:](v5, "setIsContactNameResolved:", [v25 BOOLValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"isEmailAvailable"];
    objc_opt_class();
    v83 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsEmailAvailable:](v5, "setIsEmailAvailable:", [v26 BOOLValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"isFollowUp"];
    objc_opt_class();
    v82 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsFollowUp:](v5, "setIsFollowUp:", [v27 BOOLValue]);
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"isMediaItemEntityPresent"];
    objc_opt_class();
    v81 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsMediaItemEntityPresent:](v5, "setIsMediaItemEntityPresent:", [v28 BOOLValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"isMessagingPossible"];
    objc_opt_class();
    v80 = v29;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsMessagingPossible:](v5, "setIsMessagingPossible:", [v29 BOOLValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"isMessagingPossibleForSendMessageIntent"];
    objc_opt_class();
    v79 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsMessagingPossibleForSendMessageIntent:](v5, "setIsMessagingPossibleForSendMessageIntent:", [v30 BOOLValue]);
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"isPhoneCallPossible"];
    objc_opt_class();
    v78 = v31;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsPhoneCallPossible:](v5, "setIsPhoneCallPossible:", [v31 BOOLValue]);
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"isPhoneCallPossibleForPhoneCallIntent"];
    objc_opt_class();
    v77 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsPhoneCallPossibleForPhoneCallIntent:](v5, "setIsPhoneCallPossibleForPhoneCallIntent:", [v32 BOOLValue]);
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"isPhoneNumberAvailable"];
    objc_opt_class();
    v76 = v33;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsPhoneNumberAvailable:](v5, "setIsPhoneNumberAvailable:", [v33 BOOLValue]);
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"isPhoneNumberContactResolvable"];
    objc_opt_class();
    v75 = v34;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsPhoneNumberContactResolvable:](v5, "setIsPhoneNumberContactResolvable:", [v34 BOOLValue]);
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"isPreviousTurnSendEmptyMessage"];
    objc_opt_class();
    v74 = v35;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsPreviousTurnSendEmptyMessage:](v5, "setIsPreviousTurnSendEmptyMessage:", [v35 BOOLValue]);
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"isSettingOn"];
    objc_opt_class();
    v73 = v36;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsSettingOn:](v5, "setIsSettingOn:", [v36 BOOLValue]);
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"isTimerActive"];
    objc_opt_class();
    v72 = v37;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsTimerActive:](v5, "setIsTimerActive:", [v37 BOOLValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"isVideoPlaying"];
    objc_opt_class();
    v71 = v38;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setIsVideoPlaying:](v5, "setIsVideoPlaying:", [v38 BOOLValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"numberOfContactsResolved"];
    objc_opt_class();
    v70 = v39;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setNumberOfContactsResolved:](v5, "setNumberOfContactsResolved:", [v39 unsignedIntValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"previousFlowDomain"];
    objc_opt_class();
    v69 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(GRRSchemaGRRFeature *)v5 setPreviousFlowDomain:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"requestTimeBeginMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setRequestTimeBeginMs:](v5, "setRequestTimeBeginMs:", [v42 unsignedLongLongValue]);
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"sharingAppActive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setSharingAppActive:](v5, "setSharingAppActive:", [v43 BOOLValue]);
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"sharingEntityPresent"];
    objc_opt_class();
    v68 = v44;
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setSharingEntityPresent:](v5, "setSharingEntityPresent:", [v44 BOOLValue]);
    }

    v66 = v8;
    v45 = [dictionaryCopy objectForKeyedSubscript:@"sharingRecipientPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setSharingRecipientPresent:](v5, "setSharingRecipientPresent:", [v45 BOOLValue]);
    }

    v64 = v10;
    v46 = [dictionaryCopy objectForKeyedSubscript:@"smsAttachmentExists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setSmsAttachmentExists:](v5, "setSmsAttachmentExists:", [v46 BOOLValue]);
    }

    v63 = v12;
    v47 = [dictionaryCopy objectForKeyedSubscript:@"smsAttributeRecipientExists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setSmsAttributeRecipientExists:](v5, "setSmsAttributeRecipientExists:", [v47 BOOLValue]);
    }

    v62 = v13;
    v48 = [dictionaryCopy objectForKeyedSubscript:@"smsAttributeSenderExists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setSmsAttributeSenderExists:](v5, "setSmsAttributeSenderExists:", [v48 BOOLValue]);
    }

    v61 = v42;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"smsPhoneNumberMentioned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setSmsPhoneNumberMentioned:](v5, "setSmsPhoneNumberMentioned:", [v49 BOOLValue]);
    }

    v60 = v43;
    v50 = [dictionaryCopy objectForKeyedSubscript:@"smsTextPayloadExists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setSmsTextPayloadExists:](v5, "setSmsTextPayloadExists:", [v50 BOOLValue]);
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastValidRequestMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRFeature setTimeSinceLastValidRequestMs:](v5, "setTimeSinceLastValidRequestMs:", [v51 unsignedLongLongValue]);
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"topTopics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = v48;
      v53 = v47;
      v54 = v46;
      v55 = v45;
      v56 = [[GRRSchemaGRRStringList alloc] initWithDictionary:v52];
      [(GRRSchemaGRRFeature *)v5 setTopTopics:v56];

      v45 = v55;
      v46 = v54;
      v47 = v53;
      v48 = v59;
    }

    v57 = v5;
  }

  return v5;
}

- (GRRSchemaGRRFeature)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRRSchemaGRRFeature *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRRSchemaGRRFeature *)self dictionaryRepresentation];
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
  if (self->_applicationsInForeground)
  {
    applicationsInForeground = [(GRRSchemaGRRFeature *)self applicationsInForeground];
    dictionaryRepresentation = [applicationsInForeground dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"applicationsInForeground"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"applicationsInForeground"];
    }
  }

  whichFeature = self->_whichFeature;
  if (whichFeature == 2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GRRSchemaGRRFeature asrRank](self, "asrRank")}];
    [dictionary setObject:v8 forKeyedSubscript:@"asrRank"];

    whichFeature = self->_whichFeature;
  }

  if (whichFeature == 3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature canResolveContactByRelationship](self, "canResolveContactByRelationship")}];
    [dictionary setObject:v9 forKeyedSubscript:@"canResolveContactByRelationship"];
  }

  if (self->_configuredSiriLanguage)
  {
    configuredSiriLanguage = [(GRRSchemaGRRFeature *)self configuredSiriLanguage];
    v11 = [configuredSiriLanguage copy];
    [dictionary setObject:v11 forKeyedSubscript:@"configuredSiriLanguage"];
  }

  v12 = self->_whichFeature;
  if (v12 == 5)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature contactHasRequestedAddressDetail](self, "contactHasRequestedAddressDetail")}];
    [dictionary setObject:v13 forKeyedSubscript:@"contactHasRequestedAddressDetail"];

    v12 = self->_whichFeature;
  }

  if (v12 == 6)
  {
    v14 = MEMORY[0x1E696AD98];
    [(GRRSchemaGRRFeature *)self contactMatchConfidence];
    v15 = [v14 numberWithDouble:?];
    [dictionary setObject:v15 forKeyedSubscript:@"contactMatchConfidence"];

    v12 = self->_whichFeature;
  }

  if (v12 == 7)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature deviceIsPlayingAudio](self, "deviceIsPlayingAudio")}];
    [dictionary setObject:v16 forKeyedSubscript:@"deviceIsPlayingAudio"];
  }

  if (self->_inputOrigin)
  {
    inputOrigin = [(GRRSchemaGRRFeature *)self inputOrigin];
    v18 = [inputOrigin copy];
    [dictionary setObject:v18 forKeyedSubscript:@"inputOrigin"];
  }

  v19 = self->_whichFeature;
  if (v19 == 9)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isActiveAlarmPresent](self, "isActiveAlarmPresent")}];
    [dictionary setObject:v20 forKeyedSubscript:@"isActiveAlarmPresent"];

    v19 = self->_whichFeature;
  }

  if (v19 == 10)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isActiveAppointmentPresent](self, "isActiveAppointmentPresent")}];
    [dictionary setObject:v21 forKeyedSubscript:@"isActiveAppointmentPresent"];

    v19 = self->_whichFeature;
  }

  if (v19 == 11)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isAnnounceEnabled](self, "isAnnounceEnabled")}];
    [dictionary setObject:v22 forKeyedSubscript:@"isAnnounceEnabled"];

    v19 = self->_whichFeature;
  }

  if (v19 == 13)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isAppInstalled](self, "isAppInstalled")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isAppInstalled"];

    v19 = self->_whichFeature;
  }

  if (v19 == 14)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isAppMatchPresent](self, "isAppMatchPresent")}];
    [dictionary setObject:v24 forKeyedSubscript:@"isAppMatchPresent"];

    v19 = self->_whichFeature;
  }

  if (v19 == 15)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isAppRunning](self, "isAppRunning")}];
    [dictionary setObject:v25 forKeyedSubscript:@"isAppRunning"];

    v19 = self->_whichFeature;
  }

  if (v19 == 16)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isArtistPresent](self, "isArtistPresent")}];
    [dictionary setObject:v26 forKeyedSubscript:@"isArtistPresent"];

    v19 = self->_whichFeature;
  }

  if (v19 == 12)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isAudioPlaying](self, "isAudioPlaying")}];
    [dictionary setObject:v27 forKeyedSubscript:@"isAudioPlaying"];

    v19 = self->_whichFeature;
  }

  if (v19 == 17)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isContactNameResolved](self, "isContactNameResolved")}];
    [dictionary setObject:v28 forKeyedSubscript:@"isContactNameResolved"];

    v19 = self->_whichFeature;
  }

  if (v19 == 18)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isEmailAvailable](self, "isEmailAvailable")}];
    [dictionary setObject:v29 forKeyedSubscript:@"isEmailAvailable"];

    v19 = self->_whichFeature;
  }

  if (v19 == 19)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isFollowUp](self, "isFollowUp")}];
    [dictionary setObject:v30 forKeyedSubscript:@"isFollowUp"];

    v19 = self->_whichFeature;
  }

  if (v19 == 20)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isMediaItemEntityPresent](self, "isMediaItemEntityPresent")}];
    [dictionary setObject:v31 forKeyedSubscript:@"isMediaItemEntityPresent"];

    v19 = self->_whichFeature;
  }

  if (v19 == 21)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isMessagingPossible](self, "isMessagingPossible")}];
    [dictionary setObject:v32 forKeyedSubscript:@"isMessagingPossible"];

    v19 = self->_whichFeature;
  }

  if (v19 == 22)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isMessagingPossibleForSendMessageIntent](self, "isMessagingPossibleForSendMessageIntent")}];
    [dictionary setObject:v33 forKeyedSubscript:@"isMessagingPossibleForSendMessageIntent"];

    v19 = self->_whichFeature;
  }

  if (v19 == 23)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isPhoneCallPossible](self, "isPhoneCallPossible")}];
    [dictionary setObject:v34 forKeyedSubscript:@"isPhoneCallPossible"];

    v19 = self->_whichFeature;
  }

  if (v19 == 24)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isPhoneCallPossibleForPhoneCallIntent](self, "isPhoneCallPossibleForPhoneCallIntent")}];
    [dictionary setObject:v35 forKeyedSubscript:@"isPhoneCallPossibleForPhoneCallIntent"];

    v19 = self->_whichFeature;
  }

  if (v19 == 25)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isPhoneNumberAvailable](self, "isPhoneNumberAvailable")}];
    [dictionary setObject:v36 forKeyedSubscript:@"isPhoneNumberAvailable"];

    v19 = self->_whichFeature;
  }

  if (v19 == 26)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isPhoneNumberContactResolvable](self, "isPhoneNumberContactResolvable")}];
    [dictionary setObject:v37 forKeyedSubscript:@"isPhoneNumberContactResolvable"];

    v19 = self->_whichFeature;
  }

  if (v19 == 27)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isPreviousTurnSendEmptyMessage](self, "isPreviousTurnSendEmptyMessage")}];
    [dictionary setObject:v38 forKeyedSubscript:@"isPreviousTurnSendEmptyMessage"];

    v19 = self->_whichFeature;
  }

  if (v19 == 28)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isSettingOn](self, "isSettingOn")}];
    [dictionary setObject:v39 forKeyedSubscript:@"isSettingOn"];

    v19 = self->_whichFeature;
  }

  if (v19 == 29)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isTimerActive](self, "isTimerActive")}];
    [dictionary setObject:v40 forKeyedSubscript:@"isTimerActive"];

    v19 = self->_whichFeature;
  }

  if (v19 == 30)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature isVideoPlaying](self, "isVideoPlaying")}];
    [dictionary setObject:v41 forKeyedSubscript:@"isVideoPlaying"];

    v19 = self->_whichFeature;
  }

  if (v19 == 31)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GRRSchemaGRRFeature numberOfContactsResolved](self, "numberOfContactsResolved")}];
    [dictionary setObject:v42 forKeyedSubscript:@"numberOfContactsResolved"];
  }

  if (self->_previousFlowDomain)
  {
    previousFlowDomain = [(GRRSchemaGRRFeature *)self previousFlowDomain];
    v44 = [previousFlowDomain copy];
    [dictionary setObject:v44 forKeyedSubscript:@"previousFlowDomain"];
  }

  v45 = self->_whichFeature;
  if (v45 == 33)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[GRRSchemaGRRFeature requestTimeBeginMs](self, "requestTimeBeginMs")}];
    [dictionary setObject:v46 forKeyedSubscript:@"requestTimeBeginMs"];

    v45 = self->_whichFeature;
  }

  if (v45 == 34)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature sharingAppActive](self, "sharingAppActive")}];
    [dictionary setObject:v47 forKeyedSubscript:@"sharingAppActive"];

    v45 = self->_whichFeature;
  }

  if (v45 == 35)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature sharingEntityPresent](self, "sharingEntityPresent")}];
    [dictionary setObject:v48 forKeyedSubscript:@"sharingEntityPresent"];

    v45 = self->_whichFeature;
  }

  if (v45 == 36)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature sharingRecipientPresent](self, "sharingRecipientPresent")}];
    [dictionary setObject:v49 forKeyedSubscript:@"sharingRecipientPresent"];

    v45 = self->_whichFeature;
  }

  if (v45 == 37)
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature smsAttachmentExists](self, "smsAttachmentExists")}];
    [dictionary setObject:v50 forKeyedSubscript:@"smsAttachmentExists"];

    v45 = self->_whichFeature;
  }

  if (v45 == 38)
  {
    v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature smsAttributeRecipientExists](self, "smsAttributeRecipientExists")}];
    [dictionary setObject:v51 forKeyedSubscript:@"smsAttributeRecipientExists"];

    v45 = self->_whichFeature;
  }

  if (v45 == 39)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature smsAttributeSenderExists](self, "smsAttributeSenderExists")}];
    [dictionary setObject:v52 forKeyedSubscript:@"smsAttributeSenderExists"];

    v45 = self->_whichFeature;
  }

  if (v45 == 40)
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature smsPhoneNumberMentioned](self, "smsPhoneNumberMentioned")}];
    [dictionary setObject:v53 forKeyedSubscript:@"smsPhoneNumberMentioned"];

    v45 = self->_whichFeature;
  }

  if (v45 == 41)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[GRRSchemaGRRFeature smsTextPayloadExists](self, "smsTextPayloadExists")}];
    [dictionary setObject:v54 forKeyedSubscript:@"smsTextPayloadExists"];

    v45 = self->_whichFeature;
  }

  if (v45 == 42)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[GRRSchemaGRRFeature timeSinceLastValidRequestMs](self, "timeSinceLastValidRequestMs")}];
    [dictionary setObject:v55 forKeyedSubscript:@"timeSinceLastValidRequestMs"];
  }

  if (self->_topTopics)
  {
    topTopics = [(GRRSchemaGRRFeature *)self topTopics];
    dictionaryRepresentation2 = [topTopics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"topTopics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"topTopics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v59 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GRRSchemaGRRStringList *)self->_applicationsInForeground hash];
  whichFeature = self->_whichFeature;
  if (whichFeature == 3)
  {
    v6 = 0;
    v5 = 2654435761 * self->_canResolveContactByRelationship;
  }

  else if (whichFeature == 2)
  {
    v5 = 0;
    v6 = 2654435761 * self->_asrRank;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = [(NSString *)self->_configuredSiriLanguage hash];
  v10 = self->_whichFeature;
  if (v10 == 7)
  {
    v11 = 0;
    v13 = 0;
    v12 = 2654435761 * self->_deviceIsPlayingAudio;
    goto LABEL_17;
  }

  if (v10 != 6)
  {
    if (v10 == 5)
    {
      v11 = 0;
      v12 = 0;
      v13 = 2654435761 * self->_contactHasRequestedAddressDetail;
      goto LABEL_17;
    }

    v11 = 0;
LABEL_16:
    v13 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  contactMatchConfidence = self->_contactMatchConfidence;
  if (contactMatchConfidence < 0.0)
  {
    contactMatchConfidence = -contactMatchConfidence;
  }

  *v8.i64 = floor(contactMatchConfidence + 0.5);
  v15 = (contactMatchConfidence - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v9, v8).i64;
  if (v15 < 0.0)
  {
    v13 = 0;
    v12 = 0;
    v11 -= fabs(v15);
    goto LABEL_17;
  }

  if (v15 <= 0.0)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v12 = 0;
  v11 += v15;
LABEL_17:
  v17 = [(NSString *)self->_inputOrigin hash];
  v18 = self->_whichFeature;
  v77 = v17;
  switch(v18)
  {
    case 9:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v36 = 2654435761 * self->_isActiveAlarmPresent;
      break;
    case 10:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v29 = 2654435761 * self->_isActiveAppointmentPresent;
      break;
    case 11:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v30 = 2654435761 * self->_isAnnounceEnabled;
      break;
    case 12:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v28 = 2654435761 * self->_isAudioPlaying;
      break;
    case 13:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v31 = 2654435761 * self->_isAppInstalled;
      break;
    case 14:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v27 = 2654435761 * self->_isAppMatchPresent;
      break;
    case 15:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v32 = 2654435761 * self->_isAppRunning;
      break;
    case 16:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v26 = 2654435761 * self->_isArtistPresent;
      break;
    case 17:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v33 = 2654435761 * self->_isContactNameResolved;
      break;
    case 18:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v25 = 2654435761 * self->_isEmailAvailable;
      break;
    case 19:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v34 = 2654435761 * self->_isFollowUp;
      break;
    case 20:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v24 = 2654435761 * self->_isMediaItemEntityPresent;
      break;
    case 21:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v35 = 2654435761 * self->_isMessagingPossible;
      break;
    case 22:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v23 = 2654435761 * self->_isMessagingPossibleForSendMessageIntent;
      break;
    case 23:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v83 = 0;
      v84 = 0;
      v81 = 0;
      v82 = 0;
      v85 = 2654435761 * self->_isPhoneCallPossible;
      break;
    case 24:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v22 = 2654435761 * self->_isPhoneCallPossibleForPhoneCallIntent;
      break;
    case 25:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v84 = 2654435761 * self->_isPhoneNumberAvailable;
      v85 = 0;
      break;
    case 26:
      v19 = 0;
      v20 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v36 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v21 = 2654435761 * self->_isPhoneNumberContactResolvable;
      break;
    default:
      v19 = 0;
      if (v18 <= 28)
      {
        if (v18 == 27)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v36 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v84 = 0;
          v85 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 2654435761 * self->_isPreviousTurnSendEmptyMessage;
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v36 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v84 = 0;
          v85 = 0;
          v82 = 0;
          v83 = 0;
          v81 = 0;
          if (v18 == 28)
          {
            v19 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v36 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v84 = 0;
            v85 = 0;
            v82 = 0;
            v83 = 0;
            v81 = 0;
            v20 = 2654435761 * self->_isSettingOn;
          }
        }
      }

      else if (v18 == 29)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v36 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v84 = 0;
        v85 = 0;
        v81 = 0;
        v82 = 2654435761 * self->_isTimerActive;
        v83 = 0;
      }

      else if (v18 == 30)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v36 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v84 = 0;
        v85 = 0;
        v82 = 0;
        v83 = 0;
        v81 = 0;
        v19 = 2654435761 * self->_isVideoPlaying;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v36 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v84 = 0;
        v85 = 0;
        v82 = 0;
        v83 = 0;
        v81 = 0;
        if (v18 == 31)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v36 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v84 = 0;
          v85 = 0;
          v82 = 0;
          v83 = 0;
          v81 = 2654435761 * self->_numberOfContactsResolved;
        }
      }

      break;
  }

  v60 = v34;
  v61 = v33;
  v62 = v32;
  v63 = v31;
  v64 = v30;
  v65 = v36;
  v66 = v29;
  v67 = v28;
  v68 = v27;
  v69 = v26;
  v70 = v25;
  v71 = v24;
  v72 = v23;
  v73 = v22;
  v74 = v21;
  v75 = v20;
  v76 = v19;
  v37 = [(NSString *)self->_previousFlowDomain hash];
  v38 = self->_whichFeature;
  v79 = v13;
  v80 = v11;
  v78 = v12;
  v59 = v37;
  if (v38 <= 34)
  {
    if (v38 == 33)
    {
      v39 = v5;
      v40 = v6;
      v41 = 0;
      v42 = 0;
      v50 = 0;
      v43 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v44 = 2654435761u * self->_requestTimeBeginMs;
      goto LABEL_54;
    }

    if (v38 == 34)
    {
      v39 = v5;
      v40 = v6;
      v41 = 0;
      v42 = 0;
      v50 = 0;
      v43 = 0;
      v44 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v45 = 2654435761 * self->_sharingAppActive;
      goto LABEL_54;
    }
  }

  else
  {
    switch(v38)
    {
      case '#':
        v39 = v5;
        v40 = v6;
        v41 = 0;
        v42 = 0;
        v50 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v43 = 2654435761 * self->_sharingEntityPresent;
        goto LABEL_54;
      case '$':
        v39 = v5;
        v40 = v6;
        v41 = 0;
        v42 = 0;
        v50 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v46 = 2654435761 * self->_sharingRecipientPresent;
        goto LABEL_54;
      case '%':
        v39 = v5;
        v40 = v6;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 2654435761 * self->_smsAttachmentExists;
        goto LABEL_54;
    }
  }

  v41 = 0;
  v39 = v5;
  v40 = v6;
  if (v38 <= 39)
  {
    if (v38 == 38)
    {
      v41 = 0;
      v42 = 0;
      v50 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v48 = 0;
      v49 = 0;
      v47 = 2654435761 * self->_smsAttributeRecipientExists;
    }

    else
    {
      v42 = 0;
      v50 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      if (v38 == 39)
      {
        v41 = 0;
        v50 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v42 = 2654435761 * self->_smsAttributeSenderExists;
      }
    }
  }

  else if (v38 == 40)
  {
    v41 = 0;
    v42 = 0;
    v50 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v49 = 0;
    v48 = 2654435761 * self->_smsPhoneNumberMentioned;
  }

  else if (v38 == 41)
  {
    v42 = 0;
    v50 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v41 = 2654435761 * self->_smsTextPayloadExists;
  }

  else
  {
    v42 = 0;
    v50 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    if (v38 == 42)
    {
      v41 = 0;
      v42 = 0;
      v50 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 2654435761u * self->_timeSinceLastValidRequestMs;
    }
  }

LABEL_54:
  v57 = v46;
  v51 = v40 ^ v3 ^ v39 ^ v7;
  topTopics = self->_topTopics;
  v53 = v42;
  v54 = v47;
  v55 = [(GRRSchemaGRRStringList *)topTopics hash];
  return v51 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v35 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v59 ^ v41 ^ v53 ^ v50 ^ v43 ^ v44 ^ v45 ^ v58 ^ v54 ^ v48 ^ v49 ^ v55;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  whichFeature = self->_whichFeature;
  if (whichFeature != [equalCopy whichFeature])
  {
    goto LABEL_66;
  }

  applicationsInForeground = [(GRRSchemaGRRFeature *)self applicationsInForeground];
  applicationsInForeground2 = [equalCopy applicationsInForeground];
  if ((applicationsInForeground != 0) == (applicationsInForeground2 == 0))
  {
    goto LABEL_65;
  }

  applicationsInForeground3 = [(GRRSchemaGRRFeature *)self applicationsInForeground];
  if (applicationsInForeground3)
  {
    v9 = applicationsInForeground3;
    applicationsInForeground4 = [(GRRSchemaGRRFeature *)self applicationsInForeground];
    applicationsInForeground5 = [equalCopy applicationsInForeground];
    v12 = [applicationsInForeground4 isEqual:applicationsInForeground5];

    if (!v12)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  asrRank = self->_asrRank;
  if (asrRank != [equalCopy asrRank])
  {
    goto LABEL_66;
  }

  canResolveContactByRelationship = self->_canResolveContactByRelationship;
  if (canResolveContactByRelationship != [equalCopy canResolveContactByRelationship])
  {
    goto LABEL_66;
  }

  applicationsInForeground = [(GRRSchemaGRRFeature *)self configuredSiriLanguage];
  applicationsInForeground2 = [equalCopy configuredSiriLanguage];
  if ((applicationsInForeground != 0) == (applicationsInForeground2 == 0))
  {
    goto LABEL_65;
  }

  configuredSiriLanguage = [(GRRSchemaGRRFeature *)self configuredSiriLanguage];
  if (configuredSiriLanguage)
  {
    v16 = configuredSiriLanguage;
    configuredSiriLanguage2 = [(GRRSchemaGRRFeature *)self configuredSiriLanguage];
    configuredSiriLanguage3 = [equalCopy configuredSiriLanguage];
    v19 = [configuredSiriLanguage2 isEqual:configuredSiriLanguage3];

    if (!v19)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  contactHasRequestedAddressDetail = self->_contactHasRequestedAddressDetail;
  if (contactHasRequestedAddressDetail != [equalCopy contactHasRequestedAddressDetail])
  {
    goto LABEL_66;
  }

  contactMatchConfidence = self->_contactMatchConfidence;
  [equalCopy contactMatchConfidence];
  if (contactMatchConfidence != v22)
  {
    goto LABEL_66;
  }

  deviceIsPlayingAudio = self->_deviceIsPlayingAudio;
  if (deviceIsPlayingAudio != [equalCopy deviceIsPlayingAudio])
  {
    goto LABEL_66;
  }

  applicationsInForeground = [(GRRSchemaGRRFeature *)self inputOrigin];
  applicationsInForeground2 = [equalCopy inputOrigin];
  if ((applicationsInForeground != 0) == (applicationsInForeground2 == 0))
  {
    goto LABEL_65;
  }

  inputOrigin = [(GRRSchemaGRRFeature *)self inputOrigin];
  if (inputOrigin)
  {
    v25 = inputOrigin;
    inputOrigin2 = [(GRRSchemaGRRFeature *)self inputOrigin];
    inputOrigin3 = [equalCopy inputOrigin];
    v28 = [inputOrigin2 isEqual:inputOrigin3];

    if (!v28)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  isActiveAlarmPresent = self->_isActiveAlarmPresent;
  if (isActiveAlarmPresent != [equalCopy isActiveAlarmPresent])
  {
    goto LABEL_66;
  }

  isActiveAppointmentPresent = self->_isActiveAppointmentPresent;
  if (isActiveAppointmentPresent != [equalCopy isActiveAppointmentPresent])
  {
    goto LABEL_66;
  }

  isAnnounceEnabled = self->_isAnnounceEnabled;
  if (isAnnounceEnabled != [equalCopy isAnnounceEnabled])
  {
    goto LABEL_66;
  }

  isAudioPlaying = self->_isAudioPlaying;
  if (isAudioPlaying != [equalCopy isAudioPlaying])
  {
    goto LABEL_66;
  }

  isAppInstalled = self->_isAppInstalled;
  if (isAppInstalled != [equalCopy isAppInstalled])
  {
    goto LABEL_66;
  }

  isAppMatchPresent = self->_isAppMatchPresent;
  if (isAppMatchPresent != [equalCopy isAppMatchPresent])
  {
    goto LABEL_66;
  }

  isAppRunning = self->_isAppRunning;
  if (isAppRunning != [equalCopy isAppRunning])
  {
    goto LABEL_66;
  }

  isArtistPresent = self->_isArtistPresent;
  if (isArtistPresent != [equalCopy isArtistPresent])
  {
    goto LABEL_66;
  }

  isContactNameResolved = self->_isContactNameResolved;
  if (isContactNameResolved != [equalCopy isContactNameResolved])
  {
    goto LABEL_66;
  }

  isEmailAvailable = self->_isEmailAvailable;
  if (isEmailAvailable != [equalCopy isEmailAvailable])
  {
    goto LABEL_66;
  }

  isFollowUp = self->_isFollowUp;
  if (isFollowUp != [equalCopy isFollowUp])
  {
    goto LABEL_66;
  }

  isMediaItemEntityPresent = self->_isMediaItemEntityPresent;
  if (isMediaItemEntityPresent != [equalCopy isMediaItemEntityPresent])
  {
    goto LABEL_66;
  }

  isMessagingPossible = self->_isMessagingPossible;
  if (isMessagingPossible != [equalCopy isMessagingPossible])
  {
    goto LABEL_66;
  }

  isMessagingPossibleForSendMessageIntent = self->_isMessagingPossibleForSendMessageIntent;
  if (isMessagingPossibleForSendMessageIntent != [equalCopy isMessagingPossibleForSendMessageIntent])
  {
    goto LABEL_66;
  }

  isPhoneCallPossible = self->_isPhoneCallPossible;
  if (isPhoneCallPossible != [equalCopy isPhoneCallPossible])
  {
    goto LABEL_66;
  }

  isPhoneCallPossibleForPhoneCallIntent = self->_isPhoneCallPossibleForPhoneCallIntent;
  if (isPhoneCallPossibleForPhoneCallIntent != [equalCopy isPhoneCallPossibleForPhoneCallIntent])
  {
    goto LABEL_66;
  }

  isPhoneNumberAvailable = self->_isPhoneNumberAvailable;
  if (isPhoneNumberAvailable != [equalCopy isPhoneNumberAvailable])
  {
    goto LABEL_66;
  }

  isPhoneNumberContactResolvable = self->_isPhoneNumberContactResolvable;
  if (isPhoneNumberContactResolvable != [equalCopy isPhoneNumberContactResolvable])
  {
    goto LABEL_66;
  }

  isPreviousTurnSendEmptyMessage = self->_isPreviousTurnSendEmptyMessage;
  if (isPreviousTurnSendEmptyMessage != [equalCopy isPreviousTurnSendEmptyMessage])
  {
    goto LABEL_66;
  }

  isSettingOn = self->_isSettingOn;
  if (isSettingOn != [equalCopy isSettingOn])
  {
    goto LABEL_66;
  }

  isTimerActive = self->_isTimerActive;
  if (isTimerActive != [equalCopy isTimerActive])
  {
    goto LABEL_66;
  }

  isVideoPlaying = self->_isVideoPlaying;
  if (isVideoPlaying != [equalCopy isVideoPlaying])
  {
    goto LABEL_66;
  }

  numberOfContactsResolved = self->_numberOfContactsResolved;
  if (numberOfContactsResolved != [equalCopy numberOfContactsResolved])
  {
    goto LABEL_66;
  }

  applicationsInForeground = [(GRRSchemaGRRFeature *)self previousFlowDomain];
  applicationsInForeground2 = [equalCopy previousFlowDomain];
  if ((applicationsInForeground != 0) == (applicationsInForeground2 == 0))
  {
    goto LABEL_65;
  }

  previousFlowDomain = [(GRRSchemaGRRFeature *)self previousFlowDomain];
  if (previousFlowDomain)
  {
    v53 = previousFlowDomain;
    previousFlowDomain2 = [(GRRSchemaGRRFeature *)self previousFlowDomain];
    previousFlowDomain3 = [equalCopy previousFlowDomain];
    v56 = [previousFlowDomain2 isEqual:previousFlowDomain3];

    if (!v56)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  requestTimeBeginMs = self->_requestTimeBeginMs;
  if (requestTimeBeginMs != [equalCopy requestTimeBeginMs])
  {
    goto LABEL_66;
  }

  sharingAppActive = self->_sharingAppActive;
  if (sharingAppActive != [equalCopy sharingAppActive])
  {
    goto LABEL_66;
  }

  sharingEntityPresent = self->_sharingEntityPresent;
  if (sharingEntityPresent != [equalCopy sharingEntityPresent])
  {
    goto LABEL_66;
  }

  sharingRecipientPresent = self->_sharingRecipientPresent;
  if (sharingRecipientPresent != [equalCopy sharingRecipientPresent])
  {
    goto LABEL_66;
  }

  smsAttachmentExists = self->_smsAttachmentExists;
  if (smsAttachmentExists != [equalCopy smsAttachmentExists])
  {
    goto LABEL_66;
  }

  smsAttributeRecipientExists = self->_smsAttributeRecipientExists;
  if (smsAttributeRecipientExists != [equalCopy smsAttributeRecipientExists])
  {
    goto LABEL_66;
  }

  smsAttributeSenderExists = self->_smsAttributeSenderExists;
  if (smsAttributeSenderExists != [equalCopy smsAttributeSenderExists])
  {
    goto LABEL_66;
  }

  smsPhoneNumberMentioned = self->_smsPhoneNumberMentioned;
  if (smsPhoneNumberMentioned != [equalCopy smsPhoneNumberMentioned])
  {
    goto LABEL_66;
  }

  smsTextPayloadExists = self->_smsTextPayloadExists;
  if (smsTextPayloadExists != [equalCopy smsTextPayloadExists])
  {
    goto LABEL_66;
  }

  timeSinceLastValidRequestMs = self->_timeSinceLastValidRequestMs;
  if (timeSinceLastValidRequestMs != [equalCopy timeSinceLastValidRequestMs])
  {
    goto LABEL_66;
  }

  applicationsInForeground = [(GRRSchemaGRRFeature *)self topTopics];
  applicationsInForeground2 = [equalCopy topTopics];
  if ((applicationsInForeground != 0) != (applicationsInForeground2 == 0))
  {
    topTopics = [(GRRSchemaGRRFeature *)self topTopics];
    if (!topTopics)
    {

LABEL_69:
      v72 = 1;
      goto LABEL_67;
    }

    v68 = topTopics;
    topTopics2 = [(GRRSchemaGRRFeature *)self topTopics];
    topTopics3 = [equalCopy topTopics];
    v71 = [topTopics2 isEqual:topTopics3];

    if (v71)
    {
      goto LABEL_69;
    }
  }

  else
  {
LABEL_65:
  }

LABEL_66:
  v72 = 0;
LABEL_67:

  return v72;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  applicationsInForeground = [(GRRSchemaGRRFeature *)self applicationsInForeground];

  if (applicationsInForeground)
  {
    applicationsInForeground2 = [(GRRSchemaGRRFeature *)self applicationsInForeground];
    PBDataWriterWriteSubmessage();
  }

  whichFeature = self->_whichFeature;
  if (whichFeature == 2)
  {
    PBDataWriterWriteUint32Field();
    whichFeature = self->_whichFeature;
  }

  if (whichFeature == 3)
  {
    PBDataWriterWriteBOOLField();
  }

  configuredSiriLanguage = [(GRRSchemaGRRFeature *)self configuredSiriLanguage];

  if (configuredSiriLanguage)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_whichFeature;
  if (v8 == 5)
  {
    PBDataWriterWriteBOOLField();
    v8 = self->_whichFeature;
  }

  if (v8 == 6)
  {
    PBDataWriterWriteDoubleField();
    v8 = self->_whichFeature;
  }

  if (v8 == 7)
  {
    PBDataWriterWriteBOOLField();
  }

  inputOrigin = [(GRRSchemaGRRFeature *)self inputOrigin];

  if (inputOrigin)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_whichFeature;
  if (v10 == 9)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 10)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 11)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 12)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 13)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 14)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 15)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 16)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 17)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 18)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 19)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 20)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 21)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 22)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 23)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 24)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 25)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 26)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 27)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 28)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 29)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 30)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_whichFeature;
  }

  if (v10 == 31)
  {
    PBDataWriterWriteUint32Field();
  }

  previousFlowDomain = [(GRRSchemaGRRFeature *)self previousFlowDomain];

  if (previousFlowDomain)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_whichFeature;
  if (v12 == 33)
  {
    PBDataWriterWriteUint64Field();
    v12 = self->_whichFeature;
  }

  if (v12 == 34)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_whichFeature;
  }

  if (v12 == 35)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_whichFeature;
  }

  if (v12 == 36)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_whichFeature;
  }

  if (v12 == 37)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_whichFeature;
  }

  if (v12 == 38)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_whichFeature;
  }

  if (v12 == 39)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_whichFeature;
  }

  if (v12 == 40)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_whichFeature;
  }

  if (v12 == 41)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_whichFeature;
  }

  if (v12 == 42)
  {
    PBDataWriterWriteUint64Field();
  }

  topTopics = [(GRRSchemaGRRFeature *)self topTopics];

  v14 = toCopy;
  if (topTopics)
  {
    topTopics2 = [(GRRSchemaGRRFeature *)self topTopics];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (void)deleteTopTopics
{
  if (self->_whichFeature == 43)
  {
    self->_whichFeature = 0;
    self->_topTopics = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRRSchemaGRRStringList)topTopics
{
  if (self->_whichFeature == 43)
  {
    v3 = self->_topTopics;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTopTopics:(id)topics
{
  topicsCopy = topics;
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  v9 = 43;
  if (!topicsCopy)
  {
    v9 = 0;
  }

  self->_whichFeature = v9;
  topTopics = self->_topTopics;
  self->_topTopics = topicsCopy;
}

- (void)deleteTimeSinceLastValidRequestMs
{
  if (self->_whichFeature == 42)
  {
    self->_whichFeature = 0;
    self->_timeSinceLastValidRequestMs = 0;
  }
}

- (unint64_t)timeSinceLastValidRequestMs
{
  if (self->_whichFeature == 42)
  {
    return self->_timeSinceLastValidRequestMs;
  }

  else
  {
    return 0;
  }
}

- (void)setTimeSinceLastValidRequestMs:(unint64_t)ms
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 42;
  self->_timeSinceLastValidRequestMs = ms;
}

- (void)deleteSmsTextPayloadExists
{
  if (self->_whichFeature == 41)
  {
    self->_whichFeature = 0;
    self->_smsTextPayloadExists = 0;
  }
}

- (void)setSmsTextPayloadExists:(BOOL)exists
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 41;
  self->_smsTextPayloadExists = exists;
}

- (void)deleteSmsPhoneNumberMentioned
{
  if (self->_whichFeature == 40)
  {
    self->_whichFeature = 0;
    self->_smsPhoneNumberMentioned = 0;
  }
}

- (void)setSmsPhoneNumberMentioned:(BOOL)mentioned
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 40;
  self->_smsPhoneNumberMentioned = mentioned;
}

- (void)deleteSmsAttributeSenderExists
{
  if (self->_whichFeature == 39)
  {
    self->_whichFeature = 0;
    self->_smsAttributeSenderExists = 0;
  }
}

- (void)setSmsAttributeSenderExists:(BOOL)exists
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 39;
  self->_smsAttributeSenderExists = exists;
}

- (void)deleteSmsAttributeRecipientExists
{
  if (self->_whichFeature == 38)
  {
    self->_whichFeature = 0;
    self->_smsAttributeRecipientExists = 0;
  }
}

- (void)setSmsAttributeRecipientExists:(BOOL)exists
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 38;
  self->_smsAttributeRecipientExists = exists;
}

- (void)deleteSmsAttachmentExists
{
  if (self->_whichFeature == 37)
  {
    self->_whichFeature = 0;
    self->_smsAttachmentExists = 0;
  }
}

- (void)setSmsAttachmentExists:(BOOL)exists
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 37;
  self->_smsAttachmentExists = exists;
}

- (void)deleteSharingRecipientPresent
{
  if (self->_whichFeature == 36)
  {
    self->_whichFeature = 0;
    self->_sharingRecipientPresent = 0;
  }
}

- (void)setSharingRecipientPresent:(BOOL)present
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 36;
  self->_sharingRecipientPresent = present;
}

- (void)deleteSharingEntityPresent
{
  if (self->_whichFeature == 35)
  {
    self->_whichFeature = 0;
    self->_sharingEntityPresent = 0;
  }
}

- (void)setSharingEntityPresent:(BOOL)present
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 35;
  self->_sharingEntityPresent = present;
}

- (void)deleteSharingAppActive
{
  if (self->_whichFeature == 34)
  {
    self->_whichFeature = 0;
    self->_sharingAppActive = 0;
  }
}

- (void)setSharingAppActive:(BOOL)active
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 34;
  self->_sharingAppActive = active;
}

- (void)deleteRequestTimeBeginMs
{
  if (self->_whichFeature == 33)
  {
    self->_whichFeature = 0;
    self->_requestTimeBeginMs = 0;
  }
}

- (unint64_t)requestTimeBeginMs
{
  if (self->_whichFeature == 33)
  {
    return self->_requestTimeBeginMs;
  }

  else
  {
    return 0;
  }
}

- (void)setRequestTimeBeginMs:(unint64_t)ms
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 33;
  self->_requestTimeBeginMs = ms;
}

- (void)deletePreviousFlowDomain
{
  if (self->_whichFeature == 32)
  {
    self->_whichFeature = 0;
    self->_previousFlowDomain = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)previousFlowDomain
{
  if (self->_whichFeature == 32)
  {
    v3 = self->_previousFlowDomain;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPreviousFlowDomain:(id)domain
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;
  domainCopy = domain;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 32 * (domainCopy != 0);
  v8 = [domainCopy copy];
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = v8;
}

- (void)deleteNumberOfContactsResolved
{
  if (self->_whichFeature == 31)
  {
    self->_whichFeature = 0;
    self->_numberOfContactsResolved = 0;
  }
}

- (unsigned)numberOfContactsResolved
{
  if (self->_whichFeature == 31)
  {
    return self->_numberOfContactsResolved;
  }

  else
  {
    return 0;
  }
}

- (void)setNumberOfContactsResolved:(unsigned int)resolved
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 31;
  self->_numberOfContactsResolved = resolved;
}

- (void)deleteIsVideoPlaying
{
  if (self->_whichFeature == 30)
  {
    self->_whichFeature = 0;
    self->_isVideoPlaying = 0;
  }
}

- (void)setIsVideoPlaying:(BOOL)playing
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 30;
  self->_isVideoPlaying = playing;
}

- (void)deleteIsTimerActive
{
  if (self->_whichFeature == 29)
  {
    self->_whichFeature = 0;
    self->_isTimerActive = 0;
  }
}

- (void)setIsTimerActive:(BOOL)active
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 29;
  self->_isTimerActive = active;
}

- (void)deleteIsSettingOn
{
  if (self->_whichFeature == 28)
  {
    self->_whichFeature = 0;
    self->_isSettingOn = 0;
  }
}

- (void)setIsSettingOn:(BOOL)on
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 28;
  self->_isSettingOn = on;
}

- (void)deleteIsPreviousTurnSendEmptyMessage
{
  if (self->_whichFeature == 27)
  {
    self->_whichFeature = 0;
    self->_isPreviousTurnSendEmptyMessage = 0;
  }
}

- (void)setIsPreviousTurnSendEmptyMessage:(BOOL)message
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 27;
  self->_isPreviousTurnSendEmptyMessage = message;
}

- (void)deleteIsPhoneNumberContactResolvable
{
  if (self->_whichFeature == 26)
  {
    self->_whichFeature = 0;
    self->_isPhoneNumberContactResolvable = 0;
  }
}

- (void)setIsPhoneNumberContactResolvable:(BOOL)resolvable
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 26;
  self->_isPhoneNumberContactResolvable = resolvable;
}

- (void)deleteIsPhoneNumberAvailable
{
  if (self->_whichFeature == 25)
  {
    self->_whichFeature = 0;
    self->_isPhoneNumberAvailable = 0;
  }
}

- (void)setIsPhoneNumberAvailable:(BOOL)available
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 25;
  self->_isPhoneNumberAvailable = available;
}

- (void)deleteIsPhoneCallPossibleForPhoneCallIntent
{
  if (self->_whichFeature == 24)
  {
    self->_whichFeature = 0;
    self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  }
}

- (void)setIsPhoneCallPossibleForPhoneCallIntent:(BOOL)intent
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 24;
  self->_isPhoneCallPossibleForPhoneCallIntent = intent;
}

- (void)deleteIsPhoneCallPossible
{
  if (self->_whichFeature == 23)
  {
    self->_whichFeature = 0;
    self->_isPhoneCallPossible = 0;
  }
}

- (void)setIsPhoneCallPossible:(BOOL)possible
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 23;
  self->_isPhoneCallPossible = possible;
}

- (void)deleteIsMessagingPossibleForSendMessageIntent
{
  if (self->_whichFeature == 22)
  {
    self->_whichFeature = 0;
    self->_isMessagingPossibleForSendMessageIntent = 0;
  }
}

- (void)setIsMessagingPossibleForSendMessageIntent:(BOOL)intent
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 22;
  self->_isMessagingPossibleForSendMessageIntent = intent;
}

- (void)deleteIsMessagingPossible
{
  if (self->_whichFeature == 21)
  {
    self->_whichFeature = 0;
    self->_isMessagingPossible = 0;
  }
}

- (void)setIsMessagingPossible:(BOOL)possible
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 21;
  self->_isMessagingPossible = possible;
}

- (void)deleteIsMediaItemEntityPresent
{
  if (self->_whichFeature == 20)
  {
    self->_whichFeature = 0;
    self->_isMediaItemEntityPresent = 0;
  }
}

- (void)setIsMediaItemEntityPresent:(BOOL)present
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 20;
  self->_isMediaItemEntityPresent = present;
}

- (void)deleteIsFollowUp
{
  if (self->_whichFeature == 19)
  {
    self->_whichFeature = 0;
    self->_isFollowUp = 0;
  }
}

- (void)setIsFollowUp:(BOOL)up
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 19;
  self->_isFollowUp = up;
}

- (void)deleteIsEmailAvailable
{
  if (self->_whichFeature == 18)
  {
    self->_whichFeature = 0;
    self->_isEmailAvailable = 0;
  }
}

- (void)setIsEmailAvailable:(BOOL)available
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 18;
  self->_isEmailAvailable = available;
}

- (void)deleteIsContactNameResolved
{
  if (self->_whichFeature == 17)
  {
    self->_whichFeature = 0;
    self->_isContactNameResolved = 0;
  }
}

- (void)setIsContactNameResolved:(BOOL)resolved
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 17;
  self->_isContactNameResolved = resolved;
}

- (void)deleteIsArtistPresent
{
  if (self->_whichFeature == 16)
  {
    self->_whichFeature = 0;
    self->_isArtistPresent = 0;
  }
}

- (void)setIsArtistPresent:(BOOL)present
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 16;
  self->_isArtistPresent = present;
}

- (void)deleteIsAppRunning
{
  if (self->_whichFeature == 15)
  {
    self->_whichFeature = 0;
    self->_isAppRunning = 0;
  }
}

- (void)setIsAppRunning:(BOOL)running
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 15;
  self->_isAppRunning = running;
}

- (void)deleteIsAppMatchPresent
{
  if (self->_whichFeature == 14)
  {
    self->_whichFeature = 0;
    self->_isAppMatchPresent = 0;
  }
}

- (void)setIsAppMatchPresent:(BOOL)present
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 14;
  self->_isAppMatchPresent = present;
}

- (void)deleteIsAppInstalled
{
  if (self->_whichFeature == 13)
  {
    self->_whichFeature = 0;
    self->_isAppInstalled = 0;
  }
}

- (void)setIsAppInstalled:(BOOL)installed
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 13;
  self->_isAppInstalled = installed;
}

- (void)deleteIsAudioPlaying
{
  if (self->_whichFeature == 12)
  {
    self->_whichFeature = 0;
    self->_isAudioPlaying = 0;
  }
}

- (void)setIsAudioPlaying:(BOOL)playing
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 12;
  self->_isAudioPlaying = playing;
}

- (void)deleteIsAnnounceEnabled
{
  if (self->_whichFeature == 11)
  {
    self->_whichFeature = 0;
    self->_isAnnounceEnabled = 0;
  }
}

- (void)setIsAnnounceEnabled:(BOOL)enabled
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 11;
  self->_isAnnounceEnabled = enabled;
}

- (void)deleteIsActiveAppointmentPresent
{
  if (self->_whichFeature == 10)
  {
    self->_whichFeature = 0;
    self->_isActiveAppointmentPresent = 0;
  }
}

- (void)setIsActiveAppointmentPresent:(BOOL)present
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 10;
  self->_isActiveAppointmentPresent = present;
}

- (void)deleteIsActiveAlarmPresent
{
  if (self->_whichFeature == 9)
  {
    self->_whichFeature = 0;
    self->_isActiveAlarmPresent = 0;
  }
}

- (void)setIsActiveAlarmPresent:(BOOL)present
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 9;
  self->_isActiveAlarmPresent = present;
}

- (void)deleteInputOrigin
{
  if (self->_whichFeature == 8)
  {
    self->_whichFeature = 0;
    self->_inputOrigin = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)inputOrigin
{
  if (self->_whichFeature == 8)
  {
    v3 = self->_inputOrigin;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInputOrigin:(id)origin
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;
  originCopy = origin;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 8 * (originCopy != 0);
  v8 = [originCopy copy];
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = v8;
}

- (void)deleteDeviceIsPlayingAudio
{
  if (self->_whichFeature == 7)
  {
    self->_whichFeature = 0;
    self->_deviceIsPlayingAudio = 0;
  }
}

- (void)setDeviceIsPlayingAudio:(BOOL)audio
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 7;
  self->_deviceIsPlayingAudio = audio;
}

- (void)deleteContactMatchConfidence
{
  if (self->_whichFeature == 6)
  {
    self->_whichFeature = 0;
    self->_contactMatchConfidence = 0.0;
  }
}

- (double)contactMatchConfidence
{
  result = 0.0;
  if (self->_whichFeature == 6)
  {
    return self->_contactMatchConfidence;
  }

  return result;
}

- (void)setContactMatchConfidence:(double)confidence
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 6;
  self->_contactMatchConfidence = confidence;
}

- (void)deleteContactHasRequestedAddressDetail
{
  if (self->_whichFeature == 5)
  {
    self->_whichFeature = 0;
    self->_contactHasRequestedAddressDetail = 0;
  }
}

- (void)setContactHasRequestedAddressDetail:(BOOL)detail
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 5;
  self->_contactHasRequestedAddressDetail = detail;
}

- (void)deleteConfiguredSiriLanguage
{
  if (self->_whichFeature == 4)
  {
    self->_whichFeature = 0;
    self->_configuredSiriLanguage = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)configuredSiriLanguage
{
  if (self->_whichFeature == 4)
  {
    v3 = self->_configuredSiriLanguage;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConfiguredSiriLanguage:(id)language
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;
  languageCopy = language;

  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 4 * (languageCopy != 0);
  v8 = [languageCopy copy];
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = v8;
}

- (void)deleteCanResolveContactByRelationship
{
  if (self->_whichFeature == 3)
  {
    self->_whichFeature = 0;
    self->_canResolveContactByRelationship = 0;
  }
}

- (void)setCanResolveContactByRelationship:(BOOL)relationship
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_asrRank = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 3;
  self->_canResolveContactByRelationship = relationship;
}

- (void)deleteAsrRank
{
  if (self->_whichFeature == 2)
  {
    self->_whichFeature = 0;
    self->_asrRank = 0;
  }
}

- (unsigned)asrRank
{
  if (self->_whichFeature == 2)
  {
    return self->_asrRank;
  }

  else
  {
    return 0;
  }
}

- (void)setAsrRank:(unsigned int)rank
{
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = 0;

  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = 2;
  self->_asrRank = rank;
}

- (void)deleteApplicationsInForeground
{
  if (self->_whichFeature == 1)
  {
    self->_whichFeature = 0;
    self->_applicationsInForeground = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRRSchemaGRRStringList)applicationsInForeground
{
  if (self->_whichFeature == 1)
  {
    v3 = self->_applicationsInForeground;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setApplicationsInForeground:(id)foreground
{
  foregroundCopy = foreground;
  self->_asrRank = 0;
  self->_canResolveContactByRelationship = 0;
  configuredSiriLanguage = self->_configuredSiriLanguage;
  self->_configuredSiriLanguage = 0;

  self->_contactHasRequestedAddressDetail = 0;
  self->_contactMatchConfidence = 0.0;
  self->_deviceIsPlayingAudio = 0;
  inputOrigin = self->_inputOrigin;
  self->_inputOrigin = 0;

  self->_isActiveAlarmPresent = 0;
  self->_isActiveAppointmentPresent = 0;
  self->_isAnnounceEnabled = 0;
  self->_isAudioPlaying = 0;
  self->_isAppInstalled = 0;
  self->_isAppMatchPresent = 0;
  self->_isAppRunning = 0;
  self->_isArtistPresent = 0;
  self->_isContactNameResolved = 0;
  self->_isEmailAvailable = 0;
  self->_isFollowUp = 0;
  self->_isMediaItemEntityPresent = 0;
  self->_isMessagingPossible = 0;
  self->_isMessagingPossibleForSendMessageIntent = 0;
  self->_isPhoneCallPossible = 0;
  self->_isPhoneCallPossibleForPhoneCallIntent = 0;
  self->_isPhoneNumberAvailable = 0;
  self->_isPhoneNumberContactResolvable = 0;
  self->_isPreviousTurnSendEmptyMessage = 0;
  self->_isSettingOn = 0;
  self->_isTimerActive = 0;
  self->_isVideoPlaying = 0;
  self->_numberOfContactsResolved = 0;
  previousFlowDomain = self->_previousFlowDomain;
  self->_previousFlowDomain = 0;

  self->_requestTimeBeginMs = 0;
  self->_sharingAppActive = 0;
  self->_sharingEntityPresent = 0;
  self->_sharingRecipientPresent = 0;
  self->_smsAttachmentExists = 0;
  self->_smsAttributeRecipientExists = 0;
  self->_smsAttributeSenderExists = 0;
  self->_smsPhoneNumberMentioned = 0;
  self->_smsTextPayloadExists = 0;
  self->_timeSinceLastValidRequestMs = 0;
  topTopics = self->_topTopics;
  self->_topTopics = 0;

  self->_whichFeature = foregroundCopy != 0;
  applicationsInForeground = self->_applicationsInForeground;
  self->_applicationsInForeground = foregroundCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = GRRSchemaGRRFeature;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  applicationsInForeground = [(GRRSchemaGRRFeature *)self applicationsInForeground];
  v7 = [applicationsInForeground applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GRRSchemaGRRFeature *)self deleteApplicationsInForeground];
  }

  topTopics = [(GRRSchemaGRRFeature *)self topTopics];
  v10 = [topTopics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GRRSchemaGRRFeature *)self deleteTopTopics];
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