@interface WFTaskIdentifier
+ (id)defaultIdentifier;
- (BOOL)isEqual:(id)a3;
- (WFTaskIdentifier)init;
- (WFTaskIdentifier)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFTaskIdentifier

+ (id)defaultIdentifier
{
  v2 = objc_alloc_init(WFTaskIdentifier);

  return v2;
}

- (WFTaskIdentifier)init
{
  v11.receiver = self;
  v11.super_class = WFTaskIdentifier;
  v2 = [(WFTaskIdentifier *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;

    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:getprogname()];
    }

    processName = v2->_processName;
    v2->_processName = v8;

    v2->_pid = getpid();
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFTaskIdentifier *)self processName];
  v5 = [(WFTaskIdentifier *)self pid];
  v6 = [(WFTaskIdentifier *)self UUID];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"%@[%d]: %@", v4, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WFTaskIdentifier *)self UUID];
      v7 = [(WFTaskIdentifier *)v5 UUID];
      if (v6 == v7)
      {
        v9 = [(WFTaskIdentifier *)self processName];
        v10 = [(WFTaskIdentifier *)v5 processName];
        if (v9 == v10)
        {
          v11 = [(WFTaskIdentifier *)self pid];
          v8 = v11 == [(WFTaskIdentifier *)v5 pid];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(WFTaskIdentifier *)self UUID];
  v4 = [v3 hash];
  v5 = [(WFTaskIdentifier *)self processName];
  v6 = [v5 hash] ^ v4;
  v7 = [(WFTaskIdentifier *)self pid];

  return v6 ^ v7;
}

- (WFTaskIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFTaskIdentifier;
  v5 = [(WFTaskIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFTaskIdentifierUUIDKey"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFTaskIdentifierProcessNameKey"];
    processName = v5->_processName;
    v5->_processName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFTaskIdentifierPidKey"];
    v5->_pid = [v10 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFTaskIdentifier *)self UUID];
  [v4 encodeObject:v5 forKey:@"WFTaskIdentifierUUIDKey"];

  v6 = [(WFTaskIdentifier *)self processName];
  [v4 encodeObject:v6 forKey:@"WFTaskIdentifierProcessNameKey"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[WFTaskIdentifier pid](self, "pid")}];
  [v4 encodeObject:v7 forKey:@"WFTaskIdentifierPidKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WFTaskIdentifier);
  v5 = [(WFTaskIdentifier *)self UUID];
  UUID = v4->_UUID;
  v4->_UUID = v5;

  v7 = [(WFTaskIdentifier *)self processName];
  processName = v4->_processName;
  v4->_processName = v7;

  v4->_pid = [(WFTaskIdentifier *)self pid];
  return v4;
}

@end