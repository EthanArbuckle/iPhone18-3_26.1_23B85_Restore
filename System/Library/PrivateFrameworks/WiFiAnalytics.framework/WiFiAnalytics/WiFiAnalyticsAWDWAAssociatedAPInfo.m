@interface WiFiAnalyticsAWDWAAssociatedAPInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWAAssociatedAPInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWAAssociatedAPInfo;
  v4 = [(WiFiAnalyticsAWDWAAssociatedAPInfo *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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
  v4 = a3;
  v5 = v4;
  if (self->_manufacturerElement)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_modelName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_modelNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceNameElement)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceNameData)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_manufacturerElement)
  {
    [v4 setManufacturerElement:?];
    v4 = v5;
  }

  if (self->_modelName)
  {
    [v5 setModelName:?];
    v4 = v5;
  }

  if (self->_modelNumber)
  {
    [v5 setModelNumber:?];
    v4 = v5;
  }

  if (self->_deviceNameElement)
  {
    [v5 setDeviceNameElement:?];
    v4 = v5;
  }

  if (self->_deviceNameData)
  {
    [v5 setDeviceNameData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_manufacturerElement copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_modelName copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_modelNumber copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_deviceNameElement copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_deviceNameData copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((manufacturerElement = self->_manufacturerElement, !(manufacturerElement | v4[3])) || -[NSString isEqual:](manufacturerElement, "isEqual:")) && ((modelName = self->_modelName, !(modelName | v4[4])) || -[NSString isEqual:](modelName, "isEqual:")) && ((modelNumber = self->_modelNumber, !(modelNumber | v4[5])) || -[NSString isEqual:](modelNumber, "isEqual:")) && ((deviceNameElement = self->_deviceNameElement, !(deviceNameElement | v4[2])) || -[NSString isEqual:](deviceNameElement, "isEqual:")))
  {
    deviceNameData = self->_deviceNameData;
    if (deviceNameData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setManufacturerElement:?];
  }

  if (v4[4])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setModelName:?];
  }

  if (v4[5])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setModelNumber:?];
  }

  if (v4[2])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setDeviceNameElement:?];
  }

  if (v4[1])
  {
    [(WiFiAnalyticsAWDWAAssociatedAPInfo *)self setDeviceNameData:?];
  }
}

@end