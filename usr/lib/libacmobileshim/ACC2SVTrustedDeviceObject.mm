@interface ACC2SVTrustedDeviceObject
- (ACC2SVTrustedDeviceObject)initWithDictionary:(id)a3;
- (BOOL)isSMSDevice;
- (BOOL)isTOTPDevice;
- (NSString)deviceDisplayDescription;
- (NSString)imageURL;
- (double)scale;
- (void)dealloc;
@end

@implementation ACC2SVTrustedDeviceObject

- (ACC2SVTrustedDeviceObject)initWithDictionary:(id)a3
{
  v8.receiver = self;
  v8.super_class = ACC2SVTrustedDeviceObject;
  v4 = [(ACC2SVTrustedDeviceObject *)&v8 init];
  if (v4)
  {
    -[ACC2SVTrustedDeviceObject setDeviceID:](v4, "setDeviceID:", [a3 objectForKey:@"di"]);
    -[ACC2SVTrustedDeviceObject setDeviceType:](v4, "setDeviceType:", [a3 objectForKey:@"dk"]);
    -[ACC2SVTrustedDeviceObject setDeviceClass:](v4, "setDeviceClass:", [a3 objectForKey:@"ds"]);
    -[ACC2SVTrustedDeviceObject setDeviceDescription:](v4, "setDeviceDescription:", [a3 objectForKey:@"dd"]);
    -[ACC2SVTrustedDeviceObject setDeviceModel:](v4, "setDeviceModel:", [a3 objectForKey:@"dm"]);
    -[ACC2SVTrustedDeviceObject setDeviceModelName:](v4, "setDeviceModelName:", [a3 objectForKey:@"dn"]);
    -[ACC2SVTrustedDeviceObject setDeviceColor:](v4, "setDeviceColor:", [a3 objectForKey:@"dc"]);
    v5 = MEMORY[0x29EDB8DB0];
    [objc_msgSend(a3 objectForKey:{@"du", "doubleValue"}];
    -[ACC2SVTrustedDeviceObject setLastUseDate:](v4, "setLastUseDate:", [v5 dateWithTimeIntervalSince1970:v6 / 1000.0]);
  }

  return v4;
}

- (void)dealloc
{
  [(ACC2SVTrustedDeviceObject *)self setDeviceID:0];
  [(ACC2SVTrustedDeviceObject *)self setDeviceType:0];
  [(ACC2SVTrustedDeviceObject *)self setDeviceClass:0];
  [(ACC2SVTrustedDeviceObject *)self setDeviceDescription:0];
  [(ACC2SVTrustedDeviceObject *)self setDeviceModel:0];
  [(ACC2SVTrustedDeviceObject *)self setDeviceModelName:0];
  [(ACC2SVTrustedDeviceObject *)self setDeviceColor:0];
  [(ACC2SVTrustedDeviceObject *)self setDeviceIcon:0];
  [(ACC2SVTrustedDeviceObject *)self setLastUseDate:0];
  v3.receiver = self;
  v3.super_class = ACC2SVTrustedDeviceObject;
  [(ACC2SVTrustedDeviceObject *)&v3 dealloc];
}

- (BOOL)isSMSDevice
{
  v2 = [(ACC2SVTrustedDeviceObject *)self deviceType];

  return [(NSString *)v2 isEqualToString:@"S"];
}

- (BOOL)isTOTPDevice
{
  v2 = [(ACC2SVTrustedDeviceObject *)self deviceType];

  return [(NSString *)v2 isEqualToString:@"T"];
}

- (NSString)deviceDisplayDescription
{
  v3 = [(ACC2SVTrustedDeviceObject *)self deviceDescription];
  if (![(ACC2SVTrustedDeviceObject *)self isSMSDevice])
  {
    return v3;
  }

  v4 = [(NSString *)v3 stringByReplacingOccurrencesOfString:@"Phone number ending in " withString:&stru_2A1EB91A0];
  return [MEMORY[0x29EDBA0F8] stringWithFormat:+[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"Number ending in %@", v4];
}

- (NSString)imageURL
{
  if (![(NSString *)[(ACC2SVTrustedDeviceObject *)self deviceClass] length]|| ![(NSString *)[(ACC2SVTrustedDeviceObject *)self deviceModel] length])
  {
    return 0;
  }

  v3 = [MEMORY[0x29EDBA050] stringWithString:@"https://statici.icloud.com/fmipmobile/deviceImages-4.0/"];
  [v3 appendString:{-[ACC2SVTrustedDeviceObject deviceClass](self, "deviceClass")}];
  [v3 appendString:@"/"];
  [v3 appendString:{-[ACC2SVTrustedDeviceObject deviceModel](self, "deviceModel")}];
  if ([(NSString *)[(ACC2SVTrustedDeviceObject *)self deviceColor] length])
  {
    [v3 appendString:@"-"];
    [v3 appendString:{-[ACC2SVTrustedDeviceObject deviceColor](self, "deviceColor")}];
  }

  [v3 appendString:@"/"];
  [(ACC2SVTrustedDeviceObject *)self scale];
  if (v4 <= 2.00999999)
  {
    [(ACC2SVTrustedDeviceObject *)self scale];
    v5 = &stru_2A1EB91A0;
    if (v6 > 1.00999999)
    {
      v5 = @"__2x";
    }
  }

  else
  {
    v5 = @"__3x";
  }

  [v3 appendString:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"online-sourcelist%@.png", v5)}];
  return v3;
}

- (double)scale
{
  v2 = [MEMORY[0x29EDC7C40] mainScreen];

  [v2 scale];
  return result;
}

@end