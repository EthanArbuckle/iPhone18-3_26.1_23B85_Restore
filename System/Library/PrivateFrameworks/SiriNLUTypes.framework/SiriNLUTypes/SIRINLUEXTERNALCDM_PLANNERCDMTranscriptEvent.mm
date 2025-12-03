@interface SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)self setProtoEncoding:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)self setRuntimeEncoding:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)self setEventDescription:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_protoEncoding hash];
  v4 = [(NSData *)self->_runtimeEncoding hash]^ v3;
  return v4 ^ [(NSString *)self->_eventDescription hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((protoEncoding = self->_protoEncoding, !(protoEncoding | equalCopy[2])) || -[NSData isEqual:](protoEncoding, "isEqual:")) && ((runtimeEncoding = self->_runtimeEncoding, !(runtimeEncoding | equalCopy[3])) || -[NSData isEqual:](runtimeEncoding, "isEqual:")))
  {
    eventDescription = self->_eventDescription;
    if (eventDescription | equalCopy[1])
    {
      v8 = [(NSString *)eventDescription isEqual:?];
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
  v6 = [(NSData *)self->_protoEncoding copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_runtimeEncoding copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_eventDescription copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_protoEncoding)
  {
    [toCopy setProtoEncoding:?];
    toCopy = v5;
  }

  if (self->_runtimeEncoding)
  {
    [v5 setRuntimeEncoding:?];
    toCopy = v5;
  }

  if (self->_eventDescription)
  {
    [v5 setEventDescription:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_protoEncoding)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_runtimeEncoding)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_eventDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  protoEncoding = self->_protoEncoding;
  if (protoEncoding)
  {
    [dictionary setObject:protoEncoding forKey:@"proto_encoding"];
  }

  runtimeEncoding = self->_runtimeEncoding;
  if (runtimeEncoding)
  {
    [v4 setObject:runtimeEncoding forKey:@"runtime_encoding"];
  }

  eventDescription = self->_eventDescription;
  if (eventDescription)
  {
    [v4 setObject:eventDescription forKey:@"event_description"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent;
  v4 = [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end