@interface ICAppleMusicAPITokenResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)privacyConsciousDescription;
- (id)privacyConsciousDictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ICAppleMusicAPITokenResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  tokenCollection = self->_tokenCollection;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (tokenCollection)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ICAppleMusicAPITokenCollection *)tokenCollection mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ICAppleMusicAPITokenResponse *)self setTokenCollection:?];
  }

  fromCopy = v9;
LABEL_7:
  error = self->_error;
  v8 = fromCopy[1];
  if (error)
  {
    if (v8)
    {
      [(ICAppleMusicAPITokenError *)error mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ICAppleMusicAPITokenResponse *)self setError:?];
  }

  _objc_release_x1();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((tokenCollection = self->_tokenCollection, !(tokenCollection | equalCopy[2])) || -[ICAppleMusicAPITokenCollection isEqual:](tokenCollection, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
    {
      v7 = [(ICAppleMusicAPITokenError *)error isEqual:?];
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
  v6 = [(ICAppleMusicAPITokenCollection *)self->_tokenCollection copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(ICAppleMusicAPITokenError *)self->_error copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_tokenCollection)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
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
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v17 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v17 & 0x7F) << v6;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      if ((v13 >> 3) == 2)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = objc_alloc_init(ICAppleMusicAPITokenCollection);
        objc_storeStrong(&self->_tokenCollection, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !sub_1000EEDB8(v14, from))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(ICAppleMusicAPITokenError);
    objc_storeStrong(&self->_error, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !sub_1000E8180(v14, from))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  tokenCollection = self->_tokenCollection;
  if (tokenCollection)
  {
    dictionaryRepresentation = [(ICAppleMusicAPITokenCollection *)tokenCollection dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"tokenCollection"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(ICAppleMusicAPITokenError *)error dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenResponse;
  v3 = [(ICAppleMusicAPITokenResponse *)&v7 description];
  dictionaryRepresentation = [(ICAppleMusicAPITokenResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)privacyConsciousDescription
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenResponse;
  v3 = [(ICAppleMusicAPITokenResponse *)&v7 description];
  privacyConsciousDictionaryRepresentation = [(ICAppleMusicAPITokenResponse *)self privacyConsciousDictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, privacyConsciousDictionaryRepresentation];

  return v5;
}

- (id)privacyConsciousDictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(ICAppleMusicAPITokenResponse *)self hasTokenCollection])
  {
    tokenCollection = [(ICAppleMusicAPITokenResponse *)self tokenCollection];
    privacyConsciousDictionaryRepresentation = [tokenCollection privacyConsciousDictionaryRepresentation];
    [v3 setObject:privacyConsciousDictionaryRepresentation forKey:@"tokenCollection"];
  }

  if ([(ICAppleMusicAPITokenResponse *)self hasError])
  {
    error = [(ICAppleMusicAPITokenResponse *)self error];
    dictionaryRepresentation = [error dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"error"];
  }

  return v3;
}

@end