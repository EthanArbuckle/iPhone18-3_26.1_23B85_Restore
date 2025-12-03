@interface ICAppleMusicAPITokenRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)setHasShouldIgnoreUserTokenCache:(BOOL)cache;
- (void)writeTo:(id)to;
@end

@implementation ICAppleMusicAPITokenRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ICAppleMusicAPITokenRequest *)self setClientIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(ICAppleMusicAPITokenRequest *)self setClientVersion:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(ICAppleMusicAPITokenRequest *)self setBagProfile:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(ICAppleMusicAPITokenRequest *)self setBagProfileVersion:?];
    fromCopy = v6;
  }

  v5 = fromCopy[44];
  if ((v5 & 2) != 0)
  {
    self->_shouldIgnoreUserTokenCache = fromCopy[41];
    *&self->_has |= 2u;
    v5 = fromCopy[44];
  }

  if (v5)
  {
    self->_shouldIgnoreDeveloperTokenCache = fromCopy[40];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  clientVersion = self->_clientVersion;
  if (clientVersion | *(equalCopy + 4))
  {
    if (![(NSString *)clientVersion isEqual:?])
    {
      goto LABEL_18;
    }
  }

  bagProfile = self->_bagProfile;
  if (bagProfile | *(equalCopy + 1))
  {
    if (![(NSString *)bagProfile isEqual:?])
    {
      goto LABEL_18;
    }
  }

  bagProfileVersion = self->_bagProfileVersion;
  if (bagProfileVersion | *(equalCopy + 2))
  {
    if (![(NSString *)bagProfileVersion isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*(equalCopy + 44) & 2) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(equalCopy + 41);
  if (self->_shouldIgnoreUserTokenCache)
  {
    if ((*(equalCopy + 41) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 41))
  {
    goto LABEL_18;
  }

LABEL_12:
  v9 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 44))
    {
      if (self->_shouldIgnoreDeveloperTokenCache)
      {
        if (*(equalCopy + 40))
        {
          goto LABEL_26;
        }
      }

      else if (!*(equalCopy + 40))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_clientVersion copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_bagProfile copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_bagProfileVersion copyWithZone:zone];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_clientVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_bagProfile)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_bagProfileVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shouldIgnoreUserTokenCache = self->_shouldIgnoreUserTokenCache;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    shouldIgnoreDeveloperTokenCache = self->_shouldIgnoreDeveloperTokenCache;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        goto LABEL_55;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v35 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v35 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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
            v29 = [from position] + 1;
            if (v29 >= [from position] && (v30 = objc_msgSend(from, "position") + 1, v30 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:&v37 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
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

          v23 = (v28 != 0) & ~[from hasError];
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
            v20 = [from position] + 1;
            if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
            {
              data3 = [from data];
              [data3 getBytes:&v36 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
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

          v23 = (v19 != 0) & ~[from hasError];
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
      position2 = [from position];
      if (position2 >= [from length])
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
  LOBYTE(v24) = [from hasError] ^ 1;
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
  dictionaryRepresentation = [(ICAppleMusicAPITokenRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasShouldIgnoreUserTokenCache:(BOOL)cache
{
  if (cache)
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