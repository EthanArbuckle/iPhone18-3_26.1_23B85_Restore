@interface SCDADevice
+ (int)cdaDeviceClassForSCDADeviceClass:(unsigned __int8)a3 andProducType:(unsigned __int8)a4;
- (SCDADevice)initWithDeviceClass:(unsigned __int8)a3 deviceClassName:(id)a4 productType:(unsigned __int8)a5 productTypeName:(id)a6;
- (SCDADevice)initWithSelfID:(id)a3;
- (char)_getDeviceAdjust_DEPRECATED;
- (double)_getTrumpDelay;
- (int)cdaDeviceClass;
- (unsigned)_getDeviceClass;
- (unsigned)_getProductType;
- (void)overrideLocalConfiguration:(unsigned __int8)a3 deviceAdjust:(char)a4 trumpDelay:(double)a5;
@end

@implementation SCDADevice

- (void)overrideLocalConfiguration:(unsigned __int8)a3 deviceAdjust:(char)a4 trumpDelay:(double)a5
{
  self->_trumpDelay = a5;
  if (self->_deviceClass != a3)
  {
    self->_deviceClass = a3;
    deviceClassName = self->_deviceClassName;
    self->_deviceClassName = @"Overridden Device";

    productTypeName = self->_productTypeName;
    self->_productTypeName = @"Overridden Product";
  }
}

- (int)cdaDeviceClass
{
  v3 = [(SCDADevice *)self deviceClass];
  v4 = [(SCDADevice *)self productType];

  return [SCDADevice cdaDeviceClassForSCDADeviceClass:v3 andProducType:v4];
}

- (double)_getTrumpDelay
{
  v2 = [(SCDADevice *)self deviceClass];
  result = 0.75;
  if (v2 <= 9)
  {
    return dbl_1DA78D320[v2];
  }

  return result;
}

- (char)_getDeviceAdjust_DEPRECATED
{
  v3 = [(SCDADevice *)self deviceClass];
  if (v3 <= 6)
  {
    if ((v3 - 4) >= 3 && (v3 - 1) >= 2)
    {
      if (v3)
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

  if (v3 > 8)
  {
    if (v3 == 10)
    {
      v4 = 10;
    }

    else
    {
      v4 = -4;
    }

    if (v3 == 9)
    {
      return -10;
    }
  }

  else
  {
    if (v3 != 7)
    {
      return 0;
    }

    v5 = [(SCDADevice *)self productType];
    if (v5 == 3)
    {
      v4 = -2;
    }

    else
    {
      v4 = 0;
    }

    if (v5 == 5)
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

- (SCDADevice)initWithDeviceClass:(unsigned __int8)a3 deviceClassName:(id)a4 productType:(unsigned __int8)a5 productTypeName:(id)a6
{
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = SCDADevice;
  v13 = [(SCDADevice *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_deviceClassName, a4);
    v14->_deviceClass = a3;
    objc_storeStrong(&v14->_productTypeName, a6);
    v14->_productType = a5;
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

- (SCDADevice)initWithSelfID:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_designatedSelfID, a3);
  }

  return v6;
}

+ (int)cdaDeviceClassForSCDADeviceClass:(unsigned __int8)a3 andProducType:(unsigned __int8)a4
{
  if (a3 == 10)
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  if (a3 == 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  if (a4)
  {
    v7 = 11;
  }

  else
  {
    v7 = 6;
  }

  if (a3 == 7)
  {
    v8 = 7;
  }

  else
  {
    v8 = 2;
  }

  if (a3 != 6)
  {
    v7 = v8;
  }

  if (a3 <= 7)
  {
    v6 = v7;
  }

  if (a3 == 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = 2;
  }

  if (a3 == 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  if (a3 == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  if (a4)
  {
    v12 = 12;
  }

  else
  {
    v12 = 1;
  }

  if (a3 == 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 2;
  }

  if (!a3)
  {
    v13 = 0;
  }

  if (a3 > 2)
  {
    v13 = v11;
  }

  if (a3 <= 5)
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

@end