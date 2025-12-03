@interface HDSPSetSleepModeIDSMessage
- (HDSPSetSleepModeIDSMessage)initWithCoder:(id)coder;
- (HDSPSetSleepModeIDSMessage)initWithSleepModeOn:(BOOL)on;
- (NSString)identifier;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HDSPSetSleepModeIDSMessage

- (HDSPSetSleepModeIDSMessage)initWithSleepModeOn:(BOOL)on
{
  v8.receiver = self;
  v8.super_class = HDSPSetSleepModeIDSMessage;
  v4 = [(HDSPSetSleepModeIDSMessage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sleepModeOn = on;
    v6 = v4;
  }

  return v5;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPSetSleepModeIDSMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HDSPSetSleepModeIDSMessage;
  v5 = [(HDSPSetSleepModeIDSMessage *)&v8 init];
  if (v5)
  {
    v5->_sleepModeOn = [coderCopy decodeBoolForKey:@"sleepModeOn"];
    v6 = v5;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HDSPSetSleepModeIDSMessage *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HDSPSetSleepModeIDSMessage sleepModeOn](self withName:{"sleepModeOn"), @"sleepModeOn"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HDSPSetSleepModeIDSMessage *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end