@interface _ICLLProtocolMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForType;
- (void)setCommand:(uint64_t)a1;
- (void)setQuery:(uint64_t)a1;
- (void)setTraceId:(uint64_t)a1;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_type != *(v4 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  traceId = self->_traceId;
  if (traceId | *(v4 + 5) && ![(NSString *)traceId isEqual:?])
  {
    goto LABEL_17;
  }

  command = self->_command;
  if (command | *(v4 + 2))
  {
    if (![(_ICLLCommandMessage *)command isEqual:?])
    {
      goto LABEL_17;
    }
  }

  action = self->_action;
  if (action | *(v4 + 1))
  {
    if (![(_ICLLActionMessage *)action isEqual:?])
    {
      goto LABEL_17;
    }
  }

  error = self->_error;
  if (error | *(v4 + 3))
  {
    if (![(_ICLLErrorMessage *)error isEqual:?])
    {
      goto LABEL_17;
    }
  }

  query = self->_query;
  if (query | *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_type;
    *(v5 + 52) |= 1u;
  }

  v7 = [(NSString *)self->_traceId copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(_ICLLCommandMessage *)self->_command copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(_ICLLActionMessage *)self->_action copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(_ICLLErrorMessage *)self->_error copyWithZone:a3];
  v14 = v6[3];
  v6[3] = v13;

  v15 = [(_ICLLQueryMessage *)self->_query copyWithZone:a3];
  v16 = v6[4];
  v6[4] = v15;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_traceId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_command)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_action)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_query)
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
    do
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
        LOBYTE(v25) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
            if (!PBReaderPlaceMark() || !_ICLLActionMessageReadFrom(v15, a3))
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
            if (!PBReaderPlaceMark() || !_ICLLErrorMessageReadFrom(v15, a3))
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
            if (!PBReaderPlaceMark() || !_ICLLQueryMessageReadFrom(v15, a3))
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
              v17 = [a3 position] + 1;
              if (v17 >= [a3 position] && (v18 = objc_msgSend(a3, "position") + 1, v18 <= objc_msgSend(a3, "length")))
              {
                v19 = [a3 data];
                [v19 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            [a3 hasError];
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
            if (!PBReaderPlaceMark() || !_ICLLCommandMessageReadFrom(v15, a3))
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
      v23 = [a3 position];
    }

    while (v23 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (void)clearOneofValuesForType
{
  if (a1)
  {
    *(a1 + 52) &= ~1u;
    *(a1 + 48) = 0;
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;

    v3 = *(a1 + 8);
    *(a1 + 8) = 0;

    v4 = *(a1 + 24);
    *(a1 + 24) = 0;

    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  traceId = self->_traceId;
  if (traceId)
  {
    [v3 setObject:traceId forKey:@"traceId"];
  }

  command = self->_command;
  if (command)
  {
    v7 = [(_ICLLCommandMessage *)command dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"command"];
  }

  action = self->_action;
  if (action)
  {
    v9 = [(_ICLLActionMessage *)action dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"action"];
  }

  error = self->_error;
  if (error)
  {
    v11 = [(_ICLLErrorMessage *)error dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"error"];
  }

  query = self->_query;
  if (query)
  {
    v13 = [(_ICLLQueryMessage *)query dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"query"];
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
  v5 = [(_ICLLProtocolMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setCommand:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    [(_ICLLProtocolMessage *)a1 clearOneofValuesForType];
    *(a1 + 52) |= 1u;
    *(a1 + 48) = 1;
    objc_storeStrong((a1 + 16), a2);
  }
}

- (void)setQuery:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    [(_ICLLProtocolMessage *)a1 clearOneofValuesForType];
    *(a1 + 52) |= 1u;
    *(a1 + 48) = 4;
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setTraceId:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

@end