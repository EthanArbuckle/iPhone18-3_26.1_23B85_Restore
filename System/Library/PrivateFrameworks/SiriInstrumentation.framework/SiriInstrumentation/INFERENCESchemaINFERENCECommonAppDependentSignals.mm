@interface INFERENCESchemaINFERENCECommonAppDependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCECommonAppDependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCECommonAppDependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppScoreFromModel:(BOOL)model;
- (void)setHasCompoundActiveBundleScore:(BOOL)score;
- (void)setHasIsForegroundApp:(BOOL)app;
- (void)setHasIsResolvedApp:(BOOL)app;
- (void)setHasTimeSinceAppLastLaunchedInSec:(BOOL)sec;
- (void)setHasTimeSpentByUserInAppToday:(BOOL)today;
- (void)setHasTotalTimeSpentByUserInAppPerDay:(BOOL)day;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCECommonAppDependentSignals

- (INFERENCESchemaINFERENCECommonAppDependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = INFERENCESchemaINFERENCECommonAppDependentSignals;
  v5 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setAppBundleId:v7];
    }

    v25 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"isFirstPartyBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setIsFirstPartyBundle:](v5, "setIsFirstPartyBundle:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isForegroundApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setIsForegroundApp:](v5, "setIsForegroundApp:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isResolvedApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setIsResolvedApp:](v5, "setIsResolvedApp:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"appScoreFromModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setAppScoreFromModel:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"compoundActiveBundleScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setCompoundActiveBundleScore:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"totalTimeSpentByUserInAppPerDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setTotalTimeSpentByUserInAppPerDay:](v5, "setTotalTimeSpentByUserInAppPerDay:", [v13 unsignedIntValue]);
    }

    v24 = v8;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"timeSpentByUserInAppToday"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setTimeSpentByUserInAppToday:](v5, "setTimeSpentByUserInAppToday:", [v14 unsignedIntValue]);
    }

    v23 = v9;
    v15 = [dictionaryCopy objectForKeyedSubscript:{@"timeSinceAppLastLaunchedInSec", v10}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setTimeSinceAppLastLaunchedInSec:](v5, "setTimeSinceAppLastLaunchedInSec:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"appDependentFrequencyAndRecencySignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals alloc] initWithDictionary:v16];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setAppDependentFrequencyAndRecencySignals:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"appDependentEntityFrequencyAndRecencySignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals alloc] initWithDictionary:v18];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setAppDependentEntityFrequencyAndRecencySignals:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECommonAppDependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self dictionaryRepresentation];
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
  if (self->_appBundleId)
  {
    appBundleId = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];
    v5 = [appBundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  if (self->_appDependentEntityFrequencyAndRecencySignals)
  {
    appDependentEntityFrequencyAndRecencySignals = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
    dictionaryRepresentation = [appDependentEntityFrequencyAndRecencySignals dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appDependentEntityFrequencyAndRecencySignals"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appDependentEntityFrequencyAndRecencySignals"];
    }
  }

  if (self->_appDependentFrequencyAndRecencySignals)
  {
    appDependentFrequencyAndRecencySignals = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
    dictionaryRepresentation2 = [appDependentFrequencyAndRecencySignals dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"appDependentFrequencyAndRecencySignals"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"appDependentFrequencyAndRecencySignals"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v15 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appScoreFromModel];
    v16 = [v15 numberWithFloat:?];
    [dictionary setObject:v16 forKeyedSubscript:@"appScoreFromModel"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_15:
      if ((has & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v17 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self compoundActiveBundleScore];
  v18 = [v17 numberWithDouble:?];
  [dictionary setObject:v18 forKeyedSubscript:@"compoundActiveBundleScore"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_16:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommonAppDependentSignals isFirstPartyBundle](self, "isFirstPartyBundle")}];
  [dictionary setObject:v19 forKeyedSubscript:@"isFirstPartyBundle"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommonAppDependentSignals isForegroundApp](self, "isForegroundApp")}];
  [dictionary setObject:v20 forKeyedSubscript:@"isForegroundApp"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECommonAppDependentSignals isResolvedApp](self, "isResolvedApp")}];
  [dictionary setObject:v21 forKeyedSubscript:@"isResolvedApp"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_30:
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCECommonAppDependentSignals timeSinceAppLastLaunchedInSec](self, "timeSinceAppLastLaunchedInSec")}];
  [dictionary setObject:v22 forKeyedSubscript:@"timeSinceAppLastLaunchedInSec"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_20:
    if ((has & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_31:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCECommonAppDependentSignals timeSpentByUserInAppToday](self, "timeSpentByUserInAppToday")}];
  [dictionary setObject:v23 forKeyedSubscript:@"timeSpentByUserInAppToday"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_21:
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCECommonAppDependentSignals totalTimeSpentByUserInAppPerDay](self, "totalTimeSpentByUserInAppPerDay")}];
    [dictionary setObject:v13 forKeyedSubscript:@"totalTimeSpentByUserInAppPerDay"];
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isFirstPartyBundle;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_isForegroundApp;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_isResolvedApp;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v8 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  appScoreFromModel = self->_appScoreFromModel;
  if (appScoreFromModel >= 0.0)
  {
    v10 = appScoreFromModel;
  }

  else
  {
    v10 = -appScoreFromModel;
  }

  *v4.i64 = floor(v10 + 0.5);
  v11 = (v10 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v12), v5, v4);
  v13 = 2654435761u * *v4.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_14:
  if ((*&self->_has & 0x10) != 0)
  {
    compoundActiveBundleScore = self->_compoundActiveBundleScore;
    if (compoundActiveBundleScore < 0.0)
    {
      compoundActiveBundleScore = -compoundActiveBundleScore;
    }

    *v4.i64 = floor(compoundActiveBundleScore + 0.5);
    v16 = (compoundActiveBundleScore - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v5, v4).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    v18 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v19 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

  v18 = 2654435761 * self->_totalTimeSpentByUserInAppPerDay;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v19 = 2654435761 * self->_timeSpentByUserInAppToday;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  v20 = 2654435761 * self->_timeSinceAppLastLaunchedInSec;
LABEL_31:
  v21 = v6 ^ v3 ^ v7 ^ v8 ^ v13 ^ v14 ^ v18 ^ v19 ^ v20 ^ [(INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals *)self->_appDependentFrequencyAndRecencySignals hash];
  return v21 ^ [(INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals *)self->_appDependentEntityFrequencyAndRecencySignals hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  appBundleId = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];
  appBundleId2 = [equalCopy appBundleId];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_47;
  }

  appBundleId3 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];
  if (appBundleId3)
  {
    v8 = appBundleId3;
    appBundleId4 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];
    appBundleId5 = [equalCopy appBundleId];
    v11 = [appBundleId4 isEqual:appBundleId5];

    if (!v11)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[64];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_48;
  }

  if (*&has)
  {
    isFirstPartyBundle = self->_isFirstPartyBundle;
    if (isFirstPartyBundle != [equalCopy isFirstPartyBundle])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = equalCopy[64];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_48;
  }

  if (v15)
  {
    isForegroundApp = self->_isForegroundApp;
    if (isForegroundApp != [equalCopy isForegroundApp])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = equalCopy[64];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_48;
  }

  if (v17)
  {
    isResolvedApp = self->_isResolvedApp;
    if (isResolvedApp != [equalCopy isResolvedApp])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = equalCopy[64];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_48;
  }

  if (v19)
  {
    appScoreFromModel = self->_appScoreFromModel;
    [equalCopy appScoreFromModel];
    if (appScoreFromModel != v21)
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = equalCopy[64];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v13 >> 4) & 1))
  {
    goto LABEL_48;
  }

  if (v22)
  {
    compoundActiveBundleScore = self->_compoundActiveBundleScore;
    [equalCopy compoundActiveBundleScore];
    if (compoundActiveBundleScore != v24)
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = equalCopy[64];
  }

  v25 = (*&has >> 5) & 1;
  if (v25 != ((v13 >> 5) & 1))
  {
    goto LABEL_48;
  }

  if (v25)
  {
    totalTimeSpentByUserInAppPerDay = self->_totalTimeSpentByUserInAppPerDay;
    if (totalTimeSpentByUserInAppPerDay != [equalCopy totalTimeSpentByUserInAppPerDay])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = equalCopy[64];
  }

  v27 = (*&has >> 6) & 1;
  if (v27 != ((v13 >> 6) & 1))
  {
    goto LABEL_48;
  }

  if (v27)
  {
    timeSpentByUserInAppToday = self->_timeSpentByUserInAppToday;
    if (timeSpentByUserInAppToday != [equalCopy timeSpentByUserInAppToday])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = equalCopy[64];
  }

  if (((v13 ^ *&has) & 0x80) != 0)
  {
    goto LABEL_48;
  }

  if ((*&has & 0x80) != 0)
  {
    timeSinceAppLastLaunchedInSec = self->_timeSinceAppLastLaunchedInSec;
    if (timeSinceAppLastLaunchedInSec != [equalCopy timeSinceAppLastLaunchedInSec])
    {
      goto LABEL_48;
    }
  }

  appBundleId = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
  appBundleId2 = [equalCopy appDependentFrequencyAndRecencySignals];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_47;
  }

  appDependentFrequencyAndRecencySignals = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
  if (appDependentFrequencyAndRecencySignals)
  {
    v31 = appDependentFrequencyAndRecencySignals;
    appDependentFrequencyAndRecencySignals2 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
    appDependentFrequencyAndRecencySignals3 = [equalCopy appDependentFrequencyAndRecencySignals];
    v34 = [appDependentFrequencyAndRecencySignals2 isEqual:appDependentFrequencyAndRecencySignals3];

    if (!v34)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  appBundleId = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
  appBundleId2 = [equalCopy appDependentEntityFrequencyAndRecencySignals];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
LABEL_47:

    goto LABEL_48;
  }

  appDependentEntityFrequencyAndRecencySignals = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
  if (!appDependentEntityFrequencyAndRecencySignals)
  {

LABEL_51:
    v40 = 1;
    goto LABEL_49;
  }

  v36 = appDependentEntityFrequencyAndRecencySignals;
  appDependentEntityFrequencyAndRecencySignals2 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
  appDependentEntityFrequencyAndRecencySignals3 = [equalCopy appDependentEntityFrequencyAndRecencySignals];
  v39 = [appDependentEntityFrequencyAndRecencySignals2 isEqual:appDependentEntityFrequencyAndRecencySignals3];

  if (v39)
  {
    goto LABEL_51;
  }

LABEL_48:
  v40 = 0;
LABEL_49:

  return v40;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appBundleId = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];

  if (appBundleId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((has & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  PBDataWriterWriteInt32Field();
LABEL_11:
  appDependentFrequencyAndRecencySignals = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];

  if (appDependentFrequencyAndRecencySignals)
  {
    appDependentFrequencyAndRecencySignals2 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
    PBDataWriterWriteSubmessage();
  }

  appDependentEntityFrequencyAndRecencySignals = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];

  v9 = toCopy;
  if (appDependentEntityFrequencyAndRecencySignals)
  {
    appDependentEntityFrequencyAndRecencySignals2 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)setHasTimeSinceAppLastLaunchedInSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasTimeSpentByUserInAppToday:(BOOL)today
{
  if (today)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasTotalTimeSpentByUserInAppPerDay:(BOOL)day
{
  if (day)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasCompoundActiveBundleScore:(BOOL)score
{
  if (score)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAppScoreFromModel:(BOOL)model
{
  if (model)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsResolvedApp:(BOOL)app
{
  if (app)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsForegroundApp:(BOOL)app
{
  if (app)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCECommonAppDependentSignals;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  appDependentFrequencyAndRecencySignals = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
  v7 = [appDependentFrequencyAndRecencySignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self deleteAppDependentFrequencyAndRecencySignals];
  }

  appDependentEntityFrequencyAndRecencySignals = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
  v10 = [appDependentEntityFrequencyAndRecencySignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self deleteAppDependentEntityFrequencyAndRecencySignals];
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