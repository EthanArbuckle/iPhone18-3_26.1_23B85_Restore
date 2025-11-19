@interface SFDeviceAssetQuery
+ (BOOL)deviceWantsH264;
- (BOOL)isEqual:(id)a3;
- (NSString)effectiveProductType;
- (NSString)stringIdentifier;
- (NSString)variantIdentifier;
- (SFDeviceAssetQuery)initWithAssetType:(id)a3 productType:(id)a4;
- (SFDeviceAssetQuery)initWithBluetoothProductIdentifier:(unint64_t)a3 color:(unint64_t)a4;
- (SFDeviceAssetQuery)initWithProductType:(id)a3 additionalQueryParameters:(id)a4;
- (SFDeviceAssetQuery)initWithTagColor:(unint64_t)a3;
- (id)description;
- (id)loggingProductType;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation SFDeviceAssetQuery

+ (BOOL)deviceWantsH264
{
  if (deviceWantsH264_onceToken != -1)
  {
    +[SFDeviceAssetQuery deviceWantsH264];
  }

  return deviceWantsH264_deviceWantsH264;
}

uint64_t __37__SFDeviceAssetQuery_deviceWantsH264__block_invoke()
{
  result = softLinkVTIsHardwareDecodeSupported(1752589105);
  deviceWantsH264_deviceWantsH264 = result == 0;
  return result;
}

- (SFDeviceAssetQuery)initWithAssetType:(id)a3 productType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SFDeviceAssetQuery;
  v8 = [(SFDeviceAssetQuery *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_version = 1;
    v8->_legacyAsset = 0;
    v8->_h264 = [objc_opt_class() deviceWantsH264];
    v10 = [v6 copy];
    assetType = v9->_assetType;
    v9->_assetType = v10;

    v12 = [v7 copy];
    productType = v9->_productType;
    v9->_productType = v12;

    ASPrintF();
    v9->_ucat = LogCategoryCreateEx();
  }

  return v9;
}

- (SFDeviceAssetQuery)initWithBluetoothProductIdentifier:(unint64_t)a3 color:(unint64_t)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d", @"Device1, ", a3];
  v7 = [(SFDeviceAssetQuery *)self initWithAssetType:@"com.apple.MobileAsset.SharingDeviceAssets" productType:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v9 = [v8 stringValue];
    color = v7->_color;
    v7->_color = v9;
  }

  return v7;
}

- (SFDeviceAssetQuery)initWithTagColor:(unint64_t)a3
{
  v4 = [(SFDeviceAssetQuery *)self initWithAssetType:@"com.apple.MobileAsset.SharingDeviceAssets" productType:@"AirTag1, 1"];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v6 = [v5 stringValue];
    color = v4->_color;
    v4->_color = v6;
  }

  return v4;
}

- (SFDeviceAssetQuery)initWithProductType:(id)a3 additionalQueryParameters:(id)a4
{
  v6 = a4;
  v7 = [(SFDeviceAssetQuery *)self initWithAssetType:@"com.apple.MobileAsset.SharingDeviceAssets" productType:a3];
  if (v7)
  {
    v8 = objc_opt_new();
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __68__SFDeviceAssetQuery_initWithProductType_additionalQueryParameters___block_invoke;
    v17 = &unk_1E788C610;
    v9 = v7;
    v18 = v9;
    v19 = v8;
    v10 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:&v14];
    v11 = [v10 copy];
    additionalQueryParameters = v9->_additionalQueryParameters;
    v9->_additionalQueryParameters = v11;
  }

  return v7;
}

void __68__SFDeviceAssetQuery_initWithProductType_additionalQueryParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v15 = v7;
  if (@"ProductType" == v7)
  {

    goto LABEL_22;
  }

  if ((v7 != 0) == (@"ProductType" == 0))
  {

LABEL_7:
    v9 = v15;
    v10 = v9;
    if (@"H264" == v9)
    {
    }

    else
    {
      if ((v15 != 0) == (@"H264" == 0))
      {

        goto LABEL_14;
      }

      v11 = [(__CFString *)v9 isEqual:@"H264"];

      if (!v11)
      {
LABEL_14:
        v12 = v10;
        v13 = v12;
        if (@"CL" == v12)
        {
        }

        else
        {
          if ((v15 != 0) == (@"CL" == 0))
          {

LABEL_21:
            [*(a1 + 40) setObject:v6 forKeyedSubscript:v13];
            goto LABEL_22;
          }

          v14 = [(__CFString *)v12 isEqual:@"CL"];

          if (!v14)
          {
            goto LABEL_21;
          }
        }

        objc_storeStrong((*(a1 + 32) + 56), a3);
        goto LABEL_22;
      }
    }

    *(*(a1 + 32) + 9) = [v6 BOOLValueSafe];
    goto LABEL_22;
  }

  v8 = [(__CFString *)v7 isEqual:@"ProductType"];

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_22:
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SFDeviceAssetQuery;
  [(SFDeviceAssetQuery *)&v4 dealloc];
}

- (NSString)stringIdentifier
{
  v13 = [(SFDeviceAssetQuery *)self loggingProductType];
  NSAppendPrintF();
  v3 = 0;

  if ([(SFDeviceAssetQuery *)self legacyAsset])
  {
    NSAppendPrintF();
    v4 = v3;

    v3 = v4;
  }

  if ([(SFDeviceAssetQuery *)self h264])
  {
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  v6 = [(SFDeviceAssetQuery *)self color];

  if (v6)
  {
    v14 = [(SFDeviceAssetQuery *)self color];
    NSAppendPrintF();
    v7 = v3;

    v3 = v7;
  }

  v8 = [(SFDeviceAssetQuery *)self additionalQueryParameters];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(SFDeviceAssetQuery *)self additionalQueryParameters];
    v15 = SFCompactStringFromCollection(v10);
    NSAppendPrintF();
    v11 = v3;

    v3 = v11;
  }

  return v3;
}

- (NSString)variantIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SFDeviceAssetQuery *)self color];
  v4 = [v2 stringWithFormat:@"CL_%@", v3];

  return v4;
}

- (NSString)effectiveProductType
{
  v3 = [(SFDeviceAssetQuery *)self mappedProductType];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SFDeviceAssetQuery *)self productType];
  }

  v6 = v5;

  if (![(SFDeviceAssetQuery *)self legacyAsset])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, @"-v2"];

    v6 = v7;
  }

  return v6;
}

- (id)loggingProductType
{
  v7 = [(SFDeviceAssetQuery *)self productType];
  NSAppendPrintF();
  v3 = 0;

  v4 = [(SFDeviceAssetQuery *)self mappedProductType];

  if (v4)
  {
    v8 = [(SFDeviceAssetQuery *)self mappedProductType];
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  return v3;
}

- (id)description
{
  v6 = objc_opt_class();
  NSAppendPrintF();
  v8 = 0;
  v7 = [(SFDeviceAssetQuery *)self stringIdentifier:v6];
  NSAppendPrintF();
  v3 = v8;

  NSAppendPrintF();
  v4 = v3;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFDeviceAssetQuery *)self productType];
      v7 = [(SFDeviceAssetQuery *)v5 productType];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v17 = v9;
          v15 = v8;
          goto LABEL_26;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          v12 = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      v13 = [(SFDeviceAssetQuery *)self color];
      v14 = [(SFDeviceAssetQuery *)v5 color];
      v15 = v13;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          v12 = 0;
          v23 = v16;
          v21 = v15;
          goto LABEL_25;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
          v12 = 0;
LABEL_26:

          goto LABEL_27;
        }
      }

      v19 = [(SFDeviceAssetQuery *)self additionalQueryParameters];
      v20 = [(SFDeviceAssetQuery *)v5 additionalQueryParameters];
      v21 = v19;
      v22 = v20;
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        if ((v21 != 0) == (v22 == 0))
        {

LABEL_24:
          v12 = 0;
          goto LABEL_25;
        }

        v24 = [v21 isEqual:v22];

        if (!v24)
        {
          goto LABEL_24;
        }
      }

      v25 = [(SFDeviceAssetQuery *)self version];
      v12 = v25 == [(SFDeviceAssetQuery *)v5 version];
LABEL_25:

      goto LABEL_26;
    }

    v12 = 0;
  }

LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(SFDeviceAssetQuery *)self productType];
  v4 = [v3 hash];
  v5 = [(SFDeviceAssetQuery *)self color];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFDeviceAssetQuery *)self additionalQueryParameters];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end