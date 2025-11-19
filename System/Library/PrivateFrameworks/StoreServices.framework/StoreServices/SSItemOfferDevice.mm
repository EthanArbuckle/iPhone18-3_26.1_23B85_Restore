@interface SSItemOfferDevice
- (SSItemOfferDevice)initWithDeviceIdentifier:(int64_t)a3;
- (SSItemOfferDevice)initWithOfferDeviceDicitionary:(id)a3;
- (void)dealloc;
@end

@implementation SSItemOfferDevice

- (SSItemOfferDevice)initWithDeviceIdentifier:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SSItemOfferDevice;
  result = [(SSItemOfferDevice *)&v5 init];
  if (result)
  {
    result->_deviceIdentifier = a3;
  }

  return result;
}

- (SSItemOfferDevice)initWithOfferDeviceDicitionary:(id)a3
{
  if (!a3)
  {
    [(SSItemOfferDevice *)a2 initWithOfferDeviceDicitionary:?];
  }

  v21.receiver = self;
  v21.super_class = SSItemOfferDevice;
  v5 = [(SSItemOfferDevice *)&v21 init];
  if (v5)
  {
    v6 = [a3 objectForKey:@"device-type-id"];
    if (objc_opt_respondsToSelector())
    {
      v5->_deviceIdentifier = [v6 intValue];
    }

    v7 = [a3 objectForKey:@"minimum-product-version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_minimumProductVersion = v7;
    }

    v8 = [a3 objectForKey:@"minimum-device-description"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
    }

    v9 = [a3 objectForKey:@"minimum-device-title"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
    }

    v10 = [a3 objectForKey:@"minimum-device-description-url"];
    objc_opt_class();
    v11 = 0;
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    }

    v12 = [a3 objectForKey:@"minimum-device-description-url-title"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v9 | v8)
    {
      if ((isKindOfClass & 1) == 0)
      {
        v12 = 0;
      }

      v5->_incompatibleDeviceError = [[SSItemOfferDeviceError alloc] _initWithMessage:v8 title:v9 URLTitle:v12 URL:v11];
    }

    v14 = [a3 objectForKey:@"minimum-product-version-description"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
    }

    v15 = [a3 objectForKey:@"minimum-product-version-title"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
    }

    v16 = [a3 objectForKey:@"minimum-product-version-description-url"];
    objc_opt_class();
    v17 = 0;
    if (objc_opt_isKindOfClass())
    {
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
    }

    v18 = [a3 objectForKey:@"minimum-product-version-description-url-title"];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();
    if (v15 | v14)
    {
      if ((v19 & 1) == 0)
      {
        v18 = 0;
      }

      v5->_incompatibleSystemError = [[SSItemOfferDeviceError alloc] _initWithMessage:v14 title:v15 URLTitle:v18 URL:v17];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemOfferDevice;
  [(SSItemOfferDevice *)&v3 dealloc];
}

- (uint64_t)initWithOfferDeviceDicitionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SSItemOfferDevice.m" lineNumber:42 description:@"Must provide device dictionary"];
}

@end