@interface PSStreamDomain
+ (id)customDomain:(id)domain;
+ (id)mixedDomain;
+ (id)msgDomain;
- (BOOL)isEqual:(id)equal;
- (PSStreamDomain)initWithCoder:(id)coder;
- (PSStreamDomain)initWithKey:(id)key isGroupable:(BOOL)groupable;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSStreamDomain

+ (id)msgDomain
{
  if (msgDomain_onceToken != -1)
  {
    +[PSStreamDomain msgDomain];
  }

  v3 = msgDomain_staticMSGDomain;

  return v3;
}

uint64_t __27__PSStreamDomain_msgDomain__block_invoke()
{
  msgDomain_staticMSGDomain = [[PSStreamDomain alloc] initWithKey:@"msg" isGroupable:1];

  return MEMORY[0x2821F96F8]();
}

+ (id)customDomain:(id)domain
{
  domain = [MEMORY[0x277CCACA8] stringWithFormat:@"custom-%@", domain];
  v4 = [[PSStreamDomain alloc] initWithKey:domain isGroupable:1];

  return v4;
}

+ (id)mixedDomain
{
  if (mixedDomain_onceToken != -1)
  {
    +[PSStreamDomain mixedDomain];
  }

  v3 = mixedDomain_staticMixedDomain;

  return v3;
}

uint64_t __29__PSStreamDomain_mixedDomain__block_invoke()
{
  mixedDomain_staticMixedDomain = [[PSStreamDomain alloc] initWithKey:@"mixed" isGroupable:0];

  return MEMORY[0x2821F96F8]();
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  [coderCopy encodeBool:self->_isGroupable forKey:@"isGroupable"];
}

- (PSStreamDomain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeBoolForKey:@"isGroupable"];

  v7 = [[PSStreamDomain alloc] initWithKey:v5 isGroupable:v6];
  return v7;
}

- (PSStreamDomain)initWithKey:(id)key isGroupable:(BOOL)groupable
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = PSStreamDomain;
  v7 = [(PSStreamDomain *)&v11 init];
  if (v7)
  {
    v8 = [keyCopy copy];
    key = v7->_key;
    v7->_key = v8;

    v7->_isGroupable = groupable;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [(PSStreamDomain *)self key];
  v6 = [equalCopy key];
  if ([v5 isEqual:v6])
  {
    isGroupable = [(PSStreamDomain *)self isGroupable];
    v8 = isGroupable ^ [equalCopy isGroupable] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PSStreamDomain *)self key];
  v4 = [v3 hash];
  isGroupable = [(PSStreamDomain *)self isGroupable];

  return v4 ^ isGroupable;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  objc_storeStrong((v4 + 16), self->_key);
  *(v4 + 8) = self->_isGroupable;
  return v4;
}

@end