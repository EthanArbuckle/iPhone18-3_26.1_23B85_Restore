@interface ACFMessage
+ (id)messageWithIdentifier:(id)a3;
+ (id)messageWithInfo:(id)a3;
- (ACFMessage)initWithCoder:(id)a3;
- (ACFMessage)initWithInfo:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableInfo;
- (id)objectForKey:(id)a3;
- (int)senderProcessID;
- (int64_t)errorCode;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setInfo:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setSenderProcessID:(int)a3;
@end

@implementation ACFMessage

+ (id)messageWithInfo:(id)a3
{
  v3 = [[a1 alloc] initWithInfo:a3];

  return v3;
}

- (ACFMessage)initWithInfo:(id)a3
{
  v7.receiver = self;
  v7.super_class = ACFMessage;
  v4 = [(ACFMessage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACFMessage *)v4 setInfo:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ACFMessage;
  [(ACFMessage *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() messageWithInfo:{objc_msgSend(-[ACFMessage info](self, "info"), "copyWithZone:", a3)}];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    mutableInfo = self->_mutableInfo;

    [a3 encodeObject:mutableInfo forKey:@"ACFMessageInfo"];
  }
}

- (ACFMessage)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ACFMessage;
  v4 = [(ACFMessage *)&v6 init];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      v4->_mutableInfo = [objc_msgSend(a3 decodeObjectForKey:{@"ACFMessageInfo", "mutableCopy"}];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)setInfo:(id)a3
{
  mutableInfo = self->_mutableInfo;
  if (mutableInfo != a3)
  {

    self->_mutableInfo = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:a3];
  }
}

- (id)mutableInfo
{
  result = self->_mutableInfo;
  if (!result)
  {
    result = objc_opt_new();
    self->_mutableInfo = result;
  }

  return result;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    if (a3)
    {
      v6 = [(ACFMessage *)self mutableInfo];

      [v6 setObject:a3 forKey:a4];
    }

    else
    {

      [(ACFMessage *)self removeObjectForKey:a4];
    }
  }

  else if (qword_2A1EB8EF0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFMessage setObject:forKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFMessage.m", 130, 0, "Attempt to add object with nil key!");
  }
}

- (void)removeObjectForKey:(id)a3
{
  v4 = [(ACFMessage *)self mutableInfo];

  [v4 removeObjectForKey:a3];
}

- (id)objectForKey:(id)a3
{
  v4 = [(ACFMessage *)self info];

  return [v4 objectForKey:a3];
}

+ (id)messageWithIdentifier:(id)a3
{
  v4 = [a1 message];
  [v4 setIdentifier:a3];
  return v4;
}

- (int64_t)errorCode
{
  v2 = [(ACFMessage *)self objectForKey:@"ACFMessageError"];

  return [v2 code];
}

- (int)senderProcessID
{
  v2 = [(ACFMessage *)self objectForKey:@"ACFMessageSenderPID"];

  return [v2 intValue];
}

- (void)setSenderProcessID:(int)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithInteger:a3];

  [(ACFMessage *)self setObject:v4 forKey:@"ACFMessageSenderPID"];
}

- (NSString)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p (identifier = %@; error = %@; infoKeys = %@)>", NSStringFromClass(v4), self, -[ACFMessage identifier](self, "identifier"), -[ACFMessage error](self, "error"), objc_msgSend(-[ACFMessage info](self, "info"), "allKeys")];
}

@end