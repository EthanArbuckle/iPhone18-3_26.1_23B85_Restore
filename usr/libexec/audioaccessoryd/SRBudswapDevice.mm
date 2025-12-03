@interface SRBudswapDevice
- (void)cacheInfo:(id)info andAddress:(id)address andName:(id)name andVersion:(id)version;
@end

@implementation SRBudswapDevice

- (void)cacheInfo:(id)info andAddress:(id)address andName:(id)name andVersion:(id)version
{
  infoCopy = info;
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  v14 = infoCopy;
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
  self->otherTipiDeviceBTAddress = addressCopy;
  v18 = addressCopy;

  otherTipiDeviceBTName = self->otherTipiDeviceBTName;
  self->otherTipiDeviceBTName = nameCopy;
  v20 = nameCopy;

  otherTipiDeviceVersion = self->otherTipiDeviceVersion;
  self->otherTipiDeviceVersion = versionCopy;
}

@end