@interface CSDMessagingSenderIdentity
- (BOOL)isEqual:(id)equal;
- (CSDMessagingSenderIdentity)initWithTUSenderIdentity:(id)identity;
- (NSUUID)UUID;
- (NSUUID)accountUUID;
- (TUSenderIdentity)tuSenderIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setAccountUUID:(id)d;
- (void)setUUID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingSenderIdentity

- (CSDMessagingSenderIdentity)initWithTUSenderIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(CSDMessagingSenderIdentity *)self init];
  if (v5)
  {
    uUID = [identityCopy UUID];
    [(CSDMessagingSenderIdentity *)v5 setUUID:uUID];

    accountUUID = [identityCopy accountUUID];
    [(CSDMessagingSenderIdentity *)v5 setAccountUUID:accountUUID];

    handle = [identityCopy handle];
    v9 = [CSDMessagingHandle handleWithTUHandle:handle];
    [(CSDMessagingSenderIdentity *)v5 setHandle:v9];

    iSOCountryCode = [identityCopy ISOCountryCode];
    [(CSDMessagingSenderIdentity *)v5 setIsoCountryCode:iSOCountryCode];

    localizedName = [identityCopy localizedName];
    [(CSDMessagingSenderIdentity *)v5 setLocalizedName:localizedName];

    localizedShortName = [identityCopy localizedShortName];
    [(CSDMessagingSenderIdentity *)v5 setLocalizedShortName:localizedShortName];

    localizedServiceName = [identityCopy localizedServiceName];
    [(CSDMessagingSenderIdentity *)v5 setLocalizedServiceName:localizedServiceName];
  }

  return v5;
}

- (NSUUID)UUID
{
  protoUUID = [(CSDMessagingSenderIdentity *)self protoUUID];
  if (protoUUID)
  {
    v4 = [NSUUID alloc];
    protoUUID2 = [(CSDMessagingSenderIdentity *)self protoUUID];
    v6 = [v4 initWithUUIDString:protoUUID2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUUID:(id)d
{
  uUIDString = [d UUIDString];
  [(CSDMessagingSenderIdentity *)self setProtoUUID:uUIDString];
}

- (NSUUID)accountUUID
{
  accountUUIDString = [(CSDMessagingSenderIdentity *)self accountUUIDString];
  if (accountUUIDString)
  {
    v4 = [NSUUID alloc];
    accountUUIDString2 = [(CSDMessagingSenderIdentity *)self accountUUIDString];
    v6 = [v4 initWithUUIDString:accountUUIDString2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAccountUUID:(id)d
{
  uUIDString = [d UUIDString];
  [(CSDMessagingSenderIdentity *)self setAccountUUIDString:uUIDString];
}

- (TUSenderIdentity)tuSenderIdentity
{
  uUID = [(CSDMessagingSenderIdentity *)self UUID];
  accountUUID = [(CSDMessagingSenderIdentity *)self accountUUID];
  isoCountryCode = [(CSDMessagingSenderIdentity *)self isoCountryCode];
  v6 = isoCountryCode;
  if (isoCountryCode)
  {
    v7 = isoCountryCode;
  }

  else
  {
    v7 = &stru_100631E68;
  }

  v8 = v7;

  localizedName = [(CSDMessagingSenderIdentity *)self localizedName];
  localizedShortName = [(CSDMessagingSenderIdentity *)self localizedShortName];
  v11 = localizedShortName;
  if (localizedShortName)
  {
    v12 = localizedShortName;
  }

  else
  {
    v12 = &stru_100631E68;
  }

  v13 = v12;

  localizedServiceName = [(CSDMessagingSenderIdentity *)self localizedServiceName];
  v15 = localizedServiceName;
  if (localizedServiceName)
  {
    v16 = localizedServiceName;
  }

  else
  {
    v16 = &stru_100631E68;
  }

  v17 = v16;

  handle = [(CSDMessagingSenderIdentity *)self handle];
  tuHandle = [handle tuHandle];

  v20 = 0;
  if (uUID && accountUUID && localizedName)
  {
    v20 = [[TUSenderIdentity alloc] initWithUUID:uUID accountUUID:accountUUID ISOCountryCode:v8 localizedName:localizedName localizedShortName:v13 localizedServiceName:v17 handle:tuHandle];
  }

  return v20;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingSenderIdentity;
  v3 = [(CSDMessagingSenderIdentity *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingSenderIdentity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  protoUUID = self->_protoUUID;
  if (protoUUID)
  {
    [v3 setObject:protoUUID forKey:@"protoUUID"];
  }

  handle = self->_handle;
  if (handle)
  {
    dictionaryRepresentation = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"handle"];
  }

  localizedName = self->_localizedName;
  if (localizedName)
  {
    [v4 setObject:localizedName forKey:@"localizedName"];
  }

  localizedShortName = self->_localizedShortName;
  if (localizedShortName)
  {
    [v4 setObject:localizedShortName forKey:@"localizedShortName"];
  }

  accountUUIDString = self->_accountUUIDString;
  if (accountUUIDString)
  {
    [v4 setObject:accountUUIDString forKey:@"accountUUIDString"];
  }

  localizedServiceName = self->_localizedServiceName;
  if (localizedServiceName)
  {
    [v4 setObject:localizedServiceName forKey:@"localizedServiceName"];
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode)
  {
    [v4 setObject:isoCountryCode forKey:@"isoCountryCode"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_protoUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_localizedName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_localizedShortName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_accountUUIDString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_localizedServiceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_protoUUID)
  {
    [toCopy setProtoUUID:?];
    toCopy = v5;
  }

  if (self->_handle)
  {
    [v5 setHandle:?];
    toCopy = v5;
  }

  if (self->_localizedName)
  {
    [v5 setLocalizedName:?];
    toCopy = v5;
  }

  if (self->_localizedShortName)
  {
    [v5 setLocalizedShortName:?];
    toCopy = v5;
  }

  if (self->_accountUUIDString)
  {
    [v5 setAccountUUIDString:?];
    toCopy = v5;
  }

  if (self->_localizedServiceName)
  {
    [v5 setLocalizedServiceName:?];
    toCopy = v5;
  }

  if (self->_isoCountryCode)
  {
    [v5 setIsoCountryCode:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_protoUUID copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(CSDMessagingHandle *)self->_handle copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_localizedName copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_localizedShortName copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSString *)self->_accountUUIDString copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSString *)self->_localizedServiceName copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_isoCountryCode copyWithZone:zone];
  v19 = v5[3];
  v5[3] = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((protoUUID = self->_protoUUID, !(protoUUID | equalCopy[7])) || -[NSString isEqual:](protoUUID, "isEqual:")) && ((handle = self->_handle, !(handle | equalCopy[2])) || -[CSDMessagingHandle isEqual:](handle, "isEqual:")) && ((localizedName = self->_localizedName, !(localizedName | equalCopy[4])) || -[NSString isEqual:](localizedName, "isEqual:")) && ((localizedShortName = self->_localizedShortName, !(localizedShortName | equalCopy[6])) || -[NSString isEqual:](localizedShortName, "isEqual:")) && ((accountUUIDString = self->_accountUUIDString, !(accountUUIDString | equalCopy[1])) || -[NSString isEqual:](accountUUIDString, "isEqual:")) && ((localizedServiceName = self->_localizedServiceName, !(localizedServiceName | equalCopy[5])) || -[NSString isEqual:](localizedServiceName, "isEqual:")))
  {
    isoCountryCode = self->_isoCountryCode;
    if (isoCountryCode | equalCopy[3])
    {
      v12 = [(NSString *)isoCountryCode isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_protoUUID hash];
  v4 = [(CSDMessagingHandle *)self->_handle hash]^ v3;
  v5 = [(NSString *)self->_localizedName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_localizedShortName hash];
  v7 = [(NSString *)self->_accountUUIDString hash];
  v8 = v7 ^ [(NSString *)self->_localizedServiceName hash];
  return v6 ^ v8 ^ [(NSString *)self->_isoCountryCode hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    [(CSDMessagingSenderIdentity *)self setProtoUUID:?];
  }

  handle = self->_handle;
  v5 = fromCopy[2];
  if (handle)
  {
    if (v5)
    {
      [(CSDMessagingHandle *)handle mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(CSDMessagingSenderIdentity *)self setHandle:?];
  }

  if (fromCopy[4])
  {
    [(CSDMessagingSenderIdentity *)self setLocalizedName:?];
  }

  if (fromCopy[6])
  {
    [(CSDMessagingSenderIdentity *)self setLocalizedShortName:?];
  }

  if (fromCopy[1])
  {
    [(CSDMessagingSenderIdentity *)self setAccountUUIDString:?];
  }

  if (fromCopy[5])
  {
    [(CSDMessagingSenderIdentity *)self setLocalizedServiceName:?];
  }

  if (fromCopy[3])
  {
    [(CSDMessagingSenderIdentity *)self setIsoCountryCode:?];
  }
}

@end