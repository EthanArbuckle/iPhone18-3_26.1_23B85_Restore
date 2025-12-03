@interface WFPBRemoteExecutionErrorEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFPBRemoteExecutionErrorEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setKey:?];
  }

  if (fromCopy[5])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setSource:?];
  }

  if (fromCopy[1])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setDestinationType:?];
  }

  if (fromCopy[3])
  {
    [(WFPBRemoteExecutionErrorEvent *)self setErrorDomain:?];
  }

  if (fromCopy[2])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[4])) || -[NSString isEqual:](key, "isEqual:")) && ((source = self->_source, !(source | equalCopy[5])) || -[NSString isEqual:](source, "isEqual:")) && ((destinationType = self->_destinationType, !(destinationType | equalCopy[1])) || -[NSString isEqual:](destinationType, "isEqual:")) && ((errorDomain = self->_errorDomain, !(errorDomain | equalCopy[3])) || -[NSString isEqual:](errorDomain, "isEqual:")))
  {
    errorCode = self->_errorCode;
    if (errorCode | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_source copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_destinationType copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_errorCode copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_source)
  {
    [v5 setSource:?];
    toCopy = v5;
  }

  if (self->_destinationType)
  {
    [v5 setDestinationType:?];
    toCopy = v5;
  }

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    toCopy = v5;
  }

  if (self->_errorCode)
  {
    [v5 setErrorCode:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_destinationType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_errorCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
  dictionaryRepresentation = [(WFPBRemoteExecutionErrorEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

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