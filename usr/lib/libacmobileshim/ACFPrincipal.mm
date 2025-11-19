@interface ACFPrincipal
+ (ACFPrincipal)principalWithPrincipalString:(id)a3;
+ (ACFPrincipal)principalWithUserName:(id)a3 realm:(id)a4;
- (ACFPrincipal)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)principalString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)releaseCaches;
- (void)setPrincipalString:(id)a3;
- (void)setRealm:(id)a3;
- (void)setUserName:(id)a3;
@end

@implementation ACFPrincipal

+ (ACFPrincipal)principalWithUserName:(id)a3 realm:(id)a4
{
  v6 = objc_opt_new();
  [v6 setUserName:{objc_msgSend(objc_msgSend(a3, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x29EDB9F50], "whitespaceCharacterSet")), "lowercaseString")}];
  [v6 setRealm:a4];

  return v6;
}

+ (ACFPrincipal)principalWithPrincipalString:(id)a3
{
  v4 = objc_opt_new();
  [v4 setPrincipalString:a3];

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
      v6 = [(ACFPrincipal *)self realm];
    }

    else
    {
      v6 = @"<NULL>";
    }

    return [v4 stringWithFormat:@"%@@%@", v5, v6];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setUserName:{-[ACFPrincipal userName](self, "userName")}];
  [v4 setRealm:{-[ACFPrincipal realm](self, "realm")}];
  return v4;
}

- (ACFPrincipal)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ACFPrincipal;
  v4 = [(ACFPrincipal *)&v7 init];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      -[ACFPrincipal setUserName:](v4, "setUserName:", [a3 decodeObjectForKey:@"ACFPrincipalName"]);
      v5 = [a3 decodeObjectForKey:@"ACFPrincipalRealm"];
    }

    else
    {
      -[ACFPrincipal setUserName:](v4, "setUserName:", [a3 decodeObject]);
      v5 = [a3 decodeObject];
    }

    [(ACFPrincipal *)v4 setRealm:v5];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_sync_enter(self);
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:-[ACFPrincipal userName](self forKey:{"userName"), @"ACFPrincipalName"}];
    [a3 encodeObject:-[ACFPrincipal realm](self forKey:{"realm"), @"ACFPrincipalRealm"}];
  }

  else
  {
    [a3 encodeObject:{-[ACFPrincipal userName](self, "userName")}];
    [a3 encodeObject:{-[ACFPrincipal realm](self, "realm")}];
  }

  objc_sync_exit(self);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 principalString];
  v6 = [(ACFPrincipal *)self principalString];

  return [v5 isEqual:v6];
}

- (unint64_t)hash
{
  v2 = [(ACFPrincipal *)self principalString];

  return [(NSString *)v2 hash];
}

- (void)setUserName:(id)a3
{
  objc_sync_enter(self);
  if (![a3 length])
  {
    a3 = 0;
  }

  userName = self->_userName;
  if (userName != a3)
  {
    if (a3)
    {
      if ([(NSString *)userName isEqualToString:a3])
      {
        goto LABEL_8;
      }

      userName = self->_userName;
    }

    self->_userName = a3;
    [(ACFPrincipal *)self releaseCaches];
  }

LABEL_8:

  objc_sync_exit(self);
}

- (void)setRealm:(id)a3
{
  objc_sync_enter(self);
  if (![a3 length])
  {
    a3 = 0;
  }

  realm = self->_realm;
  if (realm != a3)
  {
    if (a3)
    {
      if ([(NSString *)realm isEqualToString:a3])
      {
        goto LABEL_8;
      }

      realm = self->_realm;
    }

    self->_realm = a3;
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

- (void)setPrincipalString:(id)a3
{
  objc_sync_enter(self);
  if (a3)
  {
    principalString = self->_principalString;
    if (principalString != a3 && ![(NSString *)principalString isEqualToString:a3])
    {
      v6 = [a3 componentsSeparatedByString:@"@"];
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