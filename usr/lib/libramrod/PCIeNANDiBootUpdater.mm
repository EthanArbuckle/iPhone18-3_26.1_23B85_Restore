@interface PCIeNANDiBootUpdater
+ (id)IOMatchingPropertyTable;
- (BOOL)updateBootFirmwareWithError:(id *)error;
- (PCIeNANDiBootUpdater)initWithIOService:(unsigned int)service;
- (void)dealloc;
@end

@implementation PCIeNANDiBootUpdater

+ (id)IOMatchingPropertyTable
{
  v3 = @"IOProviderClass";
  v4 = @"AppleEmbeddedNVMeController";
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (PCIeNANDiBootUpdater)initWithIOService:(unsigned int)service
{
  v3 = *&service;
  v7.receiver = self;
  v7.super_class = PCIeNANDiBootUpdater;
  v4 = [(MSUBootFirmwareUpdater *)&v7 initWithIOService:?];
  if (v4)
  {
    v5 = [[PCIeNANDBootWriter alloc] initWithServiceNamed:@"EmbeddedDeviceTypePcieBootFirmware" parent:v3];
    v4->_writer = v5;
    if (v5)
    {
      -[PCIeNANDBootWriter setLayout:](v4->_writer, "setLayout:", [objc_opt_class() snapHasCombinedImages]);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCIeNANDiBootUpdater;
  [(MSUBootFirmwareUpdater *)&v3 dealloc];
}

- (BOOL)updateBootFirmwareWithError:(id *)error
{
  writer = [(PCIeNANDiBootUpdater *)self writer];
  [(PCIeNANDBootWriter *)writer setIsErase:[(MSUBootFirmwareUpdater *)self isErase]];
  [(PCIeNANDBootWriter *)writer setShouldCommit:[(MSUBootFirmwareUpdater *)self shouldCommit]];
  return [(PCIeNANDBootWriter *)writer writeFirmware:self error:error]== 0;
}

@end