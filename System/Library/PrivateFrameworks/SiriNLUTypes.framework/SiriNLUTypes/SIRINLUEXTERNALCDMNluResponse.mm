@interface SIRINLUEXTERNALCDMNluResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParses:(id)parses;
- (void)addRepetitionResults:(id)results;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALCDMNluResponse

- (void)mergeFrom:(id)from
{
  v34 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  requestId = self->_requestId;
  v6 = *(fromCopy + 4);
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALRequestID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALCDMNluResponse *)self setRequestId:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALCDMNluResponse *)self addParses:*(*(&v28 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  responseStatus = self->_responseStatus;
  v13 = *(fromCopy + 5);
  if (responseStatus)
  {
    if (v13)
    {
      [(SIRINLUEXTERNALResponseStatus *)responseStatus mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(SIRINLUEXTERNALCDMNluResponse *)self setResponseStatus:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = *(fromCopy + 3);
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(SIRINLUEXTERNALCDMNluResponse *)self addRepetitionResults:*(*(&v24 + 1) + 8 * j), v24];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  languageVariantResult = self->_languageVariantResult;
  v20 = *(fromCopy + 1);
  if (languageVariantResult)
  {
    if (v20)
    {
      [(SIRINLUEXTERNALLanguageVariantResult *)languageVariantResult mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SIRINLUEXTERNALCDMNluResponse *)self setLanguageVariantResult:?];
  }

  supplementaryOutput = self->_supplementaryOutput;
  v22 = *(fromCopy + 6);
  if (supplementaryOutput)
  {
    if (v22)
    {
      [(SIRINLUEXTERNALNLUSupplementaryOutput *)supplementaryOutput mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(SIRINLUEXTERNALCDMNluResponse *)self setSupplementaryOutput:?];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALRequestID *)self->_requestId hash];
  v4 = [(NSMutableArray *)self->_parses hash]^ v3;
  v5 = [(SIRINLUEXTERNALResponseStatus *)self->_responseStatus hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_repetitionResults hash];
  v7 = [(SIRINLUEXTERNALLanguageVariantResult *)self->_languageVariantResult hash];
  return v6 ^ v7 ^ [(SIRINLUEXTERNALNLUSupplementaryOutput *)self->_supplementaryOutput hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[4])) || -[SIRINLUEXTERNALRequestID isEqual:](requestId, "isEqual:")) && ((parses = self->_parses, !(parses | equalCopy[2])) || -[NSMutableArray isEqual:](parses, "isEqual:")) && ((responseStatus = self->_responseStatus, !(responseStatus | equalCopy[5])) || -[SIRINLUEXTERNALResponseStatus isEqual:](responseStatus, "isEqual:")) && ((repetitionResults = self->_repetitionResults, !(repetitionResults | equalCopy[3])) || -[NSMutableArray isEqual:](repetitionResults, "isEqual:")) && ((languageVariantResult = self->_languageVariantResult, !(languageVariantResult | equalCopy[1])) || -[SIRINLUEXTERNALLanguageVariantResult isEqual:](languageVariantResult, "isEqual:")))
  {
    supplementaryOutput = self->_supplementaryOutput;
    if (supplementaryOutput | equalCopy[6])
    {
      v11 = [(SIRINLUEXTERNALNLUSupplementaryOutput *)supplementaryOutput isEqual:?];
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
  v6 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_parses;
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
        [v5 addParses:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  v14 = [(SIRINLUEXTERNALResponseStatus *)self->_responseStatus copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = self->_repetitionResults;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      v20 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v28 + 1) + 8 * v20) copyWithZone:{zone, v28}];
        [v5 addRepetitionResults:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  v22 = [(SIRINLUEXTERNALLanguageVariantResult *)self->_languageVariantResult copyWithZone:zone];
  v23 = v5[1];
  v5[1] = v22;

  v24 = [(SIRINLUEXTERNALNLUSupplementaryOutput *)self->_supplementaryOutput copyWithZone:zone];
  v25 = v5[6];
  v5[6] = v24;

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

  if ([(SIRINLUEXTERNALCDMNluResponse *)self parsesCount])
  {
    [toCopy clearParses];
    parsesCount = [(SIRINLUEXTERNALCDMNluResponse *)self parsesCount];
    if (parsesCount)
    {
      v5 = parsesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALCDMNluResponse *)self parsesAtIndex:i];
        [toCopy addParses:v7];
      }
    }
  }

  if (self->_responseStatus)
  {
    [toCopy setResponseStatus:?];
  }

  if ([(SIRINLUEXTERNALCDMNluResponse *)self repetitionResultsCount])
  {
    [toCopy clearRepetitionResults];
    repetitionResultsCount = [(SIRINLUEXTERNALCDMNluResponse *)self repetitionResultsCount];
    if (repetitionResultsCount)
    {
      v9 = repetitionResultsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALCDMNluResponse *)self repetitionResultsAtIndex:j];
        [toCopy addRepetitionResults:v11];
      }
    }
  }

  if (self->_languageVariantResult)
  {
    [toCopy setLanguageVariantResult:?];
  }

  v12 = toCopy;
  if (self->_supplementaryOutput)
  {
    [toCopy setSupplementaryOutput:?];
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
  v5 = self->_parses;
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

  if (self->_responseStatus)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_repetitionResults;
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

  if (self->_languageVariantResult)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_supplementaryOutput)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  if ([(NSMutableArray *)self->_parses count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_parses, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = self->_parses;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"parses"];
  }

  responseStatus = self->_responseStatus;
  if (responseStatus)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALResponseStatus *)responseStatus dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"response_status"];
  }

  if ([(NSMutableArray *)self->_repetitionResults count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_repetitionResults, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = self->_repetitionResults;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation4 = [*(*(&v28 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation4];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"repetition_results"];
  }

  languageVariantResult = self->_languageVariantResult;
  if (languageVariantResult)
  {
    dictionaryRepresentation5 = [(SIRINLUEXTERNALLanguageVariantResult *)languageVariantResult dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"language_variant_result"];
  }

  supplementaryOutput = self->_supplementaryOutput;
  if (supplementaryOutput)
  {
    dictionaryRepresentation6 = [(SIRINLUEXTERNALNLUSupplementaryOutput *)supplementaryOutput dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"supplementary_output"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALCDMNluResponse;
  v4 = [(SIRINLUEXTERNALCDMNluResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALCDMNluResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addRepetitionResults:(id)results
{
  resultsCopy = results;
  repetitionResults = self->_repetitionResults;
  v8 = resultsCopy;
  if (!repetitionResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_repetitionResults;
    self->_repetitionResults = v6;

    resultsCopy = v8;
    repetitionResults = self->_repetitionResults;
  }

  [(NSMutableArray *)repetitionResults addObject:resultsCopy];
}

- (void)addParses:(id)parses
{
  parsesCopy = parses;
  parses = self->_parses;
  v8 = parsesCopy;
  if (!parses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_parses;
    self->_parses = v6;

    parsesCopy = v8;
    parses = self->_parses;
  }

  [(NSMutableArray *)parses addObject:parsesCopy];
}

@end