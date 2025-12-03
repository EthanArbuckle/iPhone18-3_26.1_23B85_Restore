@interface ACFMessage
+ (id)messageWithIdentifier:(id)identifier;
+ (id)messageWithInfo:(id)info;
- (ACFMessage)initWithCoder:(id)coder;
- (ACFMessage)initWithInfo:(id)info;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableInfo;
- (id)objectForKey:(id)key;
- (int)senderProcessID;
- (int64_t)errorCode;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeObjectForKey:(id)key;
- (void)setInfo:(id)info;
- (void)setObject:(id)object forKey:(id)key;
- (void)setSenderProcessID:(int)d;
@end

@implementation ACFMessage

+ (id)messageWithInfo:(id)info
{
  v3 = [[self alloc] initWithInfo:info];

  return v3;
}

- (ACFMessage)initWithInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = ACFMessage;
  v4 = [(ACFMessage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACFMessage *)v4 setInfo:info];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ACFMessage;
  [(ACFMessage *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() messageWithInfo:{objc_msgSend(-[ACFMessage info](self, "info"), "copyWithZone:", zone)}];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    mutableInfo = self->_mutableInfo;

    [coder encodeObject:mutableInfo forKey:@"ACFMessageInfo"];
  }
}

- (ACFMessage)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ACFMessage;
  v4 = [(ACFMessage *)&v6 init];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      v4->_mutableInfo = [objc_msgSend(coder decodeObjectForKey:{@"ACFMessageInfo", "mutableCopy"}];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)setInfo:(id)info
{
  mutableInfo = self->_mutableInfo;
  if (mutableInfo != info)
  {

    self->_mutableInfo = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:info];
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

- (void)setObject:(id)object forKey:(id)key
{
  if (key)
  {
    if (object)
    {
      mutableInfo = [(ACFMessage *)self mutableInfo];

      [mutableInfo setObject:object forKey:key];
    }

    else
    {

      [(ACFMessage *)self removeObjectForKey:key];
    }
  }

  else if (qword_2A1EB8EF0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFMessage setObject:forKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFMessage.m", 130, 0, "Attempt to add object with nil key!");
  }
}

- (void)removeObjectForKey:(id)key
{
  mutableInfo = [(ACFMessage *)self mutableInfo];

  [mutableInfo removeObjectForKey:key];
}

- (id)objectForKey:(id)key
{
  info = [(ACFMessage *)self info];

  return [info objectForKey:key];
}

+ (id)messageWithIdentifier:(id)identifier
{
  message = [self message];
  [message setIdentifier:identifier];
  return message;
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

- (void)setSenderProcessID:(int)d
{
  v4 = [MEMORY[0x29EDBA070] numberWithInteger:d];

  [(ACFMessage *)self setObject:v4 forKey:@"ACFMessageSenderPID"];
}

- (NSString)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p (identifier = %@; error = %@; infoKeys = %@)>", NSStringFromClass(v4), self, -[ACFMessage identifier](self, "identifier"), -[ACFMessage error](self, "error"), objc_msgSend(-[ACFMessage info](self, "info"), "allKeys")];
}

@end