@interface UWLMessageHeaders
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCookies:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation UWLMessageHeaders

- (void)addCookies:(id)a3
{
  v4 = a3;
  cookies = self->_cookies;
  v8 = v4;
  if (!cookies)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_cookies;
    self->_cookies = v6;

    v4 = v8;
    cookies = self->_cookies;
  }

  [(NSMutableArray *)cookies addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLMessageHeaders;
  v3 = [(UWLMessageHeaders *)&v7 description];
  v4 = [(UWLMessageHeaders *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v3 setObject:userAgent forKey:@"user_agent"];
  }

  xDsid = self->_xDsid;
  if (xDsid)
  {
    [v4 setObject:xDsid forKey:@"x_dsid"];
  }

  xAppleStorefront = self->_xAppleStorefront;
  if (xAppleStorefront)
  {
    [v4 setObject:xAppleStorefront forKey:@"x_apple_storefront"];
  }

  xGuid = self->_xGuid;
  if (xGuid)
  {
    [v4 setObject:xGuid forKey:@"x_guid"];
  }

  xUseridKeyspace = self->_xUseridKeyspace;
  if (xUseridKeyspace)
  {
    [v4 setObject:xUseridKeyspace forKey:@"x_userid_keyspace"];
  }

  xUseridKey = self->_xUseridKey;
  if (xUseridKey)
  {
    [v4 setObject:xUseridKey forKey:@"x_userid_key"];
  }

  if ([(NSMutableArray *)self->_cookies count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_cookies, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = self->_cookies;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"cookies"];
  }

  pfm = self->_pfm;
  if (pfm)
  {
    [v4 setObject:pfm forKey:@"pfm"];
  }

  if (*&self->_has)
  {
    v19 = [NSNumber numberWithInt:self->_clientVersion];
    [v4 setObject:v19 forKey:@"client_version"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  userAgent = self->_userAgent;
  PBDataWriterWriteStringField();
  xDsid = self->_xDsid;
  PBDataWriterWriteStringField();
  xAppleStorefront = self->_xAppleStorefront;
  PBDataWriterWriteStringField();
  if (self->_xGuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_xUseridKeyspace)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_xUseridKey)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_cookies;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (self->_pfm)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    clientVersion = self->_clientVersion;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setUserAgent:self->_userAgent];
  [v8 setXDsid:self->_xDsid];
  [v8 setXAppleStorefront:self->_xAppleStorefront];
  if (self->_xGuid)
  {
    [v8 setXGuid:?];
  }

  if (self->_xUseridKeyspace)
  {
    [v8 setXUseridKeyspace:?];
  }

  if (self->_xUseridKey)
  {
    [v8 setXUseridKey:?];
  }

  if ([(UWLMessageHeaders *)self cookiesCount])
  {
    [v8 clearCookies];
    v4 = [(UWLMessageHeaders *)self cookiesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(UWLMessageHeaders *)self cookiesAtIndex:i];
        [v8 addCookies:v7];
      }
    }
  }

  if (self->_pfm)
  {
    [v8 setPfm:?];
  }

  if (*&self->_has)
  {
    *(v8 + 2) = self->_clientVersion;
    *(v8 + 80) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_userAgent copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_xDsid copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSString *)self->_xAppleStorefront copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_xGuid copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSString *)self->_xUseridKeyspace copyWithZone:a3];
  v15 = v5[9];
  v5[9] = v14;

  v16 = [(NSString *)self->_xUseridKey copyWithZone:a3];
  v17 = v5[8];
  v5[8] = v16;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_cookies;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v27 + 1) + 8 * v22) copyWithZone:{a3, v27}];
        [v5 addCookies:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_pfm copyWithZone:a3];
  v25 = v5[3];
  v5[3] = v24;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_clientVersion;
    *(v5 + 80) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  userAgent = self->_userAgent;
  if (userAgent | *(v4 + 4))
  {
    if (![(NSString *)userAgent isEqual:?])
    {
      goto LABEL_22;
    }
  }

  xDsid = self->_xDsid;
  if (xDsid | *(v4 + 6))
  {
    if (![(NSString *)xDsid isEqual:?])
    {
      goto LABEL_22;
    }
  }

  xAppleStorefront = self->_xAppleStorefront;
  if (xAppleStorefront | *(v4 + 5))
  {
    if (![(NSString *)xAppleStorefront isEqual:?])
    {
      goto LABEL_22;
    }
  }

  xGuid = self->_xGuid;
  if (xGuid | *(v4 + 7))
  {
    if (![(NSString *)xGuid isEqual:?])
    {
      goto LABEL_22;
    }
  }

  xUseridKeyspace = self->_xUseridKeyspace;
  if (xUseridKeyspace | *(v4 + 9))
  {
    if (![(NSString *)xUseridKeyspace isEqual:?])
    {
      goto LABEL_22;
    }
  }

  xUseridKey = self->_xUseridKey;
  if (xUseridKey | *(v4 + 8))
  {
    if (![(NSString *)xUseridKey isEqual:?])
    {
      goto LABEL_22;
    }
  }

  cookies = self->_cookies;
  if (cookies | *(v4 + 2))
  {
    if (![(NSMutableArray *)cookies isEqual:?])
    {
      goto LABEL_22;
    }
  }

  pfm = self->_pfm;
  if (pfm | *(v4 + 3))
  {
    if (![(NSString *)pfm isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v13 = (*(v4 + 80) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) != 0 && self->_clientVersion == *(v4 + 2))
    {
      v13 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v13 = 0;
  }

LABEL_23:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_userAgent hash];
  v4 = [(NSString *)self->_xDsid hash];
  v5 = [(NSString *)self->_xAppleStorefront hash];
  v6 = [(NSString *)self->_xGuid hash];
  v7 = [(NSString *)self->_xUseridKeyspace hash];
  v8 = [(NSString *)self->_xUseridKey hash];
  v9 = [(NSMutableArray *)self->_cookies hash];
  v10 = [(NSString *)self->_pfm hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_clientVersion;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 4))
  {
    [(UWLMessageHeaders *)self setUserAgent:?];
  }

  if (*(v4 + 6))
  {
    [(UWLMessageHeaders *)self setXDsid:?];
  }

  if (*(v4 + 5))
  {
    [(UWLMessageHeaders *)self setXAppleStorefront:?];
  }

  if (*(v4 + 7))
  {
    [(UWLMessageHeaders *)self setXGuid:?];
  }

  if (*(v4 + 9))
  {
    [(UWLMessageHeaders *)self setXUseridKeyspace:?];
  }

  if (*(v4 + 8))
  {
    [(UWLMessageHeaders *)self setXUseridKey:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UWLMessageHeaders *)self addCookies:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 3))
  {
    [(UWLMessageHeaders *)self setPfm:?];
  }

  if (*(v4 + 80))
  {
    self->_clientVersion = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end