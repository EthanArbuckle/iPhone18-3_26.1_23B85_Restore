@interface FLOWSchemaFLOWMediaPlayerContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWMediaPlayerContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWMediaPlayerContext)initWithJSON:(id)a3;
- (FLOWSchemaFLOWMediaPlayerPlaybackContext)mediaPlayerPlaybackContext;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)activeSubscriptionsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addActiveSubscriptions:(int)a3;
- (void)deleteMediaPlayerPlaybackContext;
- (void)setHasAirPlayRouteSettingStatus:(BOOL)a3;
- (void)setHasAirPlaySuccessfullyPlayingDevicesCount:(BOOL)a3;
- (void)setHasAirPlayTargetedDevicesCount:(BOOL)a3;
- (void)setHasAppleMusicVoicePreviewOfferNotShown:(BOOL)a3;
- (void)setHasAppleMusicVoiceUserSubscriptionState:(BOOL)a3;
- (void)setHasIsAppleMusicVoiceEligible:(BOOL)a3;
- (void)setHasIsMusicSubscriber:(BOOL)a3;
- (void)setHasIsSiriForAirPlayRequest:(BOOL)a3;
- (void)setHasIsWholeHouseAudio:(BOOL)a3;
- (void)setHasMediaType:(BOOL)a3;
- (void)setHasUserPersona:(BOOL)a3;
- (void)setHasWasOnScreenItemSelected:(BOOL)a3;
- (void)setMediaPlayerPlaybackContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWMediaPlayerContext

- (FLOWSchemaFLOWMediaPlayerPlaybackContext)mediaPlayerPlaybackContext
{
  if (self->_whichMediaplayertaskcontext == 11)
  {
    v3 = self->_mediaPlayerPlaybackContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FLOWSchemaFLOWMediaPlayerContext)initWithDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46.receiver = self;
  v46.super_class = FLOWSchemaFLOWMediaPlayerContext;
  v5 = [(FLOWSchemaFLOWMediaPlayerContext *)&v46 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"taskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setTaskType:](v5, "setTaskType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"mediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setMediaType:](v5, "setMediaType:", [v7 intValue]);
    }

    v38 = v7;
    v39 = v6;
    v8 = [v4 objectForKeyedSubscript:@"isWholeHouseAudio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setIsWholeHouseAudio:](v5, "setIsWholeHouseAudio:", [v8 BOOLValue]);
    }

    v37 = v8;
    v9 = [v4 objectForKeyedSubscript:@"wholeHouseAudioDestinationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[FLOWSchemaFLOWholeHouseAudioDestinationContext alloc] initWithDictionary:v9];
      [(FLOWSchemaFLOWMediaPlayerContext *)v5 setWholeHouseAudioDestinationContext:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"isMusicSubscriber"];
    objc_opt_class();
    v41 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setIsMusicSubscriber:](v5, "setIsMusicSubscriber:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"activeSubscriptions"];
    objc_opt_class();
    v40 = v12;
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v43;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v42 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWMediaPlayerContext addActiveSubscriptions:](v5, "addActiveSubscriptions:", [v18 intValue]);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v15);
      }
    }

    v19 = [v4 objectForKeyedSubscript:@"appleMusicVoiceUserSubscriptionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setAppleMusicVoiceUserSubscriptionState:](v5, "setAppleMusicVoiceUserSubscriptionState:", [v19 intValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"appleMusicVoicePreviewOfferNotShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setAppleMusicVoicePreviewOfferNotShown:](v5, "setAppleMusicVoicePreviewOfferNotShown:", [v20 intValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"isAppleMusicVoiceEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setIsAppleMusicVoiceEligible:](v5, "setIsAppleMusicVoiceEligible:", [v21 BOOLValue]);
    }

    v34 = v21;
    v22 = [v4 objectForKeyedSubscript:@"mediaPlayerPlaybackContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[FLOWSchemaFLOWMediaPlayerPlaybackContext alloc] initWithDictionary:v22];
      [(FLOWSchemaFLOWMediaPlayerContext *)v5 setMediaPlayerPlaybackContext:v23];
    }

    v36 = v19;
    v24 = [v4 objectForKeyedSubscript:@"isSiriForAirPlayRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setIsSiriForAirPlayRequest:](v5, "setIsSiriForAirPlayRequest:", [v24 BOOLValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"airPlayTargetedDevicesCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setAirPlayTargetedDevicesCount:](v5, "setAirPlayTargetedDevicesCount:", [v25 unsignedIntValue]);
    }

    v33 = v22;
    v26 = [v4 objectForKeyedSubscript:@"airPlaySuccessfullyPlayingDevicesCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setAirPlaySuccessfullyPlayingDevicesCount:](v5, "setAirPlaySuccessfullyPlayingDevicesCount:", [v26 unsignedIntValue]);
    }

    v35 = v20;
    v27 = [v4 objectForKeyedSubscript:@"airPlayRouteSettingStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setAirPlayRouteSettingStatus:](v5, "setAirPlayRouteSettingStatus:", [v27 intValue]);
    }

    v28 = v9;
    v29 = [v4 objectForKeyedSubscript:@"userPersona"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setUserPersona:](v5, "setUserPersona:", [v29 intValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"wasOnScreenItemSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerContext setWasOnScreenItemSelected:](v5, "setWasOnScreenItemSelected:", [v30 BOOLValue]);
    }

    v31 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWMediaPlayerContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMediaPlayerContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWMediaPlayerContext *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_activeSubscriptions count])
  {
    v4 = [(FLOWSchemaFLOWMediaPlayerContext *)self activeSubscriptions];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"activeSubscriptions"];
  }

  v6 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v6 & 0x400) != 0)
  {
    v7 = [(FLOWSchemaFLOWMediaPlayerContext *)self airPlayRouteSettingStatus]- 1;
    if (v7 > 5)
    {
      v8 = @"FLOWMEDIAPLAYERSETAIRPLAYROUTESSTATUS_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D5AA0[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"airPlayRouteSettingStatus"];
    v6 = *(&self->_wasOnScreenItemSelected + 1);
  }

  if ((v6 & 0x200) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWMediaPlayerContext airPlaySuccessfullyPlayingDevicesCount](self, "airPlaySuccessfullyPlayingDevicesCount")}];
    [v3 setObject:v12 forKeyedSubscript:@"airPlaySuccessfullyPlayingDevicesCount"];

    v6 = *(&self->_wasOnScreenItemSelected + 1);
    if ((v6 & 0x100) == 0)
    {
LABEL_10:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_10;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWMediaPlayerContext airPlayTargetedDevicesCount](self, "airPlayTargetedDevicesCount")}];
  [v3 setObject:v13 forKeyedSubscript:@"airPlayTargetedDevicesCount"];

  v6 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_22:
  v14 = [(FLOWSchemaFLOWMediaPlayerContext *)self appleMusicVoicePreviewOfferNotShown]- 1;
  if (v14 > 0x15)
  {
    v15 = @"FLOWAPPLEMUSICVOICEPREVIEWOFFERNOTSHOWNREASON_UNKNOWN";
  }

  else
  {
    v15 = off_1E78D5AD0[v14];
  }

  [v3 setObject:v15 forKeyedSubscript:@"appleMusicVoicePreviewOfferNotShown"];
  v6 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v6 & 0x10) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_26:
  v16 = [(FLOWSchemaFLOWMediaPlayerContext *)self appleMusicVoiceUserSubscriptionState]- 1;
  if (v16 > 3)
  {
    v17 = @"FLOWAPPLEMUSICVOICEUSERSUBSCRIPTIONSTATE_UNKNOWN";
  }

  else
  {
    v17 = off_1E78D5B80[v16];
  }

  [v3 setObject:v17 forKeyedSubscript:@"appleMusicVoiceUserSubscriptionState"];
  v6 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerContext isAppleMusicVoiceEligible](self, "isAppleMusicVoiceEligible")}];
  [v3 setObject:v18 forKeyedSubscript:@"isAppleMusicVoiceEligible"];

  v6 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v6 & 8) == 0)
  {
LABEL_14:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerContext isMusicSubscriber](self, "isMusicSubscriber")}];
  [v3 setObject:v19 forKeyedSubscript:@"isMusicSubscriber"];

  v6 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v6 & 0x80) == 0)
  {
LABEL_15:
    if ((v6 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_32:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerContext isSiriForAirPlayRequest](self, "isSiriForAirPlayRequest")}];
  [v3 setObject:v20 forKeyedSubscript:@"isSiriForAirPlayRequest"];

  if ((*(&self->_wasOnScreenItemSelected + 1) & 4) != 0)
  {
LABEL_16:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerContext isWholeHouseAudio](self, "isWholeHouseAudio")}];
    [v3 setObject:v9 forKeyedSubscript:@"isWholeHouseAudio"];
  }

LABEL_17:
  if (self->_mediaPlayerPlaybackContext)
  {
    v10 = [(FLOWSchemaFLOWMediaPlayerContext *)self mediaPlayerPlaybackContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"mediaPlayerPlaybackContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"mediaPlayerPlaybackContext"];
    }
  }

  v22 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v22 & 2) != 0)
  {
    v26 = [(FLOWSchemaFLOWMediaPlayerContext *)self mediaType]- 1;
    if (v26 > 0x1B)
    {
      v27 = @"FLOWMEDIATYPE_UNKNOWN";
    }

    else
    {
      v27 = off_1E78D5BA0[v26];
    }

    [v3 setObject:v27 forKeyedSubscript:@"mediaType"];
    v22 = *(&self->_wasOnScreenItemSelected + 1);
    if ((v22 & 1) == 0)
    {
LABEL_38:
      if ((v22 & 0x800) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_52;
    }
  }

  else if ((v22 & 1) == 0)
  {
    goto LABEL_38;
  }

  v28 = [(FLOWSchemaFLOWMediaPlayerContext *)self taskType]- 1;
  if (v28 > 0x22)
  {
    v29 = @"FLOWMEDIAPLAYERTASKTYPE_UNKNOWN";
  }

  else
  {
    v29 = off_1E78D5C80[v28];
  }

  [v3 setObject:v29 forKeyedSubscript:@"taskType"];
  v22 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v22 & 0x800) == 0)
  {
LABEL_39:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_52:
  v30 = [(FLOWSchemaFLOWMediaPlayerContext *)self userPersona]- 1;
  if (v30 > 5)
  {
    v31 = @"INFERENCEAPPSELECTIONUSERPERSONA_UNKNOWN";
  }

  else
  {
    v31 = off_1E78D5D98[v30];
  }

  [v3 setObject:v31 forKeyedSubscript:@"userPersona"];
  if ((*(&self->_wasOnScreenItemSelected + 1) & 0x1000) != 0)
  {
LABEL_40:
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerContext wasOnScreenItemSelected](self, "wasOnScreenItemSelected")}];
    [v3 setObject:v23 forKeyedSubscript:@"wasOnScreenItemSelected"];
  }

LABEL_41:
  if (self->_wholeHouseAudioDestinationContext)
  {
    v24 = [(FLOWSchemaFLOWMediaPlayerContext *)self wholeHouseAudioDestinationContext];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"wholeHouseAudioDestinationContext"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"wholeHouseAudioDestinationContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v33 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v3 & 1) == 0)
  {
    v22 = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v22 = 2654435761 * self->_taskType;
  if ((v3 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = 2654435761 * self->_mediaType;
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isWholeHouseAudio;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = [(FLOWSchemaFLOWholeHouseAudioDestinationContext *)self->_wholeHouseAudioDestinationContext hash];
  if ((*(&self->_wasOnScreenItemSelected + 1) & 8) != 0)
  {
    v6 = 2654435761 * self->_isMusicSubscriber;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSArray *)self->_activeSubscriptions hash];
  v8 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v8 & 0x10) == 0)
  {
    v9 = 0;
    if ((v8 & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v10 = 0;
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v9 = 2654435761 * self->_appleMusicVoiceUserSubscriptionState;
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = 2654435761 * self->_appleMusicVoicePreviewOfferNotShown;
  if ((v8 & 0x40) != 0)
  {
LABEL_14:
    v11 = 2654435761 * self->_isAppleMusicVoiceEligible;
    goto LABEL_18;
  }

LABEL_17:
  v11 = 0;
LABEL_18:
  v12 = [(FLOWSchemaFLOWMediaPlayerPlaybackContext *)self->_mediaPlayerPlaybackContext hash];
  if ((*(&self->_wasOnScreenItemSelected + 1) & 0x80) != 0)
  {
    v13 = 2654435761 * self->_isSiriForAirPlayRequest;
    if ((*(&self->_wasOnScreenItemSelected + 1) & 0x100) != 0)
    {
LABEL_20:
      v14 = 2654435761 * self->_airPlayTargetedDevicesCount;
      if ((*(&self->_wasOnScreenItemSelected + 1) & 0x200) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v13 = 0;
    if ((*(&self->_wasOnScreenItemSelected + 1) & 0x100) != 0)
    {
      goto LABEL_20;
    }
  }

  v14 = 0;
  if ((*(&self->_wasOnScreenItemSelected + 1) & 0x200) != 0)
  {
LABEL_21:
    v15 = 2654435761 * self->_airPlaySuccessfullyPlayingDevicesCount;
    if ((*(&self->_wasOnScreenItemSelected + 1) & 0x400) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
  if ((*(&self->_wasOnScreenItemSelected + 1) & 0x400) != 0)
  {
LABEL_22:
    v16 = 2654435761 * self->_airPlayRouteSettingStatus;
    if ((*(&self->_wasOnScreenItemSelected + 1) & 0x800) != 0)
    {
      goto LABEL_23;
    }

LABEL_29:
    v17 = 0;
    if ((*(&self->_wasOnScreenItemSelected + 1) & 0x1000) != 0)
    {
      goto LABEL_24;
    }

LABEL_30:
    v18 = 0;
    return v21 ^ v22 ^ v4 ^ v6 ^ v5 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_28:
  v16 = 0;
  if ((*(&self->_wasOnScreenItemSelected + 1) & 0x800) == 0)
  {
    goto LABEL_29;
  }

LABEL_23:
  v17 = 2654435761 * self->_userPersona;
  if ((*(&self->_wasOnScreenItemSelected + 1) & 0x1000) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v18 = 2654435761 * self->_wasOnScreenItemSelected;
  return v21 ^ v22 ^ v4 ^ v6 ^ v5 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichMediaplayertaskcontext = self->_whichMediaplayertaskcontext;
  if (whichMediaplayertaskcontext != [v4 whichMediaplayertaskcontext])
  {
    goto LABEL_43;
  }

  v6 = *(&self->_wasOnScreenItemSelected + 1);
  v7 = *(v4 + 93);
  if ((v6 & 1) != (v7 & 1))
  {
    goto LABEL_43;
  }

  if (v6)
  {
    taskType = self->_taskType;
    if (taskType != [v4 taskType])
    {
      goto LABEL_43;
    }

    v6 = *(&self->_wasOnScreenItemSelected + 1);
    v7 = *(v4 + 93);
  }

  v9 = (v6 >> 1) & 1;
  if (v9 != ((v7 >> 1) & 1))
  {
    goto LABEL_43;
  }

  if (v9)
  {
    mediaType = self->_mediaType;
    if (mediaType != [v4 mediaType])
    {
      goto LABEL_43;
    }

    v6 = *(&self->_wasOnScreenItemSelected + 1);
    v7 = *(v4 + 93);
  }

  v11 = (v6 >> 2) & 1;
  if (v11 != ((v7 >> 2) & 1))
  {
    goto LABEL_43;
  }

  if (v11)
  {
    isWholeHouseAudio = self->_isWholeHouseAudio;
    if (isWholeHouseAudio != [v4 isWholeHouseAudio])
    {
      goto LABEL_43;
    }
  }

  v13 = [(FLOWSchemaFLOWMediaPlayerContext *)self wholeHouseAudioDestinationContext];
  v14 = [v4 wholeHouseAudioDestinationContext];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_42;
  }

  v15 = [(FLOWSchemaFLOWMediaPlayerContext *)self wholeHouseAudioDestinationContext];
  if (v15)
  {
    v16 = v15;
    v17 = [(FLOWSchemaFLOWMediaPlayerContext *)self wholeHouseAudioDestinationContext];
    v18 = [v4 wholeHouseAudioDestinationContext];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v20 = (*(&self->_wasOnScreenItemSelected + 1) >> 3) & 1;
  if (v20 != ((*(v4 + 93) >> 3) & 1))
  {
    goto LABEL_43;
  }

  if (v20)
  {
    isMusicSubscriber = self->_isMusicSubscriber;
    if (isMusicSubscriber != [v4 isMusicSubscriber])
    {
      goto LABEL_43;
    }
  }

  v13 = [(FLOWSchemaFLOWMediaPlayerContext *)self activeSubscriptions];
  v14 = [v4 activeSubscriptions];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_42;
  }

  v22 = [(FLOWSchemaFLOWMediaPlayerContext *)self activeSubscriptions];
  if (v22)
  {
    v23 = v22;
    v24 = [(FLOWSchemaFLOWMediaPlayerContext *)self activeSubscriptions];
    v25 = [v4 activeSubscriptions];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v27 = *(&self->_wasOnScreenItemSelected + 1);
  v28 = (v27 >> 4) & 1;
  v29 = *(v4 + 93);
  if (v28 != ((v29 >> 4) & 1))
  {
    goto LABEL_43;
  }

  if (v28)
  {
    appleMusicVoiceUserSubscriptionState = self->_appleMusicVoiceUserSubscriptionState;
    if (appleMusicVoiceUserSubscriptionState != [v4 appleMusicVoiceUserSubscriptionState])
    {
      goto LABEL_43;
    }

    v27 = *(&self->_wasOnScreenItemSelected + 1);
    v29 = *(v4 + 93);
  }

  v31 = (v27 >> 5) & 1;
  if (v31 != ((v29 >> 5) & 1))
  {
    goto LABEL_43;
  }

  if (v31)
  {
    appleMusicVoicePreviewOfferNotShown = self->_appleMusicVoicePreviewOfferNotShown;
    if (appleMusicVoicePreviewOfferNotShown != [v4 appleMusicVoicePreviewOfferNotShown])
    {
      goto LABEL_43;
    }

    v27 = *(&self->_wasOnScreenItemSelected + 1);
    v29 = *(v4 + 93);
  }

  v33 = (v27 >> 6) & 1;
  if (v33 != ((v29 >> 6) & 1))
  {
    goto LABEL_43;
  }

  if (v33)
  {
    isAppleMusicVoiceEligible = self->_isAppleMusicVoiceEligible;
    if (isAppleMusicVoiceEligible != [v4 isAppleMusicVoiceEligible])
    {
      goto LABEL_43;
    }
  }

  v13 = [(FLOWSchemaFLOWMediaPlayerContext *)self mediaPlayerPlaybackContext];
  v14 = [v4 mediaPlayerPlaybackContext];
  if ((v13 != 0) == (v14 == 0))
  {
LABEL_42:

    goto LABEL_43;
  }

  v35 = [(FLOWSchemaFLOWMediaPlayerContext *)self mediaPlayerPlaybackContext];
  if (v35)
  {
    v36 = v35;
    v37 = [(FLOWSchemaFLOWMediaPlayerContext *)self mediaPlayerPlaybackContext];
    v38 = [v4 mediaPlayerPlaybackContext];
    v39 = [v37 isEqual:v38];

    if (!v39)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v42 = *(&self->_wasOnScreenItemSelected + 1);
  v43 = (v42 >> 7) & 1;
  v44 = *(v4 + 93);
  if (v43 == ((v44 >> 7) & 1))
  {
    if (v43)
    {
      isSiriForAirPlayRequest = self->_isSiriForAirPlayRequest;
      if (isSiriForAirPlayRequest != [v4 isSiriForAirPlayRequest])
      {
        goto LABEL_43;
      }

      v42 = *(&self->_wasOnScreenItemSelected + 1);
      v44 = *(v4 + 93);
    }

    v46 = (v42 >> 8) & 1;
    if (v46 == ((v44 >> 8) & 1))
    {
      if (v46)
      {
        airPlayTargetedDevicesCount = self->_airPlayTargetedDevicesCount;
        if (airPlayTargetedDevicesCount != [v4 airPlayTargetedDevicesCount])
        {
          goto LABEL_43;
        }

        v42 = *(&self->_wasOnScreenItemSelected + 1);
        v44 = *(v4 + 93);
      }

      v48 = (v42 >> 9) & 1;
      if (v48 == ((v44 >> 9) & 1))
      {
        if (v48)
        {
          airPlaySuccessfullyPlayingDevicesCount = self->_airPlaySuccessfullyPlayingDevicesCount;
          if (airPlaySuccessfullyPlayingDevicesCount != [v4 airPlaySuccessfullyPlayingDevicesCount])
          {
            goto LABEL_43;
          }

          v42 = *(&self->_wasOnScreenItemSelected + 1);
          v44 = *(v4 + 93);
        }

        v50 = (v42 >> 10) & 1;
        if (v50 == ((v44 >> 10) & 1))
        {
          if (v50)
          {
            airPlayRouteSettingStatus = self->_airPlayRouteSettingStatus;
            if (airPlayRouteSettingStatus != [v4 airPlayRouteSettingStatus])
            {
              goto LABEL_43;
            }

            v42 = *(&self->_wasOnScreenItemSelected + 1);
            v44 = *(v4 + 93);
          }

          v52 = (v42 >> 11) & 1;
          if (v52 == ((v44 >> 11) & 1))
          {
            if (v52)
            {
              userPersona = self->_userPersona;
              if (userPersona != [v4 userPersona])
              {
                goto LABEL_43;
              }

              v42 = *(&self->_wasOnScreenItemSelected + 1);
              v44 = *(v4 + 93);
            }

            v54 = (v42 >> 12) & 1;
            if (v54 == ((v44 >> 12) & 1))
            {
              if (!v54 || (wasOnScreenItemSelected = self->_wasOnScreenItemSelected, wasOnScreenItemSelected == [v4 wasOnScreenItemSelected]))
              {
                v40 = 1;
                goto LABEL_44;
              }
            }
          }
        }
      }
    }
  }

LABEL_43:
  v40 = 0;
LABEL_44:

  return v40;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(&self->_wasOnScreenItemSelected + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_wasOnScreenItemSelected + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*(&self->_wasOnScreenItemSelected + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  v6 = [(FLOWSchemaFLOWMediaPlayerContext *)self wholeHouseAudioDestinationContext];

  if (v6)
  {
    v7 = [(FLOWSchemaFLOWMediaPlayerContext *)self wholeHouseAudioDestinationContext];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_wasOnScreenItemSelected + 1) & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_activeSubscriptions;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v13 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v13 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v13 = *(&self->_wasOnScreenItemSelected + 1);
    if ((v13 & 0x20) == 0)
    {
LABEL_18:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v13 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  PBDataWriterWriteInt32Field();
  if ((*(&self->_wasOnScreenItemSelected + 1) & 0x40) != 0)
  {
LABEL_19:
    PBDataWriterWriteBOOLField();
  }

LABEL_20:
  v14 = [(FLOWSchemaFLOWMediaPlayerContext *)self mediaPlayerPlaybackContext];

  if (v14)
  {
    v15 = [(FLOWSchemaFLOWMediaPlayerContext *)self mediaPlayerPlaybackContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v16 & 0x80) != 0)
  {
    PBDataWriterWriteBOOLField();
    v16 = *(&self->_wasOnScreenItemSelected + 1);
    if ((v16 & 0x100) == 0)
    {
LABEL_24:
      if ((v16 & 0x200) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }
  }

  else if ((*(&self->_wasOnScreenItemSelected + 1) & 0x100) == 0)
  {
    goto LABEL_24;
  }

  PBDataWriterWriteUint32Field();
  v16 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v16 & 0x200) == 0)
  {
LABEL_25:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteUint32Field();
  v16 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v16 & 0x400) == 0)
  {
LABEL_26:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_27;
    }

LABEL_40:
    PBDataWriterWriteInt32Field();
    if ((*(&self->_wasOnScreenItemSelected + 1) & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_39:
  PBDataWriterWriteInt32Field();
  v16 = *(&self->_wasOnScreenItemSelected + 1);
  if ((v16 & 0x800) != 0)
  {
    goto LABEL_40;
  }

LABEL_27:
  if ((v16 & 0x1000) != 0)
  {
LABEL_28:
    PBDataWriterWriteBOOLField();
  }

LABEL_29:
}

- (void)setHasWasOnScreenItemSelected:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xEFFF | v3;
}

- (void)setHasUserPersona:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xF7FF | v3;
}

- (void)setHasAirPlayRouteSettingStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFBFF | v3;
}

- (void)setHasAirPlaySuccessfullyPlayingDevicesCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFDFF | v3;
}

- (void)setHasAirPlayTargetedDevicesCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFEFF | v3;
}

- (void)setHasIsSiriForAirPlayRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFF7F | v3;
}

- (void)deleteMediaPlayerPlaybackContext
{
  if (self->_whichMediaplayertaskcontext == 11)
  {
    self->_whichMediaplayertaskcontext = 0;
    self->_mediaPlayerPlaybackContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMediaPlayerPlaybackContext:(id)a3
{
  v3 = 11;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichMediaplayertaskcontext = v3;
  objc_storeStrong(&self->_mediaPlayerPlaybackContext, a3);
}

- (void)setHasIsAppleMusicVoiceEligible:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFFBF | v3;
}

- (void)setHasAppleMusicVoicePreviewOfferNotShown:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFFDF | v3;
}

- (void)setHasAppleMusicVoiceUserSubscriptionState:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFFEF | v3;
}

- (int)activeSubscriptionsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_activeSubscriptions objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addActiveSubscriptions:(int)a3
{
  v3 = *&a3;
  activeSubscriptions = self->_activeSubscriptions;
  if (!activeSubscriptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_activeSubscriptions;
    self->_activeSubscriptions = v6;

    activeSubscriptions = self->_activeSubscriptions;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)activeSubscriptions addObject:v8];
}

- (void)setHasIsMusicSubscriber:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFFF7 | v3;
}

- (void)setHasIsWholeHouseAudio:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFFFB | v3;
}

- (void)setHasMediaType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasOnScreenItemSelected + 1) = *(&self->_wasOnScreenItemSelected + 1) & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWMediaPlayerContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWMediaPlayerContext *)self wholeHouseAudioDestinationContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWMediaPlayerContext *)self deleteWholeHouseAudioDestinationContext];
  }

  v9 = [(FLOWSchemaFLOWMediaPlayerContext *)self mediaPlayerPlaybackContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWMediaPlayerContext *)self deleteMediaPlayerPlaybackContext];
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