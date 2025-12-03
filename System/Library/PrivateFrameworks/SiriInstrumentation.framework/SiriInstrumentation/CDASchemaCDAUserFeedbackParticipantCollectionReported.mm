@interface CDASchemaCDAUserFeedbackParticipantCollectionReported
- (BOOL)isEqual:(id)equal;
- (CDASchemaCDAUserFeedbackParticipantCollectionReported)initWithDictionary:(id)dictionary;
- (CDASchemaCDAUserFeedbackParticipantCollectionReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addUserFeedbackParticipant:(id)participant;
- (void)writeTo:(id)to;
@end

@implementation CDASchemaCDAUserFeedbackParticipantCollectionReported

- (CDASchemaCDAUserFeedbackParticipantCollectionReported)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = CDASchemaCDAUserFeedbackParticipantCollectionReported;
  v5 = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"surveyId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)v5 setSurveyId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userFeedbackParticipant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[CDASchemaCDAUserFeedbackParticipant alloc] initWithDictionary:v14];
              [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)v5 addUserFeedbackParticipant:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v16 = v5;
  }

  return v5;
}

- (CDASchemaCDAUserFeedbackParticipantCollectionReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_surveyId)
  {
    surveyId = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self surveyId];
    v5 = [surveyId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"surveyId"];
  }

  if ([(NSArray *)self->_userFeedbackParticipants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_userFeedbackParticipants;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"userFeedbackParticipant"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v15];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  surveyId = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self surveyId];
  surveyId2 = [equalCopy surveyId];
  if ((surveyId != 0) == (surveyId2 == 0))
  {
    goto LABEL_11;
  }

  surveyId3 = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self surveyId];
  if (surveyId3)
  {
    v8 = surveyId3;
    surveyId4 = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self surveyId];
    surveyId5 = [equalCopy surveyId];
    v11 = [surveyId4 isEqual:surveyId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  surveyId = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self userFeedbackParticipants];
  surveyId2 = [equalCopy userFeedbackParticipants];
  if ((surveyId != 0) != (surveyId2 == 0))
  {
    userFeedbackParticipants = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self userFeedbackParticipants];
    if (!userFeedbackParticipants)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = userFeedbackParticipants;
    userFeedbackParticipants2 = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self userFeedbackParticipants];
    userFeedbackParticipants3 = [equalCopy userFeedbackParticipants];
    v16 = [userFeedbackParticipants2 isEqual:userFeedbackParticipants3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  surveyId = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self surveyId];

  if (surveyId)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_userFeedbackParticipants;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addUserFeedbackParticipant:(id)participant
{
  participantCopy = participant;
  userFeedbackParticipants = self->_userFeedbackParticipants;
  v8 = participantCopy;
  if (!userFeedbackParticipants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_userFeedbackParticipants;
    self->_userFeedbackParticipants = array;

    participantCopy = v8;
    userFeedbackParticipants = self->_userFeedbackParticipants;
  }

  [(NSArray *)userFeedbackParticipants addObject:participantCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CDASchemaCDAUserFeedbackParticipantCollectionReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self userFeedbackParticipants:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(CDASchemaCDAUserFeedbackParticipantCollectionReported *)self setUserFeedbackParticipants:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end