@interface SIRINLUINTERNALNLV4_PARSERTokenisation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALNLV4_PARSERTokenisation

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self setOriginalUtterance:?];
    v4 = v7;
  }

  if (v4[1])
  {
    [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self setNormalisedUtterance:?];
    v4 = v7;
  }

  tokenChain = self->_tokenChain;
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
    [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self setTokenChain:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_originalUtterance hash];
  v4 = [(NSString *)self->_normalisedUtterance hash]^ v3;
  return v4 ^ [(SIRINLUINTERNALTokenChain *)self->_tokenChain hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((originalUtterance = self->_originalUtterance, !(originalUtterance | v4[2])) || -[NSString isEqual:](originalUtterance, "isEqual:")) && ((normalisedUtterance = self->_normalisedUtterance, !(normalisedUtterance | v4[1])) || -[NSString isEqual:](normalisedUtterance, "isEqual:")))
  {
    tokenChain = self->_tokenChain;
    if (tokenChain | v4[3])
    {
      v8 = [(SIRINLUINTERNALTokenChain *)tokenChain isEqual:?];
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
  v6 = [(NSString *)self->_originalUtterance copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_normalisedUtterance copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_originalUtterance)
  {
    [v4 setOriginalUtterance:?];
    v4 = v5;
  }

  if (self->_normalisedUtterance)
  {
    [v5 setNormalisedUtterance:?];
    v4 = v5;
  }

  if (self->_tokenChain)
  {
    [v5 setTokenChain:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_originalUtterance)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_normalisedUtterance)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  originalUtterance = self->_originalUtterance;
  if (originalUtterance)
  {
    [v3 setObject:originalUtterance forKey:@"original_utterance"];
  }

  normalisedUtterance = self->_normalisedUtterance;
  if (normalisedUtterance)
  {
    [v4 setObject:normalisedUtterance forKey:@"normalised_utterance"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    v8 = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"token_chain"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALNLV4_PARSERTokenisation;
  v4 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)&v8 description];
  v5 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end