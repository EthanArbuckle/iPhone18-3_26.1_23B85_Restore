@interface CSDMessagingSenderIdentity
- (BOOL)isEqual:(id)a3;
- (CSDMessagingSenderIdentity)initWithTUSenderIdentity:(id)a3;
- (NSUUID)UUID;
- (NSUUID)accountUUID;
- (TUSenderIdentity)tuSenderIdentity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setAccountUUID:(id)a3;
- (void)setUUID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingSenderIdentity

- (CSDMessagingSenderIdentity)initWithTUSenderIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingSenderIdentity *)self init];
  if (v5)
  {
    v6 = [v4 UUID];
    [(CSDMessagingSenderIdentity *)v5 setUUID:v6];

    v7 = [v4 accountUUID];
    [(CSDMessagingSenderIdentity *)v5 setAccountUUID:v7];

    v8 = [v4 handle];
    v9 = [CSDMessagingHandle handleWithTUHandle:v8];
    [(CSDMessagingSenderIdentity *)v5 setHandle:v9];

    v10 = [v4 ISOCountryCode];
    [(CSDMessagingSenderIdentity *)v5 setIsoCountryCode:v10];

    v11 = [v4 localizedName];
    [(CSDMessagingSenderIdentity *)v5 setLocalizedName:v11];

    v12 = [v4 localizedShortName];
    [(CSDMessagingSenderIdentity *)v5 setLocalizedShortName:v12];

    v13 = [v4 localizedServiceName];
    [(CSDMessagingSenderIdentity *)v5 setLocalizedServiceName:v13];
  }

  return v5;
}

- (NSUUID)UUID
{
  v3 = [(CSDMessagingSenderIdentity *)self protoUUID];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CSDMessagingSenderIdentity *)self protoUUID];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CSDMessagingSenderIdentity *)self setProtoUUID:v4];
}

- (NSUUID)accountUUID
{
  v3 = [(CSDMessagingSenderIdentity *)self accountUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CSDMessagingSenderIdentity *)self accountUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAccountUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CSDMessagingSenderIdentity *)self setAccountUUIDString:v4];
}

- (TUSenderIdentity)tuSenderIdentity
{
  v3 = [(CSDMessagingSenderIdentity *)self UUID];
  v4 = [(CSDMessagingSenderIdentity *)self accountUUID];
  v5 = [(CSDMessagingSenderIdentity *)self isoCountryCode];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_100631E68;
  }

  v8 = v7;

  v9 = [(CSDMessagingSenderIdentity *)self localizedName];
  v10 = [(CSDMessagingSenderIdentity *)self localizedShortName];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_100631E68;
  }

  v13 = v12;

  v14 = [(CSDMessagingSenderIdentity *)self localizedServiceName];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_100631E68;
  }

  v17 = v16;

  v18 = [(CSDMessagingSenderIdentity *)self handle];
  v19 = [v18 tuHandle];

  v20 = 0;
  if (v3 && v4 && v9)
  {
    v20 = [[TUSenderIdentity alloc] initWithUUID:v3 accountUUID:v4 ISOCountryCode:v8 localizedName:v9 localizedShortName:v13 localizedServiceName:v17 handle:v19];
  }

  return v20;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingSenderIdentity;
  v3 = [(CSDMessagingSenderIdentity *)&v7 description];
  v4 = [(CSDMessagingSenderIdentity *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v7 = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"handle"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_protoUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_localizedName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_localizedShortName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_accountUUIDString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_localizedServiceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_protoUUID)
  {
    [v4 setProtoUUID:?];
    v4 = v5;
  }

  if (self->_handle)
  {
    [v5 setHandle:?];
    v4 = v5;
  }

  if (self->_localizedName)
  {
    [v5 setLocalizedName:?];
    v4 = v5;
  }

  if (self->_localizedShortName)
  {
    [v5 setLocalizedShortName:?];
    v4 = v5;
  }

  if (self->_accountUUIDString)
  {
    [v5 setAccountUUIDString:?];
    v4 = v5;
  }

  if (self->_localizedServiceName)
  {
    [v5 setLocalizedServiceName:?];
    v4 = v5;
  }

  if (self->_isoCountryCode)
  {
    [v5 setIsoCountryCode:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_protoUUID copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(CSDMessagingHandle *)self->_handle copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_localizedName copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_localizedShortName copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSString *)self->_accountUUIDString copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSString *)self->_localizedServiceName copyWithZone:a3];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_isoCountryCode copyWithZone:a3];
  v19 = v5[3];
  v5[3] = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((protoUUID = self->_protoUUID, !(protoUUID | v4[7])) || -[NSString isEqual:](protoUUID, "isEqual:")) && ((handle = self->_handle, !(handle | v4[2])) || -[CSDMessagingHandle isEqual:](handle, "isEqual:")) && ((localizedName = self->_localizedName, !(localizedName | v4[4])) || -[NSString isEqual:](localizedName, "isEqual:")) && ((localizedShortName = self->_localizedShortName, !(localizedShortName | v4[6])) || -[NSString isEqual:](localizedShortName, "isEqual:")) && ((accountUUIDString = self->_accountUUIDString, !(accountUUIDString | v4[1])) || -[NSString isEqual:](accountUUIDString, "isEqual:")) && ((localizedServiceName = self->_localizedServiceName, !(localizedServiceName | v4[5])) || -[NSString isEqual:](localizedServiceName, "isEqual:")))
  {
    isoCountryCode = self->_isoCountryCode;
    if (isoCountryCode | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[7])
  {
    [(CSDMessagingSenderIdentity *)self setProtoUUID:?];
  }

  handle = self->_handle;
  v5 = v6[2];
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

  if (v6[4])
  {
    [(CSDMessagingSenderIdentity *)self setLocalizedName:?];
  }

  if (v6[6])
  {
    [(CSDMessagingSenderIdentity *)self setLocalizedShortName:?];
  }

  if (v6[1])
  {
    [(CSDMessagingSenderIdentity *)self setAccountUUIDString:?];
  }

  if (v6[5])
  {
    [(CSDMessagingSenderIdentity *)self setLocalizedServiceName:?];
  }

  if (v6[3])
  {
    [(CSDMessagingSenderIdentity *)self setIsoCountryCode:?];
  }
}

@end