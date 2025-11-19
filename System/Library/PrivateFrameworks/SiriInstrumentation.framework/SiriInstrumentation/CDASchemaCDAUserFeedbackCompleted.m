@interface CDASchemaCDAUserFeedbackCompleted
- (BOOL)isEqual:(id)a3;
- (CDASchemaCDAUserFeedbackCompleted)initWithDictionary:(id)a3;
- (CDASchemaCDAUserFeedbackCompleted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDataCollectionGroup:(BOOL)a3;
- (void)setHasHasResponseFromMultipleDevices:(BOOL)a3;
- (void)setHasIsCorrectDeviceSelected:(BOOL)a3;
- (void)setHasUserReportedResponseDeviceDistance:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CDASchemaCDAUserFeedbackCompleted

- (CDASchemaCDAUserFeedbackCompleted)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CDASchemaCDAUserFeedbackCompleted;
  v5 = [(CDASchemaCDAUserFeedbackCompleted *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"surveyId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setSurveyId:v7];
    }

    v25 = v6;
    v8 = [v4 objectForKeyedSubscript:@"userFeedbackStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackCompleted setUserFeedbackStatus:](v5, "setUserFeedbackStatus:", [v8 intValue]);
    }

    v24 = v8;
    v9 = [v4 objectForKeyedSubscript:@"isCorrectDeviceSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackCompleted setIsCorrectDeviceSelected:](v5, "setIsCorrectDeviceSelected:", [v9 BOOLValue]);
    }

    v23 = v9;
    v10 = [v4 objectForKeyedSubscript:@"expectedWinnerSiriSpeechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setExpectedWinnerSiriSpeechId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"failureReasonCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setFailureReasonCategory:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"userReportedResponseDeviceDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setUserReportedResponseDeviceDistance:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"dataCollectionGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackCompleted setDataCollectionGroup:](v5, "setDataCollectionGroup:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setExperimentId:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"hasResponseFromMultipleDevices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackCompleted setHasResponseFromMultipleDevices:](v5, "setHasResponseFromMultipleDevices:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"expectedWinnerElectionParticipantId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[SISchemaUUID alloc] initWithDictionary:v19];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setExpectedWinnerElectionParticipantId:v20];
    }

    v21 = v5;
  }

  return v5;
}

- (CDASchemaCDAUserFeedbackCompleted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CDASchemaCDAUserFeedbackCompleted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CDASchemaCDAUserFeedbackCompleted *)self dictionaryRepresentation];
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
  if ((*&self->_has & 8) != 0)
  {
    v4 = [(CDASchemaCDAUserFeedbackCompleted *)self dataCollectionGroup]- 1;
    if (v4 > 3)
    {
      v5 = @"CDADATACOLLECTIONGROUP_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D28D0[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"dataCollectionGroup"];
  }

  if (self->_expectedWinnerElectionParticipantId)
  {
    v6 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"expectedWinnerElectionParticipantId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"expectedWinnerElectionParticipantId"];
    }
  }

  if (self->_expectedWinnerSiriSpeechId)
  {
    v9 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"expectedWinnerSiriSpeechId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"expectedWinnerSiriSpeechId"];
    }
  }

  if (self->_experimentId)
  {
    v12 = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"experimentId"];
  }

  if (self->_failureReasonCategory)
  {
    v14 = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"failureReasonCategory"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAUserFeedbackCompleted hasResponseFromMultipleDevices](self, "hasResponseFromMultipleDevices")}];
    [v3 setObject:v17 forKeyedSubscript:@"hasResponseFromMultipleDevices"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAUserFeedbackCompleted isCorrectDeviceSelected](self, "isCorrectDeviceSelected")}];
    [v3 setObject:v18 forKeyedSubscript:@"isCorrectDeviceSelected"];
  }

  if (self->_surveyId)
  {
    v19 = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"surveyId"];
  }

  v21 = self->_has;
  if (v21)
  {
    v22 = [(CDASchemaCDAUserFeedbackCompleted *)self userFeedbackStatus]- 1;
    if (v22 > 3)
    {
      v23 = @"CDAUSERFEEDBACKSTATUS_UNKNOWN";
    }

    else
    {
      v23 = off_1E78D28F0[v22];
    }

    [v3 setObject:v23 forKeyedSubscript:@"userFeedbackStatus"];
    v21 = self->_has;
  }

  if ((v21 & 4) != 0)
  {
    v24 = MEMORY[0x1E696AD98];
    [(CDASchemaCDAUserFeedbackCompleted *)self userReportedResponseDeviceDistance];
    v25 = [v24 numberWithDouble:?];
    [v3 setObject:v25 forKeyedSubscript:@"userReportedResponseDeviceDistance"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_surveyId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_userFeedbackStatus;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_isCorrectDeviceSelected;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(SISchemaUUID *)self->_expectedWinnerSiriSpeechId hash];
  v7 = [(NSString *)self->_failureReasonCategory hash];
  if ((*&self->_has & 4) != 0)
  {
    userReportedResponseDeviceDistance = self->_userReportedResponseDeviceDistance;
    if (userReportedResponseDeviceDistance < 0.0)
    {
      userReportedResponseDeviceDistance = -userReportedResponseDeviceDistance;
    }

    *v8.i64 = floor(userReportedResponseDeviceDistance + 0.5);
    v12 = (userReportedResponseDeviceDistance - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v14 = 2654435761 * self->_dataCollectionGroup;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSString *)self->_experimentId hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_hasResponseFromMultipleDevices;
  }

  else
  {
    v16 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14 ^ v15 ^ v16 ^ [(SISchemaUUID *)self->_expectedWinnerElectionParticipantId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  v5 = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];
  v6 = [v4 surveyId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v7 = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];
    v10 = [v4 surveyId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[80];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_44;
  }

  if (*&has)
  {
    userFeedbackStatus = self->_userFeedbackStatus;
    if (userFeedbackStatus != [v4 userFeedbackStatus])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v13 = v4[80];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v15)
  {
    isCorrectDeviceSelected = self->_isCorrectDeviceSelected;
    if (isCorrectDeviceSelected != [v4 isCorrectDeviceSelected])
    {
      goto LABEL_44;
    }
  }

  v5 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
  v6 = [v4 expectedWinnerSiriSpeechId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v17 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
  if (v17)
  {
    v18 = v17;
    v19 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
    v20 = [v4 expectedWinnerSiriSpeechId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v5 = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];
  v6 = [v4 failureReasonCategory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v22 = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];
  if (v22)
  {
    v23 = v22;
    v24 = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];
    v25 = [v4 failureReasonCategory];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v27 = self->_has;
  v28 = (*&v27 >> 2) & 1;
  v29 = v4[80];
  if (v28 != ((v29 >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v28)
  {
    userReportedResponseDeviceDistance = self->_userReportedResponseDeviceDistance;
    [v4 userReportedResponseDeviceDistance];
    if (userReportedResponseDeviceDistance != v31)
    {
      goto LABEL_44;
    }

    v27 = self->_has;
    v29 = v4[80];
  }

  v32 = (*&v27 >> 3) & 1;
  if (v32 != ((v29 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v32)
  {
    dataCollectionGroup = self->_dataCollectionGroup;
    if (dataCollectionGroup != [v4 dataCollectionGroup])
    {
      goto LABEL_44;
    }
  }

  v5 = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];
  v6 = [v4 experimentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v34 = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];
  if (v34)
  {
    v35 = v34;
    v36 = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];
    v37 = [v4 experimentId];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v39 = (*&self->_has >> 4) & 1;
  if (v39 != ((v4[80] >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v39)
  {
    hasResponseFromMultipleDevices = self->_hasResponseFromMultipleDevices;
    if (hasResponseFromMultipleDevices != [v4 hasResponseFromMultipleDevices])
    {
      goto LABEL_44;
    }
  }

  v5 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
  v6 = [v4 expectedWinnerElectionParticipantId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  v41 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
  if (!v41)
  {

LABEL_47:
    v46 = 1;
    goto LABEL_45;
  }

  v42 = v41;
  v43 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
  v44 = [v4 expectedWinnerElectionParticipantId];
  v45 = [v43 isEqual:v44];

  if (v45)
  {
    goto LABEL_47;
  }

LABEL_44:
  v46 = 0;
LABEL_45:

  return v46;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];

  if (v6)
  {
    v7 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((v9 & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v9 = self->_has;
  }

  if ((v9 & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v10 = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v11 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];

  v12 = v14;
  if (v11)
  {
    v13 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (void)setHasHasResponseFromMultipleDevices:(BOOL)a3
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

- (void)setHasDataCollectionGroup:(BOOL)a3
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

- (void)setHasUserReportedResponseDeviceDistance:(BOOL)a3
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

- (void)setHasIsCorrectDeviceSelected:(BOOL)a3
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
  v13.super_class = CDASchemaCDAUserFeedbackCompleted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(CDASchemaCDAUserFeedbackCompleted *)self deleteExpectedWinnerSiriSpeechId];
  }

  v6 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CDASchemaCDAUserFeedbackCompleted *)self deleteExpectedWinnerSiriSpeechId];
  }

  v9 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CDASchemaCDAUserFeedbackCompleted *)self deleteExpectedWinnerElectionParticipantId];
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