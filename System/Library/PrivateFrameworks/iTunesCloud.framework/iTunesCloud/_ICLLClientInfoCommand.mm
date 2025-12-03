@interface _ICLLClientInfoCommand
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)setExternalId:(uint64_t)id;
- (void)setSharedSessionToken:(uint64_t)token;
- (void)writeTo:(id)to;
@end

@implementation _ICLLClientInfoCommand

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sharedSessionToken = self->_sharedSessionToken, !(sharedSessionToken | equalCopy[2])) || -[NSString isEqual:](sharedSessionToken, "isEqual:")))
  {
    externalId = self->_externalId;
    if (externalId | equalCopy[1])
    {
      v7 = [(NSString *)externalId isEqual:?];
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
  v6 = [(NSString *)self->_sharedSessionToken copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_externalId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sharedSessionToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_externalId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sharedSessionToken = self->_sharedSessionToken;
  if (sharedSessionToken)
  {
    [dictionary setObject:sharedSessionToken forKey:@"sharedSessionToken"];
  }

  externalId = self->_externalId;
  if (externalId)
  {
    [v4 setObject:externalId forKey:@"externalId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLClientInfoCommand;
  v4 = [(_ICLLClientInfoCommand *)&v8 description];
  dictionaryRepresentation = [(_ICLLClientInfoCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setSharedSessionToken:(uint64_t)token
{
  if (token)
  {
    objc_storeStrong((token + 16), a2);
  }
}

- (void)setExternalId:(uint64_t)id
{
  if (id)
  {
    objc_storeStrong((id + 8), a2);
  }
}

@end