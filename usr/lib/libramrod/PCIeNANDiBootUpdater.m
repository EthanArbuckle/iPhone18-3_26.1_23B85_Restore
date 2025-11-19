@interface PCIeNANDiBootUpdater
+ (id)IOMatchingPropertyTable;
- (BOOL)updateBootFirmwareWithError:(id *)a3;
- (PCIeNANDiBootUpdater)initWithIOService:(unsigned int)a3;
- (void)dealloc;
@end

@implementation PCIeNANDiBootUpdater

+ (id)IOMatchingPropertyTable
{
  v3 = @"IOProviderClass";
  v4 = @"AppleEmbeddedNVMeController";
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (PCIeNANDiBootUpdater)initWithIOService:(unsigned int)a3
{
  v3 = *&a3;
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

- (BOOL)updateBootFirmwareWithError:(id *)a3
{
  v5 = [(PCIeNANDiBootUpdater *)self writer];
  [(PCIeNANDBootWriter *)v5 setIsErase:[(MSUBootFirmwareUpdater *)self isErase]];
  [(PCIeNANDBootWriter *)v5 setShouldCommit:[(MSUBootFirmwareUpdater *)self shouldCommit]];
  return [(PCIeNANDBootWriter *)v5 writeFirmware:self error:a3]== 0;
}

@end