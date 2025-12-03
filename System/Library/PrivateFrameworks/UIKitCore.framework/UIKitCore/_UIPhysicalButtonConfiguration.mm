@interface _UIPhysicalButtonConfiguration
+ (id)_cameraShutterConfigurationsForButtons:(uint64_t)buttons withFilter:(uint64_t)filter andOptionsProvider:;
+ (id)_cameraShutterConfigurationsWithFilter:(id)filter andOptionsProvider:(id)provider;
+ (id)_cameraShutterConfigurationsWithOptions:(id)options;
+ (id)_cameraShutterConfigurationsWithOptionsProvider:(id)provider;
+ (id)_configurationWithPhysicalButton:(unint64_t)button behavior:(unint64_t)behavior behaviorOptions:(id)options;
+ (id)_ringerButtonDynamicActionConfiguration;
+ (id)_volumeConfigurations;
- (BOOL)_isEqualToConfigurationMinusGeneration:(_BOOL8)result;
- (BOOL)isEqual:(id)equal;
- (_UIPhysicalButtonBehaviorOptions)_behaviorOptions;
- (_UIPhysicalButtonConfiguration)init;
- (_UIPhysicalButtonConfiguration)initWithBSXPCCoder:(id)coder;
- (_UIPhysicalButtonConfiguration)initWithCoder:(id)coder;
- (_UIPhysicalButtonConfiguration)initWithXPCDictionary:(id)dictionary;
- (id)_initWithPhysicalButton:(unint64_t)button behavior:(void *)behavior behaviorOptions:(uint64_t)options generation:(void *)generation auditToken:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation _UIPhysicalButtonConfiguration

- (_UIPhysicalButtonBehaviorOptions)_behaviorOptions
{
  v2 = [(_UIPhysicalButtonBehaviorOptions *)self->_behaviorOptions copy];

  return v2;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:self->_button];
  v5 = [builder appendUnsignedInteger:self->_behavior];
  v6 = [builder appendObject:self->_behaviorOptions];
  v7 = [builder appendObject:self->_auditToken];
  v8 = [builder appendString:self->_name];
  v9 = [builder appendBool:self->_wantsSystemShellExclusivePriority];
  v10 = [builder appendInt64:self->_generation];
  v11 = [builder hash];

  return v11;
}

+ (id)_configurationWithPhysicalButton:(unint64_t)button behavior:(unint64_t)behavior behaviorOptions:(id)options
{
  v8 = [_UIPhysicalButtonConfiguration alloc];
  bytes = 0;
  do
  {
    v9 = CCRandomGenerateBytes(&bytes, 8uLL);
    if (v9)
    {
      v12 = v9;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t _UIPhysicalButtonConfigurationRandomGeneration(void)"];
      [currentHandler handleFailureInFunction:v16 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:291 description:{@"Failed to create configuration generation with status: %d", v12}];
    }

    v10 = bytes;
    if (bytes)
    {
      v11 = bytes == 0x3E1CC2CA76C17F8;
    }

    else
    {
      v11 = 1;
    }
  }

  while (v11);
  tokenForCurrentProcess = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  v14 = [(_UIPhysicalButtonConfiguration *)v8 _initWithPhysicalButton:button behavior:behavior behaviorOptions:options generation:v10 auditToken:tokenForCurrentProcess];

  return v14;
}

- (id)_initWithPhysicalButton:(unint64_t)button behavior:(void *)behavior behaviorOptions:(uint64_t)options generation:(void *)generation auditToken:
{
  selfCopy = self;
  if (!self)
  {
    return selfCopy;
  }

  v12 = objc_opt_class();
  if (v12 != objc_opt_class())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:selfCopy file:@"_UIPhysicalButtonConfiguration.m" lineNumber:476 description:@"_UIPhysicalButtonConfiguration cannot be subclassed"];
  }

  if ((_UIPhysicalButtonIsValid(a2) & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:selfCopy file:@"_UIPhysicalButtonConfiguration.m" lineNumber:478 description:{@"Invalid button: %lu", a2}];
  }

  if ((_UIPhysicalButtonBehaviorIsValidForButton(button, a2) & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = _NSStringFromUIPhysicalButton(a2);
    v23 = _NSStringFromUIPhysicalButtonBehavior(button);
    [currentHandler3 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:selfCopy file:@"_UIPhysicalButtonConfiguration.m" lineNumber:480 description:{@"Invalid behavior for button: %@; behavior: %@", v22, v23}];
  }

  if (_UIPhysicalButtonBehaviorOptionsIsValidForBehavior(behavior, button))
  {
    if (options)
    {
      goto LABEL_10;
    }

LABEL_15:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:selfCopy file:@"_UIPhysicalButtonConfiguration.m" lineNumber:483 description:{@"Invalid configuration generation: %llu", 0}];

    if (generation)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  v25 = _NSStringFromUIPhysicalButtonBehavior(button);
  [currentHandler5 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:selfCopy file:@"_UIPhysicalButtonConfiguration.m" lineNumber:482 description:{@"Invalid options for %@: %@", v25, behavior}];

  if (!options)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (generation)
  {
    goto LABEL_11;
  }

LABEL_16:
  currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler6 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:selfCopy file:@"_UIPhysicalButtonConfiguration.m" lineNumber:484 description:{@"Invalid configuration auditToken: %@", 0}];

LABEL_11:
  v28.receiver = selfCopy;
  v28.super_class = _UIPhysicalButtonConfiguration;
  v13 = objc_msgSendSuper2(&v28, sel_init);
  selfCopy = v13;
  if (v13)
  {
    v13[2] = a2;
    v13[3] = button;
    v14 = [behavior copy];
    v15 = *(selfCopy + 4);
    *(selfCopy + 4) = v14;

    *(selfCopy + 5) = options;
    v16 = [generation copy];
    v17 = *(selfCopy + 6);
    *(selfCopy + 6) = v16;

    *(selfCopy + 8) = 0;
  }

  return selfCopy;
}

+ (id)_cameraShutterConfigurationsForButtons:(uint64_t)buttons withFilter:(uint64_t)filter andOptionsProvider:
{
  v62 = *MEMORY[0x1E69E9840];
  v43 = objc_opt_self();
  if (![a2 count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__cameraShutterConfigurationsForButtons_withFilter_andOptionsProvider_ object:v43 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"buttonNumberArray.count > 0"}];

    if (buttons)
    {
      goto LABEL_3;
    }

LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  if (!buttons)
  {
    goto LABEL_25;
  }

LABEL_3:
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v42 = a2;
  obj = a2;
  v7 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v56;
    buttonsCopy = buttons;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * i);
        unsignedIntegerValue = [v12 unsignedIntegerValue];
        if (((*(buttons + 16))(buttons, unsignedIntegerValue) & 1) == 0)
        {
          filterCopy = filter;
          v15 = v8;
          if (!v9)
          {
            v9 = [obj mutableCopy];
          }

          [v9 removeObject:v12];
          v16 = _UIPhysicalButtonRequiredButtonsForButton(unsignedIntegerValue);
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v52;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v52 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [v9 removeObject:*(*(&v51 + 1) + 8 * j)];
              }

              v18 = [v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v18);
          }

          v8 = v15;
          filter = filterCopy;
          buttons = buttonsCopy;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  a2 = v42;
LABEL_26:
  if (v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = a2;
  }

  v23 = v22;
  v24 = [v23 count];
  v25 = v23;
  if (!v24)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__cameraShutterConfigurationsForButtons_withFilter_andOptionsProvider_ object:v43 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:370 description:@"Invalid camera shutter configuration filter resulted in removal of all buttons"];

    v25 = a2;
  }

  v26 = v25;

  v27 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obja = v26;
  v28 = [obja countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v48;
    do
    {
      v31 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obja);
        }

        unsignedIntegerValue2 = [*(*(&v47 + 1) + 8 * v31) unsignedIntegerValue];
        if (filter)
        {
          v33 = (*(filter + 16))(filter, unsignedIntegerValue2);
        }

        else
        {
          v33 = 0;
        }

        if (_UIPhysicalButtonBehaviorOptionsIsValidForBehavior(v33, 0))
        {
          v34 = [v33 copy];
        }

        else
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:sel__cameraShutterConfigurationsForButtons_withFilter_andOptionsProvider_ object:v43 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:382 description:{@"Invalid options object for camera shutter configurations: %@", v33}];

          v34 = +[_UIPhysicalButtonBehaviorCameraShutterOptions behaviorOptions];
        }

        v35 = v34;

        v36 = [_UIPhysicalButtonConfiguration _configurationWithPhysicalButton:unsignedIntegerValue2 behavior:0 behaviorOptions:v35];
        [v27 addObject:v36];

        ++v31;
      }

      while (v29 != v31);
      v38 = [obja countByEnumeratingWithState:&v47 objects:v59 count:16];
      v29 = v38;
    }

    while (v38);
  }

  v39 = [v27 copy];

  return v39;
}

+ (id)_cameraShutterConfigurationsWithOptionsProvider:(id)provider
{
  v5 = _UIPhysicalButtonAndBehaviorMap();
  v6 = [v5 objectForKey:&unk_1EFE34078];

  v7 = [(_UIPhysicalButtonConfiguration *)self _cameraShutterConfigurationsForButtons:v6 withFilter:0 andOptionsProvider:provider];

  return v7;
}

+ (id)_cameraShutterConfigurationsWithFilter:(id)filter andOptionsProvider:(id)provider
{
  v7 = _UIPhysicalButtonAndBehaviorMap();
  v8 = [v7 objectForKey:&unk_1EFE34078];

  v9 = [(_UIPhysicalButtonConfiguration *)self _cameraShutterConfigurationsForButtons:v8 withFilter:filter andOptionsProvider:provider];

  return v9;
}

+ (id)_cameraShutterConfigurationsWithOptions:(id)options
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74___UIPhysicalButtonConfiguration__cameraShutterConfigurationsWithOptions___block_invoke;
  v5[3] = &unk_1E712C568;
  v5[4] = options;
  v3 = [self _cameraShutterConfigurationsWithOptionsProvider:v5];

  return v3;
}

+ (id)_ringerButtonDynamicActionConfiguration
{
  v2 = [_UIPhysicalButtonConfiguration _configurationWithPhysicalButton:3 behavior:1 behaviorOptions:0];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];

  return v3;
}

+ (id)_volumeConfigurations
{
  v2 = [_UIPhysicalButtonConfiguration _configurationWithPhysicalButton:1 behavior:2 behaviorOptions:0];
  v3 = [_UIPhysicalButtonConfiguration _configurationWithPhysicalButton:2 behavior:2 behaviorOptions:0];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{v2, v3, 0}];

  return v4;
}

- (_UIPhysicalButtonConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:466 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonConfiguration init]", objc_opt_class()}];

  return 0;
}

- (BOOL)_isEqualToConfigurationMinusGeneration:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    v4 = objc_opt_class();
    if (v4 != objc_opt_class() || *(v3 + 16) != *(a2 + 16) || *(v3 + 24) != *(a2 + 24))
    {
      return 0;
    }

    v5 = *(a2 + 32);
    v6 = *(v3 + 32);
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (!v6 || !v7)
      {
        goto LABEL_22;
      }

      v9 = [v6 isEqual:v7];

      if (!v9)
      {
        return 0;
      }
    }

    v10 = *(a2 + 48);
    v6 = *(v3 + 48);
    v11 = v10;
    v8 = v11;
    if (v6 == v11)
    {
    }

    else
    {
      if (!v6 || !v11)
      {
        goto LABEL_22;
      }

      v12 = [v6 isEqual:v11];

      if (!v12)
      {
        return 0;
      }
    }

    v13 = *(a2 + 56);
    v6 = *(v3 + 56);
    v14 = v13;
    v8 = v14;
    if (v6 == v14)
    {

      return *(v3 + 8) == *(a2 + 8);
    }

    if (v6 && v14)
    {
      v15 = [v6 isEqual:v14];

      if (v15)
      {
        return *(v3 + 8) == *(a2 + 8);
      }

      return 0;
    }

LABEL_22:

    return 0;
  }

  return result;
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
  v6 = [(_UIPhysicalButtonConfiguration *)self hash];
  v7 = v6 == [equalCopy hash] && -[_UIPhysicalButtonConfiguration _isEqualToConfigurationMinusGeneration:](self, equalCopy) && self->_generation == equalCopy[5];

  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPhysicalButtonConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _NSStringFromUIPhysicalButton(self->_button);
  [v3 appendString:v4 withName:@"button"];
  v5 = _NSStringFromUIPhysicalButtonBehavior(self->_behavior);
  [v3 appendString:v5 withName:@"behavior"];
  behaviorOptions = self->_behaviorOptions;
  if (behaviorOptions)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = behaviorOptions;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v7 stringWithFormat:@"<%@: %p>", v10, v8];
  }

  else
  {
    v11 = @"(nil)";
  }

  v12 = [v3 appendObject:v11 withName:@"behaviorOptions" skipIfNil:1];

  v13 = [v3 appendUInt64:self->_generation withName:@"generation"];
  v14 = [v3 appendInt:-[BSAuditToken pid](self->_auditToken withName:{"pid"), @"pid"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72___UIPhysicalButtonConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIPhysicalButtonConfiguration alloc] _initWithPhysicalButton:self->_behavior behavior:self->_behaviorOptions behaviorOptions:self->_generation generation:self->_auditToken auditToken:?];
  [v4 _setName:self->_name];
  [v4 _setWantsSystemShellExclusivePriority:self->_wantsSystemShellExclusivePriority];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_button];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_behavior];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  [coder encodeObject:v7 forKey:@"button"];
  [coder encodeObject:v5 forKey:@"behavior"];
  [coder encodeObject:self->_behaviorOptions forKey:@"behaviorOptions"];
  [coder encodeObject:self->_name forKey:@"name"];
  [coder encodeBool:self->_wantsSystemShellExclusivePriority forKey:@"wantsSystemShellExclusivePriority"];
  [coder encodeObject:v6 forKey:@"generation"];
  [coder encodeObject:self->_auditToken forKey:@"auditToken"];
}

- (_UIPhysicalButtonConfiguration)initWithCoder:(id)coder
{
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"button"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"behavior"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"behaviorOptions"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v10 = [coder decodeBoolForKey:@"wantsSystemShellExclusivePriority"];
  v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"generation"];
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
  v13 = v12;
  if (v6)
  {
    v14 = v7 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || v11 == 0 || v12 == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:667 description:{@"Invalid encoded configuration: %@", coder}];

    selfCopy = 0;
  }

  else
  {
    v17 = -[_UIPhysicalButtonConfiguration _initWithPhysicalButton:behavior:behaviorOptions:generation:auditToken:](self, [v6 unsignedIntegerValue], objc_msgSend(v7, "unsignedIntegerValue"), v8, objc_msgSend(v11, "unsignedLongLongValue"), v12);
    if (v17)
    {
      v18 = [v9 copy];
      v19 = v17[7];
      v17[7] = v18;

      *(v17 + 8) = v10;
    }

    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  uTF8String = [@"button" UTF8String];
  uTF8String2 = [@"behavior" UTF8String];
  [@"behaviorOptions" UTF8String];
  [@"name" UTF8String];
  uTF8String3 = [@"wantsSystemShellExclusivePriority" UTF8String];
  uTF8String4 = [@"generation" UTF8String];
  [@"auditToken" UTF8String];
  xpc_dictionary_set_uint64(dictionary, uTF8String, self->_button);
  xpc_dictionary_set_uint64(dictionary, uTF8String2, self->_behavior);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(dictionary, uTF8String3, self->_wantsSystemShellExclusivePriority);
  xpc_dictionary_set_uint64(dictionary, uTF8String4, self->_generation);

  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (_UIPhysicalButtonConfiguration)initWithXPCDictionary:(id)dictionary
{
  uTF8String = [@"button" UTF8String];
  uTF8String2 = [@"behavior" UTF8String];
  [@"behaviorOptions" UTF8String];
  [@"name" UTF8String];
  uTF8String3 = [@"wantsSystemShellExclusivePriority" UTF8String];
  uTF8String4 = [@"generation" UTF8String];
  [@"auditToken" UTF8String];
  uint64 = xpc_dictionary_get_uint64(dictionary, uTF8String);
  v9 = xpc_dictionary_get_uint64(dictionary, uTF8String2);
  v10 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v11 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
  v12 = xpc_dictionary_get_BOOL(dictionary, uTF8String3);
  v13 = xpc_dictionary_get_uint64(dictionary, uTF8String4);
  v14 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v15 = [(_UIPhysicalButtonConfiguration *)self _initWithPhysicalButton:v9 behavior:v10 behaviorOptions:v13 generation:v14 auditToken:?];
  if (v15)
  {
    v16 = [v11 copy];
    name = v15->_name;
    v15->_name = v16;

    v15->_wantsSystemShellExclusivePriority = v12;
  }

  return v15;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_button];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_behavior];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  [coder encodeObject:v7 forKey:@"button"];
  [coder encodeObject:v5 forKey:@"behavior"];
  [coder encodeObject:self->_behaviorOptions forKey:@"behaviorOptions"];
  [coder encodeObject:self->_name forKey:@"name"];
  [coder encodeBool:self->_wantsSystemShellExclusivePriority forKey:@"wantsSystemShellExclusivePriority"];
  [coder encodeObject:v6 forKey:@"generation"];
  [coder encodeObject:self->_auditToken forKey:@"auditToken"];
}

- (_UIPhysicalButtonConfiguration)initWithBSXPCCoder:(id)coder
{
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"button"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"behavior"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"behaviorOptions"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v10 = [coder decodeBoolForKey:@"wantsSystemShellExclusivePriority"];
  v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"generation"];
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
  if (v6)
  {
    v13 = v7 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v11 == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:759 description:{@"Invalid encoded configuration: %@", coder}];

    selfCopy = 0;
  }

  else
  {
    v15 = -[_UIPhysicalButtonConfiguration _initWithPhysicalButton:behavior:behaviorOptions:generation:auditToken:](self, [v6 unsignedIntegerValue], objc_msgSend(v7, "unsignedIntegerValue"), v8, objc_msgSend(v11, "unsignedLongLongValue"), v12);
    if (v15)
    {
      v16 = [v9 copy];
      v17 = v15[7];
      v15[7] = v16;

      *(v15 + 8) = v10;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

@end