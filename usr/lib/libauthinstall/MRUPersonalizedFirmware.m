@interface MRUPersonalizedFirmware
- (MRUPersonalizedFirmware)initWithPayload:(id)a3 manifest:(id)a4;
- (id)description;
@end

@implementation MRUPersonalizedFirmware

- (MRUPersonalizedFirmware)initWithPayload:(id)a3 manifest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MRUPersonalizedFirmware;
  v9 = [(MRUPersonalizedFirmware *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payload, a3);
    objc_storeStrong(&v10->_manifest, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"%@(\n"), v5;

  v7 = [(NSData *)self->_payload description];
  [v6 appendFormat:@"\tpayload: %s\n", objc_msgSend(v7, "UTF8String")];

  v8 = [(NSData *)self->_manifest description];
  [v6 appendFormat:@"\tmanifest: %s\n", objc_msgSend(v8, "UTF8String")];

  [v6 appendString:@""]);
  v9 = [MEMORY[0x29EDBA0F8] stringWithString:v6];

  return v9;
}

@end