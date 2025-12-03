@interface SIRINLUEXTERNALNLUSupplementaryOutput
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)spans;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLUSupplementaryOutput

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SIRINLUEXTERNALNLUSupplementaryOutput *)self addMatchingSpans:*(*(&v15 + 1) + 8 * i), v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  rewrite = self->_rewrite;
  v11 = fromCopy[3];
  if (rewrite)
  {
    if (v11)
    {
      [(SIRINLUEXTERNALRewriteMessage *)rewrite mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SIRINLUEXTERNALNLUSupplementaryOutput *)self setRewrite:?];
  }

  correctionOutcome = self->_correctionOutcome;
  v13 = fromCopy[1];
  if (correctionOutcome)
  {
    if (v13)
    {
      [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(SIRINLUEXTERNALNLUSupplementaryOutput *)self setCorrectionOutcome:?];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_matchingSpans hash];
  v4 = [(SIRINLUEXTERNALRewriteMessage *)self->_rewrite hash]^ v3;
  return v4 ^ [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcome hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((matchingSpans = self->_matchingSpans, !(matchingSpans | equalCopy[2])) || -[NSMutableArray isEqual:](matchingSpans, "isEqual:")) && ((rewrite = self->_rewrite, !(rewrite | equalCopy[3])) || -[SIRINLUEXTERNALRewriteMessage isEqual:](rewrite, "isEqual:")))
  {
    correctionOutcome = self->_correctionOutcome;
    if (correctionOutcome | equalCopy[1])
    {
      v8 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_matchingSpans;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) copyWithZone:{zone, v18}];
        [v5 addMatchingSpans:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(SIRINLUEXTERNALRewriteMessage *)self->_rewrite copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(SIRINLUEXTERNALCorrectionOutcome *)self->_correctionOutcome copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SIRINLUEXTERNALNLUSupplementaryOutput *)self matchingSpansCount])
  {
    [toCopy clearMatchingSpans];
    matchingSpansCount = [(SIRINLUEXTERNALNLUSupplementaryOutput *)self matchingSpansCount];
    if (matchingSpansCount)
    {
      v5 = matchingSpansCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALNLUSupplementaryOutput *)self matchingSpansAtIndex:i];
        [toCopy addMatchingSpans:v7];
      }
    }
  }

  if (self->_rewrite)
  {
    [toCopy setRewrite:?];
  }

  v8 = toCopy;
  if (self->_correctionOutcome)
  {
    [toCopy setCorrectionOutcome:?];
    v8 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_matchingSpans;
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

  if (self->_rewrite)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_correctionOutcome)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_matchingSpans;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"matching_spans"];
  }

  rewrite = self->_rewrite;
  if (rewrite)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALRewriteMessage *)rewrite dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"rewrite"];
  }

  correctionOutcome = self->_correctionOutcome;
  if (correctionOutcome)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALCorrectionOutcome *)correctionOutcome dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"correction_outcome"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLUSupplementaryOutput;
  v4 = [(SIRINLUEXTERNALNLUSupplementaryOutput *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLUSupplementaryOutput *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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