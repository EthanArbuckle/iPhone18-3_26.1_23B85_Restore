@interface FLOWSchemaFLOWDomainExecutionStarted
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWDomainExecutionStarted)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWDomainExecutionStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWDomainExecutionStarted

- (FLOWSchemaFLOWDomainExecutionStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FLOWSchemaFLOWDomainExecutionStarted;
  v5 = [(FLOWSchemaFLOWDomainExecutionStarted *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"domainExecutionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWDomainExecutionStarted setDomainExecutionType:](v5, "setDomainExecutionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"domainExecutionMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[FLOWSchemaFLOWDomainExecutionMetadata alloc] initWithDictionary:v7];
      [(FLOWSchemaFLOWDomainExecutionStarted *)v5 setDomainExecutionMetadata:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWDomainExecutionStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWDomainExecutionStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWDomainExecutionStarted *)self dictionaryRepresentation];
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
  if (self->_domainExecutionMetadata)
  {
    v4 = [(FLOWSchemaFLOWDomainExecutionStarted *)self domainExecutionMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"domainExecutionMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"domainExecutionMetadata"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(FLOWSchemaFLOWDomainExecutionStarted *)self domainExecutionType];
    v8 = @"FLOWDOMAINEXECUTIONTYPE_UNKNOWN";
    if (v7 <= 399)
    {
      if (v7 <= 202)
      {
        v10 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_NL_INTENT_CONVERTER";
        v18 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_ININTENT_CONVERTER";
        if (v7 != 202)
        {
          v18 = @"FLOWDOMAINEXECUTIONTYPE_UNKNOWN";
        }

        if (v7 != 201)
        {
          v10 = v18;
        }

        v19 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_NOW_PLAYING_QUEUE_FETCH";
        v20 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_INTENT_SELECTION";
        if (v7 != 200)
        {
          v20 = @"FLOWDOMAINEXECUTIONTYPE_UNKNOWN";
        }

        if (v7 != 104)
        {
          v19 = v20;
        }

        if (v7 <= 200)
        {
          v10 = v19;
        }

        v21 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_ONE_SHOT_AUTO_PUNCTUATION_CESRFORMATTER";
        v22 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_WFON_SCREEN_CONTENT_EXTRACTION";
        if (v7 != 103)
        {
          v22 = @"FLOWDOMAINEXECUTIONTYPE_UNKNOWN";
        }

        if (v7 != 102)
        {
          v21 = v22;
        }

        if (v7 == 101)
        {
          v8 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_SHARING_LINK_PRESENTATION";
        }

        if (v7 == 100)
        {
          v8 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_READ_ACTION_SPEECH_API";
        }

        if (v7 > 101)
        {
          v8 = v21;
        }

        v17 = v7 <= 103;
      }

      else
      {
        v10 = @"FLOWDOMAINEXECUTIONTYPE_PHONE_RESOLVE_CRR";
        v11 = @"FLOWDOMAINEXECUTIONTYPE_PHONE_FACETIME_MESSAGE";
        v12 = @"FLOWDOMAINEXECUTIONTYPE_PHONE_RESOLVE_SRR";
        if (v7 != 302)
        {
          v12 = @"FLOWDOMAINEXECUTIONTYPE_UNKNOWN";
        }

        if (v7 != 301)
        {
          v11 = v12;
        }

        if (v7 != 300)
        {
          v10 = v11;
        }

        v13 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_MODIFYING_INTENT";
        v14 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_BLOCKING_INTENT";
        if (v7 != 208)
        {
          v14 = @"FLOWDOMAINEXECUTIONTYPE_UNKNOWN";
        }

        if (v7 != 207)
        {
          v13 = v14;
        }

        if (v7 <= 299)
        {
          v10 = v13;
        }

        v15 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_SEND_HOMEKIT_COMMAND_CONFIGURE";
        v16 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_NATIVE_HOME_STORE_INITIALIZATION";
        if (v7 != 206)
        {
          v16 = @"FLOWDOMAINEXECUTIONTYPE_UNKNOWN";
        }

        if (v7 != 205)
        {
          v15 = v16;
        }

        if (v7 == 204)
        {
          v8 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_SEND_HOMEKIT_COMMAND_ACE";
        }

        if (v7 == 203)
        {
          v8 = @"FLOWDOMAINEXECUTIONTYPE_HOME_AUTOMATION_SEND_HOMEKIT_COMMAND_CONTROL";
        }

        if (v7 > 204)
        {
          v8 = v15;
        }

        v17 = v7 <= 206;
      }

      if (v17)
      {
        v9 = v8;
      }

      else
      {
        v9 = v10;
      }
    }

    else
    {
      switch(v7)
      {
        case 1000:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_AIRPLAY_DEVICE_SEARCH";
          break;
        case 1001:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_AIRPLAY_SET_AUDIO_SESSION_CATEGORY";
          break;
        case 1002:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_RECON_SESSION_CREATE_W_ENDPOINT_FEATURES";
          break;
        case 1003:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_RECON_SESSION_SET_TARGET_AUDIO_SESSION_ID";
          break;
        case 1004:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_AIRPLAY_SET_OUTPUT_DEVICES";
          break;
        case 1005:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_MEDIAREMOTE_SEND_QUEUE";
          break;
        case 1006:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_MEDIAREMOTE_PLAY";
          break;
        case 1007:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_AMS_PURCHASE";
          break;
        case 1008:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_SHAZAM_PERFORM_MATCH";
          break;
        case 1009:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_CLIENT_CONTEXT_SIGNAL";
          break;
        case 1010:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_COMPOUND_SIGNAL";
          break;
        case 1011:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_ENTITY_SEARCH_SIGNAL";
          break;
        case 1012:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_FOREGROUP_APP_SIGNAL";
          break;
        case 1013:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_INTENT_MEDIA_SIGNAL";
          break;
        case 1014:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_LAST_NOW_PLAYING_SIGNAL";
          break;
        case 1015:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_NOW_PLAYING_APP_SIGNAL";
          break;
        case 1016:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_NOW_PLAYING_STATE_SIGNAL";
          break;
        case 1017:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_NOW_PLAYING_USAGE_SIGNAL";
          break;
        case 1018:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_PRIVATE_INTENT_DATA_SIGNAL";
          break;
        case 1019:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_SELECTED_APP_SIGNAL";
          break;
        case 1020:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_SUPPORTED_MEDIA_SIGNAL";
          break;
        case 1021:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_USER_CONTEXT_SIGNAL";
          break;
        case 1022:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_MEGA_MODEL_LAST_NOW_PLAYING_SIGNAL";
          break;
        case 1023:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_MEGA_MODEL_NOW_PLAYING_COUNT_SIGNAL";
          break;
        case 1024:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_MEGA_MODEL_NOW_PLAYING_RECENCY_SIGNAL";
          break;
        case 1025:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_PIRENE_REQUEST_SIGNAL";
          break;
        case 1026:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_LIVE_ACTIVITY_WAIT";
          break;
        case 1027:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_TIMER_ALARM_MOBILE_TIMER_WAIT";
          break;
        case 1028:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_TIMER_ALARM_COORDINATION_WAIT";
          break;
        case 1029:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_BOLT_ENABLED_SIGNAL";
          break;
        case 1030:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_USER_RECOGNIZED_SIGNAL";
          break;
        case 1031:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MEDIAPLAYER_APP_SELECTION_FREE_MEDIA_CONTENT_SIGNAL";
          break;
        case 1032:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_CONTACT_RESOLUTION_CRR";
          break;
        case 1033:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_SMART_APP_SELECTION";
          break;
        case 1034:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_RESOLVE_SRR_ENTITY";
          break;
        case 1035:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_AUTO_SEND_MODEL_INFERENCE";
          break;
        case 1036:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_CORE_EMOJI_IMAGE_CAPTION";
          break;
        case 1037:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_SIRI_REMEMBERS_WRITE";
          break;
        case 1038:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_MESSAGE_SIRI_REMEMBERS_READ";
          break;
        case 1039:
          v9 = @"FLOWDOMAINEXECUTIONTYPE_APPINTENT";
          break;
        default:
          if (v7 == 401)
          {
            v8 = @"FLOWDOMAINEXECUTIONTYPE_VOICESHORTCUTS_LINK_EVENT_WAIT";
          }

          if (v7 == 400)
          {
            v9 = @"FLOWDOMAINEXECUTIONTYPE_VOICESHORTCUTS_SHORTCUT_EVENT_WAIT";
          }

          else
          {
            v9 = v8;
          }

          break;
      }
    }

    [v3 setObject:v9 forKeyedSubscript:@"domainExecutionType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_domainExecutionType;
  }

  else
  {
    v2 = 0;
  }

  return [(FLOWSchemaFLOWDomainExecutionMetadata *)self->_domainExecutionMetadata hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (domainExecutionType = self->_domainExecutionType, domainExecutionType == [v4 domainExecutionType]))
      {
        v6 = [(FLOWSchemaFLOWDomainExecutionStarted *)self domainExecutionMetadata];
        v7 = [v4 domainExecutionMetadata];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(FLOWSchemaFLOWDomainExecutionStarted *)self domainExecutionMetadata];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(FLOWSchemaFLOWDomainExecutionStarted *)self domainExecutionMetadata];
          v12 = [v4 domainExecutionMetadata];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(FLOWSchemaFLOWDomainExecutionStarted *)self domainExecutionMetadata];

  v5 = v7;
  if (v4)
  {
    v6 = [(FLOWSchemaFLOWDomainExecutionStarted *)self domainExecutionMetadata];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWDomainExecutionStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWDomainExecutionStarted *)self domainExecutionMetadata:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(FLOWSchemaFLOWDomainExecutionStarted *)self deleteDomainExecutionMetadata];
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