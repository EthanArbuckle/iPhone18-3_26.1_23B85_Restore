@interface HDSPSleepSessionInterval
+ (id)sleepSessionIntervalWithInterval:(id)interval type:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (HDSPSleepSessionInterval)initWithCoder:(id)coder;
- (HDSPSleepSessionInterval)initWithInterval:(id)interval type:(unint64_t)type;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSPSleepSessionInterval

+ (id)sleepSessionIntervalWithInterval:(id)interval type:(unint64_t)type
{
  intervalCopy = interval;
  v7 = [[self alloc] initWithInterval:intervalCopy type:type];

  return v7;
}

- (HDSPSleepSessionInterval)initWithInterval:(id)interval type:(unint64_t)type
{
  intervalCopy = interval;
  v12.receiver = self;
  v12.super_class = HDSPSleepSessionInterval;
  v8 = [(HDSPSleepSessionInterval *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interval, interval);
    v9->_type = type;
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  interval = self->_interval;
  coderCopy = coder;
  [coderCopy encodeObject:interval forKey:@"SleepSessionInterval"];
  [coderCopy encodeInteger:self->_type forKey:@"SleepSessionType"];
}

- (HDSPSleepSessionInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HDSPSleepSessionInterval;
  v5 = [(HDSPSleepSessionInterval *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SleepSessionInterval"];
    interval = v5->_interval;
    v5->_interval = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"SleepSessionType"];
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      interval = [(HDSPSleepSessionInterval *)self interval];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __36__HDSPSleepSessionInterval_isEqual___block_invoke;
      v20[3] = &unk_279C7CF78;
      v8 = v5;
      v21 = v8;
      v9 = [v6 appendObject:interval counterpart:v20];

      type = [(HDSPSleepSessionInterval *)self type];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __36__HDSPSleepSessionInterval_isEqual___block_invoke_2;
      v18 = &unk_279C7CFC8;
      v19 = v8;
      v11 = v8;
      v12 = [v6 appendUnsignedInteger:type counterpart:&v15];
      v13 = [v6 isEqual];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HDSPSleepSessionInterval *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = HDSPSleepSessionIntervalTypeDescription([(HDSPSleepSessionInterval *)self type]);
  [v3 appendString:v4 withName:@"type"];

  interval = [(HDSPSleepSessionInterval *)self interval];
  v6 = [v3 appendObject:interval withName:@"interval"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HDSPSleepSessionInterval *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end