@interface PXSharedLibraryLegacyDevice
- (NSString)instructions;
- (PXSharedLibraryLegacyDevice)init;
- (PXSharedLibraryLegacyDevice)initWithName:(id)a3 iconData:(id)a4 operatingSystem:(int64_t)a5 upgradeable:(BOOL)a6;
- (id)description;
@end

@implementation PXSharedLibraryLegacyDevice

- (NSString)instructions
{
  operatingSystem = self->_operatingSystem;
  if (operatingSystem > 2)
  {
    v4 = @"PXSharedLibraryAssistant_LegacyDevices_Instructions_tvOS";
    if (operatingSystem != 4)
    {
      v4 = 0;
    }

    if (operatingSystem == 3)
    {
      v3 = @"PXSharedLibraryAssistant_LegacyDevices_Instructions_macOS";
    }

    else
    {
      v3 = v4;
    }
  }

  else if (operatingSystem == 1)
  {
    if (self->_upgradeable)
    {
      v5 = @"PXSharedLibraryAssistant_LegacyDevices_Instructions_iOS";
    }

    else
    {
      v5 = @"PXSharedLibraryAssistant_LegacyDevices_Warning_iOS";
    }

    v3 = v5;
  }

  else if (operatingSystem == 2)
  {
    v3 = @"PXSharedLibraryAssistant_LegacyDevices_Instructions_iPadOS";
  }

  else
  {
    v3 = 0;
    if (!operatingSystem)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevice.m" lineNumber:56 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  v6 = PXLocalizedSharedLibraryString(v3);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = self->_name;
  v6 = [(NSData *)self->_iconData length];
  v7 = PXSharedLibraryLegacyDeviceOperatingSystemDescription(self->_operatingSystem);
  v8 = [v3 stringWithFormat:@"<%@:%p, name:%@, data:%lu, os:%@, upgradeable:%d>", v4, self, name, v6, v7, self->_upgradeable];

  return v8;
}

- (PXSharedLibraryLegacyDevice)initWithName:(id)a3 iconData:(id)a4 operatingSystem:(int64_t)a5 upgradeable:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  if (v11)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevice.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevice.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"operatingSystem != PXSharedLibraryLegacyDeviceOperatingSystemUnknown"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = PXSharedLibraryLegacyDevice;
  v13 = [(PXSharedLibraryLegacyDevice *)&v21 init];
  if (v13)
  {
    v14 = [v11 copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [v12 copy];
    iconData = v13->_iconData;
    v13->_iconData = v16;

    v13->_operatingSystem = a5;
    v13->_upgradeable = a6;
  }

  return v13;
}

- (PXSharedLibraryLegacyDevice)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevice.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXSharedLibraryLegacyDevice init]"}];

  abort();
}

@end