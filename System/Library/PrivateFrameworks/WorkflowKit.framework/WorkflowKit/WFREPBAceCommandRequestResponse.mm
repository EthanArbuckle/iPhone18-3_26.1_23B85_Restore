@interface WFREPBAceCommandRequestResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBAceCommandRequestResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(WFREPBAceCommandRequestResponse *)self setOriginatingRequestIdentifier:?];
    v4 = v7;
  }

  if (v4[1])
  {
    [(WFREPBAceCommandRequestResponse *)self setAceCommandResponseData:?];
    v4 = v7;
  }

  error = self->_error;
  v6 = v4[2];
  if (error)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(WFREPBError *)error mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(WFREPBAceCommandRequestResponse *)self setError:?];
  }

  v4 = v7;
LABEL_11:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_originatingRequestIdentifier hash];
  v4 = [(NSData *)self->_aceCommandResponseData hash]^ v3;
  return v4 ^ [(WFREPBError *)self->_error hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((originatingRequestIdentifier = self->_originatingRequestIdentifier, !(originatingRequestIdentifier | v4[3])) || -[NSString isEqual:](originatingRequestIdentifier, "isEqual:")) && ((aceCommandResponseData = self->_aceCommandResponseData, !(aceCommandResponseData | v4[1])) || -[NSData isEqual:](aceCommandResponseData, "isEqual:")))
  {
    error = self->_error;
    if (error | v4[2])
    {
      v8 = [(WFREPBError *)error isEqual:?];
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
  v6 = [(NSString *)self->_originatingRequestIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_aceCommandResponseData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(WFREPBError *)self->_error copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setOriginatingRequestIdentifier:self->_originatingRequestIdentifier];
  [v4 setAceCommandResponseData:self->_aceCommandResponseData];
  if (self->_error)
  {
    [v4 setError:?];
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_originatingRequestIdentifier)
  {
    __assert_rtn("[WFREPBAceCommandRequestResponse writeTo:]", "WFREPBAceCommandRequestResponse.m", 112, "nil != self->_originatingRequestIdentifier");
  }

  PBDataWriterWriteStringField();
  if (!self->_aceCommandResponseData)
  {
    __assert_rtn("[WFREPBAceCommandRequestResponse writeTo:]", "WFREPBAceCommandRequestResponse.m", 117, "nil != self->_aceCommandResponseData");
  }

  PBDataWriterWriteDataField();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  originatingRequestIdentifier = self->_originatingRequestIdentifier;
  if (originatingRequestIdentifier)
  {
    [v3 setObject:originatingRequestIdentifier forKey:@"originatingRequestIdentifier"];
  }

  aceCommandResponseData = self->_aceCommandResponseData;
  if (aceCommandResponseData)
  {
    [v4 setObject:aceCommandResponseData forKey:@"aceCommandResponseData"];
  }

  error = self->_error;
  if (error)
  {
    v8 = [(WFREPBError *)error dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"error"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAceCommandRequestResponse;
  v4 = [(WFREPBAceCommandRequestResponse *)&v8 description];
  v5 = [(WFREPBAceCommandRequestResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end