@interface SIRINLUINTERNALTOKENIZERTokenizerResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALTOKENIZERTokenizerResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  tokenChain = self->_tokenChain;
  v6 = fromCopy[3];
  v9 = fromCopy;
  if (tokenChain)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALTokenChain *)tokenChain mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self setTokenChain:?];
  }

  fromCopy = v9;
LABEL_7:
  if (fromCopy[2])
  {
    [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self setText:?];
    fromCopy = v9;
  }

  asrId = self->_asrId;
  v8 = fromCopy[1];
  if (asrId)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUUID *)asrId mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self setAsrId:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash];
  v4 = [(NSString *)self->_text hash]^ v3;
  return v4 ^ [(SIRINLUEXTERNALUUID *)self->_asrId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((tokenChain = self->_tokenChain, !(tokenChain | equalCopy[3])) || -[SIRINLUINTERNALTokenChain isEqual:](tokenChain, "isEqual:")) && ((text = self->_text, !(text | equalCopy[2])) || -[NSString isEqual:](text, "isEqual:")))
  {
    asrId = self->_asrId;
    if (asrId | equalCopy[1])
    {
      v8 = [(SIRINLUEXTERNALUUID *)asrId isEqual:?];
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
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_text copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

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

  if (self->_text)
  {
    [v5 setText:?];
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

  if (self->_text)
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

  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  asrId = self->_asrId;
  if (asrId)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"asrId"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALTOKENIZERTokenizerResponse;
  v4 = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end