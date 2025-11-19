@interface SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)self setProtoEncoding:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)self setRuntimeEncoding:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)self setEventDescription:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_protoEncoding hash];
  v4 = [(NSData *)self->_runtimeEncoding hash]^ v3;
  return v4 ^ [(NSString *)self->_eventDescription hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((protoEncoding = self->_protoEncoding, !(protoEncoding | v4[2])) || -[NSData isEqual:](protoEncoding, "isEqual:")) && ((runtimeEncoding = self->_runtimeEncoding, !(runtimeEncoding | v4[3])) || -[NSData isEqual:](runtimeEncoding, "isEqual:")))
  {
    eventDescription = self->_eventDescription;
    if (eventDescription | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_protoEncoding copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_runtimeEncoding copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_eventDescription copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_protoEncoding)
  {
    [v4 setProtoEncoding:?];
    v4 = v5;
  }

  if (self->_runtimeEncoding)
  {
    [v5 setRuntimeEncoding:?];
    v4 = v5;
  }

  if (self->_eventDescription)
  {
    [v5 setEventDescription:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_protoEncoding)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_runtimeEncoding)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_eventDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  protoEncoding = self->_protoEncoding;
  if (protoEncoding)
  {
    [v3 setObject:protoEncoding forKey:@"proto_encoding"];
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
  v5 = [(SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end