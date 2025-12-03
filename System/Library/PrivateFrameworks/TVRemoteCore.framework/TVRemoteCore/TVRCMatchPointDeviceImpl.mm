@interface TVRCMatchPointDeviceImpl
+ (id)implWithService:(id)service;
- (NSString)description;
- (TVRCMatchPointDeviceImpl)initWithService:(id)service;
- (_TVRCDeviceImplDelegate)delegate;
- (id)allIdentifiers;
- (id)identifier;
- (id)model;
- (id)name;
- (id)supportedButtons;
- (void)connectedToService:(id)service;
- (void)disconnectedFromService:(id)service error:(id)error;
- (void)service:(id)service updatedName:(id)name;
@end

@implementation TVRCMatchPointDeviceImpl

+ (id)implWithService:(id)service
{
  serviceCopy = service;
  v4 = [[TVRCMatchPointDeviceImpl alloc] initWithService:serviceCopy];

  return v4;
}

- (TVRCMatchPointDeviceImpl)initWithService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = TVRCMatchPointDeviceImpl;
  v6 = [(TVRCMatchPointDeviceImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, service);
    [(TVRCHMServiceWrapper *)v7->_service setDelegate:v7];
    v7->_priority = 1;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(TVRCMatchPointDeviceImpl *)self name];
  [v3 appendString:name withName:@"name"];

  build = [v3 build];

  return build;
}

- (id)name
{
  name = [(TVRCHMServiceWrapper *)self->_service name];
  v3 = [name copy];

  return v3;
}

- (id)identifier
{
  identifier = [(TVRCHMServiceWrapper *)self->_service identifier];
  v3 = [identifier copy];

  return v3;
}

- (id)allIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] set];
  identifier = [(TVRCMatchPointDeviceImpl *)self identifier];

  if (identifier)
  {
    identifier2 = [(TVRCMatchPointDeviceImpl *)self identifier];
    [v3 addObject:identifier2];
  }

  name = [(TVRCMatchPointDeviceImpl *)self name];

  if (name)
  {
    name2 = [(TVRCMatchPointDeviceImpl *)self name];
    [v3 addObject:name2];
  }

  v8 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v8;
}

- (id)model
{
  model = [(TVRCHMServiceWrapper *)self->_service model];
  v3 = [model copy];

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

- (void)connectedToService:(id)service
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didConnectWithDevice:self];
}

- (void)disconnectedFromService:(id)service error:(id)error
{
  v5 = 4 * (error != 0);
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained device:self didDisconnectWithReason:v5 error:errorCopy];
}

- (void)service:(id)service updatedName:(id)name
{
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained device:self didUpdateName:nameCopy];
}

- (_TVRCDeviceImplDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end