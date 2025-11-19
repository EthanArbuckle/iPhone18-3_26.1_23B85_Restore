@interface HDSPSleepSession
- (BOOL)isEqual:(id)a3;
- (HDSPSleepSession)initWithCoder:(id)a3;
- (HDSPSleepSession)initWithDateInterval:(id)a3 sleepIntervals:(id)a4 endReason:(unint64_t)a5 metadata:(id)a6 requiresFirstUnlock:(BOOL)a7;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDSPSleepSession

- (HDSPSleepSession)initWithDateInterval:(id)a3 sleepIntervals:(id)a4 endReason:(unint64_t)a5 metadata:(id)a6 requiresFirstUnlock:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = HDSPSleepSession;
  v16 = [(HDSPSleepSession *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_interval, a3);
    objc_storeStrong(&v17->_sleepIntervals, a4);
    v17->_endReason = a5;
    objc_storeStrong(&v17->_metadata, a6);
    v17->_requiresFirstUnlock = a7;
    v18 = v17;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  interval = self->_interval;
  v5 = a3;
  [v5 encodeObject:interval forKey:@"SleepSessionDateInterval"];
  [v5 encodeObject:self->_sleepIntervals forKey:@"SleepSessionSleepIntervals"];
  [v5 encodeInteger:self->_endReason forKey:@"SleepSessionEndReason"];
  [v5 encodeObject:self->_metadata forKey:@"SleepSessionMetadata"];
  [v5 encodeBool:self->_requiresFirstUnlock forKey:@"RequiresFirstUnlock"];
}

- (HDSPSleepSession)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HDSPSleepSession;
  v5 = [(HDSPSleepSession *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SleepSessionDateInterval"];
    interval = v5->_interval;
    v5->_interval = v6;

    v8 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"SleepSessionSleepIntervals"];
    sleepIntervals = v5->_sleepIntervals;
    v5->_sleepIntervals = v11;

    v5->_endReason = [v4 decodeIntegerForKey:@"SleepSessionEndReason"];
    v13 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v15 = [v13 setWithArray:v14];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"SleepSessionMetadata"];
    metadata = v5->_metadata;
    v5->_metadata = v16;

    v5->_requiresFirstUnlock = [v4 decodeBoolForKey:@"RequiresFirstUnlock"];
    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      v7 = [(HDSPSleepSession *)self interval];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __28__HDSPSleepSession_isEqual___block_invoke;
      v32[3] = &unk_279C7CF78;
      v8 = v5;
      v33 = v8;
      v9 = [v6 appendObject:v7 counterpart:v32];

      v10 = [(HDSPSleepSession *)self sleepIntervals];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __28__HDSPSleepSession_isEqual___block_invoke_2;
      v30[3] = &unk_279C7CFA0;
      v11 = v8;
      v31 = v11;
      v12 = [v6 appendObject:v10 counterpart:v30];

      v13 = [(HDSPSleepSession *)self endReason];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __28__HDSPSleepSession_isEqual___block_invoke_3;
      v28[3] = &unk_279C7CFC8;
      v14 = v11;
      v29 = v14;
      v15 = [v6 appendUnsignedInteger:v13 counterpart:v28];
      v16 = [(HDSPSleepSession *)self metadata];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __28__HDSPSleepSession_isEqual___block_invoke_4;
      v26[3] = &unk_279C7CFF0;
      v17 = v14;
      v27 = v17;
      v18 = [v6 appendObject:v16 counterpart:v26];

      v19 = [(HDSPSleepSession *)self requiresFirstUnlock];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __28__HDSPSleepSession_isEqual___block_invoke_5;
      v24[3] = &unk_279C7D018;
      v25 = v17;
      v20 = v17;
      v21 = [v6 appendBool:v19 counterpart:v24];
      v22 = [v6 isEqual];
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (id)succinctDescription
{
  v2 = [(HDSPSleepSession *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HDSPSleepSession *)self interval];
  v5 = [v3 appendObject:v4 withName:@"interval"];

  v6 = [(HDSPSleepSession *)self sleepIntervals];
  v7 = [v3 appendUnsignedInteger:objc_msgSend(v6 withName:{"count"), @"sleepIntervals"}];

  v8 = HDSPSleepSessionEndReasonDescription([(HDSPSleepSession *)self endReason]);
  [v3 appendString:v8 withName:@"endReason"];

  v9 = [v3 appendBool:-[HDSPSleepSession requiresFirstUnlock](self withName:{"requiresFirstUnlock"), @"requiresFirstUnlock"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HDSPSleepSession *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end