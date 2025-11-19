@interface RMSBeginPairingMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSBeginPairingMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSBeginPairingMessage;
  v4 = [(RMSBeginPairingMessage *)&v8 description];
  v5 = [(RMSBeginPairingMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  appName = self->_appName;
  if (appName)
  {
    [v3 setObject:appName forKey:@"appName"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_passcode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appName)
  {
    [v4 setAppName:?];
    v4 = v5;
  }

  if (self->_deviceName)
  {
    [v5 setDeviceName:?];
    v4 = v5;
  }

  if (self->_deviceModel)
  {
    [v5 setDeviceModel:?];
    v4 = v5;
  }

  if (self->_passcode)
  {
    [v5 setPasscode:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_deviceName copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_deviceModel copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_passcode copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((appName = self->_appName, !(appName | v4[1])) || -[NSString isEqual:](appName, "isEqual:")) && ((deviceName = self->_deviceName, !(deviceName | v4[3])) || -[NSString isEqual:](deviceName, "isEqual:")) && ((deviceModel = self->_deviceModel, !(deviceModel | v4[2])) || -[NSString isEqual:](deviceModel, "isEqual:")))
  {
    passcode = self->_passcode;
    if (passcode | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(RMSBeginPairingMessage *)self setAppName:?];
  }

  if (v4[3])
  {
    [(RMSBeginPairingMessage *)self setDeviceName:?];
  }

  if (v4[2])
  {
    [(RMSBeginPairingMessage *)self setDeviceModel:?];
  }

  if (v4[4])
  {
    [(RMSBeginPairingMessage *)self setPasscode:?];
  }
}

@end