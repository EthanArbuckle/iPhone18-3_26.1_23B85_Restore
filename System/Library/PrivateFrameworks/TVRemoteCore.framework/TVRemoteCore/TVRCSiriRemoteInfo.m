@interface TVRCSiriRemoteInfo
- (BOOL)isEqualToRemoteInfo:(id)a3;
- (CBOOBKeyInfo)cbKeyInfo;
- (NSUUID)uuid;
- (TVRCSiriRemoteInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCSiriRemoteInfo

- (TVRCSiriRemoteInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TVRCSiriRemoteInfo;
  v5 = [(TVRCSiriRemoteInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tvName"];
    tvName = v5->_tvName;
    v5->_tvName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tvModel"];
    tvModel = v5->_tvModel;
    v5->_tvModel = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v14;

    v5->_supportsFindMy = [v4 decodeBoolForKey:@"supportsFindMy"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"btAddressData"];
    btAddressData = v5->_btAddressData;
    v5->_btAddressData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"irkData"];
    irkData = v5->_irkData;
    v5->_irkData = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v20;

    v5->_connected = [v4 decodeBoolForKey:@"connected"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_tvName forKey:@"tvName"];
  [v5 encodeObject:self->_tvModel forKey:@"tvModel"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v5 encodeBool:self->_supportsFindMy forKey:@"supportsFindMy"];
  [v5 encodeObject:self->_btAddressData forKey:@"btAddressData"];
  [v5 encodeObject:self->_irkData forKey:@"irkData"];
  [v5 encodeObject:self->_firmwareVersion forKey:@"firmwareVersion"];
  [v5 encodeBool:self->_connected forKey:@"connected"];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(TVRCSiriRemoteInfo *)self name];
  [v3 appendString:v4 withName:@"name" skipIfEmpty:1];

  v5 = [(TVRCSiriRemoteInfo *)self tvModel];
  [v3 appendString:v5 withName:@"tvModel" skipIfEmpty:1];

  v6 = [(TVRCSiriRemoteInfo *)self tvName];
  [v3 appendString:v6 withName:@"tvName" skipIfEmpty:1];

  v7 = [(TVRCSiriRemoteInfo *)self identifier];
  [v3 appendString:v7 withName:@"identifier" skipIfEmpty:1];

  v8 = [(TVRCSiriRemoteInfo *)self serialNumber];
  [v3 appendString:v8 withName:@"serialNumber" skipIfEmpty:1];

  v9 = [(TVRCSiriRemoteInfo *)self firmwareVersion];
  [v3 appendString:v9 withName:@"firmwareVersion" skipIfEmpty:0];

  v10 = [v3 appendBool:-[TVRCSiriRemoteInfo supportsFindMy](self withName:{"supportsFindMy"), @"supportsFindMy"}];
  v11 = [v3 appendBool:-[TVRCSiriRemoteInfo connected](self withName:{"connected"), @"connected"}];
  v12 = [(TVRCSiriRemoteInfo *)self btAddressData];
  v13 = CUPrintNSDataAddress();
  [v3 appendString:v13 withName:@"btAddressData" skipIfEmpty:1];

  v14 = [(TVRCSiriRemoteInfo *)self irkData];
  v15 = CUPrintNSDataHex();
  [v3 appendString:v15 withName:@"irkData" skipIfEmpty:1];

  v16 = [v3 build];

  return v16;
}

- (BOOL)isEqualToRemoteInfo:(id)a3
{
  v4 = a3;
  v5 = [(TVRCSiriRemoteInfo *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v2 = [(TVRCSiriRemoteInfo *)self identifier];
  v3 = [v2 dataUsingEncoding:4];

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

    v6 = [(TVRCSiriRemoteInfo *)self btAddressData];
    [(CBOOBKeyInfo *)self->_cbKeyInfo setBtAddressData:v6];

    v7 = [(TVRCSiriRemoteInfo *)self irkData];
    [(CBOOBKeyInfo *)self->_cbKeyInfo setIrkData:v7];

    cbKeyInfo = self->_cbKeyInfo;
  }

  return cbKeyInfo;
}

@end