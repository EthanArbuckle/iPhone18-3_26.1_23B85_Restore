@interface SIRINLUINTERNALSPANMATCHSpanMatchRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSPANMATCHSpanMatchRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  tokenChain = self->_tokenChain;
  v11 = fromCopy;
  v6 = fromCopy[3];
  if (tokenChain)
  {
    if (v6)
    {
      [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALSPANMATCHSpanMatchRequest *)self setTokenChain:?];
  }

  nlContext = self->_nlContext;
  v8 = v11[2];
  if (nlContext)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALNLContext *)nlContext mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALSPANMATCHSpanMatchRequest *)self setNlContext:?];
  }

  if (v11[4])
  {
    [(SIRINLUINTERNALSPANMATCHSpanMatchRequest *)self setUtterance:?];
  }

  asrId = self->_asrId;
  v10 = v11[1];
  if (asrId)
  {
    if (v10)
    {
      [(SIRINLUEXTERNALUUID *)asrId mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALSPANMATCHSpanMatchRequest *)self setAsrId:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash];
  v4 = [(SIRINLUEXTERNALNLContext *)self->_nlContext hash]^ v3;
  v5 = [(NSString *)self->_utterance hash];
  return v4 ^ v5 ^ [(SIRINLUEXTERNALUUID *)self->_asrId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((tokenChain = self->_tokenChain, !(tokenChain | equalCopy[3])) || -[SIRINLUINTERNALTokenChain isEqual:](tokenChain, "isEqual:")) && ((nlContext = self->_nlContext, !(nlContext | equalCopy[2])) || -[SIRINLUEXTERNALNLContext isEqual:](nlContext, "isEqual:")) && ((utterance = self->_utterance, !(utterance | equalCopy[4])) || -[NSString isEqual:](utterance, "isEqual:")))
  {
    asrId = self->_asrId;
    if (asrId | equalCopy[1])
    {
      v9 = [(SIRINLUEXTERNALUUID *)asrId isEqual:?];
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
  v6 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUEXTERNALNLContext *)self->_nlContext copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_utterance copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_tokenChain)
  {
    [toCopy setTokenChain:?];
    toCopy = v5;
  }

  if (self->_nlContext)
  {
    [v5 setNlContext:?];
    toCopy = v5;
  }

  if (self->_utterance)
  {
    [v5 setUtterance:?];
    toCopy = v5;
  }

  if (self->_asrId)
  {
    [v5 setAsrId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
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

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_asrId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"token_chain"];
  }

  nlContext = self->_nlContext;
  if (nlContext)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALNLContext *)nlContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"nl_context"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [dictionary setObject:utterance forKey:@"utterance"];
  }

  asrId = self->_asrId;
  if (asrId)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"asrId"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSPANMATCHSpanMatchRequest;
  v4 = [(SIRINLUINTERNALSPANMATCHSpanMatchRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSPANMATCHSpanMatchRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end