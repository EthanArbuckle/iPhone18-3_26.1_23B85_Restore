@interface ICPBDGSMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation ICPBDGSMessage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((request = self->_request, !(request | equalCopy[1])) || -[ICPBDGSRequest isEqual:](request, "isEqual:")))
  {
    response = self->_response;
    if (response | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ICPBDGSRequest *)self->_request copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ICPBDGSResponse *)self->_response copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_response)
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
        if (!PBReaderPlaceMark() || !ICPBDGSRequestReadFrom(v14, from))
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

    v14 = objc_alloc_init(ICPBDGSResponse);
    objc_storeStrong(&self->_response, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !ICPBDGSResponseReadFrom(v14, from))
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  request = self->_request;
  if (request)
  {
    dictionaryRepresentation = [(ICPBDGSRequest *)request dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request"];
  }

  response = self->_response;
  if (response)
  {
    dictionaryRepresentation2 = [(ICPBDGSResponse *)response dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"response"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSMessage;
  v4 = [(ICPBDGSMessage *)&v8 description];
  dictionaryRepresentation = [(ICPBDGSMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end