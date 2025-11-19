@interface SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  requestId = self->_requestId;
  v13 = v4;
  v6 = v4[3];
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALRequestID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest *)self setRequestId:?];
  }

  tokenChain = self->_tokenChain;
  v8 = v13[4];
  if (tokenChain)
  {
    if (v8)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest *)self setTokenChain:?];
  }

  nlContext = self->_nlContext;
  v10 = v13[1];
  if (nlContext)
  {
    if (v10)
    {
      [(SIRINLUEXTERNALNLContext *)nlContext mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest *)self setNlContext:?];
  }

  nluRequestId = self->_nluRequestId;
  v12 = v13[2];
  if (nluRequestId)
  {
    if (v12)
    {
      [(SIRINLUEXTERNALUUID *)nluRequestId mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest *)self setNluRequestId:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALRequestID *)self->_requestId hash];
  v4 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash]^ v3;
  v5 = [(SIRINLUEXTERNALNLContext *)self->_nlContext hash];
  return v4 ^ v5 ^ [(SIRINLUEXTERNALUUID *)self->_nluRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | v4[3])) || -[SIRINLUEXTERNALRequestID isEqual:](requestId, "isEqual:")) && ((tokenChain = self->_tokenChain, !(tokenChain | v4[4])) || -[SIRINLUINTERNALTokenChain isEqual:](tokenChain, "isEqual:")) && ((nlContext = self->_nlContext, !(nlContext | v4[1])) || -[SIRINLUEXTERNALNLContext isEqual:](nlContext, "isEqual:")))
  {
    nluRequestId = self->_nluRequestId;
    if (nluRequestId | v4[2])
    {
      v9 = [(SIRINLUEXTERNALUUID *)nluRequestId isEqual:?];
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
  v6 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(SIRINLUEXTERNALNLContext *)self->_nlContext copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    [v4 setRequestId:?];
    v4 = v5;
  }

  if (self->_tokenChain)
  {
    [v5 setTokenChain:?];
    v4 = v5;
  }

  if (self->_nlContext)
  {
    [v5 setNlContext:?];
    v4 = v5;
  }

  if (self->_nluRequestId)
  {
    [v5 setNluRequestId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_nlContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    v5 = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_id"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    v7 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"token_chain"];
  }

  nlContext = self->_nlContext;
  if (nlContext)
  {
    v9 = [(SIRINLUEXTERNALNLContext *)nlContext dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"nl_context"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    v11 = [(SIRINLUEXTERNALUUID *)nluRequestId dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"nlu_request_id"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest;
  v4 = [(SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end