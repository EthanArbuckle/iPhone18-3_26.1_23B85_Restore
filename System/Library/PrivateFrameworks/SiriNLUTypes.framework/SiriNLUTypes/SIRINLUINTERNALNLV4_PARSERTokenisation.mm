@interface SIRINLUINTERNALNLV4_PARSERTokenisation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALNLV4_PARSERTokenisation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self setOriginalUtterance:?];
    fromCopy = v7;
  }

  if (fromCopy[1])
  {
    [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self setNormalisedUtterance:?];
    fromCopy = v7;
  }

  tokenChain = self->_tokenChain;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((originalUtterance = self->_originalUtterance, !(originalUtterance | equalCopy[2])) || -[NSString isEqual:](originalUtterance, "isEqual:")) && ((normalisedUtterance = self->_normalisedUtterance, !(normalisedUtterance | equalCopy[1])) || -[NSString isEqual:](normalisedUtterance, "isEqual:")))
  {
    tokenChain = self->_tokenChain;
    if (tokenChain | equalCopy[3])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_originalUtterance copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_normalisedUtterance copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(SIRINLUINTERNALTokenChain *)self->_tokenChain copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_originalUtterance)
  {
    [toCopy setOriginalUtterance:?];
    toCopy = v5;
  }

  if (self->_normalisedUtterance)
  {
    [v5 setNormalisedUtterance:?];
    toCopy = v5;
  }

  if (self->_tokenChain)
  {
    [v5 setTokenChain:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_originalUtterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_normalisedUtterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_tokenChain)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  originalUtterance = self->_originalUtterance;
  if (originalUtterance)
  {
    [dictionary setObject:originalUtterance forKey:@"original_utterance"];
  }

  normalisedUtterance = self->_normalisedUtterance;
  if (normalisedUtterance)
  {
    [v4 setObject:normalisedUtterance forKey:@"normalised_utterance"];
  }

  tokenChain = self->_tokenChain;
  if (tokenChain)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALTokenChain *)tokenChain dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"token_chain"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALNLV4_PARSERTokenisation;
  v4 = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALNLV4_PARSERTokenisation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end