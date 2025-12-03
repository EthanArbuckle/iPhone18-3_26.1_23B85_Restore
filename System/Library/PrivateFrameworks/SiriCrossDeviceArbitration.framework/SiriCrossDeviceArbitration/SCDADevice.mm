@interface SCDADevice
+ (int)cdaDeviceClassForSCDADeviceClass:(unsigned __int8)class andProducType:(unsigned __int8)type;
- (SCDADevice)initWithDeviceClass:(unsigned __int8)class deviceClassName:(id)name productType:(unsigned __int8)type productTypeName:(id)typeName;
- (SCDADevice)initWithSelfID:(id)d;
- (char)_getDeviceAdjust_DEPRECATED;
- (double)_getTrumpDelay;
- (int)cdaDeviceClass;
- (unsigned)_getDeviceClass;
- (unsigned)_getProductType;
- (void)overrideLocalConfiguration:(unsigned __int8)configuration deviceAdjust:(char)adjust trumpDelay:(double)delay;
@end

@implementation SCDADevice

- (void)overrideLocalConfiguration:(unsigned __int8)configuration deviceAdjust:(char)adjust trumpDelay:(double)delay
{
  self->_trumpDelay = delay;
  if (self->_deviceClass != configuration)
  {
    self->_deviceClass = configuration;
    deviceClassName = self->_deviceClassName;
    self->_deviceClassName = @"Overridden Device";

    productTypeName = self->_productTypeName;
    self->_productTypeName = @"Overridden Product";
  }
}

- (int)cdaDeviceClass
{
  deviceClass = [(SCDADevice *)self deviceClass];
  productType = [(SCDADevice *)self productType];

  return [SCDADevice cdaDeviceClassForSCDADeviceClass:deviceClass andProducType:productType];
}

- (double)_getTrumpDelay
{
  deviceClass = [(SCDADevice *)self deviceClass];
  result = 0.75;
  if (deviceClass <= 9)
  {
    return dbl_1DA78D320[deviceClass];
  }

  return result;
}

- (char)_getDeviceAdjust_DEPRECATED
{
  deviceClass = [(SCDADevice *)self deviceClass];
  if (deviceClass <= 6)
  {
    if ((deviceClass - 4) >= 3 && (deviceClass - 1) >= 2)
    {
      if (deviceClass)
      {
        return -4;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (deviceClass > 8)
  {
    if (deviceClass == 10)
    {
      v4 = 10;
    }

    else
    {
      v4 = -4;
    }

    if (deviceClass == 9)
    {
      return -10;
    }
  }

  else
  {
    if (deviceClass != 7)
    {
      return 0;
    }

    productType = [(SCDADevice *)self productType];
    if (productType == 3)
    {
      v4 = -2;
    }

    else
    {
      v4 = 0;
    }

    if (productType == 5)
    {
      return -1;
    }
  }

  return v4;
}

- (unsigned)_getProductType
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 2288107368)
  {
    if (v3 <= 2823174121)
    {
      if (v3 != 2288107369 && v3 != 2445473385)
      {
        if (v3 == 2702125347)
        {
          return 2;
        }

        goto LABEL_19;
      }

      return 0;
    }

    if (v3 == 2823174122)
    {
      return 0;
    }

    if (v3 == 3348380076)
    {
      return 3;
    }

    v4 = 4240173202;
LABEL_18:
    if (v3 == v4)
    {
      return v2;
    }

    goto LABEL_19;
  }

  if (v3 > 1302273957)
  {
    if (v3 == 1302273958)
    {
      return 0;
    }

    if (v3 == 1540760353)
    {
      return 5;
    }

    v4 = 1608945770;
    goto LABEL_18;
  }

  switch(v3)
  {
    case 262180327:
      return 0;
    case 376943508:
      return v2;
    case 761631964:
      return 0;
  }

LABEL_19:
  if (((MGGetSInt32Answer() - 7) & 0xFFFFFFFB) != 0)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

- (unsigned)_getDeviceClass
{
  v2 = MGGetSInt32Answer() - 1;
  if (v2 > 0xA)
  {
    return 0;
  }

  else
  {
    return byte_1DA78D310[v2];
  }
}

- (SCDADevice)initWithDeviceClass:(unsigned __int8)class deviceClassName:(id)name productType:(unsigned __int8)type productTypeName:(id)typeName
{
  nameCopy = name;
  typeNameCopy = typeName;
  v19.receiver = self;
  v19.super_class = SCDADevice;
  v13 = [(SCDADevice *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_deviceClassName, name);
    v14->_deviceClass = class;
    objc_storeStrong(&v14->_productTypeName, typeName);
    v14->_productType = type;
    v14->_deviceAdjust_DEPRECATED = [(SCDADevice *)v14 _getDeviceAdjust_DEPRECATED];
    [(SCDADevice *)v14 _getInEarDelay];
    v14->_inEarDelay = v15;
    [(SCDADevice *)v14 _getInEarInterval];
    v14->_inEarInterval = v16;
    [(SCDADevice *)v14 _getTrumpDelay];
    v14->_trumpDelay = v17;
  }

  return v14;
}

- (SCDADevice)initWithSelfID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = SCDADevice;
  v6 = [(SCDADevice *)&v15 init];
  if (v6)
  {
    v7 = MGCopyAnswer();
    deviceClassName = v6->_deviceClassName;
    v6->_deviceClassName = v7;

    v6->_deviceClass = [(SCDADevice *)v6 _getDeviceClass];
    v9 = MGCopyAnswer();
    productTypeName = v6->_productTypeName;
    v6->_productTypeName = v9;

    v6->_productType = [(SCDADevice *)v6 _getProductType];
    v6->_deviceAdjust_DEPRECATED = [(SCDADevice *)v6 _getDeviceAdjust_DEPRECATED];
    [(SCDADevice *)v6 _getInEarDelay];
    v6->_inEarDelay = v11;
    [(SCDADevice *)v6 _getInEarInterval];
    v6->_inEarInterval = v12;
    [(SCDADevice *)v6 _getTrumpDelay];
    v6->_trumpDelay = v13;
    objc_storeStrong(&v6->_designatedSelfID, d);
  }

  return v6;
}

+ (int)cdaDeviceClassForSCDADeviceClass:(unsigned __int8)class andProducType:(unsigned __int8)type
{
  if (class == 10)
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  if (class == 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  if (class == 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  if (type)
  {
    v7 = 11;
  }

  else
  {
    v7 = 6;
  }

  if (class == 7)
  {
    v8 = 7;
  }

  else
  {
    v8 = 2;
  }

  if (class != 6)
  {
    v7 = v8;
  }

  if (class <= 7)
  {
    v6 = v7;
  }

  if (class == 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = 2;
  }

  if (class == 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  if (class == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  if (type)
  {
    v12 = 12;
  }

  else
  {
    v12 = 1;
  }

  if (class == 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 2;
  }

  if (!class)
  {
    v13 = 0;
  }

  if (class > 2)
  {
    v13 = v11;
  }

  if (class <= 5)
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

@end