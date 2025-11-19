@interface ICAppleMusicAPITokenResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)privacyConsciousDescription;
- (id)privacyConsciousDictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICAppleMusicAPITokenResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  tokenCollection = self->_tokenCollection;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  error = self->_error;
  v8 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((tokenCollection = self->_tokenCollection, !(tokenCollection | v4[2])) || -[ICAppleMusicAPITokenCollection isEqual:](tokenCollection, "isEqual:")))
  {
    error = self->_error;
    if (error | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ICAppleMusicAPITokenCollection *)self->_tokenCollection copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(ICAppleMusicAPITokenError *)self->_error copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_tokenCollection)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
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
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v17 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
        if (!PBReaderPlaceMark() || !sub_1000EEDB8(v14, a3))
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
      v15 = [a3 position];
      if (v15 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(ICAppleMusicAPITokenError);
    objc_storeStrong(&self->_error, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !sub_1000E8180(v14, a3))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  tokenCollection = self->_tokenCollection;
  if (tokenCollection)
  {
    v5 = [(ICAppleMusicAPITokenCollection *)tokenCollection dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"tokenCollection"];
  }

  error = self->_error;
  if (error)
  {
    v7 = [(ICAppleMusicAPITokenError *)error dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"error"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenResponse;
  v3 = [(ICAppleMusicAPITokenResponse *)&v7 description];
  v4 = [(ICAppleMusicAPITokenResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)privacyConsciousDescription
{
  v7.receiver = self;
  v7.super_class = ICAppleMusicAPITokenResponse;
  v3 = [(ICAppleMusicAPITokenResponse *)&v7 description];
  v4 = [(ICAppleMusicAPITokenResponse *)self privacyConsciousDictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)privacyConsciousDictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(ICAppleMusicAPITokenResponse *)self hasTokenCollection])
  {
    v4 = [(ICAppleMusicAPITokenResponse *)self tokenCollection];
    v5 = [v4 privacyConsciousDictionaryRepresentation];
    [v3 setObject:v5 forKey:@"tokenCollection"];
  }

  if ([(ICAppleMusicAPITokenResponse *)self hasError])
  {
    v6 = [(ICAppleMusicAPITokenResponse *)self error];
    v7 = [v6 dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"error"];
  }

  return v3;
}

@end