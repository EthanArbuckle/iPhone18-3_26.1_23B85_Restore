@interface SCROIOHIDElement
- (BOOL)isBluetoothLowEnergy;
- (SCROIOHIDElement)initWithIOObject:(unsigned int)object;
- (id)bluetoothAddress;
- (id)copyWithZone:(_NSZone *)zone;
- (int)transport;
- (unsigned)productId;
- (unsigned)vendorId;
- (void)dealloc;
@end

@implementation SCROIOHIDElement

- (SCROIOHIDElement)initWithIOObject:(unsigned int)object
{
  v9.receiver = self;
  v9.super_class = SCROIOHIDElement;
  v4 = [(SCROIOElement *)&v9 initWithIOObject:?];
  v5 = v4;
  if (object && v4 && (!IOObjectConformsTo(object, "IOHIDDevice") || (v6 = IOHIDDeviceCreate(*MEMORY[0x277CBECE8], object), (v5->_hidDevice = v6) == 0)))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)dealloc
{
  hidDevice = self->_hidDevice;
  if (hidDevice)
  {
    CFRelease(hidDevice);
  }

  v4.receiver = self;
  v4.super_class = SCROIOHIDElement;
  [(SCROIOElement *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SCROIOHIDElement;
  v4 = [(SCROIOElement *)&v7 copyWithZone:zone];
  if (v4)
  {
    hidDevice = self->_hidDevice;
    if (hidDevice)
    {
      v4[2] = CFRetain(hidDevice);
    }
  }

  return v4;
}

- (unsigned)productId
{
  Property = IOHIDDeviceGetProperty(self->_hidDevice, @"ProductID");

  return [Property intValue];
}

- (unsigned)vendorId
{
  Property = IOHIDDeviceGetProperty(self->_hidDevice, @"VendorID");

  return [Property intValue];
}

- (int)transport
{
  v2 = IOHIDDeviceGetProperty(self->_hidDevice, @"Transport");
  if ([@"USB" isEqualToString:v2])
  {
    v3 = 4;
  }

  else if ([@"Bluetooth" isEqualToString:v2])
  {
    v3 = 8;
  }

  else
  {
    v3 = 8;
    if (([@"BluetoothLowEnergy" isEqualToString:v2] & 1) == 0)
    {
      if ([@"Bluetooth Low Energy" isEqualToString:v2])
      {
        v3 = 8;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (BOOL)isBluetoothLowEnergy
{
  v2 = IOHIDDeviceGetProperty(self->_hidDevice, @"Transport");
  if ([@"BluetoothLowEnergy" isEqualToString:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = [@"Bluetooth Low Energy" isEqualToString:v2];
  }

  return v3;
}

- (id)bluetoothAddress
{
  v3 = IOHIDDeviceGetProperty(self->_hidDevice, @"SerialNumber");
  v4 = IOHIDDeviceGetProperty(self->_hidDevice, @"PhysicalDeviceUniqueID");
  isBluetoothLowEnergy = [(SCROIOHIDElement *)self isBluetoothLowEnergy];
  if (v3)
  {
    v6 = isBluetoothLowEnergy;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

@end