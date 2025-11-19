@interface VMTranscriptMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VMTranscriptMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VMTranscriptMessage;
  v4 = [(VMTranscriptMessage *)&v8 description];
  v5 = [(VMTranscriptMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_protocolVersion];
    [v3 setObject:v4 forKey:@"protocolVersion"];
  }

  transcriptionData = self->_transcriptionData;
  if (transcriptionData)
  {
    [v3 setObject:transcriptionData forKey:@"transcriptionData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    protocolVersion = self->_protocolVersion;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_transcriptionData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_protocolVersion;
    *(v4 + 24) |= 1u;
  }

  if (self->_transcriptionData)
  {
    v5 = v4;
    [v4 setTranscriptionData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_protocolVersion;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_transcriptionData copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_protocolVersion != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  transcriptionData = self->_transcriptionData;
  if (transcriptionData | *(v4 + 2))
  {
    v7 = [(NSData *)transcriptionData isEqual:?];
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

  return [(NSData *)self->_transcriptionData hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_protocolVersion = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(VMTranscriptMessage *)self setTranscriptionData:?];
    v4 = v5;
  }
}

@end