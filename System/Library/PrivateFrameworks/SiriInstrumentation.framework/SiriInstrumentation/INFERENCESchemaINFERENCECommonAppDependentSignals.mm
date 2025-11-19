@interface INFERENCESchemaINFERENCECommonAppDependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECommonAppDependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECommonAppDependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppScoreFromModel:(BOOL)a3;
- (void)setHasCompoundActiveBundleScore:(BOOL)a3;
- (void)setHasIsForegroundApp:(BOOL)a3;
- (void)setHasIsResolvedApp:(BOOL)a3;
- (void)setHasTimeSinceAppLastLaunchedInSec:(BOOL)a3;
- (void)setHasTimeSpentByUserInAppToday:(BOOL)a3;
- (void)setHasTotalTimeSpentByUserInAppPerDay:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECommonAppDependentSignals

- (INFERENCESchemaINFERENCECommonAppDependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = INFERENCESchemaINFERENCECommonAppDependentSignals;
  v5 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setAppBundleId:v7];
    }

    v25 = v6;
    v8 = [v4 objectForKeyedSubscript:@"isFirstPartyBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setIsFirstPartyBundle:](v5, "setIsFirstPartyBundle:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isForegroundApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setIsForegroundApp:](v5, "setIsForegroundApp:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isResolvedApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setIsResolvedApp:](v5, "setIsResolvedApp:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"appScoreFromModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setAppScoreFromModel:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"compoundActiveBundleScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setCompoundActiveBundleScore:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"totalTimeSpentByUserInAppPerDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setTotalTimeSpentByUserInAppPerDay:](v5, "setTotalTimeSpentByUserInAppPerDay:", [v13 unsignedIntValue]);
    }

    v24 = v8;
    v14 = [v4 objectForKeyedSubscript:@"timeSpentByUserInAppToday"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setTimeSpentByUserInAppToday:](v5, "setTimeSpentByUserInAppToday:", [v14 unsignedIntValue]);
    }

    v23 = v9;
    v15 = [v4 objectForKeyedSubscript:{@"timeSinceAppLastLaunchedInSec", v10}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECommonAppDependentSignals setTimeSinceAppLastLaunchedInSec:](v5, "setTimeSinceAppLastLaunchedInSec:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"appDependentFrequencyAndRecencySignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals alloc] initWithDictionary:v16];
      [(INFERENCESchemaINFERENCECommonAppDependentSignals *)v5 setAppDependentFrequencyAndRecencySignals:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"appDependentEntityFrequencyAndRecencySignals"];
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

- (INFERENCESchemaINFERENCECommonAppDependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self dictionaryRepresentation];
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
  if (self->_appBundleId)
  {
    v4 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  if (self->_appDependentEntityFrequencyAndRecencySignals)
  {
    v6 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"appDependentEntityFrequencyAndRecencySignals"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"appDependentEntityFrequencyAndRecencySignals"];
    }
  }

  if (self->_appDependentFrequencyAndRecencySignals)
  {
    v9 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"appDependentFrequencyAndRecencySignals"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"appDependentFrequencyAndRecencySignals"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v15 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appScoreFromModel];
    v16 = [v15 numberWithFloat:?];
    [v3 setObject:v16 forKeyedSubscript:@"appScoreFromModel"];

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
  [v3 setObject:v18 forKeyedSubscript:@"compoundActiveBundleScore"];

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
  [v3 setObject:v19 forKeyedSubscript:@"isFirstPartyBundle"];

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
  [v3 setObject:v20 forKeyedSubscript:@"isForegroundApp"];

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
  [v3 setObject:v21 forKeyedSubscript:@"isResolvedApp"];

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
  [v3 setObject:v22 forKeyedSubscript:@"timeSinceAppLastLaunchedInSec"];

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
  [v3 setObject:v23 forKeyedSubscript:@"timeSpentByUserInAppToday"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_21:
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCECommonAppDependentSignals totalTimeSpentByUserInAppPerDay](self, "totalTimeSpentByUserInAppPerDay")}];
    [v3 setObject:v13 forKeyedSubscript:@"totalTimeSpentByUserInAppPerDay"];
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  v5 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];
  v6 = [v4 appBundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v7 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];
    v10 = [v4 appBundleId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[64];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_48;
  }

  if (*&has)
  {
    isFirstPartyBundle = self->_isFirstPartyBundle;
    if (isFirstPartyBundle != [v4 isFirstPartyBundle])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = v4[64];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_48;
  }

  if (v15)
  {
    isForegroundApp = self->_isForegroundApp;
    if (isForegroundApp != [v4 isForegroundApp])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = v4[64];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_48;
  }

  if (v17)
  {
    isResolvedApp = self->_isResolvedApp;
    if (isResolvedApp != [v4 isResolvedApp])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = v4[64];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_48;
  }

  if (v19)
  {
    appScoreFromModel = self->_appScoreFromModel;
    [v4 appScoreFromModel];
    if (appScoreFromModel != v21)
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = v4[64];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v13 >> 4) & 1))
  {
    goto LABEL_48;
  }

  if (v22)
  {
    compoundActiveBundleScore = self->_compoundActiveBundleScore;
    [v4 compoundActiveBundleScore];
    if (compoundActiveBundleScore != v24)
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = v4[64];
  }

  v25 = (*&has >> 5) & 1;
  if (v25 != ((v13 >> 5) & 1))
  {
    goto LABEL_48;
  }

  if (v25)
  {
    totalTimeSpentByUserInAppPerDay = self->_totalTimeSpentByUserInAppPerDay;
    if (totalTimeSpentByUserInAppPerDay != [v4 totalTimeSpentByUserInAppPerDay])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = v4[64];
  }

  v27 = (*&has >> 6) & 1;
  if (v27 != ((v13 >> 6) & 1))
  {
    goto LABEL_48;
  }

  if (v27)
  {
    timeSpentByUserInAppToday = self->_timeSpentByUserInAppToday;
    if (timeSpentByUserInAppToday != [v4 timeSpentByUserInAppToday])
    {
      goto LABEL_48;
    }

    has = self->_has;
    v13 = v4[64];
  }

  if (((v13 ^ *&has) & 0x80) != 0)
  {
    goto LABEL_48;
  }

  if ((*&has & 0x80) != 0)
  {
    timeSinceAppLastLaunchedInSec = self->_timeSinceAppLastLaunchedInSec;
    if (timeSinceAppLastLaunchedInSec != [v4 timeSinceAppLastLaunchedInSec])
    {
      goto LABEL_48;
    }
  }

  v5 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
  v6 = [v4 appDependentFrequencyAndRecencySignals];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v30 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
  if (v30)
  {
    v31 = v30;
    v32 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
    v33 = [v4 appDependentFrequencyAndRecencySignals];
    v34 = [v32 isEqual:v33];

    if (!v34)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
  v6 = [v4 appDependentEntityFrequencyAndRecencySignals];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_47:

    goto LABEL_48;
  }

  v35 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
  if (!v35)
  {

LABEL_51:
    v40 = 1;
    goto LABEL_49;
  }

  v36 = v35;
  v37 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
  v38 = [v4 appDependentEntityFrequencyAndRecencySignals];
  v39 = [v37 isEqual:v38];

  if (v39)
  {
    goto LABEL_51;
  }

LABEL_48:
  v40 = 0;
LABEL_49:

  return v40;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appBundleId];

  if (v4)
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
  v6 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];

  if (v6)
  {
    v7 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];

  v9 = v11;
  if (v8)
  {
    v10 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)setHasTimeSinceAppLastLaunchedInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasTimeSpentByUserInAppToday:(BOOL)a3
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

- (void)setHasTotalTimeSpentByUserInAppPerDay:(BOOL)a3
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

- (void)setHasCompoundActiveBundleScore:(BOOL)a3
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

- (void)setHasAppScoreFromModel:(BOOL)a3
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

- (void)setHasIsResolvedApp:(BOOL)a3
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

- (void)setHasIsForegroundApp:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCECommonAppDependentSignals;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentFrequencyAndRecencySignals];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self deleteAppDependentFrequencyAndRecencySignals];
  }

  v9 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self appDependentEntityFrequencyAndRecencySignals];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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