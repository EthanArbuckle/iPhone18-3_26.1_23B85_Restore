@interface SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest *)self setText:?];
    v4 = v7;
  }

  requestId = self->_requestId;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((text = self->_text, !(text | v4[2])) || -[NSString isEqual:](text, "isEqual:")))
  {
    requestId = self->_requestId;
    if (requestId | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text)
  {
    [v4 setText:?];
    v4 = v5;
  }

  if (self->_requestId)
  {
    [v5 setRequestId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    v7 = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"request_id"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest;
  v4 = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest *)&v8 description];
  v5 = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end