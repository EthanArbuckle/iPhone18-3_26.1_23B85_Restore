@interface MBSBackupAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MBSBackupAttributes

- (void)dealloc
{
  [(MBSBackupAttributes *)self setDeviceClass:0];
  [(MBSBackupAttributes *)self setProductType:0];
  [(MBSBackupAttributes *)self setSerialNumber:0];
  [(MBSBackupAttributes *)self setDeviceColor:0];
  [(MBSBackupAttributes *)self setHardwareModel:0];
  [(MBSBackupAttributes *)self setMarketingName:0];
  [(MBSBackupAttributes *)self setDeviceEnclosureColor:0];
  v3.receiver = self;
  v3.super_class = MBSBackupAttributes;
  [(MBSBackupAttributes *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MBSBackupAttributes;
  return [NSString stringWithFormat:@"%@ %@", [(MBSBackupAttributes *)&v3 description], [(MBSBackupAttributes *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  deviceClass = self->_deviceClass;
  if (deviceClass)
  {
    [v3 setObject:deviceClass forKey:@"deviceClass"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"productType"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKey:@"serialNumber"];
  }

  deviceColor = self->_deviceColor;
  if (deviceColor)
  {
    [v4 setObject:deviceColor forKey:@"deviceColor"];
  }

  hardwareModel = self->_hardwareModel;
  if (hardwareModel)
  {
    [v4 setObject:hardwareModel forKey:@"hardwareModel"];
  }

  marketingName = self->_marketingName;
  if (marketingName)
  {
    [v4 setObject:marketingName forKey:@"marketingName"];
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor)
  {
    [v4 setObject:deviceEnclosureColor forKey:@"deviceEnclosureColor"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_deviceClass)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceColor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hardwareModel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_marketingName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceEnclosureColor)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_deviceClass)
  {
    [a3 setDeviceClass:?];
  }

  if (self->_productType)
  {
    [a3 setProductType:?];
  }

  if (self->_serialNumber)
  {
    [a3 setSerialNumber:?];
  }

  if (self->_deviceColor)
  {
    [a3 setDeviceColor:?];
  }

  if (self->_hardwareModel)
  {
    [a3 setHardwareModel:?];
  }

  if (self->_marketingName)
  {
    [a3 setMarketingName:?];
  }

  if (self->_deviceEnclosureColor)
  {

    [a3 setDeviceEnclosureColor:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[1] = [(NSString *)self->_deviceClass copyWithZone:a3];
  v5[6] = [(NSString *)self->_productType copyWithZone:a3];

  v5[7] = [(NSString *)self->_serialNumber copyWithZone:a3];
  v5[2] = [(NSString *)self->_deviceColor copyWithZone:a3];

  v5[4] = [(NSString *)self->_hardwareModel copyWithZone:a3];
  v5[5] = [(NSString *)self->_marketingName copyWithZone:a3];

  v5[3] = [(NSString *)self->_deviceEnclosureColor copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    deviceClass = self->_deviceClass;
    if (!(deviceClass | *(a3 + 1)) || (v5 = [(NSString *)deviceClass isEqual:?]) != 0)
    {
      productType = self->_productType;
      if (!(productType | *(a3 + 6)) || (v5 = [(NSString *)productType isEqual:?]) != 0)
      {
        serialNumber = self->_serialNumber;
        if (!(serialNumber | *(a3 + 7)) || (v5 = [(NSString *)serialNumber isEqual:?]) != 0)
        {
          deviceColor = self->_deviceColor;
          if (!(deviceColor | *(a3 + 2)) || (v5 = [(NSString *)deviceColor isEqual:?]) != 0)
          {
            hardwareModel = self->_hardwareModel;
            if (!(hardwareModel | *(a3 + 4)) || (v5 = [(NSString *)hardwareModel isEqual:?]) != 0)
            {
              marketingName = self->_marketingName;
              if (!(marketingName | *(a3 + 5)) || (v5 = [(NSString *)marketingName isEqual:?]) != 0)
              {
                deviceEnclosureColor = self->_deviceEnclosureColor;
                if (deviceEnclosureColor | *(a3 + 3))
                {

                  LOBYTE(v5) = [(NSString *)deviceEnclosureColor isEqual:?];
                }

                else
                {
                  LOBYTE(v5) = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceClass hash];
  v4 = [(NSString *)self->_productType hash]^ v3;
  v5 = [(NSString *)self->_serialNumber hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_deviceColor hash];
  v7 = [(NSString *)self->_hardwareModel hash];
  v8 = v7 ^ [(NSString *)self->_marketingName hash];
  return v6 ^ v8 ^ [(NSString *)self->_deviceEnclosureColor hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(MBSBackupAttributes *)self setDeviceClass:?];
  }

  if (*(a3 + 6))
  {
    [(MBSBackupAttributes *)self setProductType:?];
  }

  if (*(a3 + 7))
  {
    [(MBSBackupAttributes *)self setSerialNumber:?];
  }

  if (*(a3 + 2))
  {
    [(MBSBackupAttributes *)self setDeviceColor:?];
  }

  if (*(a3 + 4))
  {
    [(MBSBackupAttributes *)self setHardwareModel:?];
  }

  if (*(a3 + 5))
  {
    [(MBSBackupAttributes *)self setMarketingName:?];
  }

  if (*(a3 + 3))
  {

    [(MBSBackupAttributes *)self setDeviceEnclosureColor:?];
  }
}

@end