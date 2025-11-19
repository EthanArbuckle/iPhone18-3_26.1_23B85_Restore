@interface SIRINLUINTERNALTOKENIZERTokenizerResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALTOKENIZERTokenizerResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  tokenChain = self->_tokenChain;
  v6 = v4[3];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  if (v4[2])
  {
    [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self setText:?];
    v4 = v9;
  }

  asrId = self->_asrId;
  v8 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((tokenChain = self->_tokenChain, !(tokenChain | v4[3])) || -[SIRINLUINTERNALTokenChain isEqual:](tokenChain, "isEqual:")) && ((text = self->_text, !(text | v4[2])) || -[NSString isEqual:](text, "isEqual:")))
  {
    asrId = self->_asrId;
    if (asrId | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_text copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

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

  if (self->_text)
  {
    [v5 setText:?];
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

  if (self->_text)
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

  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  asrId = self->_asrId;
  if (asrId)
  {
    v8 = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"asrId"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALTOKENIZERTokenizerResponse;
  v4 = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALTOKENIZERTokenizerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end