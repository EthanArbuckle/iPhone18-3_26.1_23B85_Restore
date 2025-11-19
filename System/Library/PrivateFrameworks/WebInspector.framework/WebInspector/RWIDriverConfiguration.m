@interface RWIDriverConfiguration
+ (BOOL)isValidPayload:(id)a3;
+ (id)decodeFromPayload:(id)a3;
- (RWIDriverConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeToPayload:(id)a3;
@end

@implementation RWIDriverConfiguration

- (RWIDriverConfiguration)init
{
  v6.receiver = self;
  v6.super_class = RWIDriverConfiguration;
  v2 = [(RWIDriverConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_driverPort = 0;
    v4 = v2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RWIDriverConfiguration *)self driverIdentifier];
  [v4 setDriverIdentifier:v5];

  v6 = [(RWIDriverConfiguration *)self driverName];
  [v4 setDriverName:v6];

  v7 = [(RWIDriverConfiguration *)self driverVersion];
  [v4 setDriverVersion:v7];

  v8 = [(RWIDriverConfiguration *)self driverHost];
  [v4 setDriverHost:v8];

  [v4 setDriverPort:{-[RWIDriverConfiguration driverPort](self, "driverPort")}];
  [v4 setDriverBidiPort:{-[RWIDriverConfiguration driverBidiPort](self, "driverBidiPort")}];
  return v4;
}

+ (BOOL)isValidPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v5 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = [v3 objectForKeyedSubscript:@"WIRDriverNameKey"];
  v5 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = [v3 objectForKeyedSubscript:@"WIRDriverVersionKey"];
  v5 = objc_opt_class();
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = [v3 objectForKeyedSubscript:@"WIRDriverHostKey"];
  v5 = objc_opt_class();
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = [v3 objectForKeyedSubscript:@"WIRDriverPortKey"];
  v5 = objc_opt_class();
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = [v3 objectForKeyedSubscript:@"WIRDriverBidiPortKey"];
  v5 = objc_opt_class();
  if (!v4 || (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
LABEL_12:
    v7 = objc_opt_class();
    logUnexpectedType(v7, v5);
    v6 = 0;
  }

  return v6;
}

+ (id)decodeFromPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v5 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = objc_opt_class();
    logUnexpectedType(v16, v5);
    v14 = 0;
    goto LABEL_27;
  }

  v5 = [v3 objectForKeyedSubscript:@"WIRDriverNameKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [v3 objectForKeyedSubscript:@"WIRDriverVersionKey"];
    v7 = objc_opt_class();
    if (!v6 || (objc_opt_isKindOfClass() & 1) != 0)
    {

      v8 = [v3 objectForKeyedSubscript:@"WIRDriverHostKey"];
      v9 = objc_opt_class();
      if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        logUnexpectedType(v19, v9);
        v14 = 0;
        v10 = v8;
      }

      else
      {

        v10 = [v3 objectForKeyedSubscript:@"WIRDriverPortKey"];
        v11 = objc_opt_class();
        if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = objc_opt_class();
          logUnexpectedType(v20, v11);

          v14 = 0;
          v9 = v10;
        }

        else
        {

          v9 = [v3 objectForKeyedSubscript:@"WIRDriverBidiPortKey"];
          v12 = v10;
          v13 = objc_opt_class();
          if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = objc_opt_class();
            logUnexpectedType(v21, v13);

            v14 = 0;
          }

          else
          {

            v14 = objc_opt_new();
            [v14 setDriverIdentifier:v4];
            [v14 setDriverName:v5];
            [v14 setDriverVersion:v6];
            [v14 setDriverHost:v8];
            if (v10)
            {
              v15 = [v12 integerValue];
            }

            else
            {
              v15 = 0;
            }

            [v14 setDriverPort:v15];
            if (v9)
            {
              v22 = [v9 integerValue];
            }

            else
            {
              v22 = 0;
            }

            [v14 setDriverBidiPort:v22];
          }
        }
      }

      goto LABEL_26;
    }

    v18 = objc_opt_class();
    logUnexpectedType(v18, v7);
  }

  else
  {
    v17 = objc_opt_class();
    logUnexpectedType(v17, v6);
  }

  v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

- (void)encodeToPayload:(id)a3
{
  v14 = a3;
  v4 = [(RWIDriverConfiguration *)self driverIdentifier];
  [v14 setObject:v4 forKeyedSubscript:@"WIRDriverIdentifierKey"];

  v5 = [(RWIDriverConfiguration *)self driverName];
  [v14 setObject:v5 forKeyedSubscript:@"WIRDriverNameKey"];

  v6 = [(RWIDriverConfiguration *)self driverVersion];

  if (v6)
  {
    v7 = [(RWIDriverConfiguration *)self driverVersion];
    [v14 setObject:v7 forKeyedSubscript:@"WIRDriverVersionKey"];
  }

  v8 = [(RWIDriverConfiguration *)self driverHost];

  if (v8)
  {
    v9 = [(RWIDriverConfiguration *)self driverHost];
    [v14 setObject:v9 forKeyedSubscript:@"WIRDriverHostKey"];
  }

  if ([(RWIDriverConfiguration *)self driverPort])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RWIDriverConfiguration driverPort](self, "driverPort")}];
    [v14 setObject:v10 forKeyedSubscript:@"WIRDriverPortKey"];
  }

  v11 = [(RWIDriverConfiguration *)self driverBidiPort];
  v12 = v14;
  if (v11)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RWIDriverConfiguration driverBidiPort](self, "driverBidiPort")}];
    [v14 setObject:v13 forKeyedSubscript:@"WIRDriverBidiPortKey"];

    v12 = v14;
  }
}

@end