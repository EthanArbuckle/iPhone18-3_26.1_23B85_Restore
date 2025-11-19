@interface ACMAuthContext
- (id)parametersDictionary;
- (void)dealloc;
@end

@implementation ACMAuthContext

- (void)dealloc
{
  [(ACMAuthContext *)self setUserPreferences:0];
  v3.receiver = self;
  v3.super_class = ACMAuthContext;
  [(ACCAuthContext *)&v3 dealloc];
}

- (id)parametersDictionary
{
  v9.receiver = self;
  v9.super_class = ACMAuthContext;
  v3 = [(ACCAuthContext *)&v9 parametersDictionary];
  if (v3)
  {
    v4 = [+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")];
    -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", [v4 IPAddress], @"f");
    -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", [v4 MACAddress], @"g");
    -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", [v4 uniqueDeviceIdentifier], @"h");
    if ([(ACMAuthContext *)self isDevicePwnd])
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    [(NSMutableDictionary *)v3 setValue:v5 forKey:@"i"];
    -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", [v4 deviceModel], @"j");
    -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", [v4 systemVersion], @"k");
    [(NSMutableDictionary *)v3 setValue:@"2.9.2" forKey:@"l"];
    v6 = objc_alloc_init(MEMORY[0x29EDB9500]);
    v7 = [objc_msgSend(v6 "subscriberCellularProvider")];

    if (v7)
    {
      [(NSMutableDictionary *)v3 setValue:v7 forKey:@"ca"];
    }
  }

  return v3;
}

@end