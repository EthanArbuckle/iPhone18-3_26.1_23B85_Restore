@interface _UIPhysicalButtonConfiguration
+ (id)_cameraShutterConfigurationsForButtons:(uint64_t)a3 withFilter:(uint64_t)a4 andOptionsProvider:;
+ (id)_cameraShutterConfigurationsWithFilter:(id)a3 andOptionsProvider:(id)a4;
+ (id)_cameraShutterConfigurationsWithOptions:(id)a3;
+ (id)_cameraShutterConfigurationsWithOptionsProvider:(id)a3;
+ (id)_configurationWithPhysicalButton:(unint64_t)a3 behavior:(unint64_t)a4 behaviorOptions:(id)a5;
+ (id)_ringerButtonDynamicActionConfiguration;
+ (id)_volumeConfigurations;
- (BOOL)_isEqualToConfigurationMinusGeneration:(_BOOL8)result;
- (BOOL)isEqual:(id)a3;
- (_UIPhysicalButtonBehaviorOptions)_behaviorOptions;
- (_UIPhysicalButtonConfiguration)init;
- (_UIPhysicalButtonConfiguration)initWithBSXPCCoder:(id)a3;
- (_UIPhysicalButtonConfiguration)initWithCoder:(id)a3;
- (_UIPhysicalButtonConfiguration)initWithXPCDictionary:(id)a3;
- (id)_initWithPhysicalButton:(unint64_t)a3 behavior:(void *)a4 behaviorOptions:(uint64_t)a5 generation:(void *)a6 auditToken:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation _UIPhysicalButtonConfiguration

- (_UIPhysicalButtonBehaviorOptions)_behaviorOptions
{
  v2 = [(_UIPhysicalButtonBehaviorOptions *)self->_behaviorOptions copy];

  return v2;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:self->_button];
  v5 = [v3 appendUnsignedInteger:self->_behavior];
  v6 = [v3 appendObject:self->_behaviorOptions];
  v7 = [v3 appendObject:self->_auditToken];
  v8 = [v3 appendString:self->_name];
  v9 = [v3 appendBool:self->_wantsSystemShellExclusivePriority];
  v10 = [v3 appendInt64:self->_generation];
  v11 = [v3 hash];

  return v11;
}

+ (id)_configurationWithPhysicalButton:(unint64_t)a3 behavior:(unint64_t)a4 behaviorOptions:(id)a5
{
  v8 = [_UIPhysicalButtonConfiguration alloc];
  bytes = 0;
  do
  {
    v9 = CCRandomGenerateBytes(&bytes, 8uLL);
    if (v9)
    {
      v12 = v9;
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t _UIPhysicalButtonConfigurationRandomGeneration(void)"];
      [v17 handleFailureInFunction:v16 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:291 description:{@"Failed to create configuration generation with status: %d", v12}];
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
  v13 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  v14 = [(_UIPhysicalButtonConfiguration *)v8 _initWithPhysicalButton:a3 behavior:a4 behaviorOptions:a5 generation:v10 auditToken:v13];

  return v14;
}

- (id)_initWithPhysicalButton:(unint64_t)a3 behavior:(void *)a4 behaviorOptions:(uint64_t)a5 generation:(void *)a6 auditToken:
{
  v6 = a1;
  if (!a1)
  {
    return v6;
  }

  v12 = objc_opt_class();
  if (v12 != objc_opt_class())
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:v6 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:476 description:@"_UIPhysicalButtonConfiguration cannot be subclassed"];
  }

  if ((_UIPhysicalButtonIsValid(a2) & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:v6 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:478 description:{@"Invalid button: %lu", a2}];
  }

  if ((_UIPhysicalButtonBehaviorIsValidForButton(a3, a2) & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = _NSStringFromUIPhysicalButton(a2);
    v23 = _NSStringFromUIPhysicalButtonBehavior(a3);
    [v21 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:v6 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:480 description:{@"Invalid behavior for button: %@; behavior: %@", v22, v23}];
  }

  if (_UIPhysicalButtonBehaviorOptionsIsValidForBehavior(a4, a3))
  {
    if (a5)
    {
      goto LABEL_10;
    }

LABEL_15:
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:v6 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:483 description:{@"Invalid configuration generation: %llu", 0}];

    if (a6)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  v25 = _NSStringFromUIPhysicalButtonBehavior(a3);
  [v24 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:v6 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:482 description:{@"Invalid options for %@: %@", v25, a4}];

  if (!a5)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (a6)
  {
    goto LABEL_11;
  }

LABEL_16:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:sel__initWithPhysicalButton_behavior_behaviorOptions_generation_auditToken_ object:v6 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:484 description:{@"Invalid configuration auditToken: %@", 0}];

LABEL_11:
  v28.receiver = v6;
  v28.super_class = _UIPhysicalButtonConfiguration;
  v13 = objc_msgSendSuper2(&v28, sel_init);
  v6 = v13;
  if (v13)
  {
    v13[2] = a2;
    v13[3] = a3;
    v14 = [a4 copy];
    v15 = *(v6 + 4);
    *(v6 + 4) = v14;

    *(v6 + 5) = a5;
    v16 = [a6 copy];
    v17 = *(v6 + 6);
    *(v6 + 6) = v16;

    *(v6 + 8) = 0;
  }

  return v6;
}

+ (id)_cameraShutterConfigurationsForButtons:(uint64_t)a3 withFilter:(uint64_t)a4 andOptionsProvider:
{
  v62 = *MEMORY[0x1E69E9840];
  v43 = objc_opt_self();
  if (![a2 count])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:sel__cameraShutterConfigurationsForButtons_withFilter_andOptionsProvider_ object:v43 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"buttonNumberArray.count > 0"}];

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  if (!a3)
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
    v44 = a3;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * i);
        v13 = [v12 unsignedIntegerValue];
        if (((*(a3 + 16))(a3, v13) & 1) == 0)
        {
          v14 = a4;
          v15 = v8;
          if (!v9)
          {
            v9 = [obj mutableCopy];
          }

          [v9 removeObject:v12];
          v16 = _UIPhysicalButtonRequiredButtonsForButton(v13);
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
          a4 = v14;
          a3 = v44;
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
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:sel__cameraShutterConfigurationsForButtons_withFilter_andOptionsProvider_ object:v43 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:370 description:@"Invalid camera shutter configuration filter resulted in removal of all buttons"];

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

        v32 = [*(*(&v47 + 1) + 8 * v31) unsignedIntegerValue];
        if (a4)
        {
          v33 = (*(a4 + 16))(a4, v32);
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
          v37 = [MEMORY[0x1E696AAA8] currentHandler];
          [v37 handleFailureInMethod:sel__cameraShutterConfigurationsForButtons_withFilter_andOptionsProvider_ object:v43 file:@"_UIPhysicalButtonConfiguration.m" lineNumber:382 description:{@"Invalid options object for camera shutter configurations: %@", v33}];

          v34 = +[_UIPhysicalButtonBehaviorCameraShutterOptions behaviorOptions];
        }

        v35 = v34;

        v36 = [_UIPhysicalButtonConfiguration _configurationWithPhysicalButton:v32 behavior:0 behaviorOptions:v35];
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

+ (id)_cameraShutterConfigurationsWithOptionsProvider:(id)a3
{
  v5 = _UIPhysicalButtonAndBehaviorMap();
  v6 = [v5 objectForKey:&unk_1EFE34078];

  v7 = [(_UIPhysicalButtonConfiguration *)a1 _cameraShutterConfigurationsForButtons:v6 withFilter:0 andOptionsProvider:a3];

  return v7;
}

+ (id)_cameraShutterConfigurationsWithFilter:(id)a3 andOptionsProvider:(id)a4
{
  v7 = _UIPhysicalButtonAndBehaviorMap();
  v8 = [v7 objectForKey:&unk_1EFE34078];

  v9 = [(_UIPhysicalButtonConfiguration *)a1 _cameraShutterConfigurationsForButtons:v8 withFilter:a3 andOptionsProvider:a4];

  return v9;
}

+ (id)_cameraShutterConfigurationsWithOptions:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74___UIPhysicalButtonConfiguration__cameraShutterConfigurationsWithOptions___block_invoke;
  v5[3] = &unk_1E712C568;
  v5[4] = a3;
  v3 = [a1 _cameraShutterConfigurationsWithOptionsProvider:v5];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:466 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonConfiguration init]", objc_opt_class()}];

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
  v6 = [(_UIPhysicalButtonConfiguration *)self hash];
  v7 = v6 == [v5 hash] && -[_UIPhysicalButtonConfiguration _isEqualToConfigurationMinusGeneration:](self, v5) && self->_generation == v5[5];

  return v7;
}

- (id)succinctDescription
{
  v2 = [(_UIPhysicalButtonConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72___UIPhysicalButtonConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_UIPhysicalButtonConfiguration alloc] _initWithPhysicalButton:self->_behavior behavior:self->_behaviorOptions behaviorOptions:self->_generation generation:self->_auditToken auditToken:?];
  [v4 _setName:self->_name];
  [v4 _setWantsSystemShellExclusivePriority:self->_wantsSystemShellExclusivePriority];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_button];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_behavior];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  [a3 encodeObject:v7 forKey:@"button"];
  [a3 encodeObject:v5 forKey:@"behavior"];
  [a3 encodeObject:self->_behaviorOptions forKey:@"behaviorOptions"];
  [a3 encodeObject:self->_name forKey:@"name"];
  [a3 encodeBool:self->_wantsSystemShellExclusivePriority forKey:@"wantsSystemShellExclusivePriority"];
  [a3 encodeObject:v6 forKey:@"generation"];
  [a3 encodeObject:self->_auditToken forKey:@"auditToken"];
}

- (_UIPhysicalButtonConfiguration)initWithCoder:(id)a3
{
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"button"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"behavior"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"behaviorOptions"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v10 = [a3 decodeBoolForKey:@"wantsSystemShellExclusivePriority"];
  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"generation"];
  v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
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
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:667 description:{@"Invalid encoded configuration: %@", a3}];

    v20 = 0;
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
    v20 = self;
  }

  return v20;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5 = [@"button" UTF8String];
  v6 = [@"behavior" UTF8String];
  [@"behaviorOptions" UTF8String];
  [@"name" UTF8String];
  v7 = [@"wantsSystemShellExclusivePriority" UTF8String];
  v8 = [@"generation" UTF8String];
  [@"auditToken" UTF8String];
  xpc_dictionary_set_uint64(a3, v5, self->_button);
  xpc_dictionary_set_uint64(a3, v6, self->_behavior);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(a3, v7, self->_wantsSystemShellExclusivePriority);
  xpc_dictionary_set_uint64(a3, v8, self->_generation);

  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (_UIPhysicalButtonConfiguration)initWithXPCDictionary:(id)a3
{
  v4 = [@"button" UTF8String];
  v5 = [@"behavior" UTF8String];
  [@"behaviorOptions" UTF8String];
  [@"name" UTF8String];
  v6 = [@"wantsSystemShellExclusivePriority" UTF8String];
  v7 = [@"generation" UTF8String];
  [@"auditToken" UTF8String];
  uint64 = xpc_dictionary_get_uint64(a3, v4);
  v9 = xpc_dictionary_get_uint64(a3, v5);
  v10 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v11 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
  v12 = xpc_dictionary_get_BOOL(a3, v6);
  v13 = xpc_dictionary_get_uint64(a3, v7);
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

- (void)encodeWithBSXPCCoder:(id)a3
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_button];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_behavior];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  [a3 encodeObject:v7 forKey:@"button"];
  [a3 encodeObject:v5 forKey:@"behavior"];
  [a3 encodeObject:self->_behaviorOptions forKey:@"behaviorOptions"];
  [a3 encodeObject:self->_name forKey:@"name"];
  [a3 encodeBool:self->_wantsSystemShellExclusivePriority forKey:@"wantsSystemShellExclusivePriority"];
  [a3 encodeObject:v6 forKey:@"generation"];
  [a3 encodeObject:self->_auditToken forKey:@"auditToken"];
}

- (_UIPhysicalButtonConfiguration)initWithBSXPCCoder:(id)a3
{
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"button"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"behavior"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"behaviorOptions"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v10 = [a3 decodeBoolForKey:@"wantsSystemShellExclusivePriority"];
  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"generation"];
  v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
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
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonConfiguration.m" lineNumber:759 description:{@"Invalid encoded configuration: %@", a3}];

    v18 = 0;
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
    v18 = self;
  }

  return v18;
}

@end