@interface WFTaskIdentifier
+ (id)defaultIdentifier;
- (BOOL)isEqual:(id)equal;
- (WFTaskIdentifier)init;
- (WFTaskIdentifier)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = bundleIdentifier;
    if (bundleIdentifier)
    {
      v8 = bundleIdentifier;
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
  processName = [(WFTaskIdentifier *)self processName];
  v5 = [(WFTaskIdentifier *)self pid];
  uUID = [(WFTaskIdentifier *)self UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v3 stringWithFormat:@"%@[%d]: %@", processName, v5, uUIDString];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uUID = [(WFTaskIdentifier *)self UUID];
      uUID2 = [(WFTaskIdentifier *)v5 UUID];
      if (uUID == uUID2)
      {
        processName = [(WFTaskIdentifier *)self processName];
        processName2 = [(WFTaskIdentifier *)v5 processName];
        if (processName == processName2)
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
  uUID = [(WFTaskIdentifier *)self UUID];
  v4 = [uUID hash];
  processName = [(WFTaskIdentifier *)self processName];
  v6 = [processName hash] ^ v4;
  v7 = [(WFTaskIdentifier *)self pid];

  return v6 ^ v7;
}

- (WFTaskIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFTaskIdentifier;
  v5 = [(WFTaskIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFTaskIdentifierUUIDKey"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFTaskIdentifierProcessNameKey"];
    processName = v5->_processName;
    v5->_processName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFTaskIdentifierPidKey"];
    v5->_pid = [v10 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(WFTaskIdentifier *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"WFTaskIdentifierUUIDKey"];

  processName = [(WFTaskIdentifier *)self processName];
  [coderCopy encodeObject:processName forKey:@"WFTaskIdentifierProcessNameKey"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[WFTaskIdentifier pid](self, "pid")}];
  [coderCopy encodeObject:v7 forKey:@"WFTaskIdentifierPidKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WFTaskIdentifier);
  uUID = [(WFTaskIdentifier *)self UUID];
  UUID = v4->_UUID;
  v4->_UUID = uUID;

  processName = [(WFTaskIdentifier *)self processName];
  processName = v4->_processName;
  v4->_processName = processName;

  v4->_pid = [(WFTaskIdentifier *)self pid];
  return v4;
}

@end