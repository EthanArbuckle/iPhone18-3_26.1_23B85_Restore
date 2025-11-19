@interface SKPresentDevice
+ (id)logger;
- (BOOL)isEqual:(id)a3;
- (SKPresentDevice)initWithCoder:(id)a3;
- (SKPresentDevice)initWithHandle:(id)a3 deviceIdentifier:(id)a4 deviceTokenURI:(id)a5 payload:(id)a6 assertionTime:(id)a7 selfHandle:(BOOL)a8 selfDevice:(BOOL)a9;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKPresentDevice

- (SKPresentDevice)initWithHandle:(id)a3 deviceIdentifier:(id)a4 deviceTokenURI:(id)a5 payload:(id)a6 assertionTime:(id)a7 selfHandle:(BOOL)a8 selfDevice:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v24 = a5;
  v23 = a6;
  v18 = a7;
  if (!v16)
  {
    [SKPresentDevice initWithHandle:deviceIdentifier:deviceTokenURI:payload:assertionTime:selfHandle:selfDevice:];
  }

  if (!v17)
  {
    [SKPresentDevice initWithHandle:deviceIdentifier:deviceTokenURI:payload:assertionTime:selfHandle:selfDevice:];
  }

  v19 = v18;
  if (!v18)
  {
    [SKPresentDevice initWithHandle:deviceIdentifier:deviceTokenURI:payload:assertionTime:selfHandle:selfDevice:];
  }

  v25.receiver = self;
  v25.super_class = SKPresentDevice;
  v20 = [(SKPresentDevice *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_handle, a3);
    objc_storeStrong(&v21->_deviceIdentifier, a4);
    objc_storeStrong(&v21->_deviceTokenURI, a5);
    objc_storeStrong(&v21->_assertionTime, a7);
    v21->_isSelfDevice = a9;
    v21->_isSelfHandle = a8;
    objc_storeStrong(&v21->_presencePayload, a6);
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"handle"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v5 encodeObject:self->_deviceTokenURI forKey:@"deviceTokenURI"];
  [v5 encodeObject:self->_presencePayload forKey:@"payload"];
  [v5 encodeObject:self->_assertionTime forKey:@"assertionTime"];
  [v5 encodeBool:self->_isSelfHandle forKey:@"selfHandle"];
  [v5 encodeBool:self->_isSelfDevice forKey:@"selfDevice"];
}

- (SKPresentDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SKPresentDevice;
  v5 = [(SKPresentDevice *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceTokenURI"];
    deviceTokenURI = v5->_deviceTokenURI;
    v5->_deviceTokenURI = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assertionTime"];
    assertionTime = v5->_assertionTime;
    v5->_assertionTime = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    presencePayload = v5->_presencePayload;
    v5->_presencePayload = v14;

    v5->_isSelfHandle = [v4 decodeBoolForKey:@"selfHandle"];
    v5->_isSelfDevice = [v4 decodeBoolForKey:@"selfDevice"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKPresentDevice *)self deviceIdentifier];

    if (v6)
    {
      v7 = [(SKPresentDevice *)self deviceIdentifier];
      v8 = [v5 deviceIdentifier];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(SKPresentDevice *)self presencePayload];
        v10 = [v5 presencePayload];
        v11 = [v9 isEqual:v10];
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
  v3 = [(SKPresentDevice *)self deviceIdentifier];
  v4 = [v3 hash];
  v5 = [(SKPresentDevice *)self presencePayload];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKPresentDevice *)self handle];
  v6 = [(SKPresentDevice *)self deviceIdentifier];
  v7 = [(SKPresentDevice *)self deviceTokenURI];
  v8 = [(SKPresentDevice *)self assertionTime];
  v9 = [(SKPresentDevice *)self isSelfDevice];
  v10 = [(SKPresentDevice *)self isSelfHandle];
  v11 = [(SKPresentDevice *)self presencePayload];
  v12 = [v3 stringWithFormat:@"<%@: %p handle = %@; deviceIdentifier = %@; deviceTokenURI = %@; assertionTime = %@; selfDevice = %d; selfHandle = %d; payload = %@>", v4, self, v5, v6, v7, v8, v9, v10, v11];;

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