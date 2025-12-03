@interface ACFPrincipal
+ (ACFPrincipal)principalWithPrincipalString:(id)string;
+ (ACFPrincipal)principalWithUserName:(id)name realm:(id)realm;
- (ACFPrincipal)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)principalString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)releaseCaches;
- (void)setPrincipalString:(id)string;
- (void)setRealm:(id)realm;
- (void)setUserName:(id)name;
@end

@implementation ACFPrincipal

+ (ACFPrincipal)principalWithUserName:(id)name realm:(id)realm
{
  v6 = objc_opt_new();
  [v6 setUserName:{objc_msgSend(objc_msgSend(name, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x29EDB9F50], "whitespaceCharacterSet")), "lowercaseString")}];
  [v6 setRealm:realm];

  return v6;
}

+ (ACFPrincipal)principalWithPrincipalString:(id)string
{
  v4 = objc_opt_new();
  [v4 setPrincipalString:string];

  return v4;
}

- (void)dealloc
{
  [(ACFPrincipal *)self setPrincipalString:0];
  v3.receiver = self;
  v3.super_class = ACFPrincipal;
  [(ACFPrincipal *)&v3 dealloc];
}

- (id)description
{
  result = [(ACFPrincipal *)self principalString];
  if (!result)
  {
    v4 = MEMORY[0x29EDBA0F8];
    if ([(ACFPrincipal *)self userName])
    {
      v5 = mapUserName([(ACFPrincipal *)self userName]);
    }

    else
    {
      v5 = @"<NULL>";
    }

    if ([(ACFPrincipal *)self realm])
    {
      realm = [(ACFPrincipal *)self realm];
    }

    else
    {
      realm = @"<NULL>";
    }

    return [v4 stringWithFormat:@"%@@%@", v5, realm];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setUserName:{-[ACFPrincipal userName](self, "userName")}];
  [v4 setRealm:{-[ACFPrincipal realm](self, "realm")}];
  return v4;
}

- (ACFPrincipal)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ACFPrincipal;
  v4 = [(ACFPrincipal *)&v7 init];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      -[ACFPrincipal setUserName:](v4, "setUserName:", [coder decodeObjectForKey:@"ACFPrincipalName"]);
      decodeObject = [coder decodeObjectForKey:@"ACFPrincipalRealm"];
    }

    else
    {
      -[ACFPrincipal setUserName:](v4, "setUserName:", [coder decodeObject]);
      decodeObject = [coder decodeObject];
    }

    [(ACFPrincipal *)v4 setRealm:decodeObject];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_sync_enter(self);
  if ([coder allowsKeyedCoding])
  {
    [coder encodeObject:-[ACFPrincipal userName](self forKey:{"userName"), @"ACFPrincipalName"}];
    [coder encodeObject:-[ACFPrincipal realm](self forKey:{"realm"), @"ACFPrincipalRealm"}];
  }

  else
  {
    [coder encodeObject:{-[ACFPrincipal userName](self, "userName")}];
    [coder encodeObject:{-[ACFPrincipal realm](self, "realm")}];
  }

  objc_sync_exit(self);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  principalString = [equal principalString];
  principalString2 = [(ACFPrincipal *)self principalString];

  return [principalString isEqual:principalString2];
}

- (unint64_t)hash
{
  principalString = [(ACFPrincipal *)self principalString];

  return [(NSString *)principalString hash];
}

- (void)setUserName:(id)name
{
  objc_sync_enter(self);
  if (![name length])
  {
    name = 0;
  }

  userName = self->_userName;
  if (userName != name)
  {
    if (name)
    {
      if ([(NSString *)userName isEqualToString:name])
      {
        goto LABEL_8;
      }

      userName = self->_userName;
    }

    self->_userName = name;
    [(ACFPrincipal *)self releaseCaches];
  }

LABEL_8:

  objc_sync_exit(self);
}

- (void)setRealm:(id)realm
{
  objc_sync_enter(self);
  if (![realm length])
  {
    realm = 0;
  }

  realm = self->_realm;
  if (realm != realm)
  {
    if (realm)
    {
      if ([(NSString *)realm isEqualToString:realm])
      {
        goto LABEL_8;
      }

      realm = self->_realm;
    }

    self->_realm = realm;
    [(ACFPrincipal *)self releaseCaches];
  }

LABEL_8:

  objc_sync_exit(self);
}

- (void)releaseCaches
{
  objc_sync_enter(self);
  [(ACFPrincipal *)self willChangeValueForKey:@"principalString"];

  self->_principalString = 0;
  [(ACFPrincipal *)self didChangeValueForKey:@"principalString"];

  objc_sync_exit(self);
}

- (NSString)principalString
{
  objc_sync_enter(self);
  if (!self->_principalString && [(NSString *)[(ACFPrincipal *)self userName] length]&& [(NSString *)[(ACFPrincipal *)self realm] length])
  {
    self->_principalString = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@@%@", mapUserName(-[ACFPrincipal userName](self, "userName")), -[ACFPrincipal realm](self, "realm")];
  }

  v3 = self->_principalString;
  objc_sync_exit(self);
  return v3;
}

- (void)setPrincipalString:(id)string
{
  objc_sync_enter(self);
  if (string)
  {
    principalString = self->_principalString;
    if (principalString != string && ![(NSString *)principalString isEqualToString:string])
    {
      v6 = [string componentsSeparatedByString:@"@"];
      if ([v6 count] == 2)
      {
        v7 = [v6 objectAtIndex:0];
        v8 = [MEMORY[0x29EDBA050] stringWithString:v7];
        v9 = [v8 length];
        [v8 replaceOccurrencesOfString:@"#" withString:@" " options:0 range:{0, v9}];
        [v8 replaceOccurrencesOfString:@"%" withString:@"@" options:0 range:{0, v9}];
        -[ACFPrincipal setUserName:](self, "setUserName:", [v8 copy]);
        -[ACFPrincipal setRealm:](self, "setRealm:", [v6 objectAtIndex:1]);
      }
    }
  }

  else
  {
    [(ACFPrincipal *)self setUserName:0];
    [(ACFPrincipal *)self setRealm:0];
  }

  objc_sync_exit(self);
}

@end