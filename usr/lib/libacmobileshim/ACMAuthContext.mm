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
  parametersDictionary = [(ACCAuthContext *)&v9 parametersDictionary];
  if (parametersDictionary)
  {
    v4 = [+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")];
    -[NSMutableDictionary setValue:forKey:](parametersDictionary, "setValue:forKey:", [v4 IPAddress], @"f");
    -[NSMutableDictionary setValue:forKey:](parametersDictionary, "setValue:forKey:", [v4 MACAddress], @"g");
    -[NSMutableDictionary setValue:forKey:](parametersDictionary, "setValue:forKey:", [v4 uniqueDeviceIdentifier], @"h");
    if ([(ACMAuthContext *)self isDevicePwnd])
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    [(NSMutableDictionary *)parametersDictionary setValue:v5 forKey:@"i"];
    -[NSMutableDictionary setValue:forKey:](parametersDictionary, "setValue:forKey:", [v4 deviceModel], @"j");
    -[NSMutableDictionary setValue:forKey:](parametersDictionary, "setValue:forKey:", [v4 systemVersion], @"k");
    [(NSMutableDictionary *)parametersDictionary setValue:@"2.9.2" forKey:@"l"];
    v6 = objc_alloc_init(MEMORY[0x29EDB9500]);
    v7 = [objc_msgSend(v6 "subscriberCellularProvider")];

    if (v7)
    {
      [(NSMutableDictionary *)parametersDictionary setValue:v7 forKey:@"ca"];
    }
  }

  return parametersDictionary;
}

@end