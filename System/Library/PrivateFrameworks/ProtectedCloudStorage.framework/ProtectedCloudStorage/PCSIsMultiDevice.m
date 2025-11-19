@interface PCSIsMultiDevice
@end

@implementation PCSIsMultiDevice

void ___PCSIsMultiDevice_block_invoke(uint64_t a1)
{
  v2 = MKBUserTypeDeviceMode();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
  if ([v3 isEqualToString:*MEMORY[0x1E69B1A20]])
  {
    v4 = 1;
    _PCSIsMultiDevice_deviceModeIsMultiUser = 1;
  }

  else
  {
    v4 = _PCSIsMultiDevice_deviceModeIsMultiUser;
  }

  PCSMigrationLog(*(a1 + 32), @"multiuser device: %d", v4, 0);
}

@end