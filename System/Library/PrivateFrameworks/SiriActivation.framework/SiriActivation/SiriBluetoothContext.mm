@interface SiriBluetoothContext
- (SiriBluetoothContext)initWithBluetoothDevice:(id)device;
- (SiriBluetoothContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriBluetoothContext

- (SiriBluetoothContext)initWithBluetoothDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = SiriBluetoothContext;
  v5 = [(SiriBluetoothContext *)&v13 init];
  if (v5)
  {
    [deviceCopy device];
    BTDeviceIsTemporaryPaired();
    v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
    isTemporaryDevice = v5->_isTemporaryDevice;
    v5->_isTemporaryDevice = v6;

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(deviceCopy, "ac_isEyesFree")}];
    isEyesFree = v5->_isEyesFree;
    v5->_isEyesFree = v8;

    address = [deviceCopy address];
    address = v5->_address;
    v5->_address = address;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contextOverride = [(SiriContext *)self contextOverride];
  isEyesFree = self->_isEyesFree;
  v6 = [v3 stringWithFormat:@"<SiriBluetoothContext contextOverride:%@ isTemporaryDevice:%@ isEyesFree:%@ address:%@>", contextOverride, self->_isTemporaryDevice, isEyesFree, self->_address];

  return v6;
}

- (SiriBluetoothContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SiriBluetoothContext;
  v5 = [(SiriContext *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isTemporaryDevice"];
    isTemporaryDevice = v5->_isTemporaryDevice;
    v5->_isTemporaryDevice = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isEyesFree"];
    isEyesFree = v5->_isEyesFree;
    v5->_isEyesFree = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1F47C3998;
    }

    objc_storeStrong(&v5->_address, v12);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SiriBluetoothContext;
  coderCopy = coder;
  [(SiriContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_isTemporaryDevice forKey:{@"isTemporaryDevice", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_isEyesFree forKey:@"isEyesFree"];
  [coderCopy encodeObject:self->_address forKey:@"address"];
}

@end