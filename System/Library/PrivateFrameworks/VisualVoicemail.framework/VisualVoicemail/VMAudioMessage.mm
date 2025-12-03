@interface VMAudioMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VMAudioMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VMAudioMessage;
  v4 = [(VMAudioMessage *)&v8 description];
  dictionaryRepresentation = [(VMAudioMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_protocolVersion];
    [dictionary setObject:v4 forKey:@"protocolVersion"];
  }

  audioData = self->_audioData;
  if (audioData)
  {
    [dictionary setObject:audioData forKey:@"audioData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    protocolVersion = self->_protocolVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_audioData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_protocolVersion;
    *(toCopy + 20) |= 1u;
  }

  if (self->_audioData)
  {
    v5 = toCopy;
    [toCopy setAudioData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_protocolVersion;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_audioData copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_protocolVersion != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  audioData = self->_audioData;
  if (audioData | *(equalCopy + 1))
  {
    v7 = [(NSData *)audioData isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_protocolVersion;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_audioData hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_protocolVersion = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(VMAudioMessage *)self setAudioData:?];
    fromCopy = v5;
  }
}

@end