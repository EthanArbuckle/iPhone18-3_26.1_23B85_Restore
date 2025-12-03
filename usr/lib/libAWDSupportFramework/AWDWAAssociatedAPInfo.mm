@interface AWDWAAssociatedAPInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  manufacturerElement = self->_manufacturerElement;
  if (manufacturerElement)
  {
    [dictionary setObject:manufacturerElement forKey:@"ManufacturerElement"];
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

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (self->_manufacturerElement)
  {
    [to setManufacturerElement:?];
  }

  if (self->_modelName)
  {
    [to setModelName:?];
  }

  if (self->_modelNumber)
  {
    [to setModelNumber:?];
  }

  if (self->_deviceNameElement)
  {
    [to setDeviceNameElement:?];
  }

  if (self->_deviceNameData)
  {

    [to setDeviceNameData:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[3] = [(NSString *)self->_manufacturerElement copyWithZone:zone];
  v5[4] = [(NSString *)self->_modelName copyWithZone:zone];

  v5[5] = [(NSString *)self->_modelNumber copyWithZone:zone];
  v5[2] = [(NSString *)self->_deviceNameElement copyWithZone:zone];

  v5[1] = [(NSString *)self->_deviceNameData copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    manufacturerElement = self->_manufacturerElement;
    if (!(manufacturerElement | *(equal + 3)) || (v5 = [(NSString *)manufacturerElement isEqual:?]) != 0)
    {
      modelName = self->_modelName;
      if (!(modelName | *(equal + 4)) || (v5 = [(NSString *)modelName isEqual:?]) != 0)
      {
        modelNumber = self->_modelNumber;
        if (!(modelNumber | *(equal + 5)) || (v5 = [(NSString *)modelNumber isEqual:?]) != 0)
        {
          deviceNameElement = self->_deviceNameElement;
          if (!(deviceNameElement | *(equal + 2)) || (v5 = [(NSString *)deviceNameElement isEqual:?]) != 0)
          {
            deviceNameData = self->_deviceNameData;
            if (deviceNameData | *(equal + 1))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 3))
  {
    [(AWDWAAssociatedAPInfo *)self setManufacturerElement:?];
  }

  if (*(from + 4))
  {
    [(AWDWAAssociatedAPInfo *)self setModelName:?];
  }

  if (*(from + 5))
  {
    [(AWDWAAssociatedAPInfo *)self setModelNumber:?];
  }

  if (*(from + 2))
  {
    [(AWDWAAssociatedAPInfo *)self setDeviceNameElement:?];
  }

  if (*(from + 1))
  {

    [(AWDWAAssociatedAPInfo *)self setDeviceNameData:?];
  }
}

@end