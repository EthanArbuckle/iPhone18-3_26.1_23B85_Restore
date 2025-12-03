@interface SKPresentDevice
+ (id)logger;
- (BOOL)isEqual:(id)equal;
- (SKPresentDevice)initWithCoder:(id)coder;
- (SKPresentDevice)initWithHandle:(id)handle deviceIdentifier:(id)identifier deviceTokenURI:(id)i payload:(id)payload assertionTime:(id)time selfHandle:(BOOL)selfHandle selfDevice:(BOOL)device;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKPresentDevice

- (SKPresentDevice)initWithHandle:(id)handle deviceIdentifier:(id)identifier deviceTokenURI:(id)i payload:(id)payload assertionTime:(id)time selfHandle:(BOOL)selfHandle selfDevice:(BOOL)device
{
  handleCopy = handle;
  identifierCopy = identifier;
  iCopy = i;
  payloadCopy = payload;
  timeCopy = time;
  if (!handleCopy)
  {
    [SKPresentDevice initWithHandle:deviceIdentifier:deviceTokenURI:payload:assertionTime:selfHandle:selfDevice:];
  }

  if (!identifierCopy)
  {
    [SKPresentDevice initWithHandle:deviceIdentifier:deviceTokenURI:payload:assertionTime:selfHandle:selfDevice:];
  }

  v19 = timeCopy;
  if (!timeCopy)
  {
    [SKPresentDevice initWithHandle:deviceIdentifier:deviceTokenURI:payload:assertionTime:selfHandle:selfDevice:];
  }

  v25.receiver = self;
  v25.super_class = SKPresentDevice;
  v20 = [(SKPresentDevice *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_handle, handle);
    objc_storeStrong(&v21->_deviceIdentifier, identifier);
    objc_storeStrong(&v21->_deviceTokenURI, i);
    objc_storeStrong(&v21->_assertionTime, time);
    v21->_isSelfDevice = device;
    v21->_isSelfHandle = selfHandle;
    objc_storeStrong(&v21->_presencePayload, payload);
  }

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"handle"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeObject:self->_deviceTokenURI forKey:@"deviceTokenURI"];
  [coderCopy encodeObject:self->_presencePayload forKey:@"payload"];
  [coderCopy encodeObject:self->_assertionTime forKey:@"assertionTime"];
  [coderCopy encodeBool:self->_isSelfHandle forKey:@"selfHandle"];
  [coderCopy encodeBool:self->_isSelfDevice forKey:@"selfDevice"];
}

- (SKPresentDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SKPresentDevice;
  v5 = [(SKPresentDevice *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceTokenURI"];
    deviceTokenURI = v5->_deviceTokenURI;
    v5->_deviceTokenURI = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assertionTime"];
    assertionTime = v5->_assertionTime;
    v5->_assertionTime = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    presencePayload = v5->_presencePayload;
    v5->_presencePayload = v14;

    v5->_isSelfHandle = [coderCopy decodeBoolForKey:@"selfHandle"];
    v5->_isSelfDevice = [coderCopy decodeBoolForKey:@"selfDevice"];
  }

  return v5;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[SKPresentDevice logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    handle = self->_handle;
    *buf = 138412290;
    v8 = handle;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing SKPresentDevice for handle %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = SKPresentDevice;
  [(SKPresentDevice *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceIdentifier = [(SKPresentDevice *)self deviceIdentifier];

    if (deviceIdentifier)
    {
      deviceIdentifier2 = [(SKPresentDevice *)self deviceIdentifier];
      deviceIdentifier3 = [v5 deviceIdentifier];
      if ([deviceIdentifier2 isEqualToString:deviceIdentifier3])
      {
        presencePayload = [(SKPresentDevice *)self presencePayload];
        presencePayload2 = [v5 presencePayload];
        v11 = [presencePayload isEqual:presencePayload2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  deviceIdentifier = [(SKPresentDevice *)self deviceIdentifier];
  v4 = [deviceIdentifier hash];
  presencePayload = [(SKPresentDevice *)self presencePayload];
  v6 = [presencePayload hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  handle = [(SKPresentDevice *)self handle];
  deviceIdentifier = [(SKPresentDevice *)self deviceIdentifier];
  deviceTokenURI = [(SKPresentDevice *)self deviceTokenURI];
  assertionTime = [(SKPresentDevice *)self assertionTime];
  isSelfDevice = [(SKPresentDevice *)self isSelfDevice];
  isSelfHandle = [(SKPresentDevice *)self isSelfHandle];
  presencePayload = [(SKPresentDevice *)self presencePayload];
  v12 = [v3 stringWithFormat:@"<%@: %p handle = %@; deviceIdentifier = %@; deviceTokenURI = %@; assertionTime = %@; selfDevice = %d; selfHandle = %d; payload = %@>", v4, self, handle, deviceIdentifier, deviceTokenURI, assertionTime, isSelfDevice, isSelfHandle, presencePayload];;

  return v12;
}

+ (id)logger
{
  if (logger_onceToken_1 != -1)
  {
    +[SKPresentDevice logger];
  }

  v3 = logger__logger_1;

  return v3;
}

uint64_t __25__SKPresentDevice_logger__block_invoke()
{
  logger__logger_1 = os_log_create("com.apple.StatusKit", "SKPresentDevice");

  return MEMORY[0x2821F96F8]();
}

@end