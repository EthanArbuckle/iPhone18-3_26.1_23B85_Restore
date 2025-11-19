@interface _UIPhysicalButtonMutableConfigurationSet
- (_UIPhysicalButtonMutableConfigurationSet)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setConfiguration:(id)a3 forButton:(unint64_t)a4;
- (void)_unionWithConfigurationSet:(id)a3;
@end

@implementation _UIPhysicalButtonMutableConfigurationSet

- (_UIPhysicalButtonMutableConfigurationSet)init
{
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:1251 description:@"_UIPhysicalButtonMutableConfigurationSet cannot be subclassed"];
  }

  return [(_UIPhysicalButtonConfigurationSet *)self _initWithConfigurationsDictionary:?];
}

- (void)_setConfiguration:(id)a3 forButton:(unint64_t)a4
{
  ++self->_mutationDetector;
  v13 = 0;
  v8 = [(_UIPhysicalButtonConfigurationSet *)self _validateRequirementsForCandidateButton:a4 andConfiguration:a3 allowingNilRequiredConfiguration:1 withOutErrorMessage:&v13];
  v9 = v13;
  if (v8)
  {
    configurationsByButton = self->super._configurationsByButton;
    if (a3)
    {
      v11 = [a3 copy];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)configurationsByButton setObject:v11 forKey:v12];
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)configurationsByButton removeObjectForKey:v11];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:1267 description:{@"Invalid button and configuration pair for reason: %@", v9}];
  }
}

- (void)_unionWithConfigurationSet:(id)a3
{
  if (self)
  {
    if (a3)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __87___UIPhysicalButtonMutableConfigurationSet__unionWithConfigurationSet_acceptanceBlock___block_invoke;
      v3[3] = &unk_1E712C658;
      v3[4] = self;
      v3[5] = a3;
      v3[6] = 0;
      _UIPhysicalButtonEnumerateAllButtonsWithBlock(v3);
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIPhysicalButtonConfigurationSet alloc];
  v5 = [(NSMutableDictionary *)self->super._configurationsByButton copy];
  v6 = [(_UIPhysicalButtonConfigurationSet *)v4 _initWithConfigurationsDictionary:v5];

  return v6;
}

@end