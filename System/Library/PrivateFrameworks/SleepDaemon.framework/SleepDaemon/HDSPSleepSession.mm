@interface HDSPSleepSession
- (BOOL)isEqual:(id)equal;
- (HDSPSleepSession)initWithCoder:(id)coder;
- (HDSPSleepSession)initWithDateInterval:(id)interval sleepIntervals:(id)intervals endReason:(unint64_t)reason metadata:(id)metadata requiresFirstUnlock:(BOOL)unlock;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSPSleepSession

- (HDSPSleepSession)initWithDateInterval:(id)interval sleepIntervals:(id)intervals endReason:(unint64_t)reason metadata:(id)metadata requiresFirstUnlock:(BOOL)unlock
{
  intervalCopy = interval;
  intervalsCopy = intervals;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = HDSPSleepSession;
  v16 = [(HDSPSleepSession *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_interval, interval);
    objc_storeStrong(&v17->_sleepIntervals, intervals);
    v17->_endReason = reason;
    objc_storeStrong(&v17->_metadata, metadata);
    v17->_requiresFirstUnlock = unlock;
    v18 = v17;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  interval = self->_interval;
  coderCopy = coder;
  [coderCopy encodeObject:interval forKey:@"SleepSessionDateInterval"];
  [coderCopy encodeObject:self->_sleepIntervals forKey:@"SleepSessionSleepIntervals"];
  [coderCopy encodeInteger:self->_endReason forKey:@"SleepSessionEndReason"];
  [coderCopy encodeObject:self->_metadata forKey:@"SleepSessionMetadata"];
  [coderCopy encodeBool:self->_requiresFirstUnlock forKey:@"RequiresFirstUnlock"];
}

- (HDSPSleepSession)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HDSPSleepSession;
  v5 = [(HDSPSleepSession *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SleepSessionDateInterval"];
    interval = v5->_interval;
    v5->_interval = v6;

    v8 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"SleepSessionSleepIntervals"];
    sleepIntervals = v5->_sleepIntervals;
    v5->_sleepIntervals = v11;

    v5->_endReason = [coderCopy decodeIntegerForKey:@"SleepSessionEndReason"];
    v13 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v15 = [v13 setWithArray:v14];

    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"SleepSessionMetadata"];
    metadata = v5->_metadata;
    v5->_metadata = v16;

    v5->_requiresFirstUnlock = [coderCopy decodeBoolForKey:@"RequiresFirstUnlock"];
    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      interval = [(HDSPSleepSession *)self interval];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __28__HDSPSleepSession_isEqual___block_invoke;
      v32[3] = &unk_279C7CF78;
      v8 = v5;
      v33 = v8;
      v9 = [v6 appendObject:interval counterpart:v32];

      sleepIntervals = [(HDSPSleepSession *)self sleepIntervals];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __28__HDSPSleepSession_isEqual___block_invoke_2;
      v30[3] = &unk_279C7CFA0;
      v11 = v8;
      v31 = v11;
      v12 = [v6 appendObject:sleepIntervals counterpart:v30];

      endReason = [(HDSPSleepSession *)self endReason];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __28__HDSPSleepSession_isEqual___block_invoke_3;
      v28[3] = &unk_279C7CFC8;
      v14 = v11;
      v29 = v14;
      v15 = [v6 appendUnsignedInteger:endReason counterpart:v28];
      metadata = [(HDSPSleepSession *)self metadata];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __28__HDSPSleepSession_isEqual___block_invoke_4;
      v26[3] = &unk_279C7CFF0;
      v17 = v14;
      v27 = v17;
      v18 = [v6 appendObject:metadata counterpart:v26];

      requiresFirstUnlock = [(HDSPSleepSession *)self requiresFirstUnlock];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __28__HDSPSleepSession_isEqual___block_invoke_5;
      v24[3] = &unk_279C7D018;
      v25 = v17;
      v20 = v17;
      v21 = [v6 appendBool:requiresFirstUnlock counterpart:v24];
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
  succinctDescriptionBuilder = [(HDSPSleepSession *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  interval = [(HDSPSleepSession *)self interval];
  v5 = [v3 appendObject:interval withName:@"interval"];

  sleepIntervals = [(HDSPSleepSession *)self sleepIntervals];
  v7 = [v3 appendUnsignedInteger:objc_msgSend(sleepIntervals withName:{"count"), @"sleepIntervals"}];

  v8 = HDSPSleepSessionEndReasonDescription([(HDSPSleepSession *)self endReason]);
  [v3 appendString:v8 withName:@"endReason"];

  v9 = [v3 appendBool:-[HDSPSleepSession requiresFirstUnlock](self withName:{"requiresFirstUnlock"), @"requiresFirstUnlock"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HDSPSleepSession *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end