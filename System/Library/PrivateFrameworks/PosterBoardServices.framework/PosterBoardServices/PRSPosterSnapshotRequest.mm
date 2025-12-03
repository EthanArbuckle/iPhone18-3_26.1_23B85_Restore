@interface PRSPosterSnapshotRequest
+ (id)contaminateRequestOptions:(id)options;
+ (id)sanitizeRequestOptions:(id)options;
+ (id)validOptions;
- (BOOL)_validateRequestOptionsOrAbort:(BOOL)abort;
- (PRSPosterSnapshotRequest)initWithBSXPCCoder:(id)coder;
- (PRSPosterSnapshotRequest)initWithConfiguration:(id)configuration variantType:(int64_t)type options:(unint64_t)options orientation:(int64_t)orientation;
- (PRSPosterSnapshotRequest)initWithConfigurationType:(int64_t)type variantType:(int64_t)variantType options:(unint64_t)options orientation:(int64_t)orientation requestOptions:(id)requestOptions;
- (PRSPosterSnapshotRequest)initWithDescriptor:(id)descriptor variantType:(int64_t)type options:(unint64_t)options;
- (PRSPosterSnapshotRequest)initWithFocusModeUUID:(id)d configurationType:(int64_t)type variant:(int64_t)variant options:(unint64_t)options maxCount:(unint64_t)count;
- (PRSPosterSnapshotRequest)initWithFocusModeUUID:(id)d maxCount:(unint64_t)count;
- (PRSPosterSnapshotRequest)initWithFocusPosterRequest:(id)request;
- (PRSPosterSnapshotRequest)initWithPath:(id)path requestOptions:(id)options;
- (double)imageScaleRelativeToScreen;
- (int64_t)configurationType;
- (int64_t)variantType;
- (unint64_t)maxCount;
- (unint64_t)options;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRSPosterSnapshotRequest

- (PRSPosterSnapshotRequest)initWithFocusModeUUID:(id)d maxCount:(unint64_t)count
{
  dCopy = d;
  v7 = [[PRSFocusPosterSnapshotRequest alloc] initWithFocusModeUUID:dCopy configurationType:1 variant:0 options:0 imageScaleRelativeToScreen:1 orientation:count maxCount:0.333333343];

  return v7;
}

- (PRSPosterSnapshotRequest)initWithFocusModeUUID:(id)d configurationType:(int64_t)type variant:(int64_t)variant options:(unint64_t)options maxCount:(unint64_t)count
{
  dCopy = d;
  v13 = [[PRSFocusPosterSnapshotRequest alloc] initWithFocusModeUUID:dCopy configurationType:type variant:variant options:options imageScaleRelativeToScreen:1 orientation:count maxCount:0.333333343];

  return v13;
}

- (PRSPosterSnapshotRequest)initWithDescriptor:(id)descriptor variantType:(int64_t)type options:(unint64_t)options
{
  descriptorCopy = descriptor;
  NSClassFromString(&cfstr_Prsposterdescr_1.isa);
  if (!descriptorCopy)
  {
    [PRSPosterSnapshotRequest initWithDescriptor:a2 variantType:? options:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterSnapshotRequest initWithDescriptor:a2 variantType:? options:?];
  }

  v17.receiver = self;
  v17.super_class = PRSPosterSnapshotRequest;
  v10 = [(PRSPosterSnapshotRequest *)&v17 init];
  if (v10)
  {
    v11 = objc_opt_new();
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    [v11 setObject:v12 forKeyedSubscript:@"PRSPosterSnapshotRequestOptionOptionsEnum"];

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [v11 setObject:v13 forKeyedSubscript:@"PRSPosterSnapshotRequestOptionLegacyVariant"];

    _path = [descriptorCopy _path];
    path = v10->_path;
    v10->_path = _path;

    [(PRSPosterSnapshotRequest *)v10 _validateRequestOptionsOrAbort:1];
  }

  return v10;
}

- (PRSPosterSnapshotRequest)initWithConfiguration:(id)configuration variantType:(int64_t)type options:(unint64_t)options orientation:(int64_t)orientation
{
  configurationCopy = configuration;
  NSClassFromString(&cfstr_Prsposterconfi_1.isa);
  if (!configurationCopy)
  {
    [PRSPosterSnapshotRequest initWithConfiguration:a2 variantType:? options:? orientation:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterSnapshotRequest initWithConfiguration:a2 variantType:? options:? orientation:?];
  }

  v21.receiver = self;
  v21.super_class = PRSPosterSnapshotRequest;
  v12 = [(PRSPosterSnapshotRequest *)&v21 init];
  if (v12)
  {
    v13 = objc_opt_new();
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    [v13 setObject:v14 forKeyedSubscript:@"PRSPosterSnapshotRequestOptionOptionsEnum"];

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [v13 setObject:v15 forKeyedSubscript:@"PRSPosterSnapshotRequestOptionLegacyVariant"];

    _path = [configurationCopy _path];
    path = v12->_path;
    v12->_path = _path;

    v18 = [v13 copy];
    requestOptions = v12->_requestOptions;
    v12->_requestOptions = v18;

    v12->_orientation = orientation;
    [(PRSPosterSnapshotRequest *)v12 _validateRequestOptionsOrAbort:1];
  }

  return v12;
}

- (PRSPosterSnapshotRequest)initWithConfigurationType:(int64_t)type variantType:(int64_t)variantType options:(unint64_t)options orientation:(int64_t)orientation requestOptions:(id)requestOptions
{
  requestOptionsCopy = requestOptions;
  v24.receiver = self;
  v24.super_class = PRSPosterSnapshotRequest;
  v13 = [(PRSPosterSnapshotRequest *)&v24 init];
  if (v13)
  {
    v14 = [requestOptionsCopy mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    [v17 setObject:v18 forKeyedSubscript:@"PRSPosterSnapshotRequestOptionOptionsEnum"];

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:variantType];
    [v17 setObject:v19 forKeyedSubscript:@"PRSPosterSnapshotRequestOptionLegacyVariant"];

    v20 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [v17 setObject:v20 forKeyedSubscript:@"PRSPosterSnapshotRequestOptionLegacyConfigurationType"];

    v21 = [v17 copy];
    requestOptions = v13->_requestOptions;
    v13->_requestOptions = v21;

    v13->_orientation = orientation;
    [(PRSPosterSnapshotRequest *)v13 _validateRequestOptionsOrAbort:1];
  }

  return v13;
}

- (PRSPosterSnapshotRequest)initWithPath:(id)path requestOptions:(id)options
{
  pathCopy = path;
  optionsCopy = options;
  v10 = pathCopy;
  if (v10)
  {
    NSClassFromString(&cfstr_Pfserverposter.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshotRequest initWithPath:a2 requestOptions:?];
    }
  }

  v11 = optionsCopy;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v11)
  {
    [PRSPosterSnapshotRequest initWithPath:a2 requestOptions:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterSnapshotRequest initWithPath:a2 requestOptions:?];
  }

  v17.receiver = self;
  v17.super_class = PRSPosterSnapshotRequest;
  v12 = [(PRSPosterSnapshotRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_path, path);
    v14 = [v11 copy];
    requestOptions = v13->_requestOptions;
    v13->_requestOptions = v14;

    [(PRSPosterSnapshotRequest *)v13 _validateRequestOptionsOrAbort:1];
  }

  return v13;
}

- (PRSPosterSnapshotRequest)initWithFocusPosterRequest:(id)request
{
  v25[6] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  NSClassFromString(&cfstr_Prsfocusposter.isa);
  if (!requestCopy)
  {
    [PRSPosterSnapshotRequest initWithFocusPosterRequest:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterSnapshotRequest initWithFocusPosterRequest:a2];
  }

  v23.receiver = self;
  v23.super_class = PRSPosterSnapshotRequest;
  v6 = [(PRSPosterSnapshotRequest *)&v23 init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DF90];
    v24[0] = @"PRSPosterSnapshotRequestOptionLegacyVariant";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(requestCopy, "variant")}];
    v25[0] = v8;
    v24[1] = @"PRSPosterSnapshotRequestOptionLegacyConfigurationType";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(requestCopy, "configurationType")}];
    v25[1] = v9;
    v24[2] = @"PRSPosterSnapshotRequestOptionLegacyImageScaleRelativeToScreen";
    v10 = MEMORY[0x1E696AD98];
    [requestCopy imageScaleRelativeToScreen];
    v11 = [v10 numberWithDouble:?];
    v25[2] = v11;
    v24[3] = @"PRSPosterSnapshotRequestOptionLegacyMaxCount";
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(requestCopy, "maxCount")}];
    v25[3] = v12;
    v24[4] = @"PRSPosterSnapshotRequestOptionOptionsEnum";
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(requestCopy, "options")}];
    v24[5] = @"PRSPosterSnapshotRequestOptionLegacyIsFocusModeSnapshotRequest";
    v25[4] = v13;
    v25[5] = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:6];
    v15 = [v7 dictionaryWithDictionary:v14];

    focusModeUUID = [requestCopy focusModeUUID];

    if (focusModeUUID)
    {
      v17 = objc_alloc(MEMORY[0x1E696AFB0]);
      focusModeUUID2 = [requestCopy focusModeUUID];
      v19 = [v17 initWithUUIDString:focusModeUUID2];
      [(NSDictionary *)v15 setObject:v19 forKeyedSubscript:@"PRSPosterSnapshotRequestOptionFocusUUID"];
    }

    requestOptions = v6->_requestOptions;
    v6->_requestOptions = v15;

    v6->_orientation = [requestCopy orientation];
    [(PRSPosterSnapshotRequest *)v6 _validateRequestOptionsOrAbort:1];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)validOptions
{
  if (validOptions_onceToken != -1)
  {
    +[PRSPosterSnapshotRequest validOptions];
  }

  v3 = validOptions_validOptions;

  return v3;
}

uint64_t __40__PRSPosterSnapshotRequest_validOptions__block_invoke()
{
  validOptions_validOptions = [MEMORY[0x1E695DFD8] setWithObjects:{@"PRSPosterSnapshotRequestOptionLegacyImageScaleRelativeToScreen", @"PRSPosterSnapshotRequestOptionLegacyVariant", @"PRSPosterSnapshotRequestOptionLegacyConfigurationType", @"PRSPosterSnapshotRequestOptionLegacyMaxCount", @"PRSPosterSnapshotRequestOptionOptionsEnum", @"PRSPosterSnapshotRequestOptionSnapshotDefinitionIdentifier", @"PRSPosterSnapshotRequestOptionLegacyIsFocusModeSnapshotRequest", @"PRSPosterSnapshotRequestOptionFocusUUID", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (int64_t)variantType
{
  requestOptions = [(PRSPosterSnapshotRequest *)self requestOptions];
  v3 = [requestOptions objectForKey:@"PRSPosterSnapshotRequestOptionLegacyVariant"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)configurationType
{
  requestOptions = [(PRSPosterSnapshotRequest *)self requestOptions];
  v3 = [requestOptions objectForKey:@"PRSPosterSnapshotRequestOptionLegacyConfigurationType"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)options
{
  requestOptions = [(PRSPosterSnapshotRequest *)self requestOptions];
  v3 = [requestOptions objectForKey:@"PRSPosterSnapshotRequestOptionOptionsEnum"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)imageScaleRelativeToScreen
{
  requestOptions = [(PRSPosterSnapshotRequest *)self requestOptions];
  v3 = [requestOptions objectForKey:@"PRSPosterSnapshotRequestOptionLegacyImageScaleRelativeToScreen"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (unint64_t)maxCount
{
  requestOptions = [(PRSPosterSnapshotRequest *)self requestOptions];
  v3 = [requestOptions objectForKey:@"PRSPosterSnapshotRequestOptionLegacyMaxCount"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)_validateRequestOptionsOrAbort:(BOOL)abort
{
  abortCopy = abort;
  v42 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFD8];
  allKeys = [(NSDictionary *)self->_requestOptions allKeys];
  v7 = [v5 setWithArray:allKeys];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v9)
  {
    v28 = 1;
    goto LABEL_53;
  }

  v10 = v9;
  v11 = *v38;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v38 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v37 + 1) + 8 * v12);
    validOptions = [objc_opt_class() validOptions];
    v15 = [validOptions containsObject:v13];

    if ((v15 & 1) == 0)
    {
      if (!abortCopy)
      {
        goto LABEL_52;
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRSPosterSnapshotRequest contained undefined key '%@'", v13];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [PRSPosterSnapshotRequest _validateRequestOptionsOrAbort:];
      }

      goto LABEL_62;
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyImageScaleRelativeToScreen"])
    {
      v16 = [(NSDictionary *)self->_requestOptions objectForKey:v13];
      [v16 doubleValue];
      v18 = v17;

      if (v18 < 0.0)
      {
        break;
      }
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyMaxCount"])
    {
      v19 = [(NSDictionary *)self->_requestOptions objectForKey:v13];
      [v19 unsignedIntegerValue];
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyConfigurationType"])
    {
      v20 = [(NSDictionary *)self->_requestOptions objectForKey:v13];
      unsignedIntegerValue = [v20 unsignedIntegerValue];

      if ((unsignedIntegerValue + 1) >= 3)
      {
        if (abortCopy)
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRSPosterSnapshotRequest key '%@' was outside acceptable bounds", v13];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [PRSPosterSnapshotRequest _validateRequestOptionsOrAbort:];
          }

          [v31 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1C272B050);
        }

        goto LABEL_52;
      }

      goto LABEL_23;
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyVariant"])
    {
      v22 = [(NSDictionary *)self->_requestOptions objectForKey:v13];
      unsignedIntegerValue2 = [v22 unsignedIntegerValue];

      if ((unsignedIntegerValue2 + 1) >= 3)
      {
        if (abortCopy)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRSPosterSnapshotRequest key '%@' was outside acceptable bounds", v13];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [PRSPosterSnapshotRequest _validateRequestOptionsOrAbort:];
          }

          [v32 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1C272B0C4);
        }

        goto LABEL_52;
      }

      goto LABEL_23;
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionSnapshotDefinitionIdentifier"])
    {
      v24 = [(NSDictionary *)self->_requestOptions objectForKey:v13];
      if (![v24 length])
      {
        if (abortCopy)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRSPosterSnapshotRequest key '%@' was outside acceptable bounds", v13];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [PRSPosterSnapshotRequest _validateRequestOptionsOrAbort:];
          }

          [v36 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1C272B1D4);
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (![v13 isEqualToString:@"PRSPosterSnapshotRequestOptionOptionsEnum"])
      {
        if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyIsFocusModeSnapshotRequest"])
        {
          v25 = [(NSDictionary *)self->_requestOptions objectForKey:v13];
          v26 = v25;
          if (!v25 && abortCopy)
          {
            v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRSPosterSnapshotRequest key '%@' was outside acceptable bounds", v13];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [PRSPosterSnapshotRequest _validateRequestOptionsOrAbort:];
            }

            [v35 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x1C272B178);
          }

          if (!v26)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_23;
      }

      v24 = [(NSDictionary *)self->_requestOptions objectForKey:v13];
      if (!v24)
      {
        if (!abortCopy)
        {
          goto LABEL_52;
        }

        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRSPosterSnapshotRequest key '%@' was outside acceptable bounds", v13];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [PRSPosterSnapshotRequest _validateRequestOptionsOrAbort:];
        }

LABEL_62:
        [v29 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1C272AF88);
      }
    }

LABEL_23:
    if (v10 == ++v12)
    {
      v27 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      v10 = v27;
      v28 = 1;
      if (!v27)
      {
        goto LABEL_53;
      }

      goto LABEL_3;
    }
  }

  if (abortCopy)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRSPosterSnapshotRequest key '%@' was outside acceptable bounds", v13];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSPosterSnapshotRequest _validateRequestOptionsOrAbort:];
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C272AFECLL);
  }

LABEL_52:
  v28 = 0;
LABEL_53:

  v33 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = [objc_opt_class() sanitizeRequestOptions:self->_requestOptions];
  [coderCopy encodeXPCObject:v4 forKey:@"_requestOptions"];

  [coderCopy encodeObject:self->_path forKey:@"_path"];
  [coderCopy encodeInt64:self->_orientation forKey:@"_orientation"];
  [coderCopy encodeObject:self->_hostContext forKey:@"_hostContext"];
}

- (PRSPosterSnapshotRequest)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PRSPosterSnapshotRequest;
  v5 = [(PRSPosterSnapshotRequest *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_path"];
    path = v5->_path;
    v5->_path = v7;

    v9 = objc_opt_class();
    v10 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_requestOptions"];
    v11 = [v9 contaminateRequestOptions:v10];
    requestOptions = v5->_requestOptions;
    v5->_requestOptions = v11;

    v13 = [coderCopy decodeInt64ForKey:@"_orientation"];
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v5->_orientation = v14;
    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"_hostContext"];
    hostContext = v5->_hostContext;
    v5->_hostContext = v16;
  }

  return v5;
}

+ (id)sanitizeRequestOptions:(id)options
{
  optionsCopy = options;
  validOptions = [self validOptions];
  v6 = xpc_dictionary_create(0, 0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PRSPosterSnapshotRequest_sanitizeRequestOptions___block_invoke;
  v12[3] = &unk_1E818D598;
  v13 = validOptions;
  v7 = v6;
  v14 = v7;
  v8 = validOptions;
  [optionsCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __51__PRSPosterSnapshotRequest_sanitizeRequestOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v13])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v13;
    v8 = [v13 UTF8String];
    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyImageScaleRelativeToScreen"])
    {
      v9 = *(a1 + 40);
      [v5 doubleValue];
      xpc_dictionary_set_double(v9, v8, v10);
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyVariant"])
    {
      xpc_dictionary_set_uint64(*(a1 + 40), v8, [v5 unsignedIntegerValue]);
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyConfigurationType"])
    {
      xpc_dictionary_set_uint64(*(a1 + 40), v8, [v5 unsignedIntegerValue]);
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyMaxCount"])
    {
      xpc_dictionary_set_uint64(*(a1 + 40), v8, [v5 unsignedIntegerValue]);
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionOptionsEnum"])
    {
      xpc_dictionary_set_uint64(*(a1 + 40), v8, [v5 unsignedIntegerValue]);
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionSnapshotDefinitionIdentifier"])
    {
      xpc_dictionary_set_string(*(a1 + 40), v8, [v5 UTF8String]);
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyIsFocusModeSnapshotRequest"])
    {
      xpc_dictionary_set_BOOL(*(a1 + 40), v8, [v5 BOOLValue]);
    }

    if ([v13 isEqualToString:@"PRSPosterSnapshotRequestOptionFocusUUID"])
    {
      v11 = *(a1 + 40);
      v12 = [v5 UUIDString];
      xpc_dictionary_set_string(v11, v8, [v12 UTF8String]);
    }

    objc_autoreleasePoolPop(v6);
  }
}

+ (id)contaminateRequestOptions:(id)options
{
  optionsCopy = options;
  validOptions = [self validOptions];
  v6 = objc_opt_new();
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __54__PRSPosterSnapshotRequest_contaminateRequestOptions___block_invoke;
  applier[3] = &unk_1E818D5C0;
  v13 = validOptions;
  v14 = v6;
  v15 = optionsCopy;
  v7 = optionsCopy;
  v8 = v6;
  v9 = validOptions;
  xpc_dictionary_apply(v7, applier);
  v10 = [v8 copy];

  return v10;
}

uint64_t __54__PRSPosterSnapshotRequest_contaminateRequestOptions___block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  if ([*(a1 + 32) containsObject:v7])
  {
    if ([v7 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyImageScaleRelativeToScreen"])
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:{xpc_dictionary_get_double(*(a1 + 48), a2)}];
    }

    else if ([v7 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyVariant"] || objc_msgSend(v7, "isEqualToString:", @"PRSPosterSnapshotRequestOptionLegacyConfigurationType") || objc_msgSend(v7, "isEqualToString:", @"PRSPosterSnapshotRequestOptionLegacyMaxCount") || objc_msgSend(v7, "isEqualToString:", @"PRSPosterSnapshotRequestOptionOptionsEnum"))
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{xpc_dictionary_get_uint64(*(a1 + 48), a2)}];
    }

    else if ([v7 isEqualToString:@"PRSPosterSnapshotRequestOptionSnapshotDefinitionIdentifier"])
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(*(a1 + 48), a2)}];
    }

    else
    {
      if (![v7 isEqualToString:@"PRSPosterSnapshotRequestOptionLegacyIsFocusModeSnapshotRequest"])
      {
        if (![v7 isEqualToString:@"PRSPosterSnapshotRequestOptionFocusUUID"])
        {
          goto LABEL_11;
        }

        v12 = *(a1 + 40);
        v13 = objc_alloc(MEMORY[0x1E696AFB0]);
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(*(a1 + 48), a2)}];
        v14 = [v13 initWithUUIDString:v10];
        [v12 setObject:v14 forKey:v7];

        goto LABEL_10;
      }

      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{xpc_dictionary_get_BOOL(*(a1 + 48), a2)}];
    }

    v10 = v9;
    [v8 setObject:v9 forKey:v7];
LABEL_10:
  }

LABEL_11:

  objc_autoreleasePoolPop(v6);
  return 1;
}

- (void)initWithDescriptor:(char *)a1 variantType:options:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterDescriptorClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDescriptor:(char *)a1 variantType:options:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 variantType:options:orientation:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 variantType:options:orientation:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 requestOptions:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 requestOptions:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 requestOptions:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFocusPosterRequest:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSFocusPosterSnapshotRequestClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFocusPosterRequest:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_validateRequestOptionsOrAbort:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_validateRequestOptionsOrAbort:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_validateRequestOptionsOrAbort:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_validateRequestOptionsOrAbort:.cold.4()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_validateRequestOptionsOrAbort:.cold.5()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_validateRequestOptionsOrAbort:.cold.6()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_validateRequestOptionsOrAbort:.cold.7()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

@end