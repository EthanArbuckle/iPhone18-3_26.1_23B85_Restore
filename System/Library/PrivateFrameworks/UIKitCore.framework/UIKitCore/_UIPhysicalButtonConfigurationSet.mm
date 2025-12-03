@interface _UIPhysicalButtonConfigurationSet
+ (id)_configurationSetFromNSSet:(uint64_t)set;
- (BOOL)_isFull;
- (BOOL)isEqual:(id)equal;
- (_UIPhysicalButtonConfigurationSet)init;
- (_UIPhysicalButtonConfigurationSet)initWithBSXPCCoder:(id)coder;
- (_UIPhysicalButtonConfigurationSet)initWithCoder:(id)coder;
- (_UIPhysicalButtonConfigurationSet)initWithXPCDictionary:(id)dictionary;
- (id)_configurationForButton:(unint64_t)button;
- (id)_configurationPassingTest:(id)test;
- (id)_nsSetRepresentation;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_validateRequirementsForCandidateButton:(void *)button andConfiguration:(char)configuration allowingNilRequiredConfiguration:(void *)requiredConfiguration withOutErrorMessage:;
- (unint64_t)_countByEnumeratingWithState:(unint64_t)state objects:(unint64_t)objects count:(unint64_t)count mutationPointer:;
- (unint64_t)hash;
- (void)_enumerateConfigurationsWithBlock:(id)block;
- (void)_initWithConfigurationsDictionary:(void *)dictionary;
- (void)_validateButtonRequirements;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation _UIPhysicalButtonConfigurationSet

- (void)_validateButtonRequirements
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    selfCopy = self;
    v2 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = *v14;
      while (2)
      {
        v6 = 0;
        v7 = v4;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(selfCopy);
          }

          v8 = *(*(&v13 + 1) + 8 * v6);
          _button = [v8 _button];
          v12 = v7;
          v10 = [(_UIPhysicalButtonConfigurationSet *)selfCopy _validateRequirementsForCandidateButton:_button andConfiguration:v8 allowingNilRequiredConfiguration:0 withOutErrorMessage:&v12];
          v4 = v12;

          if (!v10)
          {

            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel__validateButtonRequirements object:selfCopy file:@"_UIPhysicalButtonConfiguration.m" lineNumber:943 description:{@"Invalid for reason: %@", v4}];
            selfCopy = currentHandler;
            goto LABEL_12;
          }

          ++v6;
          v7 = v4;
        }

        while (v3 != v6);
        v3 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }

LABEL_12:
    }

    else
    {
      v4 = selfCopy;
    }
  }
}

- (BOOL)_isFull
{
  if (!self)
  {
    return 0;
  }

  v1 = [*(self + 8) count];
  v2 = _UIPhysicalButtonAllAvailableButtons();
  v3 = v1 == [v2 count];

  return v3;
}

+ (id)_configurationSetFromNSSet:(uint64_t)set
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v19 = 0;
  IsMostlyValid = _UIPhysicalButtonConfigurationNSSetIsMostlyValid(a2, &v19);
  v5 = v19;
  if (IsMostlyValid)
  {
    v6 = objc_opt_new();
    currentHandler = v6;
    if (v6)
    {
      *(v6 + 16) = 1;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = a2;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [currentHandler _setConfiguration:*(*(&v15 + 1) + 8 * i) forButton:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "_button")}];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }

    if (currentHandler)
    {
      currentHandler[16] = 0;
    }

    [(_UIPhysicalButtonConfigurationSet *)currentHandler _validateButtonRequirements];
    v13 = [currentHandler copy];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__configurationSetFromNSSet_ object:v3 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:793 description:{@"Invalid configurations set for reason: %@; set: %@", v5, a2}];
    v13 = 0;
  }

  return v13;
}

- (_UIPhysicalButtonConfigurationSet)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:819 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonConfigurationSet init]", objc_opt_class()}];

  return 0;
}

- (void)_initWithConfigurationsDictionary:(void *)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    return 0;
  }

  dictionaryCopy = dictionary;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class() || v4 == objc_opt_class())
  {
    if (a2)
    {
LABEL_5:
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v5 = a2;
      v38 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v38)
      {
        v6 = 0;
        v39 = *v45;
        v36 = dictionaryCopy;
        v37 = a2;
        while (2)
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v45 != v39)
            {
              objc_enumerationMutation(v5);
            }

            v8 = *(*(&v44 + 1) + 8 * i);
            unsignedIntegerValue = [v8 unsignedIntegerValue];
            v10 = [v5 objectForKey:v8];
            if ((_UIPhysicalButtonIsValid(unsignedIntegerValue) & 1) == 0)
            {
              v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid dictionary key button value: %lu configuration: %@", unsignedIntegerValue, v10];;
              v22 = v21;
              goto LABEL_27;
            }

            IsValid = _UIPhysicalButtonIsValid(unsignedIntegerValue);
            if (v10)
            {
              v40 = [v10 _button] == unsignedIntegerValue;
              v12 = v5;
              _button = [v10 _button];
              _behavior = [v10 _behavior];
              v15 = _UIPhysicalButtonIsValid(_button);
              LODWORD(_button) = _UIPhysicalButtonBehaviorIsValidForButton(_behavior, _button);
              _behaviorOptions = [v10 _behaviorOptions];
              LODWORD(_behavior) = _UIPhysicalButtonBehaviorOptionsIsValidForBehavior(_behaviorOptions, _behavior);

              v17 = v15 & _button;
              v5 = v12;
              v18 = v40 & v17 & _behavior;
            }

            else
            {
              v18 = 1;
            }

            if ((IsValid & v18 & 1) == 0)
            {
              v23 = MEMORY[0x1E696AEC0];
              v24 = _NSStringFromUIPhysicalButton(unsignedIntegerValue);
              [v23 stringWithFormat:@"Invalid configuration for %@: %@", v24, v10];
              goto LABEL_26;
            }

            if ((unsignedIntegerValue - 1) >= 7)
            {
              v19 = 0;
            }

            else
            {
              v19 = 1 << unsignedIntegerValue;
            }

            if ((v19 & ~v6) == 0)
            {
              v25 = MEMORY[0x1E696AEC0];
              v24 = _NSStringFromUIPhysicalButton(unsignedIntegerValue);
              [v25 stringWithFormat:@"Configuration dictionary contains more than one %@ button", v24, v35];
              v21 = LABEL_26:;
              v26 = v21;

LABEL_27:
              v20 = v21;
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              dictionaryCopy = v36;
              [currentHandler handleFailureInMethod:sel__initWithConfigurationsDictionary_ object:v36 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:830 description:{@"Invalid configurations dictionary for reason: %@; dictionary: %@", v20, v5}];

              a2 = v37;
              goto LABEL_28;
            }

            v6 |= v19;
          }

          dictionaryCopy = v36;
          a2 = v37;
          v38 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__initWithConfigurationsDictionary_ object:dictionaryCopy file:@"_UIPhysicalButtonConfiguration.m" lineNumber:826 description:@"_UIPhysicalButtonConfigurationSet cannot be subclassed"];

    if (a2)
    {
      goto LABEL_5;
    }
  }

  v20 = 0;
LABEL_28:
  v43.receiver = dictionaryCopy;
  v43.super_class = _UIPhysicalButtonConfigurationSet;
  v28 = objc_msgSendSuper2(&v43, sel_init);
  if (v28)
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
    v30 = v28[1];
    v28[1] = v29;

    if (a2)
    {
      if ([a2 count])
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __71___UIPhysicalButtonConfigurationSet__initWithConfigurationsDictionary___block_invoke;
        v41[3] = &unk_1E70F43F0;
        v41[4] = a2;
        v31 = v28;
        v42 = v31;
        _UIPhysicalButtonEnumerateAllButtonsWithBlock(v41);
        [(_UIPhysicalButtonConfigurationSet *)v31 _validateButtonRequirements];
      }
    }
  }

  v32 = v28;

  return v32;
}

- (uint64_t)_validateRequirementsForCandidateButton:(void *)button andConfiguration:(char)configuration allowingNilRequiredConfiguration:(void *)requiredConfiguration withOutErrorMessage:
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  IsValid = _UIPhysicalButtonIsValid(a2);
  v11 = a2;
  if (button)
  {
    v32 = selfCopy;
    configurationCopy = configuration;
    requiredConfigurationCopy = requiredConfiguration;
    v14 = [button _button] == a2;
    _button = [button _button];
    _behavior = [button _behavior];
    v17 = _UIPhysicalButtonIsValid(_button);
    LODWORD(_button) = _UIPhysicalButtonBehaviorIsValidForButton(_behavior, _button);
    _behaviorOptions = [button _behaviorOptions];
    LODWORD(_behavior) = _UIPhysicalButtonBehaviorOptionsIsValidForBehavior(_behaviorOptions, _behavior);

    requiredConfiguration = requiredConfigurationCopy;
    configuration = configurationCopy;
    selfCopy = v32;
    v19 = v14 & v17 & _button & _behavior;
  }

  else
  {
    v19 = 1;
  }

  if ((IsValid & v19 & 1) == 0)
  {
    if (requiredConfiguration)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = _NSStringFromUIPhysicalButton(v11);
      *requiredConfiguration = [v21 stringWithFormat:@"Invalid configuration for %@: %@", v22, button];
    }

    return 0;
  }

  if (selfCopy[16])
  {
    return 1;
  }

  v23 = _UIPhysicalButtonRequiredButtonsForButton(v11);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__251;
  v39 = __Block_byref_object_dispose__251;
  v40 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __147___UIPhysicalButtonConfigurationSet__validateRequirementsForCandidateButton_andConfiguration_allowingNilRequiredConfiguration_withOutErrorMessage___block_invoke;
  aBlock[3] = &unk_1E712C590;
  configurationCopy2 = configuration;
  aBlock[4] = selfCopy;
  aBlock[5] = button;
  aBlock[6] = &v35;
  aBlock[7] = v11;
  v24 = _Block_copy(aBlock);
  if ([v23 count])
  {
    v20 = v24[2](v24, v23) ^ 1;
    if (requiredConfiguration)
    {
      v25 = v20;
    }

    else
    {
      v25 = 1;
    }

    if ((v25 & 1) == 0)
    {
      v26 = MEMORY[0x1E696AEC0];
      succinctDescription = [selfCopy succinctDescription];
      v28 = _NSStringFromUIPhysicalButton(v11);
      succinctDescription2 = [button succinctDescription];
      succinctDescription3 = [v36[5] succinctDescription];
      *requiredConfiguration = [v26 stringWithFormat:@"The candidate button configuration is not valid as its behavior differs from an existing configuration of a required button: self: %@ candidateButton: %@; candidateConfiguration: %@; configurationWithFailingRequirement: %@", succinctDescription, v28, succinctDescription2, succinctDescription3];;
    }
  }

  else
  {
    v20 = 1;
  }

  _Block_object_dispose(&v35, 8);
  return v20;
}

- (id)_nsSetRepresentation
{
  selfCopy = self;
  if (self)
  {
    v2 = self[1];
    if (v2 && [v2 count])
    {
      v3 = objc_opt_new();
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57___UIPhysicalButtonConfigurationSet__nsSetRepresentation__block_invoke;
      v6[3] = &unk_1E712C5B8;
      v7 = v3;
      v4 = v3;
      [selfCopy _enumerateConfigurationsWithBlock:v6];
      selfCopy = [v4 copy];
    }

    else
    {
      selfCopy = objc_opt_new();
    }
  }

  return selfCopy;
}

- (id)_configurationForButton:(unint64_t)button
{
  configurationsByButton = self->_configurationsByButton;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:button];
  v5 = [(NSMutableDictionary *)configurationsByButton objectForKey:v4];

  return v5;
}

- (void)_enumerateConfigurationsWithBlock:(id)block
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71___UIPhysicalButtonConfigurationSet__enumerateConfigurationsWithBlock___block_invoke;
  v3[3] = &unk_1E712C5E0;
  v3[4] = self;
  v3[5] = block;
  v3[6] = v4;
  _UIPhysicalButtonEnumerateAllButtonsWithBlock(v3);
  _Block_object_dispose(v4, 8);
}

- (id)_configurationPassingTest:(id)test
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__251;
  v10 = __Block_byref_object_dispose__251;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63___UIPhysicalButtonConfigurationSet__configurationPassingTest___block_invoke;
  v5[3] = &unk_1E712C608;
  v5[4] = test;
  v5[5] = &v6;
  [(_UIPhysicalButtonConfigurationSet *)self _enumerateConfigurationsWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)_countByEnumeratingWithState:(unint64_t)state objects:(unint64_t)objects count:(unint64_t)count mutationPointer:
{
  if (!self)
  {
    return 0;
  }

  v9 = *a2;
  if (!*a2)
  {
    a2[2] = count;
  }

  v10 = _UIPhysicalButtonAllAvailableButtons();
  v11 = [v10 count];
  if (v9 >= v11)
  {
    v13 = 0;
  }

  else
  {
    v19 = a2;
    a2[1] = state;
    if (objects)
    {
      v12 = v11;
      v13 = 0;
      v14 = v9;
      do
      {
        v15 = [v10 objectAtIndexedSubscript:v14];
        unsignedIntegerValue = [v15 unsignedIntegerValue];

        v17 = [self _configurationForButton:unsignedIntegerValue];
        if (v17)
        {
          *(state + 8 * v13++) = v17;
        }

        ++v14;
      }

      while (v14 < v12 && v13 < objects);
    }

    else
    {
      v13 = 0;
    }

    *v19 = v13 + v9;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal || !_NSIsNSObject())
  {
    return 0;
  }

  equalCopy = equal;
  v6 = objc_opt_class();
  if ((v6 == objc_opt_class() || (v7 = objc_opt_class(), v7 == objc_opt_class())) && (v8 = -[_UIPhysicalButtonConfigurationSet hash](self, "hash"), v8 == [equalCopy hash]))
  {
    configurationsByButton = self->_configurationsByButton;
    v10 = equalCopy[1];
    v11 = configurationsByButton;
    v12 = v10;
    v13 = v12;
    if (v11 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0;
      if (v11 && v12)
      {
        v14 = [(NSMutableDictionary *)v11 isEqual:v12];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_configurationsByButton];
  v5 = [builder hash];

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPhysicalButtonConfigurationSet *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(self);
  v5 = [v3 appendObject:v4 withName:@"configurations"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonConfigurationSet *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonConfigurationSet *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  if (!self || (configurationsByButton = self->_configurationsByButton) != 0 && [(NSMutableDictionary *)configurationsByButton count])
  {
    v6 = [MEMORY[0x1E698E680] builderWithObject:self];
    [v6 setActiveMultilinePrefix:prefix];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75___UIPhysicalButtonConfigurationSet_descriptionBuilderWithMultilinePrefix___block_invoke;
    v10[3] = &unk_1E70F35B8;
    succinctDescriptionBuilder = v6;
    v11 = succinctDescriptionBuilder;
    selfCopy = self;
    v8 = [succinctDescriptionBuilder modifyBody:v10];
  }

  else
  {
    succinctDescriptionBuilder = [(_UIPhysicalButtonConfigurationSet *)self succinctDescriptionBuilder];
  }

  return succinctDescriptionBuilder;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [_UIPhysicalButtonMutableConfigurationSet alloc];
  v5 = [(NSMutableDictionary *)self->_configurationsByButton copy];
  v6 = [(_UIPhysicalButtonConfigurationSet *)v4 _initWithConfigurationsDictionary:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___UIPhysicalButtonConfigurationSet_encodeWithCoder___block_invoke;
  v3[3] = &unk_1E712C5B8;
  v3[4] = coder;
  [(_UIPhysicalButtonConfigurationSet *)self _enumerateConfigurationsWithBlock:v3];
}

- (_UIPhysicalButtonConfigurationSet)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__251;
  v13 = __Block_byref_object_dispose__251;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIPhysicalButtonConfigurationSet_initWithCoder___block_invoke;
  v8[3] = &unk_1E712C630;
  v8[5] = &v9;
  v8[6] = v5;
  v8[4] = coder;
  _UIPhysicalButtonEnumerateAllButtonsWithBlock(v8);
  v6 = [(_UIPhysicalButtonConfigurationSet *)self _initWithConfigurationsDictionary:?];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61___UIPhysicalButtonConfigurationSet_encodeWithXPCDictionary___block_invoke;
  v3[3] = &unk_1E712C5B8;
  v3[4] = dictionary;
  [(_UIPhysicalButtonConfigurationSet *)self _enumerateConfigurationsWithBlock:v3];
}

- (_UIPhysicalButtonConfigurationSet)initWithXPCDictionary:(id)dictionary
{
  objc_opt_class();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__251;
  v12 = __Block_byref_object_dispose__251;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59___UIPhysicalButtonConfigurationSet_initWithXPCDictionary___block_invoke;
  v7[3] = &unk_1E70FA4A0;
  v7[4] = dictionary;
  v7[5] = &v8;
  _UIPhysicalButtonEnumerateAllButtonsWithBlock(v7);
  v5 = [(_UIPhysicalButtonConfigurationSet *)self _initWithConfigurationsDictionary:?];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58___UIPhysicalButtonConfigurationSet_encodeWithBSXPCCoder___block_invoke;
  v3[3] = &unk_1E712C5B8;
  v3[4] = coder;
  [(_UIPhysicalButtonConfigurationSet *)self _enumerateConfigurationsWithBlock:v3];
}

- (_UIPhysicalButtonConfigurationSet)initWithBSXPCCoder:(id)coder
{
  v5 = objc_opt_class();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__251;
  v13 = __Block_byref_object_dispose__251;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56___UIPhysicalButtonConfigurationSet_initWithBSXPCCoder___block_invoke;
  v8[3] = &unk_1E712C630;
  v8[5] = &v9;
  v8[6] = v5;
  v8[4] = coder;
  _UIPhysicalButtonEnumerateAllButtonsWithBlock(v8);
  v6 = [(_UIPhysicalButtonConfigurationSet *)self _initWithConfigurationsDictionary:?];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end