@interface SBSATimerDescription
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBSATimerDescription)initWithTimeInterval:(double)a3;
- (id)_equalsBuilder:(id)a3;
- (id)_hashBuilder;
- (id)_initWithIdentifier:(id)a3 timeInterval:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSATimerDescription

- (SBSATimerDescription)initWithTimeInterval:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v6 = [(SBSATimerDescription *)self _initWithIdentifier:v5 timeInterval:a3];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v3 = [(SBSATimerDescription *)self _equalsBuilder:a3];
  v4 = [v3 isEqual];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(SBSATimerDescription *)self _hashBuilder];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v2 = [(SBSATimerDescription *)self _mutableDescriptionMissingClosingAngleBracket];
  [v2 appendString:@">"];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  timerDescriptionIdentifier = self->_timerDescriptionIdentifier;
  timeInterval = self->_timeInterval;

  return [v4 _initWithIdentifier:timerDescriptionIdentifier timeInterval:timeInterval];
}

- (id)_initWithIdentifier:(id)a3 timeInterval:(double)a4
{
  v8 = a3;
  if (!v8)
  {
    [SBSATimerDescription _initWithIdentifier:a2 timeInterval:self];
  }

  v12.receiver = self;
  v12.super_class = SBSATimerDescription;
  v9 = [(SBSATimerDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timerDescriptionIdentifier, a3);
    v10[2] = a4;
  }

  return v10;
}

- (id)_equalsBuilder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:self ofExpectedClass:objc_opt_class()];
  timerDescriptionIdentifier = self->_timerDescriptionIdentifier;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__SBSATimerDescription__equalsBuilder___block_invoke;
  v15[3] = &unk_2783ACDB8;
  v7 = v4;
  v16 = v7;
  v8 = [v5 appendObject:timerDescriptionIdentifier counterpart:v15];
  timeInterval = self->_timeInterval;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__SBSATimerDescription__equalsBuilder___block_invoke_2;
  v13[3] = &unk_2783ACE08;
  v14 = v7;
  v10 = v7;
  v11 = [v8 appendDouble:v13 counterpart:timeInterval];

  return v11;
}

- (id)_hashBuilder
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_timerDescriptionIdentifier];
  v5 = [v4 appendDouble:self->_timeInterval];

  return v5;
}

- (void)_initWithIdentifier:(uint64_t)a1 timeInterval:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSATimerDescription.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end