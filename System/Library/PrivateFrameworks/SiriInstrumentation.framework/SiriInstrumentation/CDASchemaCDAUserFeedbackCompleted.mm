@interface CDASchemaCDAUserFeedbackCompleted
- (BOOL)isEqual:(id)equal;
- (CDASchemaCDAUserFeedbackCompleted)initWithDictionary:(id)dictionary;
- (CDASchemaCDAUserFeedbackCompleted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDataCollectionGroup:(BOOL)group;
- (void)setHasHasResponseFromMultipleDevices:(BOOL)devices;
- (void)setHasIsCorrectDeviceSelected:(BOOL)selected;
- (void)setHasUserReportedResponseDeviceDistance:(BOOL)distance;
- (void)writeTo:(id)to;
@end

@implementation CDASchemaCDAUserFeedbackCompleted

- (CDASchemaCDAUserFeedbackCompleted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = CDASchemaCDAUserFeedbackCompleted;
  v5 = [(CDASchemaCDAUserFeedbackCompleted *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"surveyId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setSurveyId:v7];
    }

    v25 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"userFeedbackStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackCompleted setUserFeedbackStatus:](v5, "setUserFeedbackStatus:", [v8 intValue]);
    }

    v24 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"isCorrectDeviceSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackCompleted setIsCorrectDeviceSelected:](v5, "setIsCorrectDeviceSelected:", [v9 BOOLValue]);
    }

    v23 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"expectedWinnerSiriSpeechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setExpectedWinnerSiriSpeechId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failureReasonCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setFailureReasonCategory:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"userReportedResponseDeviceDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setUserReportedResponseDeviceDistance:?];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"dataCollectionGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackCompleted setDataCollectionGroup:](v5, "setDataCollectionGroup:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"experimentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(CDASchemaCDAUserFeedbackCompleted *)v5 setExperimentId:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"hasResponseFromMultipleDevices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackCompleted setHasResponseFromMultipleDevices:](v5, "setHasResponseFromMultipleDevices:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"expectedWinnerElectionParticipantId"];
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

- (CDASchemaCDAUserFeedbackCompleted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CDASchemaCDAUserFeedbackCompleted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CDASchemaCDAUserFeedbackCompleted *)self dictionaryRepresentation];
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

    [dictionary setObject:v5 forKeyedSubscript:@"dataCollectionGroup"];
  }

  if (self->_expectedWinnerElectionParticipantId)
  {
    expectedWinnerElectionParticipantId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
    dictionaryRepresentation = [expectedWinnerElectionParticipantId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"expectedWinnerElectionParticipantId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"expectedWinnerElectionParticipantId"];
    }
  }

  if (self->_expectedWinnerSiriSpeechId)
  {
    expectedWinnerSiriSpeechId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
    dictionaryRepresentation2 = [expectedWinnerSiriSpeechId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"expectedWinnerSiriSpeechId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"expectedWinnerSiriSpeechId"];
    }
  }

  if (self->_experimentId)
  {
    experimentId = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];
    v13 = [experimentId copy];
    [dictionary setObject:v13 forKeyedSubscript:@"experimentId"];
  }

  if (self->_failureReasonCategory)
  {
    failureReasonCategory = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];
    v15 = [failureReasonCategory copy];
    [dictionary setObject:v15 forKeyedSubscript:@"failureReasonCategory"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAUserFeedbackCompleted hasResponseFromMultipleDevices](self, "hasResponseFromMultipleDevices")}];
    [dictionary setObject:v17 forKeyedSubscript:@"hasResponseFromMultipleDevices"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAUserFeedbackCompleted isCorrectDeviceSelected](self, "isCorrectDeviceSelected")}];
    [dictionary setObject:v18 forKeyedSubscript:@"isCorrectDeviceSelected"];
  }

  if (self->_surveyId)
  {
    surveyId = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];
    v20 = [surveyId copy];
    [dictionary setObject:v20 forKeyedSubscript:@"surveyId"];
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

    [dictionary setObject:v23 forKeyedSubscript:@"userFeedbackStatus"];
    v21 = self->_has;
  }

  if ((v21 & 4) != 0)
  {
    v24 = MEMORY[0x1E696AD98];
    [(CDASchemaCDAUserFeedbackCompleted *)self userReportedResponseDeviceDistance];
    v25 = [v24 numberWithDouble:?];
    [dictionary setObject:v25 forKeyedSubscript:@"userReportedResponseDeviceDistance"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  surveyId = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];
  surveyId2 = [equalCopy surveyId];
  if ((surveyId != 0) == (surveyId2 == 0))
  {
    goto LABEL_43;
  }

  surveyId3 = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];
  if (surveyId3)
  {
    v8 = surveyId3;
    surveyId4 = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];
    surveyId5 = [equalCopy surveyId];
    v11 = [surveyId4 isEqual:surveyId5];

    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[80];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_44;
  }

  if (*&has)
  {
    userFeedbackStatus = self->_userFeedbackStatus;
    if (userFeedbackStatus != [equalCopy userFeedbackStatus])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v13 = equalCopy[80];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v15)
  {
    isCorrectDeviceSelected = self->_isCorrectDeviceSelected;
    if (isCorrectDeviceSelected != [equalCopy isCorrectDeviceSelected])
    {
      goto LABEL_44;
    }
  }

  surveyId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
  surveyId2 = [equalCopy expectedWinnerSiriSpeechId];
  if ((surveyId != 0) == (surveyId2 == 0))
  {
    goto LABEL_43;
  }

  expectedWinnerSiriSpeechId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
  if (expectedWinnerSiriSpeechId)
  {
    v18 = expectedWinnerSiriSpeechId;
    expectedWinnerSiriSpeechId2 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
    expectedWinnerSiriSpeechId3 = [equalCopy expectedWinnerSiriSpeechId];
    v21 = [expectedWinnerSiriSpeechId2 isEqual:expectedWinnerSiriSpeechId3];

    if (!v21)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  surveyId = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];
  surveyId2 = [equalCopy failureReasonCategory];
  if ((surveyId != 0) == (surveyId2 == 0))
  {
    goto LABEL_43;
  }

  failureReasonCategory = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];
  if (failureReasonCategory)
  {
    v23 = failureReasonCategory;
    failureReasonCategory2 = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];
    failureReasonCategory3 = [equalCopy failureReasonCategory];
    v26 = [failureReasonCategory2 isEqual:failureReasonCategory3];

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
  v29 = equalCopy[80];
  if (v28 != ((v29 >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v28)
  {
    userReportedResponseDeviceDistance = self->_userReportedResponseDeviceDistance;
    [equalCopy userReportedResponseDeviceDistance];
    if (userReportedResponseDeviceDistance != v31)
    {
      goto LABEL_44;
    }

    v27 = self->_has;
    v29 = equalCopy[80];
  }

  v32 = (*&v27 >> 3) & 1;
  if (v32 != ((v29 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v32)
  {
    dataCollectionGroup = self->_dataCollectionGroup;
    if (dataCollectionGroup != [equalCopy dataCollectionGroup])
    {
      goto LABEL_44;
    }
  }

  surveyId = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];
  surveyId2 = [equalCopy experimentId];
  if ((surveyId != 0) == (surveyId2 == 0))
  {
    goto LABEL_43;
  }

  experimentId = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];
  if (experimentId)
  {
    v35 = experimentId;
    experimentId2 = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];
    experimentId3 = [equalCopy experimentId];
    v38 = [experimentId2 isEqual:experimentId3];

    if (!v38)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v39 = (*&self->_has >> 4) & 1;
  if (v39 != ((equalCopy[80] >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v39)
  {
    hasResponseFromMultipleDevices = self->_hasResponseFromMultipleDevices;
    if (hasResponseFromMultipleDevices != [equalCopy hasResponseFromMultipleDevices])
    {
      goto LABEL_44;
    }
  }

  surveyId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
  surveyId2 = [equalCopy expectedWinnerElectionParticipantId];
  if ((surveyId != 0) == (surveyId2 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  expectedWinnerElectionParticipantId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
  if (!expectedWinnerElectionParticipantId)
  {

LABEL_47:
    v46 = 1;
    goto LABEL_45;
  }

  v42 = expectedWinnerElectionParticipantId;
  expectedWinnerElectionParticipantId2 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
  expectedWinnerElectionParticipantId3 = [equalCopy expectedWinnerElectionParticipantId];
  v45 = [expectedWinnerElectionParticipantId2 isEqual:expectedWinnerElectionParticipantId3];

  if (v45)
  {
    goto LABEL_47;
  }

LABEL_44:
  v46 = 0;
LABEL_45:

  return v46;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  surveyId = [(CDASchemaCDAUserFeedbackCompleted *)self surveyId];

  if (surveyId)
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

  expectedWinnerSiriSpeechId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];

  if (expectedWinnerSiriSpeechId)
  {
    expectedWinnerSiriSpeechId2 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
    PBDataWriterWriteSubmessage();
  }

  failureReasonCategory = [(CDASchemaCDAUserFeedbackCompleted *)self failureReasonCategory];

  if (failureReasonCategory)
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

  experimentId = [(CDASchemaCDAUserFeedbackCompleted *)self experimentId];

  if (experimentId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  expectedWinnerElectionParticipantId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];

  v12 = toCopy;
  if (expectedWinnerElectionParticipantId)
  {
    expectedWinnerElectionParticipantId2 = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (void)setHasHasResponseFromMultipleDevices:(BOOL)devices
{
  if (devices)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasDataCollectionGroup:(BOOL)group
{
  if (group)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUserReportedResponseDeviceDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsCorrectDeviceSelected:(BOOL)selected
{
  if (selected)
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
  v13.super_class = CDASchemaCDAUserFeedbackCompleted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(CDASchemaCDAUserFeedbackCompleted *)self deleteExpectedWinnerSiriSpeechId];
  }

  expectedWinnerSiriSpeechId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerSiriSpeechId];
  v7 = [expectedWinnerSiriSpeechId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CDASchemaCDAUserFeedbackCompleted *)self deleteExpectedWinnerSiriSpeechId];
  }

  expectedWinnerElectionParticipantId = [(CDASchemaCDAUserFeedbackCompleted *)self expectedWinnerElectionParticipantId];
  v10 = [expectedWinnerElectionParticipantId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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