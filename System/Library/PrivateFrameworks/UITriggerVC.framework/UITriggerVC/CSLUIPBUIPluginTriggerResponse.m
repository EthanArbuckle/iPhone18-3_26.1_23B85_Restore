@interface CSLUIPBUIPluginTriggerResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSLUIPBUIPluginTriggerResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CSLUIPBUIPluginTriggerResponse;
  v4 = [(CSLUIPBUIPluginTriggerResponse *)&v8 description];
  v5 = [(CSLUIPBUIPluginTriggerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
  [v3 setObject:v4 forKey:@"success"];

  errorString = self->_errorString;
  if (errorString)
  {
    [v3 setObject:errorString forKey:@"errorString"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  success = self->_success;
  v6 = v4;
  PBDataWriterWriteBOOLField();
  if (self->_errorString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 16) = self->_success;
  errorString = self->_errorString;
  if (errorString)
  {
    [a3 setErrorString:errorString];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_success;
  v6 = [(NSString *)self->_errorString copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_success == *(v4 + 16))
  {
    errorString = self->_errorString;
    if (errorString | v4[1])
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

- (void)mergeFrom:(id)a3
{
  self->_success = *(a3 + 16);
  if (*(a3 + 1))
  {
    [(CSLUIPBUIPluginTriggerResponse *)self setErrorString:?];
  }
}

@end