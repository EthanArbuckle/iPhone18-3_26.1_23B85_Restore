@interface _UIPhysicalButtonConfigurationSet
+ (id)_configurationSetFromNSSet:(uint64_t)a1;
- (BOOL)_isFull;
- (BOOL)isEqual:(id)a3;
- (_UIPhysicalButtonConfigurationSet)init;
- (_UIPhysicalButtonConfigurationSet)initWithBSXPCCoder:(id)a3;
- (_UIPhysicalButtonConfigurationSet)initWithCoder:(id)a3;
- (_UIPhysicalButtonConfigurationSet)initWithXPCDictionary:(id)a3;
- (id)_configurationForButton:(unint64_t)a3;
- (id)_configurationPassingTest:(id)a3;
- (id)_nsSetRepresentation;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_validateRequirementsForCandidateButton:(void *)a3 andConfiguration:(char)a4 allowingNilRequiredConfiguration:(void *)a5 withOutErrorMessage:;
- (unint64_t)_countByEnumeratingWithState:(unint64_t)a3 objects:(unint64_t)a4 count:(unint64_t)a5 mutationPointer:;
- (unint64_t)hash;
- (void)_enumerateConfigurationsWithBlock:(id)a3;
- (void)_initWithConfigurationsDictionary:(void *)a1;
- (void)_validateButtonRequirements;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation _UIPhysicalButtonConfigurationSet

- (void)_validateButtonRequirements
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v1 = a1;
    v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v1);
          }

          v8 = *(*(&v13 + 1) + 8 * v6);
          v9 = [v8 _button];
          v12 = v7;
          v10 = [(_UIPhysicalButtonConfigurationSet *)v1 _validateRequirementsForCandidateButton:v9 andConfiguration:v8 allowingNilRequiredConfiguration:0 withOutErrorMessage:&v12];
          v4 = v12;

          if (!v10)
          {

            v11 = [MEMORY[0x1E696AAA8] currentHandler];
            [v11 handleFailureInMethod:sel__validateButtonRequirements object:v1 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:943 description:{@"Invalid for reason: %@", v4}];
            v1 = v11;
            goto LABEL_12;
          }

          ++v6;
          v7 = v4;
        }

        while (v3 != v6);
        v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      v4 = v1;
    }
  }
}

- (BOOL)_isFull
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 8) count];
  v2 = _UIPhysicalButtonAllAvailableButtons();
  v3 = v1 == [v2 count];

  return v3;
}

+ (id)_configurationSetFromNSSet:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v19 = 0;
  IsMostlyValid = _UIPhysicalButtonConfigurationNSSetIsMostlyValid(a2, &v19);
  v5 = v19;
  if (IsMostlyValid)
  {
    v6 = objc_opt_new();
    v7 = v6;
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

          [v7 _setConfiguration:*(*(&v15 + 1) + 8 * i) forButton:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "_button")}];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }

    if (v7)
    {
      v7[16] = 0;
    }

    [(_UIPhysicalButtonConfigurationSet *)v7 _validateButtonRequirements];
    v13 = [v7 copy];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:sel__configurationSetFromNSSet_ object:v3 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:793 description:{@"Invalid configurations set for reason: %@; set: %@", v5, a2}];
    v13 = 0;
  }

  return v13;
}

- (_UIPhysicalButtonConfigurationSet)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:819 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonConfigurationSet init]", objc_opt_class()}];

  return 0;
}

- (void)_initWithConfigurationsDictionary:(void *)a1
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
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
        v36 = v3;
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
            v9 = [v8 unsignedIntegerValue];
            v10 = [v5 objectForKey:v8];
            if ((_UIPhysicalButtonIsValid(v9) & 1) == 0)
            {
              v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid dictionary key button value: %lu configuration: %@", v9, v10];;
              v22 = v21;
              goto LABEL_27;
            }

            IsValid = _UIPhysicalButtonIsValid(v9);
            if (v10)
            {
              v40 = [v10 _button] == v9;
              v12 = v5;
              v13 = [v10 _button];
              v14 = [v10 _behavior];
              v15 = _UIPhysicalButtonIsValid(v13);
              LODWORD(v13) = _UIPhysicalButtonBehaviorIsValidForButton(v14, v13);
              v16 = [v10 _behaviorOptions];
              LODWORD(v14) = _UIPhysicalButtonBehaviorOptionsIsValidForBehavior(v16, v14);

              v17 = v15 & v13;
              v5 = v12;
              v18 = v40 & v17 & v14;
            }

            else
            {
              v18 = 1;
            }

            if ((IsValid & v18 & 1) == 0)
            {
              v23 = MEMORY[0x1E696AEC0];
              v24 = _NSStringFromUIPhysicalButton(v9);
              [v23 stringWithFormat:@"Invalid configuration for %@: %@", v24, v10];
              goto LABEL_26;
            }

            if ((v9 - 1) >= 7)
            {
              v19 = 0;
            }

            else
            {
              v19 = 1 << v9;
            }

            if ((v19 & ~v6) == 0)
            {
              v25 = MEMORY[0x1E696AEC0];
              v24 = _NSStringFromUIPhysicalButton(v9);
              [v25 stringWithFormat:@"Configuration dictionary contains more than one %@ button", v24, v35];
              v21 = LABEL_26:;
              v26 = v21;

LABEL_27:
              v20 = v21;
              v27 = [MEMORY[0x1E696AAA8] currentHandler];
              v3 = v36;
              [v27 handleFailureInMethod:sel__initWithConfigurationsDictionary_ object:v36 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:830 description:{@"Invalid configurations dictionary for reason: %@; dictionary: %@", v20, v5}];

              a2 = v37;
              goto LABEL_28;
            }

            v6 |= v19;
          }

          v3 = v36;
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
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:sel__initWithConfigurationsDictionary_ object:v3 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:826 description:@"_UIPhysicalButtonConfigurationSet cannot be subclassed"];

    if (a2)
    {
      goto LABEL_5;
    }
  }

  v20 = 0;
LABEL_28:
  v43.receiver = v3;
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

- (uint64_t)_validateRequirementsForCandidateButton:(void *)a3 andConfiguration:(char)a4 allowingNilRequiredConfiguration:(void *)a5 withOutErrorMessage:
{
  if (!a1)
  {
    return 0;
  }

  v9 = a1;
  IsValid = _UIPhysicalButtonIsValid(a2);
  v11 = a2;
  if (a3)
  {
    v32 = v9;
    v12 = a4;
    v13 = a5;
    v14 = [a3 _button] == a2;
    v15 = [a3 _button];
    v16 = [a3 _behavior];
    v17 = _UIPhysicalButtonIsValid(v15);
    LODWORD(v15) = _UIPhysicalButtonBehaviorIsValidForButton(v16, v15);
    v18 = [a3 _behaviorOptions];
    LODWORD(v16) = _UIPhysicalButtonBehaviorOptionsIsValidForBehavior(v18, v16);

    a5 = v13;
    a4 = v12;
    v9 = v32;
    v19 = v14 & v17 & v15 & v16;
  }

  else
  {
    v19 = 1;
  }

  if ((IsValid & v19 & 1) == 0)
  {
    if (a5)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = _NSStringFromUIPhysicalButton(v11);
      *a5 = [v21 stringWithFormat:@"Invalid configuration for %@: %@", v22, a3];
    }

    return 0;
  }

  if (v9[16])
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
  v34 = a4;
  aBlock[4] = v9;
  aBlock[5] = a3;
  aBlock[6] = &v35;
  aBlock[7] = v11;
  v24 = _Block_copy(aBlock);
  if ([v23 count])
  {
    v20 = v24[2](v24, v23) ^ 1;
    if (a5)
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
      v27 = [v9 succinctDescription];
      v28 = _NSStringFromUIPhysicalButton(v11);
      v29 = [a3 succinctDescription];
      v30 = [v36[5] succinctDescription];
      *a5 = [v26 stringWithFormat:@"The candidate button configuration is not valid as its behavior differs from an existing configuration of a required button: self: %@ candidateButton: %@; candidateConfiguration: %@; configurationWithFailingRequirement: %@", v27, v28, v29, v30];;
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
  v1 = a1;
  if (a1)
  {
    v2 = a1[1];
    if (v2 && [v2 count])
    {
      v3 = objc_opt_new();
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57___UIPhysicalButtonConfigurationSet__nsSetRepresentation__block_invoke;
      v6[3] = &unk_1E712C5B8;
      v7 = v3;
      v4 = v3;
      [v1 _enumerateConfigurationsWithBlock:v6];
      v1 = [v4 copy];
    }

    else
    {
      v1 = objc_opt_new();
    }
  }

  return v1;
}

- (id)_configurationForButton:(unint64_t)a3
{
  configurationsByButton = self->_configurationsByButton;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)configurationsByButton objectForKey:v4];

  return v5;
}

- (void)_enumerateConfigurationsWithBlock:(id)a3
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
  v3[5] = a3;
  v3[6] = v4;
  _UIPhysicalButtonEnumerateAllButtonsWithBlock(v3);
  _Block_object_dispose(v4, 8);
}

- (id)_configurationPassingTest:(id)a3
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
  v5[4] = a3;
  v5[5] = &v6;
  [(_UIPhysicalButtonConfigurationSet *)self _enumerateConfigurationsWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)_countByEnumeratingWithState:(unint64_t)a3 objects:(unint64_t)a4 count:(unint64_t)a5 mutationPointer:
{
  if (!a1)
  {
    return 0;
  }

  v9 = *a2;
  if (!*a2)
  {
    a2[2] = a5;
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
    a2[1] = a3;
    if (a4)
    {
      v12 = v11;
      v13 = 0;
      v14 = v9;
      do
      {
        v15 = [v10 objectAtIndexedSubscript:v14];
        v16 = [v15 unsignedIntegerValue];

        v17 = [a1 _configurationForButton:v16];
        if (v17)
        {
          *(a3 + 8 * v13++) = v17;
        }

        ++v14;
      }

      while (v14 < v12 && v13 < a4);
    }

    else
    {
      v13 = 0;
    }

    *v19 = v13 + v9;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3 || !_NSIsNSObject())
  {
    return 0;
  }

  v5 = a3;
  v6 = objc_opt_class();
  if ((v6 == objc_opt_class() || (v7 = objc_opt_class(), v7 == objc_opt_class())) && (v8 = -[_UIPhysicalButtonConfigurationSet hash](self, "hash"), v8 == [v5 hash]))
  {
    configurationsByButton = self->_configurationsByButton;
    v10 = v5[1];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_configurationsByButton];
  v5 = [v3 hash];

  return v5;
}

- (id)succinctDescription
{
  v2 = [(_UIPhysicalButtonConfigurationSet *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(self);
  v5 = [v3 appendObject:v4 withName:@"configurations"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonConfigurationSet *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonConfigurationSet *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  if (!self || (configurationsByButton = self->_configurationsByButton) != 0 && [(NSMutableDictionary *)configurationsByButton count])
  {
    v6 = [MEMORY[0x1E698E680] builderWithObject:self];
    [v6 setActiveMultilinePrefix:a3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75___UIPhysicalButtonConfigurationSet_descriptionBuilderWithMultilinePrefix___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v7 = v6;
    v11 = v7;
    v12 = self;
    v8 = [v7 modifyBody:v10];
  }

  else
  {
    v7 = [(_UIPhysicalButtonConfigurationSet *)self succinctDescriptionBuilder];
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [_UIPhysicalButtonMutableConfigurationSet alloc];
  v5 = [(NSMutableDictionary *)self->_configurationsByButton copy];
  v6 = [(_UIPhysicalButtonConfigurationSet *)v4 _initWithConfigurationsDictionary:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___UIPhysicalButtonConfigurationSet_encodeWithCoder___block_invoke;
  v3[3] = &unk_1E712C5B8;
  v3[4] = a3;
  [(_UIPhysicalButtonConfigurationSet *)self _enumerateConfigurationsWithBlock:v3];
}

- (_UIPhysicalButtonConfigurationSet)initWithCoder:(id)a3
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
  v8[4] = a3;
  _UIPhysicalButtonEnumerateAllButtonsWithBlock(v8);
  v6 = [(_UIPhysicalButtonConfigurationSet *)self _initWithConfigurationsDictionary:?];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61___UIPhysicalButtonConfigurationSet_encodeWithXPCDictionary___block_invoke;
  v3[3] = &unk_1E712C5B8;
  v3[4] = a3;
  [(_UIPhysicalButtonConfigurationSet *)self _enumerateConfigurationsWithBlock:v3];
}

- (_UIPhysicalButtonConfigurationSet)initWithXPCDictionary:(id)a3
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
  v7[4] = a3;
  v7[5] = &v8;
  _UIPhysicalButtonEnumerateAllButtonsWithBlock(v7);
  v5 = [(_UIPhysicalButtonConfigurationSet *)self _initWithConfigurationsDictionary:?];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58___UIPhysicalButtonConfigurationSet_encodeWithBSXPCCoder___block_invoke;
  v3[3] = &unk_1E712C5B8;
  v3[4] = a3;
  [(_UIPhysicalButtonConfigurationSet *)self _enumerateConfigurationsWithBlock:v3];
}

- (_UIPhysicalButtonConfigurationSet)initWithBSXPCCoder:(id)a3
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
  v8[4] = a3;
  _UIPhysicalButtonEnumerateAllButtonsWithBlock(v8);
  v6 = [(_UIPhysicalButtonConfigurationSet *)self _initWithConfigurationsDictionary:?];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end