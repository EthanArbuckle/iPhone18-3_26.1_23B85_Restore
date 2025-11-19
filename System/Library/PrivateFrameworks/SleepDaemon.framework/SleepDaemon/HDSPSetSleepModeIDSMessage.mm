@interface HDSPSetSleepModeIDSMessage
- (HDSPSetSleepModeIDSMessage)initWithCoder:(id)a3;
- (HDSPSetSleepModeIDSMessage)initWithSleepModeOn:(BOOL)a3;
- (NSString)identifier;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HDSPSetSleepModeIDSMessage

- (HDSPSetSleepModeIDSMessage)initWithSleepModeOn:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HDSPSetSleepModeIDSMessage;
  v4 = [(HDSPSetSleepModeIDSMessage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sleepModeOn = a3;
    v6 = v4;
  }

  return v5;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPSetSleepModeIDSMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDSPSetSleepModeIDSMessage;
  v5 = [(HDSPSetSleepModeIDSMessage *)&v8 init];
  if (v5)
  {
    v5->_sleepModeOn = [v4 decodeBoolForKey:@"sleepModeOn"];
    v6 = v5;
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(HDSPSetSleepModeIDSMessage *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HDSPSetSleepModeIDSMessage sleepModeOn](self withName:{"sleepModeOn"), @"sleepModeOn"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HDSPSetSleepModeIDSMessage *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end