@interface SIRINLUINTERNALPreprocessingWrapper
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALPreprocessingWrapper

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  tokenizerResponse = self->_tokenizerResponse;
  v13 = v4;
  v6 = v4[4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((tokenizerResponse = self->_tokenizerResponse, !(tokenizerResponse | v4[4])) || -[SIRINLUINTERNALTOKENIZERTokenizerResponse isEqual:](tokenizerResponse, "isEqual:")) && ((spanMatchResponse = self->_spanMatchResponse, !(spanMatchResponse | v4[3])) || -[SIRINLUINTERNALSPANMATCHSpanMatchResponse isEqual:](spanMatchResponse, "isEqual:")) && ((embeddingResponse = self->_embeddingResponse, !(embeddingResponse | v4[1])) || -[SIRINLUINTERNALEMBEDDINGEmbeddingResponse isEqual:](embeddingResponse, "isEqual:")))
  {
    mentionResolverResponse = self->_mentionResolverResponse;
    if (mentionResolverResponse | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self->_tokenizerResponse copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(SIRINLUINTERNALSPANMATCHSpanMatchResponse *)self->_spanMatchResponse copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self->_embeddingResponse copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)self->_mentionResolverResponse copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_tokenizerResponse)
  {
    [v4 setTokenizerResponse:?];
    v4 = v5;
  }

  if (self->_spanMatchResponse)
  {
    [v5 setSpanMatchResponse:?];
    v4 = v5;
  }

  if (self->_embeddingResponse)
  {
    [v5 setEmbeddingResponse:?];
    v4 = v5;
  }

  if (self->_mentionResolverResponse)
  {
    [v5 setMentionResolverResponse:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_tokenizerResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_spanMatchResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_embeddingResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mentionResolverResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  tokenizerResponse = self->_tokenizerResponse;
  if (tokenizerResponse)
  {
    v5 = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)tokenizerResponse dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"tokenizer_response"];
  }

  spanMatchResponse = self->_spanMatchResponse;
  if (spanMatchResponse)
  {
    v7 = [(SIRINLUINTERNALSPANMATCHSpanMatchResponse *)spanMatchResponse dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"span_match_response"];
  }

  embeddingResponse = self->_embeddingResponse;
  if (embeddingResponse)
  {
    v9 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)embeddingResponse dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"embedding_response"];
  }

  mentionResolverResponse = self->_mentionResolverResponse;
  if (mentionResolverResponse)
  {
    v11 = [(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse *)mentionResolverResponse dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"mention_resolver_response"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALPreprocessingWrapper;
  v4 = [(SIRINLUINTERNALPreprocessingWrapper *)&v8 description];
  v5 = [(SIRINLUINTERNALPreprocessingWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end