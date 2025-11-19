@interface IDENTITYSchemaIDENTITYClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported)userDisambiguationDecisionReported;
- (IDENTITYSchemaIDENTITYClientEvent)initWithDictionary:(id)a3;
- (IDENTITYSchemaIDENTITYClientEvent)initWithJSON:(id)a3;
- (IDENTITYSchemaIDENTITYFirstIdentityReceived)firstIdentityReceived;
- (IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted)firstVoiceIdSubmitted;
- (IDENTITYSchemaIDENTITYIdentityRequestContext)entityKitRequestContext;
- (IDENTITYSchemaIDENTITYResultCandidateReceived)resultCandidateReceived;
- (IDENTITYSchemaIDENTITYScoreCardsGenerated)scoreCardsGenerated;
- (IDENTITYSchemaIDENTITYUserPresenceSourceCaptured)userPresenceSourceCaptured;
- (IDENTITYSchemaIDENTITYUsersPresencesCaptured)usersPresencesCaptured;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setEntityKitRequestContext:(id)a3;
- (void)setFirstIdentityReceived:(id)a3;
- (void)setFirstVoiceIdSubmitted:(id)a3;
- (void)setResultCandidateReceived:(id)a3;
- (void)setScoreCardsGenerated:(id)a3;
- (void)setUserDisambiguationDecisionReported:(id)a3;
- (void)setUserPresenceSourceCaptured:(id)a3;
- (void)setUsersPresencesCaptured:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDENTITYSchemaIDENTITYClientEvent

- (IDENTITYSchemaIDENTITYClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = IDENTITYSchemaIDENTITYClientEvent;
  v5 = [(IDENTITYSchemaIDENTITYClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IDENTITYSchemaIDENTITYClientEventMetadata alloc] initWithDictionary:v6];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [v4 objectForKeyedSubscript:@"scoreCardsGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IDENTITYSchemaIDENTITYScoreCardsGenerated alloc] initWithDictionary:v8];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setScoreCardsGenerated:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"entityKitRequestContext", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IDENTITYSchemaIDENTITYIdentityRequestContext alloc] initWithDictionary:v10];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setEntityKitRequestContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"firstVoiceIdSubmitted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted alloc] initWithDictionary:v12];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setFirstVoiceIdSubmitted:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"firstIdentityReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IDENTITYSchemaIDENTITYFirstIdentityReceived alloc] initWithDictionary:v14];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setFirstIdentityReceived:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"resultCandidateReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IDENTITYSchemaIDENTITYResultCandidateReceived alloc] initWithDictionary:v16];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setResultCandidateReceived:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"userPresenceSourceCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IDENTITYSchemaIDENTITYUserPresenceSourceCaptured alloc] initWithDictionary:v18];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setUserPresenceSourceCaptured:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"userDisambiguationDecisionReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported alloc] initWithDictionary:v20];
      [(IDENTITYSchemaIDENTITYClientEvent *)v5 setUserDisambiguationDecisionReported:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"usersPresencesCaptured"];
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

- (IDENTITYSchemaIDENTITYClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IDENTITYSchemaIDENTITYClientEvent *)self dictionaryRepresentation];
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
  if (self->_entityKitRequestContext)
  {
    v4 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"entityKitRequestContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"entityKitRequestContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_firstIdentityReceived)
  {
    v10 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"firstIdentityReceived"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"firstIdentityReceived"];
    }
  }

  if (self->_firstVoiceIdSubmitted)
  {
    v13 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"firstVoiceIdSubmitted"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"firstVoiceIdSubmitted"];
    }
  }

  if (self->_resultCandidateReceived)
  {
    v16 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"resultCandidateReceived"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"resultCandidateReceived"];
    }
  }

  if (self->_scoreCardsGenerated)
  {
    v19 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"scoreCardsGenerated"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"scoreCardsGenerated"];
    }
  }

  if (self->_userDisambiguationDecisionReported)
  {
    v22 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"userDisambiguationDecisionReported"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"userDisambiguationDecisionReported"];
    }
  }

  if (self->_userPresenceSourceCaptured)
  {
    v25 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"userPresenceSourceCaptured"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"userPresenceSourceCaptured"];
    }
  }

  if (self->_usersPresencesCaptured)
  {
    v28 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"usersPresencesCaptured"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"usersPresencesCaptured"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_48;
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v8 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
  v7 = [v4 scoreCardsGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v13 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
  if (v13)
  {
    v14 = v13;
    v15 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
    v16 = [v4 scoreCardsGenerated];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
  v7 = [v4 entityKitRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v18 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
    v21 = [v4 entityKitRequestContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
  v7 = [v4 firstVoiceIdSubmitted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v23 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
  if (v23)
  {
    v24 = v23;
    v25 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
    v26 = [v4 firstVoiceIdSubmitted];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
  v7 = [v4 firstIdentityReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v28 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
  if (v28)
  {
    v29 = v28;
    v30 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
    v31 = [v4 firstIdentityReceived];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
  v7 = [v4 resultCandidateReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v33 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
  if (v33)
  {
    v34 = v33;
    v35 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
    v36 = [v4 resultCandidateReceived];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
  v7 = [v4 userPresenceSourceCaptured];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v38 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
  if (v38)
  {
    v39 = v38;
    v40 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
    v41 = [v4 userPresenceSourceCaptured];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
  v7 = [v4 userDisambiguationDecisionReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v43 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
  if (v43)
  {
    v44 = v43;
    v45 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
    v46 = [v4 userDisambiguationDecisionReported];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
  v7 = [v4 usersPresencesCaptured];
  if ((v6 != 0) != (v7 == 0))
  {
    v48 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
    if (!v48)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = v48;
    v50 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
    v51 = [v4 usersPresencesCaptured];
    v52 = [v50 isEqual:v51];

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

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];

  if (v6)
  {
    v7 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];

  if (v8)
  {
    v9 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];

  if (v10)
  {
    v11 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];

  if (v12)
  {
    v13 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];

  if (v14)
  {
    v15 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];

  if (v16)
  {
    v17 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];

  if (v18)
  {
    v19 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];

  v21 = v23;
  if (v20)
  {
    v22 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
    PBDataWriterWriteSubmessage();

    v21 = v23;
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

- (void)setUsersPresencesCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  usersPresencesCaptured = self->_usersPresencesCaptured;
  self->_usersPresencesCaptured = v4;
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

- (void)setUserDisambiguationDecisionReported:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 8 * (v4 != 0);
  userDisambiguationDecisionReported = self->_userDisambiguationDecisionReported;
  self->_userDisambiguationDecisionReported = v4;
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

- (void)setUserPresenceSourceCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  userPresenceSourceCaptured = self->_userPresenceSourceCaptured;
  self->_userPresenceSourceCaptured = v4;
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

- (void)setResultCandidateReceived:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  resultCandidateReceived = self->_resultCandidateReceived;
  self->_resultCandidateReceived = v4;
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

- (void)setFirstIdentityReceived:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  firstIdentityReceived = self->_firstIdentityReceived;
  self->_firstIdentityReceived = v4;
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

- (void)setFirstVoiceIdSubmitted:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 4 * (v4 != 0);
  firstVoiceIdSubmitted = self->_firstVoiceIdSubmitted;
  self->_firstVoiceIdSubmitted = v4;
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

- (void)setEntityKitRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  entityKitRequestContext = self->_entityKitRequestContext;
  self->_entityKitRequestContext = v4;
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

- (void)setScoreCardsGenerated:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 2 * (v4 != 0);
  scoreCardsGenerated = self->_scoreCardsGenerated;
  self->_scoreCardsGenerated = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(IDENTITYSchemaIDENTITYClientEvent *)self whichEvent_Type];
  if (v2 - 2 > 7)
  {
    return @"com.apple.aiml.siri.identity.IDENTITYClientEvent";
  }

  else
  {
    return off_1E78D80D8[v2 - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = IDENTITYSchemaIDENTITYClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:v4];
  v6 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteEventMetadata];
  }

  v9 = [(IDENTITYSchemaIDENTITYClientEvent *)self scoreCardsGenerated];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteScoreCardsGenerated];
  }

  v12 = [(IDENTITYSchemaIDENTITYClientEvent *)self entityKitRequestContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteEntityKitRequestContext];
  }

  v15 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstVoiceIdSubmitted];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteFirstVoiceIdSubmitted];
  }

  v18 = [(IDENTITYSchemaIDENTITYClientEvent *)self firstIdentityReceived];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteFirstIdentityReceived];
  }

  v21 = [(IDENTITYSchemaIDENTITYClientEvent *)self resultCandidateReceived];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteResultCandidateReceived];
  }

  v24 = [(IDENTITYSchemaIDENTITYClientEvent *)self userPresenceSourceCaptured];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteUserPresenceSourceCaptured];
  }

  v27 = [(IDENTITYSchemaIDENTITYClientEvent *)self userDisambiguationDecisionReported];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(IDENTITYSchemaIDENTITYClientEvent *)self deleteUserDisambiguationDecisionReported];
  }

  v30 = [(IDENTITYSchemaIDENTITYClientEvent *)self usersPresencesCaptured];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
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
  v2 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  v3 = [v2 identityId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 38;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(IDENTITYSchemaIDENTITYClientEvent *)self eventMetadata];
  v3 = [v2 identityId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(IDENTITYSchemaIDENTITYClientEvent *)self whichEvent_Type];
  if (v3 - 2 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9988[v3 - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 2 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78E99C8[a3 - 2];
  }
}

@end