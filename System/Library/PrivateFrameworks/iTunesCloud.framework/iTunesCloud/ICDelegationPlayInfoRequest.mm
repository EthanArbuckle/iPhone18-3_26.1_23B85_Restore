@interface ICDelegationPlayInfoRequest
- (NSArray)tokenRequests;
- (NSMutableDictionary)propertyListRepresentation;
- (NSString)playerDeviceGUID;
- (NSString)playerUserAgent;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICDelegationPlayInfoRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSData *)self->_playerAnisetteMID copyWithZone:zone];
    v7 = v5[3];
    v5[3] = v6;

    v8 = [(NSString *)self->_playerDeviceGUID copyWithZone:zone];
    v9 = v5[1];
    v5[1] = v8;

    v10 = [(NSString *)self->_playerUserAgent copyWithZone:zone];
    v11 = v5[4];
    v5[4] = v10;

    v12 = [(NSArray *)self->_tokenRequests copyWithZone:zone];
    v13 = v5[2];
    v5[2] = v12;
  }

  return v5;
}

- (NSMutableDictionary)propertyListRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSData *)self->_playerAnisetteMID length])
  {
    v4 = [(NSData *)self->_playerAnisetteMID base64EncodedStringWithOptions:0];
    [dictionary setObject:v4 forKey:@"player-mid"];
  }

  if ([(NSString *)self->_playerDeviceGUID length])
  {
    [dictionary setObject:self->_playerDeviceGUID forKey:@"player-guid"];
  }

  if ([(NSString *)self->_playerUserAgent length])
  {
    [dictionary setObject:self->_playerUserAgent forKey:@"player-user-agent"];
  }

  if (self->_tokenRequests)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_tokenRequests, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_tokenRequests;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          propertyListRepresentation = [*(*(&v13 + 1) + 8 * i) propertyListRepresentation];
          [v5 addObject:propertyListRepresentation];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"enqueuers"];
  }

  return dictionary;
}

- (NSString)playerUserAgent
{
  if (self->_playerUserAgent)
  {
    return self->_playerUserAgent;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSArray)tokenRequests
{
  if (self->_tokenRequests)
  {
    return self->_tokenRequests;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSString)playerDeviceGUID
{
  if (self->_playerDeviceGUID)
  {
    return self->_playerDeviceGUID;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

@end