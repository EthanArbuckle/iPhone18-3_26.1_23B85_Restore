@interface HKSPSleepEvent
+ (id)sleepEventWithIdentifier:(id)identifier dueDate:(id)date context:(id)context;
+ (id)standardEventIdentifiers;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired:(id)expired;
- (HKSPSleepEvent)initWithCoder:(id)coder;
- (HKSPSleepEvent)initWithIdentifier:(id)identifier dueDate:(id)date context:(id)context type:(unint64_t)type expirationDate:(id)expirationDate isUserVisible:(BOOL)visible;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)objectWithSyncAnchor:(id)anchor;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPSleepEvent

+ (id)sleepEventWithIdentifier:(id)identifier dueDate:(id)date context:(id)context
{
  contextCopy = context;
  dateCopy = date;
  identifierCopy = identifier;
  v11 = [dateCopy dateByAddingTimeInterval:900.0];
  v12 = [self sleepEventWithIdentifier:identifierCopy dueDate:dateCopy context:contextCopy type:0 expirationDate:v11 isUserVisible:1];

  return v12;
}

- (HKSPSleepEvent)initWithIdentifier:(id)identifier dueDate:(id)date context:(id)context type:(unint64_t)type expirationDate:(id)expirationDate isUserVisible:(BOOL)visible
{
  identifierCopy = identifier;
  dateCopy = date;
  contextCopy = context;
  expirationDateCopy = expirationDate;
  v25.receiver = self;
  v25.super_class = HKSPSleepEvent;
  v18 = [(HKSPSleepEvent *)&v25 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    objc_storeStrong(&v18->_dueDate, date);
    v21 = [contextCopy copy];
    context = v18->_context;
    v18->_context = v21;

    objc_storeStrong(&v18->_expirationDate, expirationDate);
    v18->_isUserVisible = visible;
    v18->_type = type;
    v23 = v18;
  }

  return v18;
}

- (BOOL)isExpired:(id)expired
{
  expiredCopy = expired;
  expirationDate = [(HKSPSleepEvent *)self expirationDate];
  if (expirationDate)
  {
    expirationDate2 = [(HKSPSleepEvent *)self expirationDate];
    v7 = [expiredCopy hksp_isAfterOrSameAsDate:expirationDate2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectWithSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [[HKSPSleepEvent alloc] initWithIdentifier:self->_identifier dueDate:self->_dueDate context:self->_context type:self->_type expirationDate:self->_expirationDate isUserVisible:self->_isUserVisible];
  v6 = [anchorCopy copyWithZone:0];

  syncAnchor = v5->_syncAnchor;
  v5->_syncAnchor = v6;

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  dueDate = [(HKSPSleepEvent *)self dueDate];
  dueDate2 = [compareCopy dueDate];

  v7 = [dueDate compare:dueDate2];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      identifier = [(HKSPSleepEvent *)self identifier];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __26__HKSPSleepEvent_isEqual___block_invoke;
      v40[3] = &unk_279C74680;
      v8 = v5;
      v41 = v8;
      v9 = [v6 appendObject:identifier counterpart:v40];

      dueDate = [(HKSPSleepEvent *)self dueDate];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __26__HKSPSleepEvent_isEqual___block_invoke_2;
      v38[3] = &unk_279C746A8;
      v11 = v8;
      v39 = v11;
      v12 = [v6 appendObject:dueDate counterpart:v38];

      context = [(HKSPSleepEvent *)self context];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __26__HKSPSleepEvent_isEqual___block_invoke_3;
      v36[3] = &unk_279C74410;
      v14 = v11;
      v37 = v14;
      v15 = [v6 appendObject:context counterpart:v36];

      expirationDate = [(HKSPSleepEvent *)self expirationDate];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __26__HKSPSleepEvent_isEqual___block_invoke_4;
      v34[3] = &unk_279C746A8;
      v17 = v14;
      v35 = v17;
      v18 = [v6 appendObject:expirationDate counterpart:v34];

      isUserVisible = [(HKSPSleepEvent *)self isUserVisible];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __26__HKSPSleepEvent_isEqual___block_invoke_5;
      v32[3] = &unk_279C746D0;
      v20 = v17;
      v33 = v20;
      v21 = [v6 appendBool:isUserVisible counterpart:v32];
      type = [(HKSPSleepEvent *)self type];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __26__HKSPSleepEvent_isEqual___block_invoke_6;
      v30 = &unk_279C746F8;
      v31 = v20;
      v23 = v20;
      v24 = [v6 appendUnsignedInteger:type counterpart:&v27];
      v25 = [v6 isEqual];
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_dueDate forKey:@"dueDate"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeBool:self->_isUserVisible forKey:@"isUserVisible"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_syncAnchor forKey:@"syncAnchor"];
}

- (HKSPSleepEvent)initWithCoder:(id)coder
{
  v23[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HKSPSleepEvent;
  v5 = [(HKSPSleepEvent *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueDate"];
    dueDate = v5->_dueDate;
    v5->_dueDate = v8;

    v10 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v23[3] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"context"];
    context = v5->_context;
    v5->_context = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v15;

    v5->_isUserVisible = [coderCopy decodeBoolForKey:@"isUserVisible"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v17 = [coderCopy decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"syncAnchor"];
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
  builder = [MEMORY[0x277CF0C40] builder];
  identifier = [(HKSPSleepEvent *)self identifier];
  v5 = [builder appendObject:identifier];

  dueDate = [(HKSPSleepEvent *)self dueDate];
  v7 = [builder appendObject:dueDate];

  context = [(HKSPSleepEvent *)self context];
  v9 = [builder appendObject:context];

  expirationDate = [(HKSPSleepEvent *)self expirationDate];
  v11 = [builder appendObject:expirationDate];

  v12 = [builder appendBool:{-[HKSPSleepEvent isUserVisible](self, "isUserVisible")}];
  v13 = [builder appendUnsignedInteger:{-[HKSPSleepEvent type](self, "type")}];
  v14 = [builder hash];

  return v14;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPSleepEvent *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(HKSPSleepEvent *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  dueDate = [(HKSPSleepEvent *)self dueDate];
  hkspDescription = [dueDate hkspDescription];
  v7 = [v3 appendObject:hkspDescription withName:@"dueDate"];

  context = [(HKSPSleepEvent *)self context];
  v9 = [v3 appendObject:context withName:@"context" skipIfNil:1];

  expirationDate = [(HKSPSleepEvent *)self expirationDate];
  hkspDescription2 = [expirationDate hkspDescription];
  v12 = [v3 appendObject:hkspDescription2 withName:@"expirationDate" skipIfNil:1];

  v13 = [v3 appendBool:-[HKSPSleepEvent isUserVisible](self withName:{"isUserVisible"), @"isUserVisible"}];
  if ([(HKSPSleepEvent *)self type])
  {
    v14 = [v3 appendUnsignedInteger:-[HKSPSleepEvent type](self withName:{"type"), @"type"}];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPSleepEvent *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end