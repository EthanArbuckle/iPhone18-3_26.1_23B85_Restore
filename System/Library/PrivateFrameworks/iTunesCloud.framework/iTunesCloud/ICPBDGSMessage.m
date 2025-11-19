@interface ICPBDGSMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation ICPBDGSMessage

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((request = self->_request, !(request | v4[1])) || -[ICPBDGSRequest isEqual:](request, "isEqual:")))
  {
    response = self->_response;
    if (response | v4[2])
    {
      v7 = [(ICPBDGSResponse *)response isEqual:?];
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
  v6 = [(ICPBDGSRequest *)self->_request copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ICPBDGSResponse *)self->_response copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_response)
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

      if ((v13 >> 3) == 101)
      {
        break;
      }

      if ((v13 >> 3) == 100)
      {
        v14 = objc_alloc_init(ICPBDGSRequest);
        objc_storeStrong(&self->_request, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !ICPBDGSRequestReadFrom(v14, a3))
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

    v14 = objc_alloc_init(ICPBDGSResponse);
    objc_storeStrong(&self->_response, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !ICPBDGSResponseReadFrom(v14, a3))
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  request = self->_request;
  if (request)
  {
    v5 = [(ICPBDGSRequest *)request dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request"];
  }

  response = self->_response;
  if (response)
  {
    v7 = [(ICPBDGSResponse *)response dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"response"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSMessage;
  v4 = [(ICPBDGSMessage *)&v8 description];
  v5 = [(ICPBDGSMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end