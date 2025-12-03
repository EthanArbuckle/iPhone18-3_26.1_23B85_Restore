@interface WiFiAnalyticsAWDWAAssociatedAPInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWAAssociatedAPInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWAAssociatedAPInfo;
  v4 = [(WiFiAnalyticsAWDWAAssociatedAPInfo *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
  toCopy = to;
  v5 = toCopy;
  if (self->_manufacturerElement)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_modelName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_modelNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceNameElement)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceNameData)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_manufacturerElement)
  {
    [toCopy setManufacturerElement:?];
    toCopy = v5;
  }

  if (self->_modelName)
  {
    [v5 setModelName:?];
    toCopy = v5;
  }

  if (self->_modelNumber)
  {
    [v5 setModelNumber:?];
    toCopy = v5;
  }

  if (self->_deviceNameElement)
  {
    [v5 setDeviceNameElement:?];
    toCopy = v5;
  }

  if (self->_deviceNameData)
  {
    [v5 setDeviceNameData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_manufacturerElement copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_modelName copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_modelNumber copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_deviceNameElement copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_deviceNameData copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((manufacturerElement = self->_manufacturerElement, !(manufacturerElement | equalCopy[3])) || -[NSString isEqual:](manufacturerElement, "isEqual:")) && ((modelName = self->_modelName, !(modelName | equalCopy[4])) || -[NSString isEqual:](modelName, "isEqual:")) && ((modelNumber = self->_modelNumber, !(modelNumber | equalCopy[5])) || -[NSString isEqual:](modelNumber, "isEqual:")) && ((deviceNameElement = self->_deviceNameElement, !(deviceNameElement | equalCopy[2])) || -[NSString isEqual:](deviceNameElement, "isEqual:")))
  {
    deviceNameData = self->_deviceNameData;
    if (deviceNameData | equalCopy[1])
    {
      v10 = [(NSString *)deviceNameData isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
  fromCopy = from;
  if (fromCopy[3])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setManufacturerElement:?];
  }

  if (fromCopy[4])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setModelName:?];
  }

  if (fromCopy[5])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setModelNumber:?];
  }

  if (fromCopy[2])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setDeviceNameElement:?];
  }

  if (fromCopy[1])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setDeviceNameData:?];
  }
}

@end