@interface IDENTITYSchemaIDENTITYClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported)userDisambiguationDecisionReported;
- (IDENTITYSchemaIDENTITYClientEvent)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYClientEvent)initWithJSON:(id)n;
- (IDENTITYSchemaIDENTITYFirstIdentityReceived)firstIdentityReceived;
- (IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted)firstVoiceIdSubmitted;
- (IDENTITYSchemaIDENTITYIdentityRequestContext)entityKitRequestContext;
- (IDENTITYSchemaIDENTITYResultCandidateReceived)resultCandidateReceived;
- (IDENTITYSchemaIDENTITYScoreCardsGenerated)scoreCardsGenerated;
- (IDENTITYSchemaIDENTITYUserPresenceSourceCaptured)userPresenceSourceCaptured;
- (IDENTITYSchemaIDENTITYUsersPresencesCaptured)usersPresencesCaptured;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteEntityKitRequestContext;
- (void)deleteFirstIdentityReceived;
- (void)deleteFirstVoiceIdSubmitted;
- (void)deleteResultCandidateReceived;
- (void)deleteScoreCardsGenerated;
- (void)deleteUserDisambiguationDecisionReported;
- (void)deleteUserPresenceSourceCaptured;
- (void)deleteUsersPresencesCaptured;
- (void)setEntityKitRequestContext:(id)context;
- (void)setFirstIdentityReceived:(id)received;
- (void)setFirstVoiceIdSubmitted:(id)submitted;
- (void)setResultCandidateReceived:(id)received;
- (void)setScoreCardsGenerated:(id)generated;
- (void)setUserDisambiguationDecisionReported:(id)reported;
- (void)setUserPresenceSourceCaptured:(id)captured;
- (void)setUsersPresencesCaptured:(id)captured;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYClientEvent

- (IDENTITYSchemaIDENTITYClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = IDENTITYSchemaIDENTITYClientEvent;
  v5 = [(IDENTITYSchemaIDENTITYClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IDENTITYSchemaIDENTITYClientEventMetadata alloc] initWithDictionary:v6];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"scoreCardsGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IDENTITYSchemaIDENTITYScoreCardsGenerated alloc] initWithDictionary:v8];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setScoreCardsGenerated:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"entityKitRequestContext", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IDENTITYSchemaIDENTITYIdentityRequestContext alloc] initWithDictionary:v10];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setEntityKitRequestContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"firstVoiceIdSubmitted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted alloc] initWithDictionary:v12];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setFirstVoiceIdSubmitted:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"firstIdentityReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IDENTITYSchemaIDENTITYFirstIdentityReceived alloc] initWithDictionary:v14];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setFirstIdentityReceived:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IDENTITYSchemaIDENTITYResultCandidateReceived alloc] initWithDictionary:v16];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setResultCandidateReceived:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"userPresenceSourceCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IDENTITYSchemaIDENTITYUserPresenceSourceCaptured alloc] initWithDictionary:v18];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setUserPresenceSourceCaptured:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"userDisambiguationDecisionReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported alloc] initWithDictionary:v20];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setUserDisambiguationDecisionReported:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"usersPresencesCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[IDENTITYSchemaIDENTITYUsersPresencesCaptured alloc] initWithDictionary:v22];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setUsersPresencesCaptured:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYClientEvent *)self dictionaryRepresentation];
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
  if (self->_entityKitRequestContext)
  {
    entityKitRequestContext = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
    dictionaryRepresentation = [entityKitRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityKitRequestContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entityKitRequestContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
    dictionaryRepresentation2 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_firstIdentityReceived)
  {
    firstIdentityReceived = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
    dictionaryRepresentation3 = [firstIdentityReceived dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"firstIdentityReceived"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"firstIdentityReceived"];
    }
  }

  if (self->_firstVoiceIdSubmitted)
  {
    firstVoiceIdSubmitted = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
    dictionaryRepresentation4 = [firstVoiceIdSubmitted dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"firstVoiceIdSubmitted"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"firstVoiceIdSubmitted"];
    }
  }

  if (self->_resultCandidateReceived)
  {
    resultCandidateReceived = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
    dictionaryRepresentation5 = [resultCandidateReceived dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"resultCandidateReceived"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"resultCandidateReceived"];
    }
  }

  if (self->_scoreCardsGenerated)
  {
    scoreCardsGenerated = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
    dictionaryRepresentation6 = [scoreCardsGenerated dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"scoreCardsGenerated"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"scoreCardsGenerated"];
    }
  }

  if (self->_userDisambiguationDecisionReported)
  {
    userDisambiguationDecisionReported = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
    dictionaryRepresentation7 = [userDisambiguationDecisionReported dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"userDisambiguationDecisionReported"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"userDisambiguationDecisionReported"];
    }
  }

  if (self->_userPresenceSourceCaptured)
  {
    userPresenceSourceCaptured = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
    dictionaryRepresentation8 = [userPresenceSourceCaptured dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"userPresenceSourceCaptured"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"userPresenceSourceCaptured"];
    }
  }

  if (self->_usersPresencesCaptured)
  {
    usersPresencesCaptured = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
    dictionaryRepresentation9 = [usersPresencesCaptured dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"usersPresencesCaptured"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"usersPresencesCaptured"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IDENTITYSchemaIDENTITYClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(IDENTITYSchemaIDENTITYScoreCardsGenerated *)self->_scoreCardsGenerated hash]^ v3;
  v5 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self->_entityKitRequestContext hash];
  v6 = v4 ^ v5 ^ [(IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted *)self->_firstVoiceIdSubmitted hash];
  v7 = [(IDENTITYSchemaIDENTITYFirstIdentityReceived *)self->_firstIdentityReceived hash];
  v8 = v7 ^ [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self->_resultCandidateReceived hash];
  v9 = v6 ^ v8 ^ [(IDENTITYSchemaIDENTITYUserPresenceSourceCaptured *)self->_userPresenceSourceCaptured hash];
  v10 = [(IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported *)self->_userDisambiguationDecisionReported hash];
  return v9 ^ v10 ^ [(IDENTITYSchemaIDENTITYUsersPresencesCaptured *)self->_usersPresencesCaptured hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_48;
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  eventMetadata3 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
  eventMetadata2 = [equalCopy scoreCardsGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  scoreCardsGenerated = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
  if (scoreCardsGenerated)
  {
    v14 = scoreCardsGenerated;
    scoreCardsGenerated2 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
    scoreCardsGenerated3 = [equalCopy scoreCardsGenerated];
    v17 = [scoreCardsGenerated2 isEqual:scoreCardsGenerated3];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
  eventMetadata2 = [equalCopy entityKitRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  entityKitRequestContext = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
  if (entityKitRequestContext)
  {
    v19 = entityKitRequestContext;
    entityKitRequestContext2 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
    entityKitRequestContext3 = [equalCopy entityKitRequestContext];
    v22 = [entityKitRequestContext2 isEqual:entityKitRequestContext3];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
  eventMetadata2 = [equalCopy firstVoiceIdSubmitted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  firstVoiceIdSubmitted = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
  if (firstVoiceIdSubmitted)
  {
    v24 = firstVoiceIdSubmitted;
    firstVoiceIdSubmitted2 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
    firstVoiceIdSubmitted3 = [equalCopy firstVoiceIdSubmitted];
    v27 = [firstVoiceIdSubmitted2 isEqual:firstVoiceIdSubmitted3];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
  eventMetadata2 = [equalCopy firstIdentityReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  firstIdentityReceived = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
  if (firstIdentityReceived)
  {
    v29 = firstIdentityReceived;
    firstIdentityReceived2 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
    firstIdentityReceived3 = [equalCopy firstIdentityReceived];
    v32 = [firstIdentityReceived2 isEqual:firstIdentityReceived3];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
  eventMetadata2 = [equalCopy resultCandidateReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  resultCandidateReceived = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
  if (resultCandidateReceived)
  {
    v34 = resultCandidateReceived;
    resultCandidateReceived2 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
    resultCandidateReceived3 = [equalCopy resultCandidateReceived];
    v37 = [resultCandidateReceived2 isEqual:resultCandidateReceived3];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
  eventMetadata2 = [equalCopy userPresenceSourceCaptured];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  userPresenceSourceCaptured = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
  if (userPresenceSourceCaptured)
  {
    v39 = userPresenceSourceCaptured;
    userPresenceSourceCaptured2 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
    userPresenceSourceCaptured3 = [equalCopy userPresenceSourceCaptured];
    v42 = [userPresenceSourceCaptured2 isEqual:userPresenceSourceCaptured3];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
  eventMetadata2 = [equalCopy userDisambiguationDecisionReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  userDisambiguationDecisionReported = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
  if (userDisambiguationDecisionReported)
  {
    v44 = userDisambiguationDecisionReported;
    userDisambiguationDecisionReported2 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
    userDisambiguationDecisionReported3 = [equalCopy userDisambiguationDecisionReported];
    v47 = [userDisambiguationDecisionReported2 isEqual:userDisambiguationDecisionReported3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
  eventMetadata2 = [equalCopy usersPresencesCaptured];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    usersPresencesCaptured = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
    if (!usersPresencesCaptured)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = usersPresencesCaptured;
    usersPresencesCaptured2 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
    usersPresencesCaptured3 = [equalCopy usersPresencesCaptured];
    v52 = [usersPresencesCaptured2 isEqual:usersPresencesCaptured3];

    if (v52)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_47:
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  scoreCardsGenerated = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];

  if (scoreCardsGenerated)
  {
    scoreCardsGenerated2 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
    PBDataWriterWriteSubmessage();
  }

  entityKitRequestContext = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];

  if (entityKitRequestContext)
  {
    entityKitRequestContext2 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
    PBDataWriterWriteSubmessage();
  }

  firstVoiceIdSubmitted = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];

  if (firstVoiceIdSubmitted)
  {
    firstVoiceIdSubmitted2 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
    PBDataWriterWriteSubmessage();
  }

  firstIdentityReceived = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];

  if (firstIdentityReceived)
  {
    firstIdentityReceived2 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateReceived = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];

  if (resultCandidateReceived)
  {
    resultCandidateReceived2 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
    PBDataWriterWriteSubmessage();
  }

  userPresenceSourceCaptured = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];

  if (userPresenceSourceCaptured)
  {
    userPresenceSourceCaptured2 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
    PBDataWriterWriteSubmessage();
  }

  userDisambiguationDecisionReported = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];

  if (userDisambiguationDecisionReported)
  {
    userDisambiguationDecisionReported2 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
    PBDataWriterWriteSubmessage();
  }

  usersPresencesCaptured = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];

  v21 = toCopy;
  if (usersPresencesCaptured)
  {
    usersPresencesCaptured2 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
  }
}

- (void)deleteUsersPresencesCaptured
{
  if (self->_whichEvent_Type == 9)
  {
    self->_whichEvent_Type = 0;
    self->_usersPresencesCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYUsersPresencesCaptured)usersPresencesCaptured
{
  if (self->_whichEvent_Type == 9)
  {
    v3 = self->_usersPresencesCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUsersPresencesCaptured:(id)captured
{
  capturedCopy = captured;
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = 0;

  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = 0;

  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = 0;

  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = 0;

  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = 0;

  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = 0;

  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = 0;

  v12 = 9;
  if (!capturedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = capturedCopy;
}

- (void)deleteUserDisambiguationDecisionReported
{
  if (self->_whichEvent_Type == 8)
  {
    self->_whichEvent_Type = 0;
    self->_userDisambiguationDecisionReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported)userDisambiguationDecisionReported
{
  if (self->_whichEvent_Type == 8)
  {
    v3 = self->_userDisambiguationDecisionReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserDisambiguationDecisionReported:(id)reported
{
  reportedCopy = reported;
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = 0;

  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = 0;

  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = 0;

  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = 0;

  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = 0;

  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = 0;

  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = 0;

  self->_whichEvent_Type = 8 * (reportedCopy != 0);
  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = reportedCopy;
}

- (void)deleteUserPresenceSourceCaptured
{
  if (self->_whichEvent_Type == 7)
  {
    self->_whichEvent_Type = 0;
    self->_userPresenceSourceCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYUserPresenceSourceCaptured)userPresenceSourceCaptured
{
  if (self->_whichEvent_Type == 7)
  {
    v3 = self->_userPresenceSourceCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserPresenceSourceCaptured:(id)captured
{
  capturedCopy = captured;
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = 0;

  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = 0;

  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = 0;

  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = 0;

  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = 0;

  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = 0;

  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = 0;

  v12 = 7;
  if (!capturedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = capturedCopy;
}

- (void)deleteResultCandidateReceived
{
  if (self->_whichEvent_Type == 6)
  {
    self->_whichEvent_Type = 0;
    self->_resultCandidateReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYResultCandidateReceived)resultCandidateReceived
{
  if (self->_whichEvent_Type == 6)
  {
    v3 = self->_resultCandidateReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResultCandidateReceived:(id)received
{
  receivedCopy = received;
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = 0;

  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = 0;

  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = 0;

  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = 0;

  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = 0;

  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = 0;

  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = 0;

  v12 = 6;
  if (!receivedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = receivedCopy;
}

- (void)deleteFirstIdentityReceived
{
  if (self->_whichEvent_Type == 5)
  {
    self->_whichEvent_Type = 0;
    self->_firstIdentityReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYFirstIdentityReceived)firstIdentityReceived
{
  if (self->_whichEvent_Type == 5)
  {
    v3 = self->_firstIdentityReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFirstIdentityReceived:(id)received
{
  receivedCopy = received;
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = 0;

  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = 0;

  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = 0;

  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = 0;

  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = 0;

  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = 0;

  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = 0;

  v12 = 5;
  if (!receivedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = receivedCopy;
}

- (void)deleteFirstVoiceIdSubmitted
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_firstVoiceIdSubmitted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted)firstVoiceIdSubmitted
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_firstVoiceIdSubmitted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFirstVoiceIdSubmitted:(id)submitted
{
  submittedCopy = submitted;
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = 0;

  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = 0;

  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = 0;

  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = 0;

  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = 0;

  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = 0;

  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = 0;

  self->_whichEvent_Type = 4 * (submittedCopy != 0);
  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = submittedCopy;
}

- (void)deleteEntityKitRequestContext
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_entityKitRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYIdentityRequestContext)entityKitRequestContext
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_entityKitRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntityKitRequestContext:(id)context
{
  contextCopy = context;
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = 0;

  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = 0;

  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = 0;

  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = 0;

  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = 0;

  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = 0;

  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = 0;

  v12 = 3;
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = contextCopy;
}

- (void)deleteScoreCardsGenerated
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_scoreCardsGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYScoreCardsGenerated)scoreCardsGenerated
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_scoreCardsGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setScoreCardsGenerated:(id)generated
{
  generatedCopy = generated;
  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = 0;

  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = 0;

  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = 0;

  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = 0;

  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = 0;

  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = 0;

  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = 0;

  self->_whichEvent_Type = 2 * (generatedCopy != 0);
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = generatedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(IDENTITYSchemaIDENTITYClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 7)
  {
    return @"com.apple.aiml.siri.identity.IDENTITYClientEvent";
  }

  else
  {
    return off_1E78D80D8[whichEvent_Type - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v34.receiver = self;
  v34.super_class = IDENTITYSchemaIDENTITYClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteEventMetadata];
  }

  scoreCardsGenerated = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
  v10 = [scoreCardsGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteScoreCardsGenerated];
  }

  entityKitRequestContext = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
  v13 = [entityKitRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteEntityKitRequestContext];
  }

  firstVoiceIdSubmitted = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
  v16 = [firstVoiceIdSubmitted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteFirstVoiceIdSubmitted];
  }

  firstIdentityReceived = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
  v19 = [firstIdentityReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteFirstIdentityReceived];
  }

  resultCandidateReceived = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
  v22 = [resultCandidateReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteResultCandidateReceived];
  }

  userPresenceSourceCaptured = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
  v25 = [userPresenceSourceCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteUserPresenceSourceCaptured];
  }

  userDisambiguationDecisionReported = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
  v28 = [userDisambiguationDecisionReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteUserDisambiguationDecisionReported];
  }

  usersPresencesCaptured = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
  v31 = [usersPresencesCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteUsersPresencesCaptured];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  identityId = [eventMetadata identityId];

  if (identityId)
  {
    value = [identityId value];
    if (value)
    {
      value2 = [identityId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 38;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  identityId = [eventMetadata identityId];

  if (!identityId)
  {
    goto LABEL_5;
  }

  value = [identityId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [identityId value];
  v6 = [value2 length];

  if (v6)
  {
    value = identityId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(IDENTITYSchemaIDENTITYClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9988[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78E99C8[tag - 2];
  }
}

@end