@interface SIRINLUINTERNALPreprocessingWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALPreprocessingWrapper

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  tokenizerResponse = self->_tokenizerResponse;
  v13 = fromCopy;
  v6 = fromCopy[4];
  if (tokenizerResponse)
  {
    if (v6)
    {
      [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)tokenizerResponse mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALPreprocessingWrapper *)self setTokenizerResponse:?];
  }

  spanMatchResponse = self->_spanMatchResponse;
  v8 = v13[3];
  if (spanMatchResponse)
  {
    if (v8)
    {
      [(SIRINLUINTERNALSPANMATCHSpanMatchResponse *)spanMatchResponse mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALPreprocessingWrapper *)self setSpanMatchResponse:?];
  }

  embeddingResponse = self->_embeddingResponse;
  v10 = v13[1];
  if (embeddingResponse)
  {
    if (v10)
    {
      [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)embeddingResponse mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALPreprocessingWrapper *)self setEmbeddingResponse:?];
  }

  mentionResolverResponse = self->_mentionResolverResponse;
  v12 = v13[2];
  if (mentionResolverResponse)
  {
    if (v12)
    {
      [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)mentionResolverResponse mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUINTERNALPreprocessingWrapper *)self setMentionResolverResponse:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self->_tokenizerResponse hash];
  v4 = [(SIRINLUINTERNALSPANMATCHSpanMatchResponse *)self->_spanMatchResponse hash]^ v3;
  v5 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self->_embeddingResponse hash];
  return v4 ^ v5 ^ [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self->_mentionResolverResponse hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((tokenizerResponse = self->_tokenizerResponse, !(tokenizerResponse | equalCopy[4])) || -[SIRINLUINTERNALTOKENIZERTokenizerResponse isEqual:](tokenizerResponse, "isEqual:")) && ((spanMatchResponse = self->_spanMatchResponse, !(spanMatchResponse | equalCopy[3])) || -[SIRINLUINTERNALSPANMATCHSpanMatchResponse isEqual:](spanMatchResponse, "isEqual:")) && ((embeddingResponse = self->_embeddingResponse, !(embeddingResponse | equalCopy[1])) || -[SIRINLUINTERNALEMBEDDINGEmbeddingResponse isEqual:](embeddingResponse, "isEqual:")))
  {
    mentionResolverResponse = self->_mentionResolverResponse;
    if (mentionResolverResponse | equalCopy[2])
    {
      v9 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)mentionResolverResponse isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self->_tokenizerResponse copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(SIRINLUINTERNALSPANMATCHSpanMatchResponse *)self->_spanMatchResponse copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self->_embeddingResponse copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self->_mentionResolverResponse copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_tokenizerResponse)
  {
    [toCopy setTokenizerResponse:?];
    toCopy = v5;
  }

  if (self->_spanMatchResponse)
  {
    [v5 setSpanMatchResponse:?];
    toCopy = v5;
  }

  if (self->_embeddingResponse)
  {
    [v5 setEmbeddingResponse:?];
    toCopy = v5;
  }

  if (self->_mentionResolverResponse)
  {
    [v5 setMentionResolverResponse:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_tokenizerResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_spanMatchResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_embeddingResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_mentionResolverResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tokenizerResponse = self->_tokenizerResponse;
  if (tokenizerResponse)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)tokenizerResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"tokenizer_response"];
  }

  spanMatchResponse = self->_spanMatchResponse;
  if (spanMatchResponse)
  {
    dictionaryRepresentation2 = [(SIRINLUINTERNALSPANMATCHSpanMatchResponse *)spanMatchResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"span_match_response"];
  }

  embeddingResponse = self->_embeddingResponse;
  if (embeddingResponse)
  {
    dictionaryRepresentation3 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)embeddingResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"embedding_response"];
  }

  mentionResolverResponse = self->_mentionResolverResponse;
  if (mentionResolverResponse)
  {
    dictionaryRepresentation4 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)mentionResolverResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"mention_resolver_response"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALPreprocessingWrapper;
  v4 = [(SIRINLUINTERNALPreprocessingWrapper *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALPreprocessingWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end