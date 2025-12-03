@interface SBSAElapsedTimerDescription
- (id)_equalsBuilder:(id)builder;
- (id)_hashBuilder;
- (id)_mutableDescriptionMissingEndAngleBracket;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initElapsedTimerDescriptionWithDescription:(id)description;
@end

@implementation SBSAElapsedTimerDescription

- (id)initElapsedTimerDescriptionWithDescription:(id)description
{
  descriptionCopy = description;
  timerDescriptionIdentifier = [descriptionCopy timerDescriptionIdentifier];
  [descriptionCopy timeInterval];
  v7 = v6;

  v10.receiver = self;
  v10.super_class = SBSAElapsedTimerDescription;
  v8 = [(SBSATimerDescription *)&v10 _initWithIdentifier:timerDescriptionIdentifier timeInterval:v7];

  if (v8)
  {
    v8[24] = 1;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  timerDescriptionIdentifier = [(SBSATimerDescription *)self timerDescriptionIdentifier];
  [(SBSATimerDescription *)self timeInterval];
  v6 = [v4 _initWithIdentifier:timerDescriptionIdentifier timeInterval:?];

  v6[24] = self->_elapsed;
  return v6;
}

- (id)_equalsBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = SBSAElapsedTimerDescription;
  v5 = [(SBSATimerDescription *)&v12 _equalsBuilder:builderCopy];
  elapsed = self->_elapsed;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SBSAElapsedTimerDescription__equalsBuilder___block_invoke;
  v10[3] = &unk_2783ACE58;
  v11 = builderCopy;
  v7 = builderCopy;
  v8 = [v5 appendBool:elapsed counterpart:v10];

  return v8;
}

- (id)_hashBuilder
{
  v6.receiver = self;
  v6.super_class = SBSAElapsedTimerDescription;
  _hashBuilder = [(SBSATimerDescription *)&v6 _hashBuilder];
  v4 = [_hashBuilder appendBool:self->_elapsed];

  return v4;
}

- (id)_mutableDescriptionMissingEndAngleBracket
{
  v5.receiver = self;
  v5.super_class = SBSAElapsedTimerDescription;
  _mutableDescriptionMissingClosingAngleBracket = [(SBSATimerDescription *)&v5 _mutableDescriptionMissingClosingAngleBracket];
  v3 = NSStringFromBOOL();
  [_mutableDescriptionMissingClosingAngleBracket appendFormat:@"; isElapsed: %@", v3];

  return _mutableDescriptionMissingClosingAngleBracket;
}

@end