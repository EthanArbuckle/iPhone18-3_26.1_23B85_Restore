@interface PSStreamDomain
+ (id)customDomain:(id)a3;
+ (id)mixedDomain;
+ (id)msgDomain;
- (BOOL)isEqual:(id)a3;
- (PSStreamDomain)initWithCoder:(id)a3;
- (PSStreamDomain)initWithKey:(id)a3 isGroupable:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

+ (id)customDomain:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"custom-%@", a3];
  v4 = [[PSStreamDomain alloc] initWithKey:v3 isGroupable:1];

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

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"key"];
  [v5 encodeBool:self->_isGroupable forKey:@"isGroupable"];
}

- (PSStreamDomain)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeBoolForKey:@"isGroupable"];

  v7 = [[PSStreamDomain alloc] initWithKey:v5 isGroupable:v6];
  return v7;
}

- (PSStreamDomain)initWithKey:(id)a3 isGroupable:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PSStreamDomain;
  v7 = [(PSStreamDomain *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    key = v7->_key;
    v7->_key = v8;

    v7->_isGroupable = a4;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PSStreamDomain *)self key];
  v6 = [v4 key];
  if ([v5 isEqual:v6])
  {
    v7 = [(PSStreamDomain *)self isGroupable];
    v8 = v7 ^ [v4 isGroupable] ^ 1;
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
  v5 = [(PSStreamDomain *)self isGroupable];

  return v4 ^ v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  objc_storeStrong((v4 + 16), self->_key);
  *(v4 + 8) = self->_isGroupable;
  return v4;
}

@end