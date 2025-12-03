@interface SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  requestId = self->_requestId;
  v13 = fromCopy;
  v6 = fromCopy[3];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[3])) || -[SIRINLUEXTERNALRequestID isEqual:](requestId, "isEqual:")) && ((tokenChain = self->_tokenChain, !(tokenChain | equalCopy[4])) || -[SIRINLUINTERNALTokenChain isEqual:](tokenChain, "isEqual:")) && ((nlContext = self->_nlContext, !(nlContext | equalCopy[1])) || -[SIRINLUEXTERNALNLContext isEqual:](nlContext, "isEqual:")))
  {
    nluRequestId = self->_nluRequestId;
    if (nluRequestId | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(SIRINLUEXTERNALNLContext *)self->_nlContext copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(SIRINLUEXTERNALUUID *)self->_nluRequestId copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
    toCopy = v5;
  }

  if (self->_tokenChain)
  {
    [v5 setTokenChain:?];
    toCopy = v5;
  }

  if (self->_nlContext)
  {
    [v5 setNlContext:?];
    toCopy = v5;
  }

  if (self->_nluRequestId)
  {
    [v5 setNluRequestId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_nlContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_nluRequestId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    dictionaryRepresentation2 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"token_chain"];
  }

  nlContext = self->_nlContext;
  if (nlContext)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALNLContext *)nlContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"nl_context"];
  }

  nluRequestId = self->_nluRequestId;
  if (nluRequestId)
  {
    dictionaryRepresentation4 = [(SIRINLUEXTERNALUUID *)nluRequestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"nlu_request_id"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest;
  v4 = [(SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end