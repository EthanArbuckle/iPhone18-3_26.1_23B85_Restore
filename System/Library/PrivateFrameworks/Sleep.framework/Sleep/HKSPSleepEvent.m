@interface HKSPSleepEvent
+ (id)sleepEventWithIdentifier:(id)a3 dueDate:(id)a4 context:(id)a5;
+ (id)standardEventIdentifiers;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired:(id)a3;
- (HKSPSleepEvent)initWithCoder:(id)a3;
- (HKSPSleepEvent)initWithIdentifier:(id)a3 dueDate:(id)a4 context:(id)a5 type:(unint64_t)a6 expirationDate:(id)a7 isUserVisible:(BOOL)a8;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)objectWithSyncAnchor:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPSleepEvent

+ (id)sleepEventWithIdentifier:(id)a3 dueDate:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dateByAddingTimeInterval:900.0];
  v12 = [a1 sleepEventWithIdentifier:v10 dueDate:v9 context:v8 type:0 expirationDate:v11 isUserVisible:1];

  return v12;
}

- (HKSPSleepEvent)initWithIdentifier:(id)a3 dueDate:(id)a4 context:(id)a5 type:(unint64_t)a6 expirationDate:(id)a7 isUserVisible:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = HKSPSleepEvent;
  v18 = [(HKSPSleepEvent *)&v25 init];
  if (v18)
  {
    v19 = [v14 copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    objc_storeStrong(&v18->_dueDate, a4);
    v21 = [v16 copy];
    context = v18->_context;
    v18->_context = v21;

    objc_storeStrong(&v18->_expirationDate, a7);
    v18->_isUserVisible = a8;
    v18->_type = a6;
    v23 = v18;
  }

  return v18;
}

- (BOOL)isExpired:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepEvent *)self expirationDate];
  if (v5)
  {
    v6 = [(HKSPSleepEvent *)self expirationDate];
    v7 = [v4 hksp_isAfterOrSameAsDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectWithSyncAnchor:(id)a3
{
  v4 = a3;
  v5 = [[HKSPSleepEvent alloc] initWithIdentifier:self->_identifier dueDate:self->_dueDate context:self->_context type:self->_type expirationDate:self->_expirationDate isUserVisible:self->_isUserVisible];
  v6 = [v4 copyWithZone:0];

  syncAnchor = v5->_syncAnchor;
  v5->_syncAnchor = v6;

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepEvent *)self dueDate];
  v6 = [v4 dueDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      v7 = [(HKSPSleepEvent *)self identifier];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __26__HKSPSleepEvent_isEqual___block_invoke;
      v40[3] = &unk_279C74680;
      v8 = v5;
      v41 = v8;
      v9 = [v6 appendObject:v7 counterpart:v40];

      v10 = [(HKSPSleepEvent *)self dueDate];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __26__HKSPSleepEvent_isEqual___block_invoke_2;
      v38[3] = &unk_279C746A8;
      v11 = v8;
      v39 = v11;
      v12 = [v6 appendObject:v10 counterpart:v38];

      v13 = [(HKSPSleepEvent *)self context];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __26__HKSPSleepEvent_isEqual___block_invoke_3;
      v36[3] = &unk_279C74410;
      v14 = v11;
      v37 = v14;
      v15 = [v6 appendObject:v13 counterpart:v36];

      v16 = [(HKSPSleepEvent *)self expirationDate];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __26__HKSPSleepEvent_isEqual___block_invoke_4;
      v34[3] = &unk_279C746A8;
      v17 = v14;
      v35 = v17;
      v18 = [v6 appendObject:v16 counterpart:v34];

      v19 = [(HKSPSleepEvent *)self isUserVisible];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __26__HKSPSleepEvent_isEqual___block_invoke_5;
      v32[3] = &unk_279C746D0;
      v20 = v17;
      v33 = v20;
      v21 = [v6 appendBool:v19 counterpart:v32];
      v22 = [(HKSPSleepEvent *)self type];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __26__HKSPSleepEvent_isEqual___block_invoke_6;
      v30 = &unk_279C746F8;
      v31 = v20;
      v23 = v20;
      v24 = [v6 appendUnsignedInteger:v22 counterpart:&v27];
      v25 = [v6 isEqual];
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_dueDate forKey:@"dueDate"];
  [v5 encodeObject:self->_context forKey:@"context"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeBool:self->_isUserVisible forKey:@"isUserVisible"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_syncAnchor forKey:@"syncAnchor"];
}

- (HKSPSleepEvent)initWithCoder:(id)a3
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HKSPSleepEvent;
  v5 = [(HKSPSleepEvent *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDate"];
    dueDate = v5->_dueDate;
    v5->_dueDate = v8;

    v10 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v23[3] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"context"];
    context = v5->_context;
    v5->_context = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v15;

    v5->_isUserVisible = [v4 decodeBoolForKey:@"isUserVisible"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v17 = [v4 decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"syncAnchor"];
    syncAnchor = v5->_syncAnchor;
    v5->_syncAnchor = v17;

    v19 = v5;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)standardEventIdentifiers
{
  if (qword_280B068F0 != -1)
  {
    dispatch_once(&qword_280B068F0, &__block_literal_global_355);
  }

  v3 = _MergedGlobals_9;

  return v3;
}

void __42__HKSPSleepEvent_standardEventIdentifiers__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"HKSPSleepEventIdentifierWakeUp";
  v5[1] = @"HKSPSleepEventIdentifierBedtime";
  v5[2] = @"HKSPSleepEventIdentifierWindDown";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = _MergedGlobals_9;
  _MergedGlobals_9 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(HKSPSleepEvent *)self identifier];
  v5 = [v3 appendObject:v4];

  v6 = [(HKSPSleepEvent *)self dueDate];
  v7 = [v3 appendObject:v6];

  v8 = [(HKSPSleepEvent *)self context];
  v9 = [v3 appendObject:v8];

  v10 = [(HKSPSleepEvent *)self expirationDate];
  v11 = [v3 appendObject:v10];

  v12 = [v3 appendBool:{-[HKSPSleepEvent isUserVisible](self, "isUserVisible")}];
  v13 = [v3 appendUnsignedInteger:{-[HKSPSleepEvent type](self, "type")}];
  v14 = [v3 hash];

  return v14;
}

- (id)succinctDescription
{
  v2 = [(HKSPSleepEvent *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HKSPSleepEvent *)self identifier];
  [v3 appendString:v4 withName:@"identifier"];

  v5 = [(HKSPSleepEvent *)self dueDate];
  v6 = [v5 hkspDescription];
  v7 = [v3 appendObject:v6 withName:@"dueDate"];

  v8 = [(HKSPSleepEvent *)self context];
  v9 = [v3 appendObject:v8 withName:@"context" skipIfNil:1];

  v10 = [(HKSPSleepEvent *)self expirationDate];
  v11 = [v10 hkspDescription];
  v12 = [v3 appendObject:v11 withName:@"expirationDate" skipIfNil:1];

  v13 = [v3 appendBool:-[HKSPSleepEvent isUserVisible](self withName:{"isUserVisible"), @"isUserVisible"}];
  if ([(HKSPSleepEvent *)self type])
  {
    v14 = [v3 appendUnsignedInteger:-[HKSPSleepEvent type](self withName:{"type"), @"type"}];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPSleepEvent *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end