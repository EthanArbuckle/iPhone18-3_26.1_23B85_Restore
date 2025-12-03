@interface SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest *)self setText:?];
    fromCopy = v7;
  }

  requestId = self->_requestId;
  v6 = fromCopy[1];
  if (requestId)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALRequestID *)requestId mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest *)self setRequestId:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((text = self->_text, !(text | equalCopy[2])) || -[NSString isEqual:](text, "isEqual:")))
  {
    requestId = self->_requestId;
    if (requestId | equalCopy[1])
    {
      v7 = [(SIRINLUEXTERNALRequestID *)requestId isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    [toCopy setText:?];
    toCopy = v5;
  }

  if (self->_requestId)
  {
    [v5 setRequestId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  text = self->_text;
  if (text)
  {
    [dictionary setObject:text forKey:@"text"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest;
  v4 = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end