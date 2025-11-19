@interface SIRINLUINTERNALSPANMATCHSpanMatchRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSPANMATCHSpanMatchRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  tokenChain = self->_tokenChain;
  v11 = v4;
  v6 = v4[3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((tokenChain = self->_tokenChain, !(tokenChain | v4[3])) || -[SIRINLUINTERNALTokenChain isEqual:](tokenChain, "isEqual:")) && ((nlContext = self->_nlContext, !(nlContext | v4[2])) || -[SIRINLUEXTERNALNLContext isEqual:](nlContext, "isEqual:")) && ((utterance = self->_utterance, !(utterance | v4[4])) || -[NSString isEqual:](utterance, "isEqual:")))
  {
    asrId = self->_asrId;
    if (asrId | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUEXTERNALNLContext *)self->_nlContext copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_utterance copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_tokenChain)
  {
    [v4 setTokenChain:?];
    v4 = v5;
  }

  if (self->_nlContext)
  {
    [v5 setNlContext:?];
    v4 = v5;
  }

  if (self->_utterance)
  {
    [v5 setUtterance:?];
    v4 = v5;
  }

  if (self->_asrId)
  {
    [v5 setAsrId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
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

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_asrId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    v5 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"token_chain"];
  }

  nlContext = self->_nlContext;
  if (nlContext)
  {
    v7 = [(SIRINLUEXTERNALNLContext *)nlContext dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"nl_context"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [v3 setObject:utterance forKey:@"utterance"];
  }

  asrId = self->_asrId;
  if (asrId)
  {
    v10 = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"asrId"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSPANMATCHSpanMatchRequest;
  v4 = [(SIRINLUINTERNALSPANMATCHSpanMatchRequest *)&v8 description];
  v5 = [(SIRINLUINTERNALSPANMATCHSpanMatchRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end