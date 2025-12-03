@interface _UIPhysicalButtonMutableConfigurationSet
- (_UIPhysicalButtonMutableConfigurationSet)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setConfiguration:(id)configuration forButton:(unint64_t)button;
- (void)_unionWithConfigurationSet:(id)set;
@end

@implementation _UIPhysicalButtonMutableConfigurationSet

- (_UIPhysicalButtonMutableConfigurationSet)init
{
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:1251 description:@"_UIPhysicalButtonMutableConfigurationSet cannot be subclassed"];
  }

  return [(_UIPhysicalButtonConfigurationSet *)self _initWithConfigurationsDictionary:?];
}

- (void)_setConfiguration:(id)configuration forButton:(unint64_t)button
{
  ++self->_mutationDetector;
  v13 = 0;
  v8 = [(_UIPhysicalButtonConfigurationSet *)self _validateRequirementsForCandidateButton:button andConfiguration:configuration allowingNilRequiredConfiguration:1 withOutErrorMessage:&v13];
  v9 = v13;
  if (v8)
  {
    configurationsByButton = self->super._configurationsByButton;
    if (configuration)
    {
      currentHandler = [configuration copy];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:button];
      [(NSMutableDictionary *)configurationsByButton setObject:currentHandler forKey:v12];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:button];
      [(NSMutableDictionary *)configurationsByButton removeObjectForKey:currentHandler];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:1267 description:{@"Invalid button and configuration pair for reason: %@", v9}];
  }
}

- (void)_unionWithConfigurationSet:(id)set
{
  if (self)
  {
    if (set)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __87___UIPhysicalButtonMutableConfigurationSet__unionWithConfigurationSet_acceptanceBlock___block_invoke;
      v3[3] = &unk_1E712C658;
      v3[4] = self;
      v3[5] = set;
      v3[6] = 0;
      _UIPhysicalButtonEnumerateAllButtonsWithBlock(v3);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIPhysicalButtonConfigurationSet alloc];
  v5 = [(NSMutableDictionary *)self->super._configurationsByButton copy];
  v6 = [(_UIPhysicalButtonConfigurationSet *)v4 _initWithConfigurationsDictionary:v5];

  return v6;
}

@end