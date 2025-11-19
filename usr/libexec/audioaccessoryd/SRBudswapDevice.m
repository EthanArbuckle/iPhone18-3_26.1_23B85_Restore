@interface SRBudswapDevice
- (void)cacheInfo:(id)a3 andAddress:(id)a4 andName:(id)a5 andVersion:(id)a6;
@end

@implementation SRBudswapDevice

- (void)cacheInfo:(id)a3 andAddress:(id)a4 andName:(id)a5 andVersion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  cachedBudswapAddress = self->cachedBudswapAddress;
  if (v14 | cachedBudswapAddress && ![(NSString *)cachedBudswapAddress isEqualToString:v14]&& dword_1002F70D8 <= 30 && (dword_1002F70D8 != -1 || _LogCategory_Initialize()))
  {
    otherTipiDeviceBTAddress = self->otherTipiDeviceBTAddress;
    v22 = self->cachedBudswapAddress;
    LogPrintF();
  }

  v16 = self->cachedBudswapAddress;
  self->cachedBudswapAddress = v14;
  v24 = v14;

  v17 = self->otherTipiDeviceBTAddress;
  self->otherTipiDeviceBTAddress = v11;
  v18 = v11;

  otherTipiDeviceBTName = self->otherTipiDeviceBTName;
  self->otherTipiDeviceBTName = v12;
  v20 = v12;

  otherTipiDeviceVersion = self->otherTipiDeviceVersion;
  self->otherTipiDeviceVersion = v13;
}

@end