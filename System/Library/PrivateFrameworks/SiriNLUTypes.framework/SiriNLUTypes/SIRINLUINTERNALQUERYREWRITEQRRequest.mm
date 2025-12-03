@interface SIRINLUINTERNALQUERYREWRITEQRRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInteractions:(id)interactions;
- (void)addOriginalInteractions:(id)interactions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALQUERYREWRITEQRRequest

- (void)mergeFrom:(id)from
{
  v32 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 5);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self setRequestId:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = *(fromCopy + 2);
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

        [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self addInteractions:*(*(&v26 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = *(fromCopy + 4);
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

        [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self addOriginalInteractions:*(*(&v22 + 1) + 8 * j), v22];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  if (*(fromCopy + 6))
  {
    [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self setResultCandidateId:?];
  }

  nluRequestId = self->_nluRequestId;
  v18 = *(fromCopy + 3);
  if (nluRequestId)
  {
    if (v18)
    {
      [(SIRINLUEXTERNALUUID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self setNluRequestId:?];
  }

  cdmRequestId = self->_cdmRequestId;
  v20 = *(fromCopy + 1);
  if (cdmRequestId)
  {
    if (v20)
    {
      [(SIRINLUEXTERNALRequestID *)cdmRequestId mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self setCdmRequestId:?];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_requestId hash];
  v4 = [(NSMutableArray *)self->_interactions hash]^ v3;
  v5 = [(NSMutableArray *)self->_originalInteractions hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_resultCandidateId hash];
  v7 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId hash];
  return v6 ^ v7 ^ [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[5])) || -[SIRINLUEXTERNALUUID isEqual:](requestId, "isEqual:")) && ((interactions = self->_interactions, !(interactions | equalCopy[2])) || -[NSMutableArray isEqual:](interactions, "isEqual:")) && ((originalInteractions = self->_originalInteractions, !(originalInteractions | equalCopy[4])) || -[NSMutableArray isEqual:](originalInteractions, "isEqual:")) && ((resultCandidateId = self->_resultCandidateId, !(resultCandidateId | equalCopy[6])) || -[NSString isEqual:](resultCandidateId, "isEqual:")) && ((nluRequestId = self->_nluRequestId, !(nluRequestId | equalCopy[3])) || -[SIRINLUEXTERNALUUID isEqual:](nluRequestId, "isEqual:")))
  {
    cdmRequestId = self->_cdmRequestId;
    if (cdmRequestId | equalCopy[1])
    {
      v11 = [(SIRINLUEXTERNALRequestID *)cdmRequestId isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_requestId copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_interactions;
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

        v13 = [*(*(&v32 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addInteractions:v13];

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
  v14 = self->_originalInteractions;
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

        v19 = [*(*(&v28 + 1) + 8 * v18) copyWithZone:{zone, v28}];
        [v5 addOriginalInteractions:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  v20 = [(NSString *)self->_resultCandidateId copyWithZone:zone];
  v21 = v5[6];
  v5[6] = v20;

  v22 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:zone];
  v23 = v5[3];
  v5[3] = v22;

  v24 = [(SIRINLUEXTERNALRequestID *)self->_cdmRequestId copyWithZone:zone];
  v25 = v5[1];
  v5[1] = v24;

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRRequest *)self interactionsCount])
  {
    [toCopy clearInteractions];
    interactionsCount = [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self interactionsCount];
    if (interactionsCount)
    {
      v5 = interactionsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self interactionsAtIndex:i];
        [toCopy addInteractions:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALQUERYREWRITEQRRequest *)self originalInteractionsCount])
  {
    [toCopy clearOriginalInteractions];
    originalInteractionsCount = [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self originalInteractionsCount];
    if (originalInteractionsCount)
    {
      v9 = originalInteractionsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self originalInteractionsAtIndex:j];
        [toCopy addOriginalInteractions:v11];
      }
    }
  }

  if (self->_resultCandidateId)
  {
    [toCopy setResultCandidateId:?];
  }

  v12 = toCopy;
  if (self->_nluRequestId)
  {
    [toCopy setNluRequestId:?];
    v12 = toCopy;
  }

  if (self->_cdmRequestId)
  {
    [toCopy setCdmRequestId:?];
    v12 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_interactions;
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
  v11 = self->_originalInteractions;
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

  if (self->_resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_cdmRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"requestId"];
  }

  if ([(NSMutableArray *)self->_interactions count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_interactions, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = self->_interactions;
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

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"interactions"];
  }

  if ([(NSMutableArray *)self->_originalInteractions count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_originalInteractions, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = self->_originalInteractions;
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

          dictionaryRepresentation3 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"original_interactions"];
  }

  resultCandidateId = self->_resultCandidateId;
  if (resultCandidateId)
  {
    [dictionary setObject:resultCandidateId forKey:@"result_candidate_id"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    dictionaryRepresentation4 = [(SIRINLUEXTERNALUUID *)nluRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"nlu_request_id"];
  }

  cdmRequestId = self->_cdmRequestId;
  if (cdmRequestId)
  {
    dictionaryRepresentation5 = [(SIRINLUEXTERNALRequestID *)cdmRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"cdm_request_id"];
  }

  v25 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALQUERYREWRITEQRRequest;
  v4 = [(SIRINLUINTERNALQUERYREWRITEQRRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALQUERYREWRITEQRRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addOriginalInteractions:(id)interactions
{
  interactionsCopy = interactions;
  originalInteractions = self->_originalInteractions;
  v8 = interactionsCopy;
  if (!originalInteractions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_originalInteractions;
    self->_originalInteractions = v6;

    interactionsCopy = v8;
    originalInteractions = self->_originalInteractions;
  }

  [(NSMutableArray *)originalInteractions addObject:interactionsCopy];
}

- (void)addInteractions:(id)interactions
{
  interactionsCopy = interactions;
  interactions = self->_interactions;
  v8 = interactionsCopy;
  if (!interactions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_interactions;
    self->_interactions = v6;

    interactionsCopy = v8;
    interactions = self->_interactions;
  }

  [(NSMutableArray *)interactions addObject:interactionsCopy];
}

@end