@interface SiriBluetoothContext
- (SiriBluetoothContext)initWithBluetoothDevice:(id)a3;
- (SiriBluetoothContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriBluetoothContext

- (SiriBluetoothContext)initWithBluetoothDevice:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SiriBluetoothContext;
  v5 = [(SiriBluetoothContext *)&v13 init];
  if (v5)
  {
    [v4 device];
    BTDeviceIsTemporaryPaired();
    v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
    isTemporaryDevice = v5->_isTemporaryDevice;
    v5->_isTemporaryDevice = v6;

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "ac_isEyesFree")}];
    isEyesFree = v5->_isEyesFree;
    v5->_isEyesFree = v8;

    v10 = [v4 address];
    address = v5->_address;
    v5->_address = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  isEyesFree = self->_isEyesFree;
  v6 = [v3 stringWithFormat:@"<SiriBluetoothContext contextOverride:%@ isTemporaryDevice:%@ isEyesFree:%@ address:%@>", v4, self->_isTemporaryDevice, isEyesFree, self->_address];

  return v6;
}

- (SiriBluetoothContext)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SiriBluetoothContext;
  v5 = [(SiriContext *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isTemporaryDevice"];
    isTemporaryDevice = v5->_isTemporaryDevice;
    v5->_isTemporaryDevice = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isEyesFree"];
    isEyesFree = v5->_isEyesFree;
    v5->_isEyesFree = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SiriBluetoothContext;
  v4 = a3;
  [(SiriContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_isTemporaryDevice forKey:{@"isTemporaryDevice", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_isEyesFree forKey:@"isEyesFree"];
  [v4 encodeObject:self->_address forKey:@"address"];
}

@end