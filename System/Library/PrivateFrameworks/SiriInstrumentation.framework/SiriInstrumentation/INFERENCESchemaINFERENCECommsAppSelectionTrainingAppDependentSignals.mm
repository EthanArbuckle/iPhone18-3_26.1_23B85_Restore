@interface INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppTimeSpentAffinityScore:(BOOL)score;
- (void)setHasAppTimeSpentInSec:(BOOL)sec;
- (void)setHasIsDefaultApp:(BOOL)app;
- (void)setHasIsFirstPartyApp:(BOOL)app;
- (void)setHasIsForegroundApp:(BOOL)app;
- (void)setHasIsRequestByHandleType:(BOOL)type;
- (void)setHasIsRequestByLabel:(BOOL)label;
- (void)setHasIsResolvedContactInApp:(BOOL)app;
- (void)setHasTimeSinceAppContactLastLaunchedInSec:(BOOL)sec;
- (void)setHasTimeSinceAppLastLaunchedInSec:(BOOL)sec;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals;
  v5 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isResolvedApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setIsResolvedApp:](v5, "setIsResolvedApp:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isResolvedContactInApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setIsResolvedContactInApp:](v5, "setIsResolvedContactInApp:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appTimeSpentAffinityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)v5 setAppTimeSpentAffinityScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isForegroundApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setIsForegroundApp:](v5, "setIsForegroundApp:", [v9 BOOLValue]);
    }

    v30 = v7;
    v31 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceAppLastLaunchedInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setTimeSinceAppLastLaunchedInSec:](v5, "setTimeSinceAppLastLaunchedInSec:", [v10 intValue]);
    }

    v27 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"messageSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals alloc] initWithDictionary:v11];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)v5 setMessageSignals:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"phoneCallSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals alloc] initWithDictionary:v13];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)v5 setPhoneCallSignals:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"contactDependentSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals alloc] initWithDictionary:v15];
      [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)v5 setContactDependentSignals:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"isFirstPartyApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setIsFirstPartyApp:](v5, "setIsFirstPartyApp:", [v17 BOOLValue]);
    }

    v29 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"appTimeSpentInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setAppTimeSpentInSec:](v5, "setAppTimeSpentInSec:", [v18 longLongValue]);
    }

    v28 = v9;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceAppContactLastLaunchedInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setTimeSinceAppContactLastLaunchedInSec:](v5, "setTimeSinceAppContactLastLaunchedInSec:", [v19 intValue]);
    }

    v26 = v11;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"isDefaultApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setIsDefaultApp:](v5, "setIsDefaultApp:", [v20 BOOLValue]);
    }

    v21 = v13;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"isRequestByLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setIsRequestByLabel:](v5, "setIsRequestByLabel:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"isRequestByHandleType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals setIsRequestByHandleType:](v5, "setIsRequestByHandleType:", [v23 BOOLValue]);
    }

    v24 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self dictionaryRepresentation];
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
  v4 = *(&self->_isRequestByHandleType + 1);
  if ((v4 & 4) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self appTimeSpentAffinityScore];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"appTimeSpentAffinityScore"];

    v4 = *(&self->_isRequestByHandleType + 1);
  }

  if ((v4 & 0x40) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals appTimeSpentInSec](self, "appTimeSpentInSec")}];
    [dictionary setObject:v7 forKeyedSubscript:@"appTimeSpentInSec"];
  }

  if (self->_contactDependentSignals)
  {
    contactDependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self contactDependentSignals];
    dictionaryRepresentation = [contactDependentSignals dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contactDependentSignals"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contactDependentSignals"];
    }
  }

  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 0x100) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals isDefaultApp](self, "isDefaultApp")}];
    [dictionary setObject:v15 forKeyedSubscript:@"isDefaultApp"];

    v11 = *(&self->_isRequestByHandleType + 1);
    if ((v11 & 0x20) == 0)
    {
LABEL_12:
      if ((v11 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals isFirstPartyApp](self, "isFirstPartyApp")}];
  [dictionary setObject:v16 forKeyedSubscript:@"isFirstPartyApp"];

  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 8) == 0)
  {
LABEL_13:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals isForegroundApp](self, "isForegroundApp")}];
  [dictionary setObject:v17 forKeyedSubscript:@"isForegroundApp"];

  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 0x400) == 0)
  {
LABEL_14:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals isRequestByHandleType](self, "isRequestByHandleType")}];
  [dictionary setObject:v18 forKeyedSubscript:@"isRequestByHandleType"];

  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 0x200) == 0)
  {
LABEL_15:
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals isRequestByLabel](self, "isRequestByLabel")}];
  [dictionary setObject:v19 forKeyedSubscript:@"isRequestByLabel"];

  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    if ((v11 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_26:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals isResolvedApp](self, "isResolvedApp")}];
  [dictionary setObject:v20 forKeyedSubscript:@"isResolvedApp"];

  if ((*(&self->_isRequestByHandleType + 1) & 2) != 0)
  {
LABEL_17:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals isResolvedContactInApp](self, "isResolvedContactInApp")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isResolvedContactInApp"];
  }

LABEL_18:
  if (self->_messageSignals)
  {
    messageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self messageSignals];
    dictionaryRepresentation2 = [messageSignals dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"messageSignals"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"messageSignals"];
    }
  }

  if (self->_phoneCallSignals)
  {
    phoneCallSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self phoneCallSignals];
    dictionaryRepresentation3 = [phoneCallSignals dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"phoneCallSignals"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"phoneCallSignals"];
    }
  }

  v25 = *(&self->_isRequestByHandleType + 1);
  if ((v25 & 0x80) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals timeSinceAppContactLastLaunchedInSec](self, "timeSinceAppContactLastLaunchedInSec")}];
    [dictionary setObject:v26 forKeyedSubscript:@"timeSinceAppContactLastLaunchedInSec"];

    v25 = *(&self->_isRequestByHandleType + 1);
  }

  if ((v25 & 0x10) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals timeSinceAppLastLaunchedInSec](self, "timeSinceAppLastLaunchedInSec")}];
    [dictionary setObject:v27 forKeyedSubscript:@"timeSinceAppLastLaunchedInSec"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v5 = *(&self->_isRequestByHandleType + 1);
  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v6 = 2654435761 * self->_isResolvedApp;
  if ((v5 & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v7 = 2654435761 * self->_isResolvedContactInApp;
  if ((v5 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  appTimeSpentAffinityScore = self->_appTimeSpentAffinityScore;
  if (appTimeSpentAffinityScore >= 0.0)
  {
    v9 = appTimeSpentAffinityScore;
  }

  else
  {
    v9 = -appTimeSpentAffinityScore;
  }

  *v2.i64 = floor(v9 + 0.5);
  v10 = (v9 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_12:
  if ((v5 & 8) != 0)
  {
    v13 = 2654435761 * self->_isForegroundApp;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    if ((v5 & 0x10) != 0)
    {
LABEL_14:
      v14 = 2654435761 * self->_timeSinceAppLastLaunchedInSec;
      goto LABEL_17;
    }
  }

  v14 = 0;
LABEL_17:
  v15 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals *)self->_messageSignals hash];
  v16 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals *)self->_phoneCallSignals hash];
  v17 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals *)self->_contactDependentSignals hash];
  v18 = *(&self->_isRequestByHandleType + 1);
  if ((v18 & 0x20) != 0)
  {
    v19 = 2654435761 * self->_isFirstPartyApp;
    if ((v18 & 0x40) != 0)
    {
LABEL_19:
      v20 = 2654435761 * self->_appTimeSpentInSec;
      if ((v18 & 0x80) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v19 = 0;
    if ((v18 & 0x40) != 0)
    {
      goto LABEL_19;
    }
  }

  v20 = 0;
  if ((v18 & 0x80) != 0)
  {
LABEL_20:
    v21 = 2654435761 * self->_timeSinceAppContactLastLaunchedInSec;
    if ((*(&self->_isRequestByHandleType + 1) & 0x100) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_26:
  v21 = 0;
  if ((*(&self->_isRequestByHandleType + 1) & 0x100) != 0)
  {
LABEL_21:
    v22 = 2654435761 * self->_isDefaultApp;
    if ((*(&self->_isRequestByHandleType + 1) & 0x200) != 0)
    {
      goto LABEL_22;
    }

LABEL_28:
    v23 = 0;
    if ((*(&self->_isRequestByHandleType + 1) & 0x400) != 0)
    {
      goto LABEL_23;
    }

LABEL_29:
    v24 = 0;
    return v7 ^ v6 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
  }

LABEL_27:
  v22 = 0;
  if ((*(&self->_isRequestByHandleType + 1) & 0x200) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v23 = 2654435761 * self->_isRequestByLabel;
  if ((*(&self->_isRequestByHandleType + 1) & 0x400) == 0)
  {
    goto LABEL_29;
  }

LABEL_23:
  v24 = 2654435761 * self->_isRequestByHandleType;
  return v7 ^ v6 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  v5 = *(&self->_isRequestByHandleType + 1);
  v6 = *(equalCopy + 71);
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_36;
  }

  if (v5)
  {
    isResolvedApp = self->_isResolvedApp;
    if (isResolvedApp != [equalCopy isResolvedApp])
    {
      goto LABEL_36;
    }

    v5 = *(&self->_isRequestByHandleType + 1);
    v6 = *(equalCopy + 71);
  }

  v8 = (v5 >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      isResolvedContactInApp = self->_isResolvedContactInApp;
      if (isResolvedContactInApp != [equalCopy isResolvedContactInApp])
      {
        goto LABEL_36;
      }

      v5 = *(&self->_isRequestByHandleType + 1);
      v6 = *(equalCopy + 71);
    }

    v10 = (v5 >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        appTimeSpentAffinityScore = self->_appTimeSpentAffinityScore;
        [equalCopy appTimeSpentAffinityScore];
        if (appTimeSpentAffinityScore != v12)
        {
          goto LABEL_36;
        }

        v5 = *(&self->_isRequestByHandleType + 1);
        v6 = *(equalCopy + 71);
      }

      v13 = (v5 >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (v13)
        {
          isForegroundApp = self->_isForegroundApp;
          if (isForegroundApp != [equalCopy isForegroundApp])
          {
            goto LABEL_36;
          }

          v5 = *(&self->_isRequestByHandleType + 1);
          v6 = *(equalCopy + 71);
        }

        v15 = (v5 >> 4) & 1;
        if (v15 != ((v6 >> 4) & 1))
        {
          goto LABEL_36;
        }

        if (v15)
        {
          timeSinceAppLastLaunchedInSec = self->_timeSinceAppLastLaunchedInSec;
          if (timeSinceAppLastLaunchedInSec != [equalCopy timeSinceAppLastLaunchedInSec])
          {
            goto LABEL_36;
          }
        }

        messageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self messageSignals];
        messageSignals2 = [equalCopy messageSignals];
        if ((messageSignals != 0) == (messageSignals2 == 0))
        {
          goto LABEL_35;
        }

        messageSignals3 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self messageSignals];
        if (messageSignals3)
        {
          v20 = messageSignals3;
          messageSignals4 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self messageSignals];
          messageSignals5 = [equalCopy messageSignals];
          v23 = [messageSignals4 isEqual:messageSignals5];

          if (!v23)
          {
            goto LABEL_36;
          }
        }

        else
        {
        }

        messageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self phoneCallSignals];
        messageSignals2 = [equalCopy phoneCallSignals];
        if ((messageSignals != 0) == (messageSignals2 == 0))
        {
          goto LABEL_35;
        }

        phoneCallSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self phoneCallSignals];
        if (phoneCallSignals)
        {
          v25 = phoneCallSignals;
          phoneCallSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self phoneCallSignals];
          phoneCallSignals3 = [equalCopy phoneCallSignals];
          v28 = [phoneCallSignals2 isEqual:phoneCallSignals3];

          if (!v28)
          {
            goto LABEL_36;
          }
        }

        else
        {
        }

        messageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self contactDependentSignals];
        messageSignals2 = [equalCopy contactDependentSignals];
        if ((messageSignals != 0) == (messageSignals2 == 0))
        {
LABEL_35:

          goto LABEL_36;
        }

        contactDependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self contactDependentSignals];
        if (contactDependentSignals)
        {
          v30 = contactDependentSignals;
          contactDependentSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self contactDependentSignals];
          contactDependentSignals3 = [equalCopy contactDependentSignals];
          v33 = [contactDependentSignals2 isEqual:contactDependentSignals3];

          if (!v33)
          {
            goto LABEL_36;
          }
        }

        else
        {
        }

        v36 = *(&self->_isRequestByHandleType + 1);
        v37 = (v36 >> 5) & 1;
        v38 = *(equalCopy + 71);
        if (v37 == ((v38 >> 5) & 1))
        {
          if (v37)
          {
            isFirstPartyApp = self->_isFirstPartyApp;
            if (isFirstPartyApp != [equalCopy isFirstPartyApp])
            {
              goto LABEL_36;
            }

            v36 = *(&self->_isRequestByHandleType + 1);
            v38 = *(equalCopy + 71);
          }

          v40 = (v36 >> 6) & 1;
          if (v40 == ((v38 >> 6) & 1))
          {
            if (v40)
            {
              appTimeSpentInSec = self->_appTimeSpentInSec;
              if (appTimeSpentInSec != [equalCopy appTimeSpentInSec])
              {
                goto LABEL_36;
              }

              v36 = *(&self->_isRequestByHandleType + 1);
              v38 = *(equalCopy + 71);
            }

            v42 = (v36 >> 7) & 1;
            if (v42 == ((v38 >> 7) & 1))
            {
              if (v42)
              {
                timeSinceAppContactLastLaunchedInSec = self->_timeSinceAppContactLastLaunchedInSec;
                if (timeSinceAppContactLastLaunchedInSec != [equalCopy timeSinceAppContactLastLaunchedInSec])
                {
                  goto LABEL_36;
                }

                v36 = *(&self->_isRequestByHandleType + 1);
                v38 = *(equalCopy + 71);
              }

              v44 = (v36 >> 8) & 1;
              if (v44 == ((v38 >> 8) & 1))
              {
                if (v44)
                {
                  isDefaultApp = self->_isDefaultApp;
                  if (isDefaultApp != [equalCopy isDefaultApp])
                  {
                    goto LABEL_36;
                  }

                  v36 = *(&self->_isRequestByHandleType + 1);
                  v38 = *(equalCopy + 71);
                }

                v46 = (v36 >> 9) & 1;
                if (v46 == ((v38 >> 9) & 1))
                {
                  if (v46)
                  {
                    isRequestByLabel = self->_isRequestByLabel;
                    if (isRequestByLabel != [equalCopy isRequestByLabel])
                    {
                      goto LABEL_36;
                    }

                    v36 = *(&self->_isRequestByHandleType + 1);
                    v38 = *(equalCopy + 71);
                  }

                  v48 = (v36 >> 10) & 1;
                  if (v48 == ((v38 >> 10) & 1))
                  {
                    if (!v48 || (isRequestByHandleType = self->_isRequestByHandleType, isRequestByHandleType == [equalCopy isRequestByHandleType]))
                    {
                      v34 = 1;
                      goto LABEL_37;
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

LABEL_36:
  v34 = 0;
LABEL_37:

  return v34;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_isRequestByHandleType + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_isRequestByHandleType + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isRequestByHandleType + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteFloatField();
  v4 = *(&self->_isRequestByHandleType + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isRequestByHandleType + 1) & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  messageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self messageSignals];

  if (messageSignals)
  {
    messageSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self messageSignals];
    PBDataWriterWriteSubmessage();
  }

  phoneCallSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self phoneCallSignals];

  if (phoneCallSignals)
  {
    phoneCallSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self phoneCallSignals];
    PBDataWriterWriteSubmessage();
  }

  contactDependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self contactDependentSignals];

  if (contactDependentSignals)
  {
    contactDependentSignals2 = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self contactDependentSignals];
    PBDataWriterWriteSubmessage();
  }

  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = *(&self->_isRequestByHandleType + 1);
    if ((v11 & 0x40) == 0)
    {
LABEL_15:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  PBDataWriterWriteInt64Field();
  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 0x80) == 0)
  {
LABEL_16:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteInt32Field();
  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 0x100) == 0)
  {
LABEL_17:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteBOOLField();
  v11 = *(&self->_isRequestByHandleType + 1);
  if ((v11 & 0x200) == 0)
  {
LABEL_18:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_32:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isRequestByHandleType + 1) & 0x400) != 0)
  {
LABEL_19:
    PBDataWriterWriteBOOLField();
  }

LABEL_20:
}

- (void)setHasIsRequestByHandleType:(BOOL)type
{
  if (type)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFBFF | v3;
}

- (void)setHasIsRequestByLabel:(BOOL)label
{
  if (label)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFDFF | v3;
}

- (void)setHasIsDefaultApp:(BOOL)app
{
  if (app)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFEFF | v3;
}

- (void)setHasTimeSinceAppContactLastLaunchedInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFF7F | v3;
}

- (void)setHasAppTimeSpentInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFFBF | v3;
}

- (void)setHasIsFirstPartyApp:(BOOL)app
{
  if (app)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFFDF | v3;
}

- (void)setHasTimeSinceAppLastLaunchedInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFFEF | v3;
}

- (void)setHasIsForegroundApp:(BOOL)app
{
  if (app)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFFF7 | v3;
}

- (void)setHasAppTimeSpentAffinityScore:(BOOL)score
{
  if (score)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFFFB | v3;
}

- (void)setHasIsResolvedContactInApp:(BOOL)app
{
  if (app)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isRequestByHandleType + 1) = *(&self->_isRequestByHandleType + 1) & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  messageSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self messageSignals];
  v7 = [messageSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self deleteMessageSignals];
  }

  phoneCallSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self phoneCallSignals];
  v10 = [phoneCallSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self deletePhoneCallSignals];
  }

  contactDependentSignals = [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self contactDependentSignals];
  v13 = [contactDependentSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals *)self deleteContactDependentSignals];
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