@interface INFERENCESchemaINFERENCEMusicTrainingIndependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEMusicTrainingIndependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEMusicTrainingIndependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppSelectionUses:(BOOL)uses;
- (void)setHasCommonForegroundAppRecency:(BOOL)recency;
- (void)setHasForegroundBundleRecencyS:(BOOL)s;
- (void)setHasIsClientDaylight:(BOOL)daylight;
- (void)setHasIsClientNavigating:(BOOL)navigating;
- (void)setHasIsClientWorkout:(BOOL)workout;
- (void)setHasIsContentFree:(BOOL)free;
- (void)setHasIsMediaAlbumPresent:(BOOL)present;
- (void)setHasIsMediaArtistPresent:(BOOL)present;
- (void)setHasIsMediaGenrePresent:(BOOL)present;
- (void)setHasIsMediaMoodPresent:(BOOL)present;
- (void)setHasIsMediaNamePresent:(BOOL)present;
- (void)setHasIsMediaReleaseDatePresent:(BOOL)present;
- (void)setHasIsPireneRequest:(BOOL)request;
- (void)setHasIsUserRecognized:(BOOL)recognized;
- (void)setHasMediaParsecCategory:(BOOL)category;
- (void)setHasMediaType:(BOOL)type;
- (void)setHasModelVersion:(BOOL)version;
- (void)setHasNowPlayingLastBundleRecencyS:(BOOL)s;
- (void)setHasNowPlayingState:(BOOL)state;
- (void)setHasRawClientHourOfDay:(BOOL)day;
- (void)setHasRawLanguage:(BOOL)language;
- (void)setHasRawLocale:(BOOL)locale;
- (void)setHasRawNowPlayingState:(BOOL)state;
- (void)setHasRawRegion:(BOOL)region;
- (void)setHasResolutionType:(BOOL)type;
- (void)setHasServerSearchResultsMediaType:(BOOL)type;
- (void)setHasSirikitResponseCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEMusicTrainingIndependentSignals

- (INFERENCESchemaINFERENCEMusicTrainingIndependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v63.receiver = self;
  v63.super_class = INFERENCESchemaINFERENCEMusicTrainingIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCEMusicTrainingIndependentSignals *)&v63 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clientDayOfWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setClientDayOfWeek:](v5, "setClientDayOfWeek:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"rawClientHourOfDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setRawClientHourOfDay:](v5, "setRawClientHourOfDay:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isMediaAlbumPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsMediaAlbumPresent:](v5, "setIsMediaAlbumPresent:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isMediaArtistPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsMediaArtistPresent:](v5, "setIsMediaArtistPresent:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isMediaGenrePresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsMediaGenrePresent:](v5, "setIsMediaGenrePresent:", [v10 BOOLValue]);
    }

    v50 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"isMediaMoodPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsMediaMoodPresent:](v5, "setIsMediaMoodPresent:", [v11 BOOLValue]);
    }

    v12 = v9;
    v54 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"isMediaNamePresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsMediaNamePresent:](v5, "setIsMediaNamePresent:", [v13 BOOLValue]);
    }

    v14 = v8;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"isMediaReleaseDatePresent"];
    objc_opt_class();
    v62 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsMediaReleaseDatePresent:](v5, "setIsMediaReleaseDatePresent:", [v15 BOOLValue]);
    }

    v16 = v7;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingLastBundleRecencyS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setNowPlayingLastBundleRecencyS:](v5, "setNowPlayingLastBundleRecencyS:", [v17 intValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"rawLanguage"];
    objc_opt_class();
    v61 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setRawLanguage:](v5, "setRawLanguage:", [v18 longLongValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"rawLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setRawLocale:](v5, "setRawLocale:", [v19 longLongValue]);
    }

    v46 = v19;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"rawRegion"];
    objc_opt_class();
    v60 = v20;
    v53 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setRawRegion:](v5, "setRawRegion:", [v20 longLongValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"isClientDaylight"];
    objc_opt_class();
    v59 = v21;
    v52 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsClientDaylight:](v5, "setIsClientDaylight:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isClientNavigating"];
    objc_opt_class();
    v58 = v22;
    v51 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsClientNavigating:](v5, "setIsClientNavigating:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"isClientWorkout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsClientWorkout:](v5, "setIsClientWorkout:", [v23 BOOLValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
    objc_opt_class();
    v57 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setMediaType:](v5, "setMediaType:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setNowPlayingState:](v5, "setNowPlayingState:", [v25 intValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"isPireneRequest"];
    objc_opt_class();
    v56 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsPireneRequest:](v5, "setIsPireneRequest:", [v26 BOOLValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"foregroundBundleRecencyS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v27 doubleValue];
      [(INFERENCESchemaINFERENCEMusicTrainingIndependentSignals *)v5 setForegroundBundleRecencyS:?];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"mediaParsecCategory"];
    objc_opt_class();
    v55 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setMediaParsecCategory:](v5, "setMediaParsecCategory:", [v28 intValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"sirikitResponseCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setSirikitResponseCode:](v5, "setSirikitResponseCode:", [v29 intValue]);
    }

    v49 = v11;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"appSelectionUses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setAppSelectionUses:](v5, "setAppSelectionUses:", [v30 intValue]);
    }

    v48 = v13;
    v31 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setModelVersion:](v5, "setModelVersion:", [v31 unsignedIntValue]);
    }

    v41 = v31;
    v47 = v17;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"resolutionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setResolutionType:](v5, "setResolutionType:", [v32 intValue]);
    }

    v45 = v25;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setRawNowPlayingState:](v5, "setRawNowPlayingState:", [v33 intValue]);
    }

    v44 = v27;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"commonForegroundAppRecency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setCommonForegroundAppRecency:](v5, "setCommonForegroundAppRecency:", [v34 intValue]);
    }

    v42 = v30;
    v43 = v29;
    v35 = [dictionaryCopy objectForKeyedSubscript:@"isContentFree"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsContentFree:](v5, "setIsContentFree:", [v35 BOOLValue]);
    }

    v36 = v23;
    v37 = [dictionaryCopy objectForKeyedSubscript:@"isUserRecognized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setIsUserRecognized:](v5, "setIsUserRecognized:", [v37 BOOLValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"serverSearchResultsMediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals setServerSearchResultsMediaType:](v5, "setServerSearchResultsMediaType:", [v38 intValue]);
    }

    v39 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEMusicTrainingIndependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEMusicTrainingIndependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEMusicTrainingIndependentSignals *)self dictionaryRepresentation];
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
  if ((*&has & 0x200000) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals appSelectionUses](self, "appSelectionUses")}];
    [dictionary setObject:v7 forKeyedSubscript:@"appSelectionUses"];

    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals clientDayOfWeek](self, "clientDayOfWeek")}];
  [dictionary setObject:v8 forKeyedSubscript:@"clientDayOfWeek"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals commonForegroundAppRecency](self, "commonForegroundAppRecency")}];
  [dictionary setObject:v9 forKeyedSubscript:@"commonForegroundAppRecency"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v10 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEMusicTrainingIndependentSignals *)self foregroundBundleRecencyS];
  v11 = [v10 numberWithDouble:?];
  [dictionary setObject:v11 forKeyedSubscript:@"foregroundBundleRecencyS"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isClientDaylight](self, "isClientDaylight")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isClientDaylight"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isClientNavigating](self, "isClientNavigating")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isClientNavigating"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isClientWorkout](self, "isClientWorkout")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isClientWorkout"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isContentFree](self, "isContentFree")}];
  [dictionary setObject:v15 forKeyedSubscript:@"isContentFree"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isMediaAlbumPresent](self, "isMediaAlbumPresent")}];
  [dictionary setObject:v16 forKeyedSubscript:@"isMediaAlbumPresent"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isMediaArtistPresent](self, "isMediaArtistPresent")}];
  [dictionary setObject:v17 forKeyedSubscript:@"isMediaArtistPresent"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isMediaGenrePresent](self, "isMediaGenrePresent")}];
  [dictionary setObject:v18 forKeyedSubscript:@"isMediaGenrePresent"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isMediaMoodPresent](self, "isMediaMoodPresent")}];
  [dictionary setObject:v19 forKeyedSubscript:@"isMediaMoodPresent"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isMediaNamePresent](self, "isMediaNamePresent")}];
  [dictionary setObject:v20 forKeyedSubscript:@"isMediaNamePresent"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isMediaReleaseDatePresent](self, "isMediaReleaseDatePresent")}];
  [dictionary setObject:v21 forKeyedSubscript:@"isMediaReleaseDatePresent"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isPireneRequest](self, "isPireneRequest")}];
  [dictionary setObject:v22 forKeyedSubscript:@"isPireneRequest"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals isUserRecognized](self, "isUserRecognized")}];
  [dictionary setObject:v23 forKeyedSubscript:@"isUserRecognized"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals mediaParsecCategory](self, "mediaParsecCategory")}];
  [dictionary setObject:v24 forKeyedSubscript:@"mediaParsecCategory"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_19:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals mediaType](self, "mediaType")}];
  [dictionary setObject:v25 forKeyedSubscript:@"mediaType"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals modelVersion](self, "modelVersion")}];
  [dictionary setObject:v26 forKeyedSubscript:@"modelVersion"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals nowPlayingLastBundleRecencyS](self, "nowPlayingLastBundleRecencyS")}];
  [dictionary setObject:v27 forKeyedSubscript:@"nowPlayingLastBundleRecencyS"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_22:
    if ((*&has & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals nowPlayingState](self, "nowPlayingState")}];
  [dictionary setObject:v28 forKeyedSubscript:@"nowPlayingState"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals rawClientHourOfDay](self, "rawClientHourOfDay")}];
  [dictionary setObject:v29 forKeyedSubscript:@"rawClientHourOfDay"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v30 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals rawLanguage](self, "rawLanguage")}];
  [dictionary setObject:v30 forKeyedSubscript:@"rawLanguage"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v31 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals rawLocale](self, "rawLocale")}];
  [dictionary setObject:v31 forKeyedSubscript:@"rawLocale"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals rawNowPlayingState](self, "rawNowPlayingState")}];
  [dictionary setObject:v32 forKeyedSubscript:@"rawNowPlayingState"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_27:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v33 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals rawRegion](self, "rawRegion")}];
  [dictionary setObject:v33 forKeyedSubscript:@"rawRegion"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_60:
  v34 = [(INFERENCESchemaINFERENCEMusicTrainingIndependentSignals *)self resolutionType]- 1;
  if (v34 > 9)
  {
    v35 = @"INFERENCEAPPRESOLUTIONTYPE_UNKNOWN";
  }

  else
  {
    v35 = off_1E78D8A18[v34];
  }

  [dictionary setObject:v35 forKeyedSubscript:@"resolutionType"];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_64:
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals serverSearchResultsMediaType](self, "serverSearchResultsMediaType")}];
  [dictionary setObject:v36 forKeyedSubscript:@"serverSearchResultsMediaType"];

  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_30:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEMusicTrainingIndependentSignals sirikitResponseCode](self, "sirikitResponseCode")}];
    [dictionary setObject:v5 forKeyedSubscript:@"sirikitResponseCode"];
  }

LABEL_31:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v37 = 2654435761 * self->_clientDayOfWeek;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v36 = 2654435761 * self->_rawClientHourOfDay;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v37 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v36 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_isMediaAlbumPresent;
    if ((*&has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v5 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_isMediaArtistPresent;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v6 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_isMediaGenrePresent;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v7 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_isMediaMoodPresent;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_isMediaNamePresent;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_isMediaReleaseDatePresent;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_nowPlayingLastBundleRecencyS;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_rawLanguage;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_rawLocale;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_rawRegion;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_isClientDaylight;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_isClientNavigating;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_isClientWorkout;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_17:
    v18 = 2654435761 * self->_mediaType;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_18:
    v19 = 2654435761 * self->_nowPlayingState;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_19;
    }

LABEL_41:
    v20 = 0;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_20;
    }

LABEL_42:
    v24 = 0;
    goto LABEL_43;
  }

LABEL_40:
  v19 = 0;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_41;
  }

LABEL_19:
  v20 = 2654435761 * self->_isPireneRequest;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  foregroundBundleRecencyS = self->_foregroundBundleRecencyS;
  if (foregroundBundleRecencyS < 0.0)
  {
    foregroundBundleRecencyS = -foregroundBundleRecencyS;
  }

  *v2.i64 = floor(foregroundBundleRecencyS + 0.5);
  v22 = (foregroundBundleRecencyS - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v24 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v3, v2).i64;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v24 += v22;
    }
  }

  else
  {
    v24 -= fabs(v22);
  }

LABEL_43:
  if ((*&has & 0x80000) != 0)
  {
    v25 = 2654435761 * self->_mediaParsecCategory;
    if ((*&has & 0x100000) != 0)
    {
LABEL_45:
      v26 = 2654435761 * self->_sirikitResponseCode;
      if ((*&has & 0x200000) != 0)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v25 = 0;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_45;
    }
  }

  v26 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_46:
    v27 = 2654435761 * self->_appSelectionUses;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_57;
  }

LABEL_56:
  v27 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_47:
    v28 = 2654435761 * self->_modelVersion;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_58;
  }

LABEL_57:
  v28 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_48:
    v29 = 2654435761 * self->_resolutionType;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_59;
  }

LABEL_58:
  v29 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_49:
    v30 = 2654435761 * self->_rawNowPlayingState;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_60;
  }

LABEL_59:
  v30 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_50:
    v31 = 2654435761 * self->_commonForegroundAppRecency;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

LABEL_60:
  v31 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_51:
    v32 = 2654435761 * self->_isContentFree;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_52;
    }

LABEL_62:
    v33 = 0;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_63:
    v34 = 0;
    return v36 ^ v37 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34;
  }

LABEL_61:
  v32 = 0;
  if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_52:
  v33 = 2654435761 * self->_isUserRecognized;
  if ((*&has & 0x10000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_53:
  v34 = 2654435761 * self->_serverSearchResultsMediaType;
  return v36 ^ v37 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_118;
  }

  has = self->_has;
  v6 = equalCopy[29];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_118;
  }

  if (*&has)
  {
    clientDayOfWeek = self->_clientDayOfWeek;
    if (clientDayOfWeek != [equalCopy clientDayOfWeek])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_118;
  }

  if (v8)
  {
    rawClientHourOfDay = self->_rawClientHourOfDay;
    if (rawClientHourOfDay != [equalCopy rawClientHourOfDay])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_118;
  }

  if (v10)
  {
    isMediaAlbumPresent = self->_isMediaAlbumPresent;
    if (isMediaAlbumPresent != [equalCopy isMediaAlbumPresent])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_118;
  }

  if (v12)
  {
    isMediaArtistPresent = self->_isMediaArtistPresent;
    if (isMediaArtistPresent != [equalCopy isMediaArtistPresent])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_118;
  }

  if (v14)
  {
    isMediaGenrePresent = self->_isMediaGenrePresent;
    if (isMediaGenrePresent != [equalCopy isMediaGenrePresent])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_118;
  }

  if (v16)
  {
    isMediaMoodPresent = self->_isMediaMoodPresent;
    if (isMediaMoodPresent != [equalCopy isMediaMoodPresent])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_118;
  }

  if (v18)
  {
    isMediaNamePresent = self->_isMediaNamePresent;
    if (isMediaNamePresent != [equalCopy isMediaNamePresent])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_118;
  }

  if (v20)
  {
    isMediaReleaseDatePresent = self->_isMediaReleaseDatePresent;
    if (isMediaReleaseDatePresent != [equalCopy isMediaReleaseDatePresent])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_118;
  }

  if (v22)
  {
    nowPlayingLastBundleRecencyS = self->_nowPlayingLastBundleRecencyS;
    if (nowPlayingLastBundleRecencyS != [equalCopy nowPlayingLastBundleRecencyS])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_118;
  }

  if (v24)
  {
    rawLanguage = self->_rawLanguage;
    if (rawLanguage != [equalCopy rawLanguage])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_118;
  }

  if (v26)
  {
    rawLocale = self->_rawLocale;
    if (rawLocale != [equalCopy rawLocale])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_118;
  }

  if (v28)
  {
    rawRegion = self->_rawRegion;
    if (rawRegion != [equalCopy rawRegion])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v30 = (*&has >> 12) & 1;
  if (v30 != ((v6 >> 12) & 1))
  {
    goto LABEL_118;
  }

  if (v30)
  {
    isClientDaylight = self->_isClientDaylight;
    if (isClientDaylight != [equalCopy isClientDaylight])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v32 = (*&has >> 13) & 1;
  if (v32 != ((v6 >> 13) & 1))
  {
    goto LABEL_118;
  }

  if (v32)
  {
    isClientNavigating = self->_isClientNavigating;
    if (isClientNavigating != [equalCopy isClientNavigating])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v34 = (*&has >> 14) & 1;
  if (v34 != ((v6 >> 14) & 1))
  {
    goto LABEL_118;
  }

  if (v34)
  {
    isClientWorkout = self->_isClientWorkout;
    if (isClientWorkout != [equalCopy isClientWorkout])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v36 = (*&has >> 15) & 1;
  if (v36 != ((v6 >> 15) & 1))
  {
    goto LABEL_118;
  }

  if (v36)
  {
    mediaType = self->_mediaType;
    if (mediaType != [equalCopy mediaType])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v38 = HIWORD(*&has) & 1;
  if (v38 != (HIWORD(v6) & 1))
  {
    goto LABEL_118;
  }

  if (v38)
  {
    nowPlayingState = self->_nowPlayingState;
    if (nowPlayingState != [equalCopy nowPlayingState])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v40 = (*&has >> 17) & 1;
  if (v40 != ((v6 >> 17) & 1))
  {
    goto LABEL_118;
  }

  if (v40)
  {
    isPireneRequest = self->_isPireneRequest;
    if (isPireneRequest != [equalCopy isPireneRequest])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v42 = (*&has >> 18) & 1;
  if (v42 != ((v6 >> 18) & 1))
  {
    goto LABEL_118;
  }

  if (v42)
  {
    foregroundBundleRecencyS = self->_foregroundBundleRecencyS;
    [equalCopy foregroundBundleRecencyS];
    if (foregroundBundleRecencyS != v44)
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v45 = (*&has >> 19) & 1;
  if (v45 != ((v6 >> 19) & 1))
  {
    goto LABEL_118;
  }

  if (v45)
  {
    mediaParsecCategory = self->_mediaParsecCategory;
    if (mediaParsecCategory != [equalCopy mediaParsecCategory])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v47 = (*&has >> 20) & 1;
  if (v47 != ((v6 >> 20) & 1))
  {
    goto LABEL_118;
  }

  if (v47)
  {
    sirikitResponseCode = self->_sirikitResponseCode;
    if (sirikitResponseCode != [equalCopy sirikitResponseCode])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v49 = (*&has >> 21) & 1;
  if (v49 != ((v6 >> 21) & 1))
  {
    goto LABEL_118;
  }

  if (v49)
  {
    appSelectionUses = self->_appSelectionUses;
    if (appSelectionUses != [equalCopy appSelectionUses])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v51 = (*&has >> 22) & 1;
  if (v51 != ((v6 >> 22) & 1))
  {
    goto LABEL_118;
  }

  if (v51)
  {
    modelVersion = self->_modelVersion;
    if (modelVersion != [equalCopy modelVersion])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v53 = (*&has >> 23) & 1;
  if (v53 != ((v6 >> 23) & 1))
  {
    goto LABEL_118;
  }

  if (v53)
  {
    resolutionType = self->_resolutionType;
    if (resolutionType != [equalCopy resolutionType])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v55 = HIBYTE(*&has) & 1;
  if (v55 != (HIBYTE(v6) & 1))
  {
    goto LABEL_118;
  }

  if (v55)
  {
    rawNowPlayingState = self->_rawNowPlayingState;
    if (rawNowPlayingState != [equalCopy rawNowPlayingState])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v57 = (*&has >> 25) & 1;
  if (v57 != ((v6 >> 25) & 1))
  {
    goto LABEL_118;
  }

  if (v57)
  {
    commonForegroundAppRecency = self->_commonForegroundAppRecency;
    if (commonForegroundAppRecency != [equalCopy commonForegroundAppRecency])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v59 = (*&has >> 26) & 1;
  if (v59 != ((v6 >> 26) & 1))
  {
    goto LABEL_118;
  }

  if (v59)
  {
    isContentFree = self->_isContentFree;
    if (isContentFree != [equalCopy isContentFree])
    {
      goto LABEL_118;
    }

    has = self->_has;
    v6 = equalCopy[29];
  }

  v61 = (*&has >> 27) & 1;
  if (v61 != ((v6 >> 27) & 1))
  {
    goto LABEL_118;
  }

  if (v61)
  {
    isUserRecognized = self->_isUserRecognized;
    if (isUserRecognized == [equalCopy isUserRecognized])
    {
      has = self->_has;
      v6 = equalCopy[29];
      goto LABEL_114;
    }

LABEL_118:
    v65 = 0;
    goto LABEL_119;
  }

LABEL_114:
  v63 = (*&has >> 28) & 1;
  if (v63 != ((v6 >> 28) & 1))
  {
    goto LABEL_118;
  }

  if (v63)
  {
    serverSearchResultsMediaType = self->_serverSearchResultsMediaType;
    if (serverSearchResultsMediaType != [equalCopy serverSearchResultsMediaType])
    {
      goto LABEL_118;
    }
  }

  v65 = 1;
LABEL_119:

  return v65;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_22:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_23:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_61:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_30:
    PBDataWriterWriteInt32Field();
  }

LABEL_31:
}

- (void)setHasServerSearchResultsMediaType:(BOOL)type
{
  if (type)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasIsUserRecognized:(BOOL)recognized
{
  if (recognized)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasIsContentFree:(BOOL)free
{
  if (free)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasCommonForegroundAppRecency:(BOOL)recency
{
  if (recency)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasRawNowPlayingState:(BOOL)state
{
  if (state)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasResolutionType:(BOOL)type
{
  if (type)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasModelVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasAppSelectionUses:(BOOL)uses
{
  if (uses)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasSirikitResponseCode:(BOOL)code
{
  if (code)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasMediaParsecCategory:(BOOL)category
{
  if (category)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasForegroundBundleRecencyS:(BOOL)s
{
  if (s)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasIsPireneRequest:(BOOL)request
{
  if (request)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasNowPlayingState:(BOOL)state
{
  if (state)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasMediaType:(BOOL)type
{
  if (type)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasIsClientWorkout:(BOOL)workout
{
  if (workout)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsClientNavigating:(BOOL)navigating
{
  if (navigating)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasIsClientDaylight:(BOOL)daylight
{
  if (daylight)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasRawRegion:(BOOL)region
{
  if (region)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasRawLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRawLanguage:(BOOL)language
{
  if (language)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasNowPlayingLastBundleRecencyS:(BOOL)s
{
  if (s)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasIsMediaReleaseDatePresent:(BOOL)present
{
  if (present)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasIsMediaNamePresent:(BOOL)present
{
  if (present)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasIsMediaMoodPresent:(BOOL)present
{
  if (present)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasIsMediaGenrePresent:(BOOL)present
{
  if (present)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasIsMediaArtistPresent:(BOOL)present
{
  if (present)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasIsMediaAlbumPresent:(BOOL)present
{
  if (present)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasRawClientHourOfDay:(BOOL)day
{
  if (day)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end