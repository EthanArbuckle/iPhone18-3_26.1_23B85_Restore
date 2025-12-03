@interface SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  requestId = self->_requestId;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (requestId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALRequestID *)requestId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest *)self setRequestId:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest *)self setUtterance:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | equalCopy[1])) || -[SIRINLUEXTERNALRequestID isEqual:](requestId, "isEqual:")))
  {
    utterance = self->_utterance;
    if (utterance | equalCopy[2])
    {
      v7 = [(NSString *)utterance isEqual:?];
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
  v6 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_utterance copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
    toCopy = v5;
  }

  if (self->_utterance)
  {
    [v5 setUtterance:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [dictionary setObject:utterance forKey:@"utterance"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest;
  v4 = [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end