@interface PeopleSuggesterShareEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAppSharedFrom:(id)a3;
- (int)StringAsMadResponseStatus:(id)a3;
- (int)StringAsTypeOfContents:(id)a3;
- (int)appSharedFrom;
- (int)madResponseStatus;
- (int)typeOfContentAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addCandidates:(id)a3;
- (void)addFeedbackEvents:(id)a3;
- (void)addPhotoFeatures:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIsFallbackFetch:(BOOL)a3;
- (void)setHasIsInPhoneCall:(BOOL)a3;
- (void)setHasIsScreenShot:(BOOL)a3;
- (void)setHasIsSharePlayAvailable:(BOOL)a3;
- (void)setHasMadResponseStatus:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PeopleSuggesterShareEvent

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = PeopleSuggesterShareEvent;
  [(PeopleSuggesterShareEvent *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addCandidates:(id)a3
{
  v4 = a3;
  candidates = self->_candidates;
  v8 = v4;
  if (!candidates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_candidates;
    self->_candidates = v6;

    v4 = v8;
    candidates = self->_candidates;
  }

  [(NSMutableArray *)candidates addObject:v4];
}

- (int)madResponseStatus
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_madResponseStatus;
  }

  else
  {
    return 1;
  }
}

- (void)setHasMadResponseStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsMadResponseStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_REQUEST_TO_MAD"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TIMED_OUT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ERROR"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsFallbackFetch:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsSharePlayAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)appSharedFrom
{
  if (*&self->_has)
  {
    return self->_appSharedFrom;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAppSharedFrom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PHOTOS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCREENSHOTS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CAMERA"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SAFARI"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addFeedbackEvents:(id)a3
{
  v4 = a3;
  feedbackEvents = self->_feedbackEvents;
  v8 = v4;
  if (!feedbackEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_feedbackEvents;
    self->_feedbackEvents = v6;

    v4 = v8;
    feedbackEvents = self->_feedbackEvents;
  }

  [(NSMutableArray *)feedbackEvents addObject:v4];
}

- (int)typeOfContentAtIndex:(unint64_t)a3
{
  p_typeOfContents = &self->_typeOfContents;
  count = self->_typeOfContents.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_typeOfContents->list[a3];
}

- (int)StringAsTypeOfContents:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PUBLIC_URL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PUBLIC_IMAGE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PUBLIC_JPEG"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PUBLIC_HEIC"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LIVE_PHOTO"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PUBLIC_MOVIE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PUBLIC_MPEG4"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"QUICKTIME_MOVIE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PUBLIC_PLAIN_TEXT"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PUBLIC_FILE_URL"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"PDF"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PUBLIC_PNG"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"PUBLIC_VCARD"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsInPhoneCall:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsScreenShot:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addPhotoFeatures:(id)a3
{
  v4 = a3;
  photoFeatures = self->_photoFeatures;
  v8 = v4;
  if (!photoFeatures)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_photoFeatures;
    self->_photoFeatures = v6;

    v4 = v8;
    photoFeatures = self->_photoFeatures;
  }

  [(NSMutableArray *)photoFeatures addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PeopleSuggesterShareEvent;
  v4 = [(PeopleSuggesterShareEvent *)&v8 description];
  v5 = [(PeopleSuggesterShareEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    [v3 setObject:deviceIdentifier forKey:@"deviceIdentifier"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v4 setObject:sessionId forKey:@"sessionId"];
  }

  trialIdentifier = self->_trialIdentifier;
  if (trialIdentifier)
  {
    v8 = [(PeopleSuggesterTrialIdentifier *)trialIdentifier dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"trialIdentifier"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_version];
    [v4 setObject:v9 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_candidates count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_candidates, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v11 = self->_candidates;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v59;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v59 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v58 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"candidates"];
  }

  testKey = self->_testKey;
  if (testKey)
  {
    [v4 setObject:testKey forKey:@"testKey"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v19 = self->_madResponseStatus - 1;
    if (v19 >= 4)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_madResponseStatus];
    }

    else
    {
      v20 = off_1E7C26B18[v19];
    }

    [v4 setObject:v20 forKey:@"madResponseStatus"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_22:
      if ((has & 0x40) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_22;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFallbackFetch];
  [v4 setObject:v21 forKey:@"isFallbackFetch"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_23:
    if ((has & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_30:
  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSharePlayAvailable];
  [v4 setObject:v22 forKey:@"isSharePlayAvailable"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  appSharedFrom = self->_appSharedFrom;
  if (appSharedFrom >= 5)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_appSharedFrom];
  }

  else
  {
    v24 = off_1E7C26B38[appSharedFrom];
  }

  [v4 setObject:v24 forKey:@"appSharedFrom"];

LABEL_35:
  if ([(NSMutableArray *)self->_feedbackEvents count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_feedbackEvents, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v26 = self->_feedbackEvents;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v55;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v54 + 1) + 8 * j) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v28);
    }

    [v4 setObject:v25 forKey:@"feedbackEvents"];
  }

  p_typeOfContents = &self->_typeOfContents;
  if (self->_typeOfContents.count)
  {
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (self->_typeOfContents.count)
    {
      v34 = 0;
      do
      {
        v35 = p_typeOfContents->list[v34];
        if (v35 >= 0xE)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_typeOfContents->list[v34]];
        }

        else
        {
          v36 = off_1E7C26B60[v35];
        }

        [v33 addObject:v36];

        ++v34;
      }

      while (v34 < self->_typeOfContents.count);
    }

    [v4 setObject:v33 forKey:@"typeOfContent"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInPhoneCall];
    [v4 setObject:v37 forKey:@"isInPhoneCall"];
  }

  timeSinceLastShare = self->_timeSinceLastShare;
  if (timeSinceLastShare)
  {
    v39 = [(PeopleSuggesterFeatureDouble *)timeSinceLastShare dictionaryRepresentation];
    [v4 setObject:v39 forKey:@"timeSinceLastShare"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:self->_isScreenShot];
    [v4 setObject:v40 forKey:@"isScreenShot"];
  }

  if ([(NSMutableArray *)self->_photoFeatures count])
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_photoFeatures, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v42 = self->_photoFeatures;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v51;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v51 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v50 + 1) + 8 * k) dictionaryRepresentation];
          [v41 addObject:v47];
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v44);
    }

    [v4 setObject:v41 forKey:@"photoFeatures"];
  }

  v48 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = self->_candidates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v8);
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    madResponseStatus = self->_madResponseStatus;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_20:
      if ((has & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_20;
  }

  isFallbackFetch = self->_isFallbackFetch;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_21:
    if ((has & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_49:
  isSharePlayAvailable = self->_isSharePlayAvailable;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_22:
    appSharedFrom = self->_appSharedFrom;
    PBDataWriterWriteInt32Field();
  }

LABEL_23:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = self->_feedbackEvents;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v16);
  }

  if (self->_typeOfContents.count)
  {
    v20 = 0;
    do
    {
      v21 = self->_typeOfContents.list[v20];
      PBDataWriterWriteInt32Field();
      ++v20;
    }

    while (v20 < self->_typeOfContents.count);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    isInPhoneCall = self->_isInPhoneCall;
    PBDataWriterWriteBOOLField();
  }

  if (self->_timeSinceLastShare)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isScreenShot = self->_isScreenShot;
    PBDataWriterWriteBOOLField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = self->_photoFeatures;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v34 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v22 = v4;
  if (self->_deviceIdentifier)
  {
    [v4 setDeviceIdentifier:?];
    v4 = v22;
  }

  if (self->_sessionId)
  {
    [v22 setSessionId:?];
    v4 = v22;
  }

  if (self->_trialIdentifier)
  {
    [v22 setTrialIdentifier:?];
    v4 = v22;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 28) = self->_version;
    *(v4 + 120) |= 4u;
  }

  if ([(PeopleSuggesterShareEvent *)self candidatesCount])
  {
    [v22 clearCandidates];
    v5 = [(PeopleSuggesterShareEvent *)self candidatesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PeopleSuggesterShareEvent *)self candidatesAtIndex:i];
        [v22 addCandidates:v8];
      }
    }
  }

  if (self->_testKey)
  {
    [v22 setTestKey:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v22 + 16) = self->_madResponseStatus;
    *(v22 + 120) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_17:
      if ((has & 0x40) == 0)
      {
        goto LABEL_18;
      }

LABEL_43:
      *(v22 + 119) = self->_isSharePlayAvailable;
      *(v22 + 120) |= 0x40u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

  *(v22 + 116) = self->_isFallbackFetch;
  *(v22 + 120) |= 8u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_43;
  }

LABEL_18:
  if (has)
  {
LABEL_19:
    *(v22 + 8) = self->_appSharedFrom;
    *(v22 + 120) |= 1u;
  }

LABEL_20:
  if ([(PeopleSuggesterShareEvent *)self feedbackEventsCount])
  {
    [v22 clearFeedbackEvents];
    v10 = [(PeopleSuggesterShareEvent *)self feedbackEventsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PeopleSuggesterShareEvent *)self feedbackEventsAtIndex:j];
        [v22 addFeedbackEvents:v13];
      }
    }
  }

  if ([(PeopleSuggesterShareEvent *)self typeOfContentsCount])
  {
    [v22 clearTypeOfContents];
    v14 = [(PeopleSuggesterShareEvent *)self typeOfContentsCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        [v22 addTypeOfContent:{-[PeopleSuggesterShareEvent typeOfContentAtIndex:](self, "typeOfContentAtIndex:", k)}];
      }
    }
  }

  v17 = v22;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v22 + 117) = self->_isInPhoneCall;
    *(v22 + 120) |= 0x10u;
  }

  if (self->_timeSinceLastShare)
  {
    [v22 setTimeSinceLastShare:?];
    v17 = v22;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v17[118] = self->_isScreenShot;
    v17[120] |= 0x20u;
  }

  if ([(PeopleSuggesterShareEvent *)self photoFeaturesCount])
  {
    [v22 clearPhotoFeatures];
    v18 = [(PeopleSuggesterShareEvent *)self photoFeaturesCount];
    if (v18)
    {
      v19 = v18;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(PeopleSuggesterShareEvent *)self photoFeaturesAtIndex:m];
        [v22 addPhotoFeatures:v21];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_deviceIdentifier copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:a3];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(PeopleSuggesterTrialIdentifier *)self->_trialIdentifier copyWithZone:a3];
  v11 = *(v5 + 104);
  *(v5 + 104) = v10;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 112) = self->_version;
    *(v5 + 120) |= 4u;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = self->_candidates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v45 + 1) + 8 * i) copyWithZone:a3];
        [v5 addCandidates:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_testKey copyWithZone:a3];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 64) = self->_madResponseStatus;
    *(v5 + 120) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_12:
      if ((has & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 116) = self->_isFallbackFetch;
  *(v5 + 120) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_36:
  *(v5 + 119) = self->_isSharePlayAvailable;
  *(v5 + 120) |= 0x40u;
  if (*&self->_has)
  {
LABEL_14:
    *(v5 + 32) = self->_appSharedFrom;
    *(v5 + 120) |= 1u;
  }

LABEL_15:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = self->_feedbackEvents;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v41 + 1) + 8 * j) copyWithZone:a3];
        [v5 addFeedbackEvents:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v23);
  }

  PBRepeatedInt32Copy();
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 117) = self->_isInPhoneCall;
    *(v5 + 120) |= 0x10u;
  }

  v27 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastShare copyWithZone:a3];
  v28 = *(v5 + 96);
  *(v5 + 96) = v27;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 118) = self->_isScreenShot;
    *(v5 + 120) |= 0x20u;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = self->_photoFeatures;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v38;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v37 + 1) + 8 * k) copyWithZone:{a3, v37}];
        [v5 addPhotoFeatures:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier | *(v4 + 6))
  {
    if (![(NSString *)deviceIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(v4 + 10))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_54;
    }
  }

  trialIdentifier = self->_trialIdentifier;
  if (trialIdentifier | *(v4 + 13))
  {
    if (![(PeopleSuggesterTrialIdentifier *)trialIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  v8 = *(v4 + 120);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 120) & 4) == 0 || self->_version != *(v4 + 28))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 120) & 4) != 0)
  {
    goto LABEL_54;
  }

  candidates = self->_candidates;
  if (candidates | *(v4 + 5) && ![(NSMutableArray *)candidates isEqual:?])
  {
    goto LABEL_54;
  }

  testKey = self->_testKey;
  if (testKey | *(v4 + 11))
  {
    if (![(NSString *)testKey isEqual:?])
    {
      goto LABEL_54;
    }
  }

  v11 = *(v4 + 120);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 120) & 2) == 0 || self->_madResponseStatus != *(v4 + 16))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 120) & 2) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 120) & 8) == 0)
    {
      goto LABEL_54;
    }

    v12 = *(v4 + 116);
    if (self->_isFallbackFetch)
    {
      if ((*(v4 + 116) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 116))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 120) & 8) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 120) & 0x40) == 0)
    {
      goto LABEL_54;
    }

    v13 = *(v4 + 119);
    if (self->_isSharePlayAvailable)
    {
      if ((*(v4 + 119) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 119))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 120) & 0x40) != 0)
  {
    goto LABEL_54;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 120) & 1) == 0 || self->_appSharedFrom != *(v4 + 8))
    {
      goto LABEL_54;
    }
  }

  else if (*(v4 + 120))
  {
    goto LABEL_54;
  }

  feedbackEvents = self->_feedbackEvents;
  if (feedbackEvents | *(v4 + 7) && ![(NSMutableArray *)feedbackEvents isEqual:?]|| !PBRepeatedInt32IsEqual())
  {
    goto LABEL_54;
  }

  has = self->_has;
  v16 = *(v4 + 120);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 120) & 0x10) == 0)
    {
      goto LABEL_54;
    }

    v22 = *(v4 + 117);
    if (self->_isInPhoneCall)
    {
      if ((*(v4 + 117) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 117))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 120) & 0x10) != 0)
  {
    goto LABEL_54;
  }

  timeSinceLastShare = self->_timeSinceLastShare;
  if (timeSinceLastShare | *(v4 + 12))
  {
    if (![(PeopleSuggesterFeatureDouble *)timeSinceLastShare isEqual:?])
    {
      goto LABEL_54;
    }

    has = self->_has;
  }

  v18 = *(v4 + 120);
  if ((has & 0x20) == 0)
  {
    if ((*(v4 + 120) & 0x20) == 0)
    {
      goto LABEL_51;
    }

LABEL_54:
    v20 = 0;
    goto LABEL_55;
  }

  if ((*(v4 + 120) & 0x20) == 0)
  {
    goto LABEL_54;
  }

  v23 = *(v4 + 118);
  if (self->_isScreenShot)
  {
    if ((*(v4 + 118) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (*(v4 + 118))
  {
    goto LABEL_54;
  }

LABEL_51:
  photoFeatures = self->_photoFeatures;
  if (photoFeatures | *(v4 + 9))
  {
    v20 = [(NSMutableArray *)photoFeatures isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_55:

  return v20;
}

- (unint64_t)hash
{
  v19 = [(NSString *)self->_deviceIdentifier hash];
  v18 = [(NSString *)self->_sessionId hash];
  v17 = [(PeopleSuggesterTrialIdentifier *)self->_trialIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v16 = 2654435761 * self->_version;
  }

  else
  {
    v16 = 0;
  }

  v15 = [(NSMutableArray *)self->_candidates hash];
  v13 = [(NSString *)self->_testKey hash];
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_madResponseStatus;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v4 = 2654435761 * self->_isFallbackFetch;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v5 = 0;
      if (*&self->_has)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v5 = 2654435761 * self->_isSharePlayAvailable;
  if (*&self->_has)
  {
LABEL_8:
    v6 = 2654435761 * self->_appSharedFrom;
    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
LABEL_13:
  v7 = [(NSMutableArray *)self->_feedbackEvents hash];
  v8 = PBRepeatedInt32Hash();
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = 2654435761 * self->_isInPhoneCall;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastShare hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_isScreenShot;
  }

  else
  {
    v11 = 0;
  }

  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_photoFeatures hash];
}

- (void)mergeFrom:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(PeopleSuggesterShareEvent *)self setDeviceIdentifier:?];
  }

  if (*(v4 + 10))
  {
    [(PeopleSuggesterShareEvent *)self setSessionId:?];
  }

  trialIdentifier = self->_trialIdentifier;
  v6 = *(v4 + 13);
  if (trialIdentifier)
  {
    if (v6)
    {
      [(PeopleSuggesterTrialIdentifier *)trialIdentifier mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PeopleSuggesterShareEvent *)self setTrialIdentifier:?];
  }

  if ((*(v4 + 120) & 4) != 0)
  {
    self->_version = *(v4 + 28);
    *&self->_has |= 4u;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = *(v4 + 5);
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PeopleSuggesterShareEvent *)self addCandidates:*(*(&v37 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);
  }

  if (*(v4 + 11))
  {
    [(PeopleSuggesterShareEvent *)self setTestKey:?];
  }

  v12 = *(v4 + 120);
  if ((v12 & 2) != 0)
  {
    self->_madResponseStatus = *(v4 + 16);
    *&self->_has |= 2u;
    v12 = *(v4 + 120);
    if ((v12 & 8) == 0)
    {
LABEL_23:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }
  }

  else if ((*(v4 + 120) & 8) == 0)
  {
    goto LABEL_23;
  }

  self->_isFallbackFetch = *(v4 + 116);
  *&self->_has |= 8u;
  v12 = *(v4 + 120);
  if ((v12 & 0x40) == 0)
  {
LABEL_24:
    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_43:
  self->_isSharePlayAvailable = *(v4 + 119);
  *&self->_has |= 0x40u;
  if (*(v4 + 120))
  {
LABEL_25:
    self->_appSharedFrom = *(v4 + 8);
    *&self->_has |= 1u;
  }

LABEL_26:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = *(v4 + 7);
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(PeopleSuggesterShareEvent *)self addFeedbackEvents:*(*(&v33 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v15);
  }

  v18 = [v4 typeOfContentsCount];
  if (v18)
  {
    v19 = v18;
    for (k = 0; k != v19; ++k)
    {
      -[PeopleSuggesterShareEvent addTypeOfContent:](self, "addTypeOfContent:", [v4 typeOfContentAtIndex:k]);
    }
  }

  if ((*(v4 + 120) & 0x10) != 0)
  {
    self->_isInPhoneCall = *(v4 + 117);
    *&self->_has |= 0x10u;
  }

  timeSinceLastShare = self->_timeSinceLastShare;
  v22 = *(v4 + 12);
  if (timeSinceLastShare)
  {
    if (v22)
    {
      [(PeopleSuggesterFeatureDouble *)timeSinceLastShare mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(PeopleSuggesterShareEvent *)self setTimeSinceLastShare:?];
  }

  if ((*(v4 + 120) & 0x20) != 0)
  {
    self->_isScreenShot = *(v4 + 118);
    *&self->_has |= 0x20u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = *(v4 + 9);
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(PeopleSuggesterShareEvent *)self addPhotoFeatures:*(*(&v29 + 1) + 8 * m), v29];
      }

      v25 = [v23 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v25);
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end