@interface _ICLLProtocolMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForType;
- (void)setCommand:(uint64_t)command;
- (void)setQuery:(uint64_t)query;
- (void)setTraceId:(uint64_t)id;
- (void)writeTo:(id)to;
@end

@implementation _ICLLProtocolMessage

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_traceId hash]^ v3;
  v5 = [(_ICLLCommandMessage *)self->_command hash];
  v6 = v4 ^ v5 ^ [(_ICLLActionMessage *)self->_action hash];
  v7 = [(_ICLLErrorMessage *)self->_error hash];
  return v6 ^ v7 ^ [(_ICLLQueryMessage *)self->_query hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_type != *(equalCopy + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  traceId = self->_traceId;
  if (traceId | *(equalCopy + 5) && ![(NSString *)traceId isEqual:?])
  {
    goto LABEL_17;
  }

  command = self->_command;
  if (command | *(equalCopy + 2))
  {
    if (![(_ICLLCommandMessage *)command isEqual:?])
    {
      goto LABEL_17;
    }
  }

  action = self->_action;
  if (action | *(equalCopy + 1))
  {
    if (![(_ICLLActionMessage *)action isEqual:?])
    {
      goto LABEL_17;
    }
  }

  error = self->_error;
  if (error | *(equalCopy + 3))
  {
    if (![(_ICLLErrorMessage *)error isEqual:?])
    {
      goto LABEL_17;
    }
  }

  query = self->_query;
  if (query | *(equalCopy + 4))
  {
    v10 = [(_ICLLQueryMessage *)query isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_type;
    *(v5 + 52) |= 1u;
  }

  v7 = [(NSString *)self->_traceId copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(_ICLLCommandMessage *)self->_command copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(_ICLLActionMessage *)self->_action copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(_ICLLErrorMessage *)self->_error copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  v15 = [(_ICLLQueryMessage *)self->_query copyWithZone:zone];
  v16 = v6[4];
  v6[4] = v15;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_traceId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_command)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_action)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_query)
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
    do
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
        LOBYTE(v25) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
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

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        switch(v14)
        {
          case 3:
            [(_ICLLProtocolMessage *)self clearOneofValuesForType];
            *&self->_has |= 1u;
            self->_type = 2;
            v15 = objc_alloc_init(_ICLLActionMessage);
            objc_storeStrong(&self->_action, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !_ICLLActionMessageReadFrom(v15, from))
            {
LABEL_52:

              return 0;
            }

            goto LABEL_47;
          case 4:
            [(_ICLLProtocolMessage *)self clearOneofValuesForType];
            *&self->_has |= 1u;
            self->_type = 3;
            v15 = objc_alloc_init(_ICLLErrorMessage);
            objc_storeStrong(&self->_error, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !_ICLLErrorMessageReadFrom(v15, from))
            {
              goto LABEL_52;
            }

            goto LABEL_47;
          case 5:
            [(_ICLLProtocolMessage *)self clearOneofValuesForType];
            *&self->_has |= 1u;
            self->_type = 4;
            v15 = objc_alloc_init(_ICLLQueryMessage);
            objc_storeStrong(&self->_query, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !_ICLLQueryMessageReadFrom(v15, from))
            {
              goto LABEL_52;
            }

            goto LABEL_47;
        }
      }

      else
      {
        switch(v14)
        {
          case 0:
            v16 = 0;
            while (1)
            {
              LOBYTE(v25) = 0;
              v17 = [from position] + 1;
              if (v17 >= [from position] && (v18 = objc_msgSend(from, "position") + 1, v18 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              if ((v25 & 0x80000000) == 0)
              {
                break;
              }

              if (v16++ > 8)
              {
                goto LABEL_48;
              }
            }

            [from hasError];
            goto LABEL_48;
          case 1:
            v21 = PBReaderReadString();
            traceId = self->_traceId;
            self->_traceId = v21;

            goto LABEL_48;
          case 2:
            [(_ICLLProtocolMessage *)self clearOneofValuesForType];
            *&self->_has |= 1u;
            self->_type = 1;
            v15 = objc_alloc_init(_ICLLCommandMessage);
            objc_storeStrong(&self->_command, v15);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !_ICLLCommandMessageReadFrom(v15, from))
            {
              goto LABEL_52;
            }

LABEL_47:
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (void)clearOneofValuesForType
{
  if (self)
  {
    *(self + 52) &= ~1u;
    *(self + 48) = 0;
    v2 = *(self + 16);
    *(self + 16) = 0;

    v3 = *(self + 8);
    *(self + 8) = 0;

    v4 = *(self + 24);
    *(self + 24) = 0;

    v5 = *(self + 32);
    *(self + 32) = 0;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  traceId = self->_traceId;
  if (traceId)
  {
    [dictionary setObject:traceId forKey:@"traceId"];
  }

  command = self->_command;
  if (command)
  {
    dictionaryRepresentation = [(_ICLLCommandMessage *)command dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"command"];
  }

  action = self->_action;
  if (action)
  {
    dictionaryRepresentation2 = [(_ICLLActionMessage *)action dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"action"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation3 = [(_ICLLErrorMessage *)error dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"error"];
  }

  query = self->_query;
  if (query)
  {
    dictionaryRepresentation4 = [(_ICLLQueryMessage *)query dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"query"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
    [v4 setObject:v14 forKey:@"type"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLProtocolMessage;
  v4 = [(_ICLLProtocolMessage *)&v8 description];
  dictionaryRepresentation = [(_ICLLProtocolMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setCommand:(uint64_t)command
{
  v4 = a2;
  if (command)
  {
    [(_ICLLProtocolMessage *)command clearOneofValuesForType];
    *(command + 52) |= 1u;
    *(command + 48) = 1;
    objc_storeStrong((command + 16), a2);
  }
}

- (void)setQuery:(uint64_t)query
{
  v4 = a2;
  if (query)
  {
    [(_ICLLProtocolMessage *)query clearOneofValuesForType];
    *(query + 52) |= 1u;
    *(query + 48) = 4;
    objc_storeStrong((query + 32), a2);
  }
}

- (void)setTraceId:(uint64_t)id
{
  if (id)
  {
    objc_storeStrong((id + 40), a2);
  }
}

@end