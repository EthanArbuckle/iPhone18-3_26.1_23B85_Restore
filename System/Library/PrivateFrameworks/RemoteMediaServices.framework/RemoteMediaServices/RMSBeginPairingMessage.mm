@interface RMSBeginPairingMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RMSBeginPairingMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSBeginPairingMessage;
  v4 = [(RMSBeginPairingMessage *)&v8 description];
  dictionaryRepresentation = [(RMSBeginPairingMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  appName = self->_appName;
  if (appName)
  {
    [dictionary setObject:appName forKey:@"appName"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v4 setObject:deviceName forKey:@"deviceName"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v4 setObject:deviceModel forKey:@"deviceModel"];
  }

  passcode = self->_passcode;
  if (passcode)
  {
    [v4 setObject:passcode forKey:@"passcode"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_appName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_passcode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_appName)
  {
    [toCopy setAppName:?];
    toCopy = v5;
  }

  if (self->_deviceName)
  {
    [v5 setDeviceName:?];
    toCopy = v5;
  }

  if (self->_deviceModel)
  {
    [v5 setDeviceModel:?];
    toCopy = v5;
  }

  if (self->_passcode)
  {
    [v5 setPasscode:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_deviceName copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_passcode copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((appName = self->_appName, !(appName | equalCopy[1])) || -[NSString isEqual:](appName, "isEqual:")) && ((deviceName = self->_deviceName, !(deviceName | equalCopy[3])) || -[NSString isEqual:](deviceName, "isEqual:")) && ((deviceModel = self->_deviceModel, !(deviceModel | equalCopy[2])) || -[NSString isEqual:](deviceModel, "isEqual:")))
  {
    passcode = self->_passcode;
    if (passcode | equalCopy[4])
    {
      v9 = [(NSString *)passcode isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appName hash];
  v4 = [(NSString *)self->_deviceName hash]^ v3;
  v5 = [(NSString *)self->_deviceModel hash];
  return v4 ^ v5 ^ [(NSString *)self->_passcode hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(RMSBeginPairingMessage *)self setAppName:?];
  }

  if (fromCopy[3])
  {
    [(RMSBeginPairingMessage *)self setDeviceName:?];
  }

  if (fromCopy[2])
  {
    [(RMSBeginPairingMessage *)self setDeviceModel:?];
  }

  if (fromCopy[4])
  {
    [(RMSBeginPairingMessage *)self setPasscode:?];
  }
}

@end