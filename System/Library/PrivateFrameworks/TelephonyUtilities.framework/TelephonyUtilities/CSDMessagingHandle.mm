@interface CSDMessagingHandle
+ (CSDMessagingHandle)handleWithTUHandle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TUHandle)tuHandle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [(CSDMessagingHandle *)self value];
  if (![v3 length])
  {
    v5 = 0;
    goto LABEL_16;
  }

  v4 = [(CSDMessagingHandle *)self type];
  v5 = 0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v7 = [(CSDMessagingHandle *)self isoCountryCode];
      v5 = [TUHandle normalizedPhoneNumberHandleForValue:v3 isoCountryCode:v7];

      goto LABEL_15;
    }

    if (v4 != 3)
    {
      goto LABEL_15;
    }

LABEL_11:
    v6 = [TUHandle normalizedEmailAddressHandleForValue:v3];
LABEL_13:
    v5 = v6;
    goto LABEL_15;
  }

  if (!v4)
  {
    if (![v3 destinationIdIsEmailAddress])
    {
LABEL_12:
      v6 = [TUHandle normalizedGenericHandleForValue:v3];
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v4 == 1)
  {
    goto LABEL_12;
  }

LABEL_15:
  v8 = [(CSDMessagingHandle *)self siriDisplayName];
  [v5 setSiriDisplayName:v8];

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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Generic"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PhoneNumber"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"EmailAddress"])
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
  v4 = [(CSDMessagingHandle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_value)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_siriDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_type;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_value)
  {
    [v4 setValue:?];
    v4 = v5;
  }

  if (self->_isoCountryCode)
  {
    [v5 setIsoCountryCode:?];
    v4 = v5;
  }

  if (self->_siriDisplayName)
  {
    [v5 setSiriDisplayName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_type;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_value copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(NSString *)self->_isoCountryCode copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_siriDisplayName copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  value = self->_value;
  if (value | *(v4 + 4) && ![(NSString *)value isEqual:?])
  {
    goto LABEL_13;
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode | *(v4 + 1))
  {
    if (![(NSString *)isoCountryCode isEqual:?])
    {
      goto LABEL_13;
    }
  }

  siriDisplayName = self->_siriDisplayName;
  if (siriDisplayName | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[10])
  {
    self->_type = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 4))
  {
    [(CSDMessagingHandle *)self setValue:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(CSDMessagingHandle *)self setIsoCountryCode:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(CSDMessagingHandle *)self setSiriDisplayName:?];
    v4 = v5;
  }
}

+ (CSDMessagingHandle)handleWithTUHandle:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(CSDMessagingHandle);
    v5 = [v3 isoCountryCode];
    [(CSDMessagingHandle *)v4 setIsoCountryCode:v5];

    v6 = [v3 value];
    [(CSDMessagingHandle *)v4 setValue:v6];

    v7 = [v3 siriDisplayName];
    [(CSDMessagingHandle *)v4 setSiriDisplayName:v7];

    v8 = [v3 type];
    if ((v8 - 1) <= 2)
    {
      [(CSDMessagingHandle *)v4 setType:v8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end