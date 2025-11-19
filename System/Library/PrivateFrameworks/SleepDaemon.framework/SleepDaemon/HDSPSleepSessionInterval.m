@interface HDSPSleepSessionInterval
+ (id)sleepSessionIntervalWithInterval:(id)a3 type:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (HDSPSleepSessionInterval)initWithCoder:(id)a3;
- (HDSPSleepSessionInterval)initWithInterval:(id)a3 type:(unint64_t)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDSPSleepSessionInterval

+ (id)sleepSessionIntervalWithInterval:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithInterval:v6 type:a4];

  return v7;
}

- (HDSPSleepSessionInterval)initWithInterval:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HDSPSleepSessionInterval;
  v8 = [(HDSPSleepSessionInterval *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interval, a3);
    v9->_type = a4;
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  interval = self->_interval;
  v5 = a3;
  [v5 encodeObject:interval forKey:@"SleepSessionInterval"];
  [v5 encodeInteger:self->_type forKey:@"SleepSessionType"];
}

- (HDSPSleepSessionInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDSPSleepSessionInterval;
  v5 = [(HDSPSleepSessionInterval *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SleepSessionInterval"];
    interval = v5->_interval;
    v5->_interval = v6;

    v5->_type = [v4 decodeIntegerForKey:@"SleepSessionType"];
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      v7 = [(HDSPSleepSessionInterval *)self interval];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __36__HDSPSleepSessionInterval_isEqual___block_invoke;
      v20[3] = &unk_279C7CF78;
      v8 = v5;
      v21 = v8;
      v9 = [v6 appendObject:v7 counterpart:v20];

      v10 = [(HDSPSleepSessionInterval *)self type];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __36__HDSPSleepSessionInterval_isEqual___block_invoke_2;
      v18 = &unk_279C7CFC8;
      v19 = v8;
      v11 = v8;
      v12 = [v6 appendUnsignedInteger:v10 counterpart:&v15];
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
  v2 = [(HDSPSleepSessionInterval *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = HDSPSleepSessionIntervalTypeDescription([(HDSPSleepSessionInterval *)self type]);
  [v3 appendString:v4 withName:@"type"];

  v5 = [(HDSPSleepSessionInterval *)self interval];
  v6 = [v3 appendObject:v5 withName:@"interval"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HDSPSleepSessionInterval *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end