@interface SIRINLUINTERNALSSUSSURequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)spans;
- (void)addSalientEntities:(id)entities;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSSUSSURequest

- (void)mergeFrom:(id)from
{
  v30 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 6))
  {
    [(SIRINLUINTERNALSSUSSURequest *)self setUtterance:?];
  }

  if (*(fromCopy + 2))
  {
    [(SIRINLUINTERNALSSUSSURequest *)self setLocale:?];
  }

  asrId = self->_asrId;
  v6 = *(fromCopy + 1);
  if (asrId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUUID *)asrId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALSSUSSURequest *)self setAsrId:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALSSUSSURequest *)self addMatchingSpans:*(*(&v24 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = *(fromCopy + 5);
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUINTERNALSSUSSURequest *)self addSalientEntities:*(*(&v20 + 1) + 8 * j), v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  nluRequestId = self->_nluRequestId;
  v18 = *(fromCopy + 4);
  if (nluRequestId)
  {
    if (v18)
    {
      [(SIRINLUEXTERNALRequestID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUINTERNALSSUSSURequest *)self setNluRequestId:?];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_utterance hash];
  v4 = [(NSString *)self->_locale hash]^ v3;
  v5 = [(SIRINLUEXTERNALUUID *)self->_asrId hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_matchingSpans hash];
  v7 = [(NSMutableArray *)self->_salientEntities hash];
  return v6 ^ v7 ^ [(SIRINLUEXTERNALRequestID *)self->_nluRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((utterance = self->_utterance, !(utterance | equalCopy[6])) || -[NSString isEqual:](utterance, "isEqual:")) && ((locale = self->_locale, !(locale | equalCopy[2])) || -[NSString isEqual:](locale, "isEqual:")) && ((asrId = self->_asrId, !(asrId | equalCopy[1])) || -[SIRINLUEXTERNALUUID isEqual:](asrId, "isEqual:")) && ((matchingSpans = self->_matchingSpans, !(matchingSpans | equalCopy[3])) || -[NSMutableArray isEqual:](matchingSpans, "isEqual:")) && ((salientEntities = self->_salientEntities, !(salientEntities | equalCopy[5])) || -[NSMutableArray isEqual:](salientEntities, "isEqual:")))
  {
    nluRequestId = self->_nluRequestId;
    if (nluRequestId | equalCopy[4])
    {
      v11 = [(SIRINLUEXTERNALRequestID *)nluRequestId isEqual:?];
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
  v6 = [(NSString *)self->_utterance copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_locale copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_matchingSpans;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v32 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addMatchingSpans:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v14);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = self->_salientEntities;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v28 + 1) + 8 * v22) copyWithZone:{zone, v28}];
        [v5 addSalientEntities:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v24 = [(SIRINLUEXTERNALRequestID *)self->_nluRequestId copyWithZone:zone];
  v25 = v5[4];
  v5[4] = v24;

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_utterance)
  {
    [toCopy setUtterance:?];
  }

  if (self->_locale)
  {
    [toCopy setLocale:?];
  }

  if (self->_asrId)
  {
    [toCopy setAsrId:?];
  }

  if ([(SIRINLUINTERNALSSUSSURequest *)self matchingSpansCount])
  {
    [toCopy clearMatchingSpans];
    matchingSpansCount = [(SIRINLUINTERNALSSUSSURequest *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v5 = matchingSpansCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALSSUSSURequest *)self matchingSpansAtIndex:i];
        [toCopy addMatchingSpans:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALSSUSSURequest *)self salientEntitiesCount])
  {
    [toCopy clearSalientEntities];
    salientEntitiesCount = [(SIRINLUINTERNALSSUSSURequest *)self salientEntitiesCount];
    if (salientEntitiesCount)
    {
      v9 = salientEntitiesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALSSUSSURequest *)self salientEntitiesAtIndex:j];
        [toCopy addSalientEntities:v11];
      }
    }
  }

  if (self->_nluRequestId)
  {
    [toCopy setNluRequestId:?];
  }
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_asrId)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_matchingSpans;
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
  v11 = self->_salientEntities;
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

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  utterance = self->_utterance;
  if (utterance)
  {
    [dictionary setObject:utterance forKey:@"utterance"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v4 setObject:locale forKey:@"locale"];
  }

  asrId = self->_asrId;
  if (asrId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"asr_id"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = self->_matchingSpans;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation2];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"matching_spans"];
  }

  if ([(NSMutableArray *)self->_salientEntities count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_salientEntities, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = self->_salientEntities;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation3 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation3];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }

    [v4 setObject:v16 forKey:@"salient_entities"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    dictionaryRepresentation4 = [(SIRINLUEXTERNALRequestID *)nluRequestId dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"nlu_request_id"];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSSUSSURequest;
  v4 = [(SIRINLUINTERNALSSUSSURequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSSUSSURequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addSalientEntities:(id)entities
{
  entitiesCopy = entities;
  salientEntities = self->_salientEntities;
  v8 = entitiesCopy;
  if (!salientEntities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_salientEntities;
    self->_salientEntities = v6;

    entitiesCopy = v8;
    salientEntities = self->_salientEntities;
  }

  [(NSMutableArray *)salientEntities addObject:entitiesCopy];
}

- (void)addMatchingSpans:(id)spans
{
  spansCopy = spans;
  matchingSpans = self->_matchingSpans;
  v8 = spansCopy;
  if (!matchingSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_matchingSpans;
    self->_matchingSpans = v6;

    spansCopy = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSMutableArray *)matchingSpans addObject:spansCopy];
}

@end