@interface SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addConversationHistory:(id)history;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self setCurrentUserQuery:?];
  }

  turnContext = self->_turnContext;
  v6 = *(fromCopy + 7);
  if (turnContext)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)turnContext mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self setTurnContext:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self addConversationHistory:*(*(&v17 + 1) + 8 * i), v17];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 5))
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self setRequestId:?];
  }

  if (*(fromCopy + 6))
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self setTrpCandidateId:?];
  }

  probingResult = self->_probingResult;
  v13 = *(fromCopy + 3);
  if (probingResult)
  {
    if (v13)
    {
      [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult *)probingResult mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self setProbingResult:?];
  }

  queryDecorationOutput = self->_queryDecorationOutput;
  v15 = *(fromCopy + 4);
  if (queryDecorationOutput)
  {
    if (v15)
    {
      [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)queryDecorationOutput mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self setQueryDecorationOutput:?];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_currentUserQuery hash];
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self->_turnContext hash]^ v3;
  v5 = [(NSMutableArray *)self->_conversationHistorys hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_requestId hash];
  v7 = [(NSString *)self->_trpCandidateId hash];
  v8 = v7 ^ [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult *)self->_probingResult hash];
  return v6 ^ v8 ^ [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self->_queryDecorationOutput hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((currentUserQuery = self->_currentUserQuery, !(currentUserQuery | equalCopy[2])) || -[NSString isEqual:](currentUserQuery, "isEqual:")) && ((turnContext = self->_turnContext, !(turnContext | equalCopy[7])) || -[SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext isEqual:](turnContext, "isEqual:")) && ((conversationHistorys = self->_conversationHistorys, !(conversationHistorys | equalCopy[1])) || -[NSMutableArray isEqual:](conversationHistorys, "isEqual:")) && ((requestId = self->_requestId, !(requestId | equalCopy[5])) || -[NSString isEqual:](requestId, "isEqual:")) && ((trpCandidateId = self->_trpCandidateId, !(trpCandidateId | equalCopy[6])) || -[NSString isEqual:](trpCandidateId, "isEqual:")) && ((probingResult = self->_probingResult, !(probingResult | equalCopy[3])) || -[SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult isEqual:](probingResult, "isEqual:")))
  {
    queryDecorationOutput = self->_queryDecorationOutput;
    if (queryDecorationOutput | equalCopy[4])
    {
      v12 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)queryDecorationOutput isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_currentUserQuery copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self->_turnContext copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_conversationHistorys;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v26 + 1) + 8 * v14) copyWithZone:{zone, v26}];
        [v5 addConversationHistory:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_requestId copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_trpCandidateId copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult *)self->_probingResult copyWithZone:zone];
  v21 = v5[3];
  v5[3] = v20;

  v22 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)self->_queryDecorationOutput copyWithZone:zone];
  v23 = v5[4];
  v5[4] = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_currentUserQuery)
  {
    [toCopy setCurrentUserQuery:?];
  }

  if (self->_turnContext)
  {
    [toCopy setTurnContext:?];
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self conversationHistorysCount])
  {
    [toCopy clearConversationHistorys];
    conversationHistorysCount = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self conversationHistorysCount];
    if (conversationHistorysCount)
    {
      v5 = conversationHistorysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self conversationHistoryAtIndex:i];
        [toCopy addConversationHistory:v7];
      }
    }
  }

  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  v8 = toCopy;
  if (self->_trpCandidateId)
  {
    [toCopy setTrpCandidateId:?];
    v8 = toCopy;
  }

  if (self->_probingResult)
  {
    [toCopy setProbingResult:?];
    v8 = toCopy;
  }

  if (self->_queryDecorationOutput)
  {
    [toCopy setQueryDecorationOutput:?];
    v8 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_currentUserQuery)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_turnContext)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_conversationHistorys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trpCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_probingResult)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_queryDecorationOutput)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  currentUserQuery = self->_currentUserQuery;
  if (currentUserQuery)
  {
    [dictionary setObject:currentUserQuery forKey:@"current_user_query"];
  }

  turnContext = self->_turnContext;
  if (turnContext)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)turnContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"turn_context"];
  }

  if ([(NSMutableArray *)self->_conversationHistorys count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_conversationHistorys, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = self->_conversationHistorys;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"conversation_history"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    [v4 setObject:requestId forKey:@"request_id"];
  }

  trpCandidateId = self->_trpCandidateId;
  if (trpCandidateId)
  {
    [v4 setObject:trpCandidateId forKey:@"trp_candidate_id"];
  }

  probingResult = self->_probingResult;
  if (probingResult)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResult *)probingResult dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"probing_result"];
  }

  queryDecorationOutput = self->_queryDecorationOutput;
  if (queryDecorationOutput)
  {
    dictionaryRepresentation4 = [(SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutput *)queryDecorationOutput dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"query_decoration_output"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERNLRouterServiceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addConversationHistory:(id)history
{
  historyCopy = history;
  conversationHistorys = self->_conversationHistorys;
  v8 = historyCopy;
  if (!conversationHistorys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_conversationHistorys;
    self->_conversationHistorys = v6;

    historyCopy = v8;
    conversationHistorys = self->_conversationHistorys;
  }

  [(NSMutableArray *)conversationHistorys addObject:historyCopy];
}

@end