@interface CSLUIPBUIPluginTriggerResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSLUIPBUIPluginTriggerResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CSLUIPBUIPluginTriggerResponse;
  v4 = [(CSLUIPBUIPluginTriggerResponse *)&v8 description];
  dictionaryRepresentation = [(CSLUIPBUIPluginTriggerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
  [dictionary setObject:v4 forKey:@"success"];

  errorString = self->_errorString;
  if (errorString)
  {
    [dictionary setObject:errorString forKey:@"errorString"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  success = self->_success;
  v6 = toCopy;
  PBDataWriterWriteBOOLField();
  if (self->_errorString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 16) = self->_success;
  errorString = self->_errorString;
  if (errorString)
  {
    [to setErrorString:errorString];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_success;
  v6 = [(NSString *)self->_errorString copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_success == *(equalCopy + 16))
  {
    errorString = self->_errorString;
    if (errorString | equalCopy[1])
    {
      v6 = [(NSString *)errorString isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  self->_success = *(from + 16);
  if (*(from + 1))
  {
    [(CSLUIPBUIPluginTriggerResponse *)self setErrorString:?];
  }
}

@end