@interface ICPBDGSStartDelegationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addPlayerInfoContextToken:(uint64_t)a1;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ICPBDGSStartDelegationResponse

- (unint64_t)hash
{
  v3 = [(NSData *)self->_playerAnisetteMID hash];
  v4 = [(NSData *)self->_playerDeviceGUID hash]^ v3;
  v5 = [(NSMutableArray *)self->_playerInfoContextTokens hash];
  return v4 ^ v5 ^ [(NSString *)self->_playerUserAgent hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((playerAnisetteMID = self->_playerAnisetteMID, !(playerAnisetteMID | v4[1])) || -[NSData isEqual:](playerAnisetteMID, "isEqual:")) && ((playerDeviceGUID = self->_playerDeviceGUID, !(playerDeviceGUID | v4[2])) || -[NSData isEqual:](playerDeviceGUID, "isEqual:")) && ((playerInfoContextTokens = self->_playerInfoContextTokens, !(playerInfoContextTokens | v4[3])) || -[NSMutableArray isEqual:](playerInfoContextTokens, "isEqual:")))
  {
    playerUserAgent = self->_playerUserAgent;
    if (playerUserAgent | v4[4])
    {
      v9 = [(NSString *)playerUserAgent isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_playerAnisetteMID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_playerDeviceGUID copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_playerInfoContextTokens;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) copyWithZone:{a3, v19}];
        [(ICPBDGSStartDelegationResponse *)v5 addPlayerInfoContextToken:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_playerUserAgent copyWithZone:a3];
  v17 = v5[4];
  v5[4] = v16;

  return v5;
}

- (uint64_t)addPlayerInfoContextToken:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      v5 = *(a1 + 24);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_playerAnisetteMID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_playerDeviceGUID)
  {
    PBDataWriterWriteDataField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_playerInfoContextTokens;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_playerUserAgent)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  playerAnisetteMID = self->_playerAnisetteMID;
  if (playerAnisetteMID)
  {
    [v3 setObject:playerAnisetteMID forKey:@"playerAnisetteMID"];
  }

  playerDeviceGUID = self->_playerDeviceGUID;
  if (playerDeviceGUID)
  {
    [v4 setObject:playerDeviceGUID forKey:@"playerDeviceGUID"];
  }

  if ([(NSMutableArray *)self->_playerInfoContextTokens count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_playerInfoContextTokens, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_playerInfoContextTokens;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"playerInfoContextToken"];
  }

  playerUserAgent = self->_playerUserAgent;
  if (playerUserAgent)
  {
    [v4 setObject:playerUserAgent forKey:@"playerUserAgent"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSStartDelegationResponse;
  v4 = [(ICPBDGSStartDelegationResponse *)&v8 description];
  v5 = [(ICPBDGSStartDelegationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end