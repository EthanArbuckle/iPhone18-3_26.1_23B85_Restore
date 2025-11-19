@interface SIRINLUEXTERNALDelegatedUserDialogAct
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALDelegatedUserDialogAct

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[14])
  {
    self->_asrHypothesisIndex = v4[2];
    *&self->_has |= 1u;
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  v7 = *(v5 + 6);
  if (rewrittenUtterance)
  {
    if (v7)
    {
      [(SIRICOMMONStringValue *)rewrittenUtterance mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)self setRewrittenUtterance:?];
  }

  if (*(v5 + 2))
  {
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)self setExternalParserId:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = *(v5 + 3);
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SIRINLUEXTERNALDelegatedUserDialogAct *)self addMatchingSpans:*(*(&v18 + 1) + 8 * i), v18];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  rewrite = self->_rewrite;
  v14 = *(v5 + 5);
  if (rewrite)
  {
    if (v14)
    {
      [(SIRINLUEXTERNALRewriteMessage *)rewrite mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)self setRewrite:?];
  }

  referenceContext = self->_referenceContext;
  v16 = *(v5 + 4);
  if (referenceContext)
  {
    if (v16)
    {
      [(SIRINLUEXTERNALReferenceContext *)referenceContext mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)self setReferenceContext:?];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_asrHypothesisIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SIRICOMMONStringValue *)self->_rewrittenUtterance hash]^ v3;
  v5 = [(NSString *)self->_externalParserId hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_matchingSpans hash];
  v7 = [(SIRINLUEXTERNALRewriteMessage *)self->_rewrite hash];
  return v6 ^ v7 ^ [(SIRINLUEXTERNALReferenceContext *)self->_referenceContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_asrHypothesisIndex != *(v4 + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance | *(v4 + 6) && ![(SIRICOMMONStringValue *)rewrittenUtterance isEqual:?])
  {
    goto LABEL_17;
  }

  externalParserId = self->_externalParserId;
  if (externalParserId | *(v4 + 2))
  {
    if (![(NSString *)externalParserId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  matchingSpans = self->_matchingSpans;
  if (matchingSpans | *(v4 + 3))
  {
    if (![(NSMutableArray *)matchingSpans isEqual:?])
    {
      goto LABEL_17;
    }
  }

  rewrite = self->_rewrite;
  if (rewrite | *(v4 + 5))
  {
    if (![(SIRINLUEXTERNALRewriteMessage *)rewrite isEqual:?])
    {
      goto LABEL_17;
    }
  }

  referenceContext = self->_referenceContext;
  if (referenceContext | *(v4 + 4))
  {
    v11 = [(SIRINLUEXTERNALReferenceContext *)referenceContext isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_asrHypothesisIndex;
    *(v5 + 56) |= 1u;
  }

  v7 = [(SIRICOMMONStringValue *)self->_rewrittenUtterance copyWithZone:a3];
  v8 = v6[6];
  v6[6] = v7;

  v9 = [(NSString *)self->_externalParserId copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = self->_matchingSpans;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v23 + 1) + 8 * v15) copyWithZone:{a3, v23}];
        [v6 addMatchingSpans:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = [(SIRINLUEXTERNALRewriteMessage *)self->_rewrite copyWithZone:a3];
  v18 = v6[5];
  v6[5] = v17;

  v19 = [(SIRINLUEXTERNALReferenceContext *)self->_referenceContext copyWithZone:a3];
  v20 = v6[4];
  v6[4] = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_asrHypothesisIndex;
    *(v4 + 56) |= 1u;
  }

  v10 = v4;
  if (self->_rewrittenUtterance)
  {
    [v4 setRewrittenUtterance:?];
  }

  if (self->_externalParserId)
  {
    [v10 setExternalParserId:?];
  }

  if ([(SIRINLUEXTERNALDelegatedUserDialogAct *)self matchingSpansCount])
  {
    [v10 clearMatchingSpans];
    v5 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self matchingSpansCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self matchingSpansAtIndex:i];
        [v10 addMatchingSpans:v8];
      }
    }
  }

  if (self->_rewrite)
  {
    [v10 setRewrite:?];
  }

  v9 = v10;
  if (self->_referenceContext)
  {
    [v10 setReferenceContext:?];
    v9 = v10;
  }
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    asrHypothesisIndex = self->_asrHypothesisIndex;
    PBDataWriterWriteUint32Field();
  }

  if (self->_rewrittenUtterance)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_externalParserId)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_matchingSpans;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_rewrite)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_referenceContext)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_asrHypothesisIndex];
    [v3 setObject:v4 forKey:@"asr_hypothesis_index"];
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance)
  {
    v6 = [(SIRICOMMONStringValue *)rewrittenUtterance dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"rewritten_utterance"];
  }

  externalParserId = self->_externalParserId;
  if (externalParserId)
  {
    [v3 setObject:externalParserId forKey:@"external_parser_id"];
  }

  if ([(NSMutableArray *)self->_matchingSpans count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_matchingSpans, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = self->_matchingSpans;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"matching_spans"];
  }

  rewrite = self->_rewrite;
  if (rewrite)
  {
    v16 = [(SIRINLUEXTERNALRewriteMessage *)rewrite dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"rewrite"];
  }

  referenceContext = self->_referenceContext;
  if (referenceContext)
  {
    v18 = [(SIRINLUEXTERNALReferenceContext *)referenceContext dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"reference_context"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALDelegatedUserDialogAct;
  v4 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)&v8 description];
  v5 = [(SIRINLUEXTERNALDelegatedUserDialogAct *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addMatchingSpans:(id)a3
{
  v4 = a3;
  matchingSpans = self->_matchingSpans;
  v8 = v4;
  if (!matchingSpans)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_matchingSpans;
    self->_matchingSpans = v6;

    v4 = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSMutableArray *)matchingSpans addObject:v4];
}

@end