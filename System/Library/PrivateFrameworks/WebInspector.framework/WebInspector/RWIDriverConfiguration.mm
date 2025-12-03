@interface RWIDriverConfiguration
+ (BOOL)isValidPayload:(id)payload;
+ (id)decodeFromPayload:(id)payload;
- (RWIDriverConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeToPayload:(id)payload;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  driverIdentifier = [(RWIDriverConfiguration *)self driverIdentifier];
  [v4 setDriverIdentifier:driverIdentifier];

  driverName = [(RWIDriverConfiguration *)self driverName];
  [v4 setDriverName:driverName];

  driverVersion = [(RWIDriverConfiguration *)self driverVersion];
  [v4 setDriverVersion:driverVersion];

  driverHost = [(RWIDriverConfiguration *)self driverHost];
  [v4 setDriverHost:driverHost];

  [v4 setDriverPort:{-[RWIDriverConfiguration driverPort](self, "driverPort")}];
  [v4 setDriverBidiPort:{-[RWIDriverConfiguration driverBidiPort](self, "driverBidiPort")}];
  return v4;
}

+ (BOOL)isValidPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v5 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = [payloadCopy objectForKeyedSubscript:@"WIRDriverNameKey"];
  v5 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = [payloadCopy objectForKeyedSubscript:@"WIRDriverVersionKey"];
  v5 = objc_opt_class();
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = [payloadCopy objectForKeyedSubscript:@"WIRDriverHostKey"];
  v5 = objc_opt_class();
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = [payloadCopy objectForKeyedSubscript:@"WIRDriverPortKey"];
  v5 = objc_opt_class();
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = [payloadCopy objectForKeyedSubscript:@"WIRDriverBidiPortKey"];
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

+ (id)decodeFromPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v5 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = objc_opt_class();
    logUnexpectedType(v16, v5);
    v14 = 0;
    goto LABEL_27;
  }

  v5 = [payloadCopy objectForKeyedSubscript:@"WIRDriverNameKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [payloadCopy objectForKeyedSubscript:@"WIRDriverVersionKey"];
    v7 = objc_opt_class();
    if (!v6 || (objc_opt_isKindOfClass() & 1) != 0)
    {

      v8 = [payloadCopy objectForKeyedSubscript:@"WIRDriverHostKey"];
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

        v10 = [payloadCopy objectForKeyedSubscript:@"WIRDriverPortKey"];
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

          v9 = [payloadCopy objectForKeyedSubscript:@"WIRDriverBidiPortKey"];
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
              integerValue = [v12 integerValue];
            }

            else
            {
              integerValue = 0;
            }

            [v14 setDriverPort:integerValue];
            if (v9)
            {
              integerValue2 = [v9 integerValue];
            }

            else
            {
              integerValue2 = 0;
            }

            [v14 setDriverBidiPort:integerValue2];
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

- (void)encodeToPayload:(id)payload
{
  payloadCopy = payload;
  driverIdentifier = [(RWIDriverConfiguration *)self driverIdentifier];
  [payloadCopy setObject:driverIdentifier forKeyedSubscript:@"WIRDriverIdentifierKey"];

  driverName = [(RWIDriverConfiguration *)self driverName];
  [payloadCopy setObject:driverName forKeyedSubscript:@"WIRDriverNameKey"];

  driverVersion = [(RWIDriverConfiguration *)self driverVersion];

  if (driverVersion)
  {
    driverVersion2 = [(RWIDriverConfiguration *)self driverVersion];
    [payloadCopy setObject:driverVersion2 forKeyedSubscript:@"WIRDriverVersionKey"];
  }

  driverHost = [(RWIDriverConfiguration *)self driverHost];

  if (driverHost)
  {
    driverHost2 = [(RWIDriverConfiguration *)self driverHost];
    [payloadCopy setObject:driverHost2 forKeyedSubscript:@"WIRDriverHostKey"];
  }

  if ([(RWIDriverConfiguration *)self driverPort])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RWIDriverConfiguration driverPort](self, "driverPort")}];
    [payloadCopy setObject:v10 forKeyedSubscript:@"WIRDriverPortKey"];
  }

  driverBidiPort = [(RWIDriverConfiguration *)self driverBidiPort];
  v12 = payloadCopy;
  if (driverBidiPort)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RWIDriverConfiguration driverBidiPort](self, "driverBidiPort")}];
    [payloadCopy setObject:v13 forKeyedSubscript:@"WIRDriverBidiPortKey"];

    v12 = payloadCopy;
  }
}

@end