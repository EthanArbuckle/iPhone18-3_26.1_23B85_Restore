@interface CSDMessagingHandle
+ (CSDMessagingHandle)handleWithTUHandle:(id)handle;
- (BOOL)isEqual:(id)equal;
- (TUHandle)tuHandle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingHandle

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = *(&off_10061AEB0 + type);
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKey:@"value"];
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode)
  {
    [v3 setObject:isoCountryCode forKey:@"isoCountryCode"];
  }

  siriDisplayName = self->_siriDisplayName;
  if (siriDisplayName)
  {
    [v3 setObject:siriDisplayName forKey:@"siriDisplayName"];
  }

  return v3;
}

- (TUHandle)tuHandle
{
  value = [(CSDMessagingHandle *)self value];
  if (![value length])
  {
    v5 = 0;
    goto LABEL_16;
  }

  type = [(CSDMessagingHandle *)self type];
  v5 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      isoCountryCode = [(CSDMessagingHandle *)self isoCountryCode];
      v5 = [TUHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:isoCountryCode];

      goto LABEL_15;
    }

    if (type != 3)
    {
      goto LABEL_15;
    }

LABEL_11:
    v6 = [TUHandle normalizedEmailAddressHandleForValue:value];
LABEL_13:
    v5 = v6;
    goto LABEL_15;
  }

  if (!type)
  {
    if (![value destinationIdIsEmailAddress])
    {
LABEL_12:
      v6 = [TUHandle normalizedGenericHandleForValue:value];
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (type == 1)
  {
    goto LABEL_12;
  }

LABEL_15:
  siriDisplayName = [(CSDMessagingHandle *)self siriDisplayName];
  [v5 setSiriDisplayName:siriDisplayName];

LABEL_16:

  return v5;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Generic"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PhoneNumber"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"EmailAddress"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingHandle;
  v3 = [(CSDMessagingHandle *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingHandle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_value)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_siriDisplayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_type;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_value)
  {
    [toCopy setValue:?];
    toCopy = v5;
  }

  if (self->_isoCountryCode)
  {
    [v5 setIsoCountryCode:?];
    toCopy = v5;
  }

  if (self->_siriDisplayName)
  {
    [v5 setSiriDisplayName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_type;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_value copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(NSString *)self->_isoCountryCode copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_siriDisplayName copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  value = self->_value;
  if (value | *(equalCopy + 4) && ![(NSString *)value isEqual:?])
  {
    goto LABEL_13;
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode | *(equalCopy + 1))
  {
    if (![(NSString *)isoCountryCode isEqual:?])
    {
      goto LABEL_13;
    }
  }

  siriDisplayName = self->_siriDisplayName;
  if (siriDisplayName | *(equalCopy + 2))
  {
    v9 = [(NSString *)siriDisplayName isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

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

  v4 = [(NSString *)self->_value hash]^ v3;
  v5 = [(NSString *)self->_isoCountryCode hash];
  return v4 ^ v5 ^ [(NSString *)self->_siriDisplayName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[10])
  {
    self->_type = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(CSDMessagingHandle *)self setValue:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(CSDMessagingHandle *)self setIsoCountryCode:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(CSDMessagingHandle *)self setSiriDisplayName:?];
    fromCopy = v5;
  }
}

+ (CSDMessagingHandle)handleWithTUHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy)
  {
    v4 = objc_alloc_init(CSDMessagingHandle);
    isoCountryCode = [handleCopy isoCountryCode];
    [(CSDMessagingHandle *)v4 setIsoCountryCode:isoCountryCode];

    value = [handleCopy value];
    [(CSDMessagingHandle *)v4 setValue:value];

    siriDisplayName = [handleCopy siriDisplayName];
    [(CSDMessagingHandle *)v4 setSiriDisplayName:siriDisplayName];

    type = [handleCopy type];
    if ((type - 1) <= 2)
    {
      [(CSDMessagingHandle *)v4 setType:type];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end