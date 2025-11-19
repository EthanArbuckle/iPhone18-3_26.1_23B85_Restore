@interface AWDWAAssociatedAPInfo
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

@implementation AWDWAAssociatedAPInfo

- (void)dealloc
{
  [(AWDWAAssociatedAPInfo *)self setManufacturerElement:0];
  [(AWDWAAssociatedAPInfo *)self setModelName:0];
  [(AWDWAAssociatedAPInfo *)self setModelNumber:0];
  [(AWDWAAssociatedAPInfo *)self setDeviceNameElement:0];
  [(AWDWAAssociatedAPInfo *)self setDeviceNameData:0];
  v3.receiver = self;
  v3.super_class = AWDWAAssociatedAPInfo;
  [(AWDWAAssociatedAPInfo *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWAAssociatedAPInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWAAssociatedAPInfo description](&v3, sel_description), -[AWDWAAssociatedAPInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  manufacturerElement = self->_manufacturerElement;
  if (manufacturerElement)
  {
    [v3 setObject:manufacturerElement forKey:@"ManufacturerElement"];
  }

  modelName = self->_modelName;
  if (modelName)
  {
    [v4 setObject:modelName forKey:@"ModelName"];
  }

  modelNumber = self->_modelNumber;
  if (modelNumber)
  {
    [v4 setObject:modelNumber forKey:@"ModelNumber"];
  }

  deviceNameElement = self->_deviceNameElement;
  if (deviceNameElement)
  {
    [v4 setObject:deviceNameElement forKey:@"DeviceNameElement"];
  }

  deviceNameData = self->_deviceNameData;
  if (deviceNameData)
  {
    [v4 setObject:deviceNameData forKey:@"DeviceNameData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_manufacturerElement)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceNameElement)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceNameData)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_manufacturerElement)
  {
    [a3 setManufacturerElement:?];
  }

  if (self->_modelName)
  {
    [a3 setModelName:?];
  }

  if (self->_modelNumber)
  {
    [a3 setModelNumber:?];
  }

  if (self->_deviceNameElement)
  {
    [a3 setDeviceNameElement:?];
  }

  if (self->_deviceNameData)
  {

    [a3 setDeviceNameData:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[3] = [(NSString *)self->_manufacturerElement copyWithZone:a3];
  v5[4] = [(NSString *)self->_modelName copyWithZone:a3];

  v5[5] = [(NSString *)self->_modelNumber copyWithZone:a3];
  v5[2] = [(NSString *)self->_deviceNameElement copyWithZone:a3];

  v5[1] = [(NSString *)self->_deviceNameData copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    manufacturerElement = self->_manufacturerElement;
    if (!(manufacturerElement | *(a3 + 3)) || (v5 = [(NSString *)manufacturerElement isEqual:?]) != 0)
    {
      modelName = self->_modelName;
      if (!(modelName | *(a3 + 4)) || (v5 = [(NSString *)modelName isEqual:?]) != 0)
      {
        modelNumber = self->_modelNumber;
        if (!(modelNumber | *(a3 + 5)) || (v5 = [(NSString *)modelNumber isEqual:?]) != 0)
        {
          deviceNameElement = self->_deviceNameElement;
          if (!(deviceNameElement | *(a3 + 2)) || (v5 = [(NSString *)deviceNameElement isEqual:?]) != 0)
          {
            deviceNameData = self->_deviceNameData;
            if (deviceNameData | *(a3 + 1))
            {

              LOBYTE(v5) = [(NSString *)deviceNameData isEqual:?];
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

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_manufacturerElement hash];
  v4 = [(NSString *)self->_modelName hash]^ v3;
  v5 = [(NSString *)self->_modelNumber hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_deviceNameElement hash];
  return v6 ^ [(NSString *)self->_deviceNameData hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 3))
  {
    [(AWDWAAssociatedAPInfo *)self setManufacturerElement:?];
  }

  if (*(a3 + 4))
  {
    [(AWDWAAssociatedAPInfo *)self setModelName:?];
  }

  if (*(a3 + 5))
  {
    [(AWDWAAssociatedAPInfo *)self setModelNumber:?];
  }

  if (*(a3 + 2))
  {
    [(AWDWAAssociatedAPInfo *)self setDeviceNameElement:?];
  }

  if (*(a3 + 1))
  {

    [(AWDWAAssociatedAPInfo *)self setDeviceNameData:?];
  }
}

@end