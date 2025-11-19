@interface ICAppleMusicAPITokenRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)setHasShouldIgnoreUserTokenCache:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICAppleMusicAPITokenRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(ICAppleMusicAPITokenRequest *)self setClientIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(ICAppleMusicAPITokenRequest *)self setClientVersion:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(ICAppleMusicAPITokenRequest *)self setBagProfile:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(ICAppleMusicAPITokenRequest *)self setBagProfileVersion:?];
    v4 = v6;
  }

  v5 = v4[44];
  if ((v5 & 2) != 0)
  {
    self->_shouldIgnoreUserTokenCache = v4[41];
    *&self->_has |= 2u;
    v5 = v4[44];
  }

  if (v5)
  {
    self->_shouldIgnoreDeveloperTokenCache = v4[40];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientIdentifier hash];
  v4 = [(NSString *)self->_clientVersion hash];
  v5 = [(NSString *)self->_bagProfile hash];
  v6 = [(NSString *)self->_bagProfileVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_shouldIgnoreUserTokenCache;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_shouldIgnoreDeveloperTokenCache;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(v4 + 3))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  clientVersion = self->_clientVersion;
  if (clientVersion | *(v4 + 4))
  {
    if (![(NSString *)clientVersion isEqual:?])
    {
      goto LABEL_18;
    }
  }

  bagProfile = self->_bagProfile;
  if (bagProfile | *(v4 + 1))
  {
    if (![(NSString *)bagProfile isEqual:?])
    {
      goto LABEL_18;
    }
  }

  bagProfileVersion = self->_bagProfileVersion;
  if (bagProfileVersion | *(v4 + 2))
  {
    if (![(NSString *)bagProfileVersion isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(v4 + 41);
  if (self->_shouldIgnoreUserTokenCache)
  {
    if ((*(v4 + 41) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 41))
  {
    goto LABEL_18;
  }

LABEL_12:
  v9 = (*(v4 + 44) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 44))
    {
      if (self->_shouldIgnoreDeveloperTokenCache)
      {
        if (*(v4 + 40))
        {
          goto LABEL_26;
        }
      }

      else if (!*(v4 + 40))
      {
LABEL_26:
        v9 = 1;
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_clientVersion copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_bagProfile copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_bagProfileVersion copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 41) = self->_shouldIgnoreUserTokenCache;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 40) = self->_shouldIgnoreDeveloperTokenCache;
    *(v5 + 44) |= 1u;
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_clientVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_bagProfile)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_bagProfileVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shouldIgnoreUserTokenCache = self->_shouldIgnoreUserTokenCache;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    shouldIgnoreDeveloperTokenCache = self->_shouldIgnoreDeveloperTokenCache;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
    {
      if ([a3 hasError])
      {
        goto LABEL_55;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v35 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v35 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v35 & 0x7F) << v6;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        goto LABEL_55;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 3)
      {
        break;
      }

      switch(v14)
      {
        case 4:
          v15 = PBReaderReadString();
          v16 = 16;
LABEL_39:
          v25 = *&self->PBRequest_opaque[v16];
          *&self->PBRequest_opaque[v16] = v15;

          goto LABEL_54;
        case 5:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *&self->_has |= 2u;
          while (1)
          {
            v37 = 0;
            v29 = [a3 position] + 1;
            if (v29 >= [a3 position] && (v30 = objc_msgSend(a3, "position") + 1, v30 <= objc_msgSend(a3, "length")))
            {
              v31 = [a3 data];
              [v31 getBytes:&v37 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v28 |= (v37 & 0x7F) << v26;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v12 = v27++ >= 9;
            if (v12)
            {
              LOBYTE(v23) = 0;
              goto LABEL_52;
            }
          }

          v23 = (v28 != 0) & ~[a3 hasError];
LABEL_52:
          v32 = 41;
          break;
        case 6:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            v36 = 0;
            v20 = [a3 position] + 1;
            if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
            {
              v22 = [a3 data];
              [v22 getBytes:&v36 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v19 |= (v36 & 0x7F) << v17;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v12 = v18++ >= 9;
            if (v12)
            {
              LOBYTE(v23) = 0;
              goto LABEL_50;
            }
          }

          v23 = (v19 != 0) & ~[a3 hasError];
LABEL_50:
          v32 = 40;
          break;
        default:
LABEL_36:
          v24 = PBReaderSkipValueWithTag();
          if (!v24)
          {
            return v24;
          }

          goto LABEL_54;
      }

      self->PBRequest_opaque[v32] = v23;
LABEL_54:
      v33 = [a3 position];
      if (v33 >= [a3 length])
      {
        goto LABEL_55;
      }
    }

    switch(v14)
    {
      case 1:
        v15 = PBReaderReadString();
        v16 = 24;
        break;
      case 2:
        v15 = PBReaderReadString();
        v16 = 32;
        break;
      case 3:
        v15 = PBReaderReadString();
        v16 = 8;
        break;
      default:
        goto LABEL_36;
    }

    goto LABEL_39;
  }

LABEL_55:
  LOBYTE(v24) = [a3 hasError] ^ 1;
  return v24;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v3 setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  clientVersion = self->_clientVersion;
  if (clientVersion)
  {
    [v4 setObject:clientVersion forKey:@"clientVersion"];
  }

  bagProfile = self->_bagProfile;
  if (bagProfile)
  {
    [v4 setObject:bagProfile forKey:@"bagProfile"];
  }

  bagProfileVersion = self->_bagProfileVersion;
  if (bagProfileVersion)
  {
    [v4 setObject:bagProfileVersion forKey:@"bagProfileVersion"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_shouldIgnoreUserTokenCache];
    [v4 setObject:v10 forKey:@"shouldIgnoreUserTokenCache"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [NSNumber numberWithBool:self->_shouldIgnoreDeveloperTokenCache];
    [v4 setObject:v11 forKey:@"shouldIgnoreDeveloperTokenCache"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenRequest;
  v3 = [(ICAppleMusicAPITokenRequest *)&v7 description];
  v4 = [(ICAppleMusicAPITokenRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasShouldIgnoreUserTokenCache:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end