@interface WFPBRemoteExecutionErrorEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBRemoteExecutionErrorEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setKey:?];
  }

  if (v4[5])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setSource:?];
  }

  if (v4[1])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setDestinationType:?];
  }

  if (v4[3])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setErrorDomain:?];
  }

  if (v4[2])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setErrorCode:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_source hash]^ v3;
  v5 = [(NSString *)self->_destinationType hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_errorDomain hash];
  return v6 ^ [(NSString *)self->_errorCode hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[4])) || -[NSString isEqual:](key, "isEqual:")) && ((source = self->_source, !(source | v4[5])) || -[NSString isEqual:](source, "isEqual:")) && ((destinationType = self->_destinationType, !(destinationType | v4[1])) || -[NSString isEqual:](destinationType, "isEqual:")) && ((errorDomain = self->_errorDomain, !(errorDomain | v4[3])) || -[NSString isEqual:](errorDomain, "isEqual:")))
  {
    errorCode = self->_errorCode;
    if (errorCode | v4[2])
    {
      v10 = [(NSString *)errorCode isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_source copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_destinationType copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_errorDomain copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_errorCode copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (self->_source)
  {
    [v5 setSource:?];
    v4 = v5;
  }

  if (self->_destinationType)
  {
    [v5 setDestinationType:?];
    v4 = v5;
  }

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    v4 = v5;
  }

  if (self->_errorCode)
  {
    [v5 setErrorCode:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_destinationType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_errorCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  source = self->_source;
  if (source)
  {
    [v4 setObject:source forKey:@"source"];
  }

  destinationType = self->_destinationType;
  if (destinationType)
  {
    [v4 setObject:destinationType forKey:@"destinationType"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v4 setObject:errorDomain forKey:@"errorDomain"];
  }

  errorCode = self->_errorCode;
  if (errorCode)
  {
    [v4 setObject:errorCode forKey:@"errorCode"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBRemoteExecutionErrorEvent;
  v4 = [(WFPBRemoteExecutionErrorEvent *)&v8 description];
  v5 = [(WFPBRemoteExecutionErrorEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"RemoteExecutionError";
  }
}

@end