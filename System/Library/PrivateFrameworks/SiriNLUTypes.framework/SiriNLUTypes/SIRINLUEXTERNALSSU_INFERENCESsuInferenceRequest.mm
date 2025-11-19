@interface SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  requestId = self->_requestId;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest *)self setUtterance:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestId = self->_requestId, !(requestId | v4[1])) || -[SIRINLUEXTERNALRequestID isEqual:](requestId, "isEqual:")))
  {
    utterance = self->_utterance;
    if (utterance | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALRequestID *)self->_requestId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_utterance copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    [v4 setRequestId:?];
    v4 = v5;
  }

  if (self->_utterance)
  {
    [v5 setUtterance:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  requestId = self->_requestId;
  if (requestId)
  {
    v5 = [(SIRINLUEXTERNALRequestID *)requestId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [v3 setObject:utterance forKey:@"utterance"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest;
  v4 = [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest *)&v8 description];
  v5 = [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end