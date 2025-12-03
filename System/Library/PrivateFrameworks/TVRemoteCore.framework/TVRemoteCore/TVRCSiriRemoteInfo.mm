@interface TVRCSiriRemoteInfo
- (BOOL)isEqualToRemoteInfo:(id)info;
- (CBOOBKeyInfo)cbKeyInfo;
- (NSUUID)uuid;
- (TVRCSiriRemoteInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCSiriRemoteInfo

- (TVRCSiriRemoteInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = TVRCSiriRemoteInfo;
  v5 = [(TVRCSiriRemoteInfo *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tvName"];
    tvName = v5->_tvName;
    v5->_tvName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tvModel"];
    tvModel = v5->_tvModel;
    v5->_tvModel = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v14;

    v5->_supportsFindMy = [coderCopy decodeBoolForKey:@"supportsFindMy"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"btAddressData"];
    btAddressData = v5->_btAddressData;
    v5->_btAddressData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"irkData"];
    irkData = v5->_irkData;
    v5->_irkData = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v20;

    v5->_connected = [coderCopy decodeBoolForKey:@"connected"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_tvName forKey:@"tvName"];
  [coderCopy encodeObject:self->_tvModel forKey:@"tvModel"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeBool:self->_supportsFindMy forKey:@"supportsFindMy"];
  [coderCopy encodeObject:self->_btAddressData forKey:@"btAddressData"];
  [coderCopy encodeObject:self->_irkData forKey:@"irkData"];
  [coderCopy encodeObject:self->_firmwareVersion forKey:@"firmwareVersion"];
  [coderCopy encodeBool:self->_connected forKey:@"connected"];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(TVRCSiriRemoteInfo *)self name];
  [v3 appendString:name withName:@"name" skipIfEmpty:1];

  tvModel = [(TVRCSiriRemoteInfo *)self tvModel];
  [v3 appendString:tvModel withName:@"tvModel" skipIfEmpty:1];

  tvName = [(TVRCSiriRemoteInfo *)self tvName];
  [v3 appendString:tvName withName:@"tvName" skipIfEmpty:1];

  identifier = [(TVRCSiriRemoteInfo *)self identifier];
  [v3 appendString:identifier withName:@"identifier" skipIfEmpty:1];

  serialNumber = [(TVRCSiriRemoteInfo *)self serialNumber];
  [v3 appendString:serialNumber withName:@"serialNumber" skipIfEmpty:1];

  firmwareVersion = [(TVRCSiriRemoteInfo *)self firmwareVersion];
  [v3 appendString:firmwareVersion withName:@"firmwareVersion" skipIfEmpty:0];

  v10 = [v3 appendBool:-[TVRCSiriRemoteInfo supportsFindMy](self withName:{"supportsFindMy"), @"supportsFindMy"}];
  v11 = [v3 appendBool:-[TVRCSiriRemoteInfo connected](self withName:{"connected"), @"connected"}];
  btAddressData = [(TVRCSiriRemoteInfo *)self btAddressData];
  v13 = CUPrintNSDataAddress();
  [v3 appendString:v13 withName:@"btAddressData" skipIfEmpty:1];

  irkData = [(TVRCSiriRemoteInfo *)self irkData];
  v15 = CUPrintNSDataHex();
  [v3 appendString:v15 withName:@"irkData" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

- (BOOL)isEqualToRemoteInfo:(id)info
{
  infoCopy = info;
  identifier = [(TVRCSiriRemoteInfo *)self identifier];
  identifier2 = [infoCopy identifier];

  LOBYTE(infoCopy) = [identifier isEqualToString:identifier2];
  return infoCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TVRCSiriRemoteInfo);
  v5 = [(NSString *)self->_name copy];
  [(TVRCSiriRemoteInfo *)v4 setName:v5];

  v6 = [(NSString *)self->_tvModel copy];
  [(TVRCSiriRemoteInfo *)v4 setTvModel:v6];

  v7 = [(NSString *)self->_tvName copy];
  [(TVRCSiriRemoteInfo *)v4 setTvName:v7];

  v8 = [(NSString *)self->_identifier copy];
  [(TVRCSiriRemoteInfo *)v4 setIdentifier:v8];

  v9 = [(NSString *)self->_serialNumber copy];
  [(TVRCSiriRemoteInfo *)v4 setSerialNumber:v9];

  [(TVRCSiriRemoteInfo *)v4 setSupportsFindMy:self->_supportsFindMy];
  v10 = [(NSData *)self->_btAddressData copy];
  [(TVRCSiriRemoteInfo *)v4 setBtAddressData:v10];

  v11 = [(NSData *)self->_irkData copy];
  [(TVRCSiriRemoteInfo *)v4 setIrkData:v11];

  v12 = [(NSString *)self->_firmwareVersion copy];
  [(TVRCSiriRemoteInfo *)v4 setFirmwareVersion:v12];

  [(TVRCSiriRemoteInfo *)v4 setConnected:self->_connected];
  return v4;
}

- (NSUUID)uuid
{
  identifier = [(TVRCSiriRemoteInfo *)self identifier];
  v3 = [identifier dataUsingEncoding:4];

  v4 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));
  v5 = [v4 subdataWithRange:{0, 16}];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v5, "bytes")}];

  return v6;
}

- (CBOOBKeyInfo)cbKeyInfo
{
  cbKeyInfo = self->_cbKeyInfo;
  if (!cbKeyInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBE058]);
    v5 = self->_cbKeyInfo;
    self->_cbKeyInfo = v4;

    btAddressData = [(TVRCSiriRemoteInfo *)self btAddressData];
    [(CBOOBKeyInfo *)self->_cbKeyInfo setBtAddressData:btAddressData];

    irkData = [(TVRCSiriRemoteInfo *)self irkData];
    [(CBOOBKeyInfo *)self->_cbKeyInfo setIrkData:irkData];

    cbKeyInfo = self->_cbKeyInfo;
  }

  return cbKeyInfo;
}

@end