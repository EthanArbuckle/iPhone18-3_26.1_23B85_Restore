@interface _ICLLRevisionHash
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLRevisionHash

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_hashValue hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_revision;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_type != *(equalCopy + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_14;
  }

  hashValue = self->_hashValue;
  if (hashValue | *(equalCopy + 1))
  {
    if (![(NSString *)hashValue isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v6 = *(equalCopy + 24);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_revision != *(equalCopy + 4))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_type;
    *(v5 + 24) |= 2u;
  }

  v7 = [(NSString *)self->_hashValue copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_revision;
    *(v6 + 24) |= 1u;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hashValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
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
        goto LABEL_51;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v34 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v34 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v34 & 0x7F) << v6;
        if ((v34 & 0x80) == 0)
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
        goto LABEL_51;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        break;
      }

      if (v14 != 2)
      {
        if (v14 != 1)
        {
          v30 = PBReaderSkipValueWithTag();
          if (!v30)
          {
            return v30;
          }

          goto LABEL_50;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          v36 = 0;
          v18 = [from position] + 1;
          if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v36 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v17 |= (v36 & 0x7F) << v15;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_48;
          }
        }

        if ([from hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_48:
        v31 = 20;
        goto LABEL_49;
      }

      v22 = PBReaderReadString();
      hashValue = self->_hashValue;
      self->_hashValue = v22;

LABEL_50:
      position2 = [from position];
      if (position2 >= [from length])
      {
        goto LABEL_51;
      }
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    *&self->_has |= 1u;
    while (1)
    {
      v35 = 0;
      v27 = [from position] + 1;
      if (v27 >= [from position] && (v28 = objc_msgSend(from, "position") + 1, v28 <= objc_msgSend(from, "length")))
      {
        data3 = [from data];
        [data3 getBytes:&v35 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v26 |= (v35 & 0x7F) << v24;
      if ((v35 & 0x80) == 0)
      {
        break;
      }

      v24 += 7;
      v12 = v25++ >= 9;
      if (v12)
      {
        v21 = 0;
        goto LABEL_44;
      }
    }

    if ([from hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v26;
    }

LABEL_44:
    v31 = 16;
LABEL_49:
    *(&self->super.super.isa + v31) = v21;
    goto LABEL_50;
  }

LABEL_51:
  LOBYTE(v30) = [from hasError] ^ 1;
  return v30;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
    [dictionary setObject:v4 forKey:@"type"];
  }

  hashValue = self->_hashValue;
  if (hashValue)
  {
    [dictionary setObject:hashValue forKey:@"hashValue"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [dictionary setObject:v6 forKey:@"revision"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLRevisionHash;
  v4 = [(_ICLLRevisionHash *)&v8 description];
  dictionaryRepresentation = [(_ICLLRevisionHash *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end