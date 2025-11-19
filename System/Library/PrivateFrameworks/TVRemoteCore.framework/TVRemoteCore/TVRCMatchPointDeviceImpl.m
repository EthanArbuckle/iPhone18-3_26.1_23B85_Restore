@interface TVRCMatchPointDeviceImpl
+ (id)implWithService:(id)a3;
- (NSString)description;
- (TVRCMatchPointDeviceImpl)initWithService:(id)a3;
- (_TVRCDeviceImplDelegate)delegate;
- (id)allIdentifiers;
- (id)identifier;
- (id)model;
- (id)name;
- (id)supportedButtons;
- (void)connectedToService:(id)a3;
- (void)disconnectedFromService:(id)a3 error:(id)a4;
- (void)service:(id)a3 updatedName:(id)a4;
@end

@implementation TVRCMatchPointDeviceImpl

+ (id)implWithService:(id)a3
{
  v3 = a3;
  v4 = [[TVRCMatchPointDeviceImpl alloc] initWithService:v3];

  return v4;
}

- (TVRCMatchPointDeviceImpl)initWithService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TVRCMatchPointDeviceImpl;
  v6 = [(TVRCMatchPointDeviceImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, a3);
    [(TVRCHMServiceWrapper *)v7->_service setDelegate:v7];
    v7->_priority = 1;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(TVRCMatchPointDeviceImpl *)self name];
  [v3 appendString:v4 withName:@"name"];

  v5 = [v3 build];

  return v5;
}

- (id)name
{
  v2 = [(TVRCHMServiceWrapper *)self->_service name];
  v3 = [v2 copy];

  return v3;
}

- (id)identifier
{
  v2 = [(TVRCHMServiceWrapper *)self->_service identifier];
  v3 = [v2 copy];

  return v3;
}

- (id)allIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(TVRCMatchPointDeviceImpl *)self identifier];

  if (v4)
  {
    v5 = [(TVRCMatchPointDeviceImpl *)self identifier];
    [v3 addObject:v5];
  }

  v6 = [(TVRCMatchPointDeviceImpl *)self name];

  if (v6)
  {
    v7 = [(TVRCMatchPointDeviceImpl *)self name];
    [v3 addObject:v7];
  }

  v8 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v8;
}

- (id)model
{
  v2 = [(TVRCHMServiceWrapper *)self->_service model];
  v3 = [v2 copy];

  return v3;
}

- (id)supportedButtons
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [[TVRCButton alloc] _initWithButtonType:1];
  [v3 addObject:v4];

  v5 = [[TVRCButton alloc] _initWithButtonType:12];
  [v3 addObject:v5];

  v6 = [[TVRCButton alloc] _initWithButtonType:13];
  [v3 addObject:v6];

  v7 = [[TVRCButton alloc] _initWithButtonType:14];
  [v3 addObject:v7];

  v8 = [[TVRCButton alloc] _initWithButtonType:15];
  [v3 addObject:v8];

  v9 = [[TVRCButton alloc] _initWithButtonType:5];
  [v3 addObject:v9];

  v10 = [[TVRCButton alloc] _initWithButtonType:23];
  [v3 addObject:v10];

  v11 = [[TVRCButton alloc] _initWithButtonType:24];
  [v3 addObject:v11];

  if ([(TVRCHMServiceWrapper *)self->_service supportsPowerButton])
  {
    v12 = [[TVRCButton alloc] _initWithButtonType:30];
    [v3 addObject:v12];
  }

  if ([(TVRCHMServiceWrapper *)self->_service supportsInfoKey])
  {
    v13 = [[TVRCButton alloc] _initWithButtonType:25];
    [v3 addObject:v13];
  }

  if ([(TVRCHMServiceWrapper *)self->_service supportsVolumeControl])
  {
    v14 = [[TVRCButton alloc] _initWithButtonType:10];
    [v3 addObject:v14];

    v15 = [[TVRCButton alloc] _initWithButtonType:11];
    [v3 addObject:v15];
  }

  if ([(TVRCHMServiceWrapper *)self->_service supportsMute])
  {
    v16 = [[TVRCButton alloc] _initWithButtonType:29];
    [v3 addObject:v16];
  }

  v17 = [v3 copy];

  return v17;
}

- (void)connectedToService:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didConnectWithDevice:self];
}

- (void)disconnectedFromService:(id)a3 error:(id)a4
{
  v5 = 4 * (a4 != 0);
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained device:self didDisconnectWithReason:v5 error:v6];
}

- (void)service:(id)a3 updatedName:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained device:self didUpdateName:v5];
}

- (_TVRCDeviceImplDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end