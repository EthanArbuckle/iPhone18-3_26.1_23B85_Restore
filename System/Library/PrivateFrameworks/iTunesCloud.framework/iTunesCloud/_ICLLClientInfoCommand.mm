@interface _ICLLClientInfoCommand
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)setExternalId:(uint64_t)a1;
- (void)setSharedSessionToken:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLClientInfoCommand

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sharedSessionToken = self->_sharedSessionToken, !(sharedSessionToken | v4[2])) || -[NSString isEqual:](sharedSessionToken, "isEqual:")))
  {
    externalId = self->_externalId;
    if (externalId | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sharedSessionToken copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_externalId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sharedSessionToken)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_externalId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sharedSessionToken = self->_sharedSessionToken;
  if (sharedSessionToken)
  {
    [v3 setObject:sharedSessionToken forKey:@"sharedSessionToken"];
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
  v5 = [(_ICLLClientInfoCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setSharedSessionToken:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

- (void)setExternalId:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

@end