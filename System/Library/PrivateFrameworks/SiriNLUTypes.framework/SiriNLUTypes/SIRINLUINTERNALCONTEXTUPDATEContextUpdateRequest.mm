@interface SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPreviousTurns:(id)a3;
- (void)addQrHypotheses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest

- (void)mergeFrom:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  currentTurn = self->_currentTurn;
  v6 = *(v4 + 1);
  if (currentTurn)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALTurnInput *)currentTurn mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self setCurrentTurn:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = *(v4 + 3);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self addPreviousTurns:*(*(&v26 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = *(v4 + 4);
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self addQrHypotheses:*(*(&v22 + 1) + 8 * j), v22];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  requestId = self->_requestId;
  v18 = *(v4 + 5);
  if (requestId)
  {
    if (v18)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self setRequestId:?];
  }

  if (*(v4 + 6))
  {
    [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self setResultCandidateId:?];
  }

  nluRequestId = self->_nluRequestId;
  v20 = *(v4 + 2);
  if (nluRequestId)
  {
    if (v20)
    {
      [(SIRINLUEXTERNALUUID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self setNluRequestId:?];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurn hash];
  v4 = [(NSMutableArray *)self->_previousTurns hash]^ v3;
  v5 = [(NSMutableArray *)self->_qrHypotheses hash];
  v6 = v4 ^ v5 ^ [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v7 = [(NSString *)self->_resultCandidateId hash];
  return v6 ^ v7 ^ [(SIRINLUEXTERNALUUID *)self->_nluRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((currentTurn = self->_currentTurn, !(currentTurn | v4[1])) || -[SIRINLUEXTERNALTurnInput isEqual:](currentTurn, "isEqual:")) && ((previousTurns = self->_previousTurns, !(previousTurns | v4[3])) || -[NSMutableArray isEqual:](previousTurns, "isEqual:")) && ((qrHypotheses = self->_qrHypotheses, !(qrHypotheses | v4[4])) || -[NSMutableArray isEqual:](qrHypotheses, "isEqual:")) && ((requestId = self->_requestId, !(requestId | v4[5])) || -[SIRINLUEXTERNALUUID isEqual:](requestId, "isEqual:")) && ((resultCandidateId = self->_resultCandidateId, !(resultCandidateId | v4[6])) || -[NSString isEqual:](resultCandidateId, "isEqual:")))
  {
    nluRequestId = self->_nluRequestId;
    if (nluRequestId | v4[2])
    {
      v11 = [(SIRINLUEXTERNALUUID *)nluRequestId isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALTurnInput *)self->_currentTurn copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_previousTurns;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v32 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addPreviousTurns:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_qrHypotheses;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v28 + 1) + 8 * v18) copyWithZone:{a3, v28}];
        [v5 addQrHypotheses:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  v20 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:a3];
  v21 = v5[5];
  v5[5] = v20;

  v22 = [(NSString *)self->_resultCandidateId copyWithZone:a3];
  v23 = v5[6];
  v5[6] = v22;

  v24 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:a3];
  v25 = v5[2];
  v5[2] = v24;

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v13 = a3;
  if (self->_currentTurn)
  {
    [v13 setCurrentTurn:?];
  }

  if ([(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self previousTurnsCount])
  {
    [v13 clearPreviousTurns];
    v4 = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self previousTurnsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self previousTurnsAtIndex:i];
        [v13 addPreviousTurns:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self qrHypothesesCount])
  {
    [v13 clearQrHypotheses];
    v8 = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self qrHypothesesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self qrHypothesesAtIndex:j];
        [v13 addQrHypotheses:v11];
      }
    }
  }

  if (self->_requestId)
  {
    [v13 setRequestId:?];
  }

  v12 = v13;
  if (self->_resultCandidateId)
  {
    [v13 setResultCandidateId:?];
    v12 = v13;
  }

  if (self->_nluRequestId)
  {
    [v13 setNluRequestId:?];
    v12 = v13;
  }
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_currentTurn)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_previousTurns;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_qrHypotheses;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  currentTurn = self->_currentTurn;
  if (currentTurn)
  {
    v5 = [(SIRINLUEXTERNALTurnInput *)currentTurn dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"current_turn"];
  }

  if ([(NSMutableArray *)self->_previousTurns count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_previousTurns, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = self->_previousTurns;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"previous_turns"];
  }

  if ([(NSMutableArray *)self->_qrHypotheses count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_qrHypotheses, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = self->_qrHypotheses;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"qr_hypotheses"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    v21 = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"request_id"];
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId)
  {
    [v3 setObject:resultCandidateId forKey:@"result_candidate_id"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    v24 = [(SIRINLUEXTERNALUUID *)nluRequestId dictionaryRepresentation];
    [v3 setObject:v24 forKey:@"nlu_request_id"];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest;
  v4 = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALCONTEXTUPDATEContextUpdateRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addQrHypotheses:(id)a3
{
  v4 = a3;
  qrHypotheses = self->_qrHypotheses;
  v8 = v4;
  if (!qrHypotheses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_qrHypotheses;
    self->_qrHypotheses = v6;

    v4 = v8;
    qrHypotheses = self->_qrHypotheses;
  }

  [(NSMutableArray *)qrHypotheses addObject:v4];
}

- (void)addPreviousTurns:(id)a3
{
  v4 = a3;
  previousTurns = self->_previousTurns;
  v8 = v4;
  if (!previousTurns)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_previousTurns;
    self->_previousTurns = v6;

    v4 = v8;
    previousTurns = self->_previousTurns;
  }

  [(NSMutableArray *)previousTurns addObject:v4];
}

@end