@interface PIAdjustmentController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeFromInputKey:(SEL)key timescaleKey:(id)timescaleKey;
- (BOOL)_isDefault;
- (BOOL)canBeEnabled;
- (BOOL)canHaveAuto;
- (BOOL)enabled;
- (BOOL)hasAutoKeyInSchema;
- (BOOL)hasInputKey:(id)key;
- (BOOL)isAuto;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqual:(id)equal forKeys:(id)keys;
- (BOOL)isEqual:(id)equal visualChangesOnly:(BOOL)only;
- (BOOL)isEqualToAdjustmentController:(id)controller;
- (BOOL)isSettingEqual:(id)equal forKey:(id)key;
- (NSArray)inputKeys;
- (NSDictionary)settings;
- (NSString)displayName;
- (PIAdjustmentController)initWithAdjustment:(id)adjustment;
- (id)debugDescription;
- (id)settingForKey:(id)key;
- (id)valuesForArrayInputKey:(id)key;
- (unint64_t)hash;
- (void)_setPrimitiveValue:(id)value forKey:(id)key;
- (void)interpolateFromStart:(id)start toEnd:(id)end progress:(double)progress;
- (void)pasteAdjustment:(id)adjustment forMediaType:(int64_t)type;
- (void)setEnabled:(BOOL)enabled;
- (void)setFromAdjustment:(id)adjustment;
- (void)setIsAuto:(BOOL)auto;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation PIAdjustmentController

- (void)pasteAdjustment:(id)adjustment forMediaType:(int64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  adjustmentCopy = adjustment;
  v7 = [(PIAdjustmentController *)self pasteKeysForMediaType:type];
  autoKey = [objc_opt_class() autoKey];
  v9 = [adjustmentCopy objectForKeyedSubscript:autoKey];

  if ([v9 BOOLValue])
  {
    autoKeysForPaste = [(PIAdjustmentController *)self autoKeysForPaste];

    v7 = autoKeysForPaste;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [adjustmentCopy objectForKeyedSubscript:{v16, v18}];
        [(NUAdjustment *)self->_adjustment setObject:v17 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = [adjustment debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p adjustment = %@>", v4, self, v6];;

  return v7;
}

- (BOOL)_isDefault
{
  v23 = *MEMORY[0x1E69E9840];
  [(PIAdjustmentController *)self inputKeys];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        adjustment = [(PIAdjustmentController *)self adjustment];
        schema = [adjustment schema];
        settings = [schema settings];
        v12 = [settings objectForKeyedSubscript:v8];

        defaultValue = [v12 defaultValue];
        v14 = [(PIAdjustmentController *)self _primitiveValueForKey:v8];
        LODWORD(schema) = [v14 isEqual:defaultValue];

        v5 += schema;
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v15 = [obj count] == v5;

  return v15;
}

- (NSDictionary)settings
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    settings = [adjustment2 settings];
  }

  else
  {
    settings = 0;
  }

  return settings;
}

- (void)_setPrimitiveValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (!self->_changes)
  {
    v7 = objc_opt_new();
    changes = self->_changes;
    self->_changes = v7;
  }

  v9 = [(NUAdjustment *)self->_adjustment objectForKeyedSubscript:keyCopy];
  [(NSMutableDictionary *)self->_changes setObject:v9 forKeyedSubscript:keyCopy];

  [(NUAdjustment *)self->_adjustment setValue:valueCopy forKey:keyCopy];
}

- (BOOL)isSettingEqual:(id)equal forKey:(id)key
{
  keyCopy = key;
  equalCopy = equal;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v9 = [adjustment objectForKeyedSubscript:keyCopy];

  v10 = [equalCopy objectForKeyedSubscript:keyCopy];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  schema = [adjustment2 schema];
  settings = [schema settings];
  v14 = [settings objectForKeyedSubscript:keyCopy];

  defaultValue = [v14 defaultValue];
  if ([v9 isEqual:defaultValue] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v9, "doubleValue"), v16 == 0.0))
  {

    v9 = 0;
  }

  if ([v10 isEqual:defaultValue] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v10, "doubleValue"), v17 == 0.0))
  {

    v10 = 0;
  }

  if (v9 | v10)
  {
    v18 = [v9 isEqual:v10];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal forKeys:(id)keys
{
  v19 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keysCopy = keys;
  v8 = [keysCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(keysCopy);
        }

        if (![(PIAdjustmentController *)self isSettingEqual:equalCopy forKey:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [keysCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)isEqual:(id)equal visualChangesOnly:(BOOL)only
{
  equalCopy = equal;
  if (only)
  {
    [(PIAdjustmentController *)self visualInputKeys];
  }

  else
  {
    [(PIAdjustmentController *)self inputKeys];
  }
  v7 = ;
  v8 = [(PIAdjustmentController *)self isEqual:equalCopy forKeys:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PIAdjustmentController *)self isEqualToAdjustmentController:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAdjustmentController:(id)controller
{
  adjustment = [controller adjustment];
  LOBYTE(self) = [(PIAdjustmentController *)self isEqual:adjustment visualChangesOnly:0];

  return self;
}

- (unint64_t)hash
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = 0x1675E555296783 * [adjustment hash];

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeFromInputKey:(SEL)key timescaleKey:(id)timescaleKey
{
  v8 = a5;
  timescaleKeyCopy = timescaleKey;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v10 = [adjustment objectForKeyedSubscript:timescaleKeyCopy];

  integerValue = [v10 integerValue];
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v13 = [adjustment2 objectForKeyedSubscript:v8];

  CMTimeMake(retstr, integerValue, [v13 intValue]);

  return result;
}

- (void)interpolateFromStart:(id)start toEnd:(id)end progress:(double)progress
{
  v40 = *MEMORY[0x1E69E9840];
  startCopy = start;
  endCopy = end;
  obj = [(PIAdjustmentController *)self inputKeys];
  v32 = startCopy;
  if (!startCopy || progress == 1.0)
  {
    selfCopy2 = self;
    v11 = endCopy;
    goto LABEL_6;
  }

  if (progress == 0.0)
  {
    selfCopy2 = self;
    v11 = startCopy;
LABEL_6:
    [(PIAdjustmentController *)selfCopy2 setFromAdjustment:v11];
    goto LABEL_7;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    v15 = 0x1E69B3000uLL;
    v31 = *v36;
    do
    {
      v16 = 0;
      v33 = v13;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        v18 = [(PIAdjustmentController *)self settingForKey:v17, v31];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v15;
          v20 = [v32 objectForKeyedSubscript:v17];
          v21 = endCopy;
          v22 = [endCopy objectForKeyedSubscript:v17];
          adjustment2 = v22;
          if (v20)
          {
            v24 = v22 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            progress = v22;
          }

          else
          {
            [v20 doubleValue];
            v26 = v25;
            [adjustment2 doubleValue];
            progress = [MEMORY[0x1E696AD98] numberWithDouble:v26 + (v27 - v26) * progress];
          }

          v29 = progress;
          adjustment = [(PIAdjustmentController *)self adjustment];
          [adjustment setObject:v29 forKeyedSubscript:v17];

          endCopy = v21;
          v14 = v31;
          v15 = v19;
          v13 = v33;
        }

        else
        {
          v20 = [endCopy objectForKeyedSubscript:v17];
          adjustment2 = [(PIAdjustmentController *)self adjustment];
          [adjustment2 setObject:v20 forKeyedSubscript:v17];
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v13);
  }

LABEL_7:
}

- (void)setFromAdjustment:(id)adjustment
{
  v4 = [adjustment copy];
  adjustment = self->_adjustment;
  self->_adjustment = v4;

  MEMORY[0x1EEE66BB8](v4, adjustment);
}

- (id)valuesForArrayInputKey:(id)key
{
  adjustment = self->_adjustment;
  keyCopy = key;
  schema = [(NUAdjustment *)adjustment schema];
  settings = [schema settings];

  v7 = [settings objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    values = [v7 values];
  }

  else
  {
    values = 0;
  }

  return values;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  inputKeys = [(PIAdjustmentController *)self inputKeys];
  v9 = [inputKeys containsObject:keyCopy];

  if (v9)
  {
    [(PIAdjustmentController *)self _setPrimitiveValue:valueCopy forKey:keyCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PIAdjustmentController;
    [(PIAdjustmentController *)&v10 setValue:valueCopy forUndefinedKey:keyCopy];
  }
}

- (void)setIsAuto:(BOOL)auto
{
  autoCopy = auto;
  v31 = *MEMORY[0x1E69E9840];
  if (![(PIAdjustmentController *)self hasAutoKeyInSchema])
  {
    v7 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
    }

    v8 = MEMORY[0x1E69B3D70];
    v9 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = v9;
      v12 = [v10 stringWithFormat:@"Adjustment does not have an auto setting"];
      *buf = 138543362;
      v28 = v12;
      _os_log_impl(&dword_1C7694000, v11, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v13 = *v7;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v13 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
        }

        goto LABEL_13;
      }

      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
LABEL_13:
      v14 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v16 = MEMORY[0x1E696AF00];
        v17 = specific;
        v18 = v14;
        callStackSymbols = [v16 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = specific;
        v29 = 2114;
        v30 = v20;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_19:
      _NUAssertContinueHandler();
      return;
    }

    v21 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v22 = MEMORY[0x1E696AF00];
      v23 = v21;
      callStackSymbols2 = [v22 callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v25;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if ([(PIAdjustmentController *)self canHaveAuto])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:autoCopy];
    adjustment = [(PIAdjustmentController *)self adjustment];
    autoKey = [objc_opt_class() autoKey];
    [adjustment setObject:v26 forKeyedSubscript:autoKey];
  }
}

- (BOOL)isAuto
{
  v31 = *MEMORY[0x1E69E9840];
  if (![(PIAdjustmentController *)self hasAutoKeyInSchema])
  {
    v8 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
    }

    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = [v11 stringWithFormat:@"Adjustment does not have an auto setting"];
      v27 = 138543362;
      v28 = v13;
      _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &v27, 0xCu);

      v14 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
        }

        goto LABEL_11;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
LABEL_11:
      v15 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v17 = MEMORY[0x1E696AF00];
        v18 = specific;
        v19 = v15;
        callStackSymbols = [v17 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        v27 = 138543618;
        v28 = specific;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v27, 0x16u);
      }

LABEL_17:
      _NUAssertContinueHandler();
      return 0;
    }

    v22 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      callStackSymbols2 = [v23 callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v27 = 138543362;
      v28 = v26;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v27, 0xCu);
    }

    goto LABEL_17;
  }

  if ([(PIAdjustmentController *)self canHaveAuto])
  {
    adjustment = [(PIAdjustmentController *)self adjustment];
    autoKey = [objc_opt_class() autoKey];
    v5 = [adjustment objectForKeyedSubscript:autoKey];
    bOOLValue = [v5 BOOLValue];

    return bOOLValue;
  }

  return 0;
}

- (BOOL)hasAutoKeyInSchema
{
  autoKey = [objc_opt_class() autoKey];
  LOBYTE(self) = [(PIAdjustmentController *)self hasInputKey:autoKey];

  return self;
}

- (BOOL)canHaveAuto
{
  autoKey = [objc_opt_class() autoKey];
  LOBYTE(self) = [(PIAdjustmentController *)self hasInputKey:autoKey];

  return self;
}

- (BOOL)canBeEnabled
{
  enabledKey = [objc_opt_class() enabledKey];
  LOBYTE(self) = [(PIAdjustmentController *)self hasInputKey:enabledKey];

  return self;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v32 = *MEMORY[0x1E69E9840];
  enabledKey = [objc_opt_class() enabledKey];
  if (![(PIAdjustmentController *)self hasInputKey:enabledKey])
  {
    v8 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
    }

    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = [v11 stringWithFormat:@"Adjustment does not have an enabled setting"];
      *buf = 138543362;
      v29 = v13;
      _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v14 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
        }

        goto LABEL_12;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
LABEL_12:
      v15 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v17 = MEMORY[0x1E696AF00];
        v18 = specific;
        v19 = v15;
        callStackSymbols = [v17 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = specific;
        v30 = 2114;
        v31 = v21;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_18:
      _NUAssertContinueHandler();

      return;
    }

    v22 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      callStackSymbols2 = [v23 callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v26;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  enabledKey2 = [objc_opt_class() enabledKey];
  [adjustment setObject:v27 forKeyedSubscript:enabledKey2];
}

- (BOOL)enabled
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(PIAdjustmentController *)self canBeEnabled])
  {
    adjustment = [(PIAdjustmentController *)self adjustment];
    enabledKey = [objc_opt_class() enabledKey];
    v5 = [adjustment objectForKeyedSubscript:enabledKey];
    bOOLValue = [v5 BOOLValue];

    return bOOLValue;
  }

  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
  }

  v9 = MEMORY[0x1E69B3D70];
  v10 = *MEMORY[0x1E69B3D70];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = v10;
    v13 = [v11 stringWithFormat:@"Adjustment does not have an enabled setting"];
    v27 = 138543362;
    v28 = v13;
    _os_log_impl(&dword_1C7694000, v12, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &v27, 0xCu);

    v14 = *v8;
    if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
      }

      goto LABEL_10;
    }

    if (v14 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3432);
    }

LABEL_14:
    v22 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      callStackSymbols = [v23 callStackSymbols];
      v26 = [callStackSymbols componentsJoinedByString:@"\n"];
      v27 = 138543362;
      v28 = v26;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v27, 0xCu);
    }

    goto LABEL_16;
  }

  if (!dispatch_get_specific(*MEMORY[0x1E69B38E8]))
  {
    goto LABEL_14;
  }

LABEL_10:
  v15 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = MEMORY[0x1E696AF00];
    v18 = specific;
    v19 = v15;
    callStackSymbols2 = [v17 callStackSymbols];
    v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    v27 = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v21;
    _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v27, 0x16u);
  }

LABEL_16:
  _NUAssertContinueHandler();
  return 1;
}

- (BOOL)hasInputKey:(id)key
{
  v3 = [(PIAdjustmentController *)self settingForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (id)settingForKey:(id)key
{
  adjustment = self->_adjustment;
  keyCopy = key;
  schema = [(NUAdjustment *)adjustment schema];
  settings = [schema settings];
  v7 = [settings objectForKeyedSubscript:keyCopy];

  return v7;
}

- (NSArray)inputKeys
{
  v24 = *MEMORY[0x1E69E9840];
  adjustment = self->_adjustment;
  if (!adjustment)
  {
    v7 = NUAssertLogger_3459();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adjustment empty"];
      v20 = 138543362;
      v21 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v20, 0xCu);
    }

    v9 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v11 = NUAssertLogger_3459();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(*v9);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        v20 = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v20, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v20 = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v20, 0xCu);
    }

    _NUAssertFailHandler();
  }

  schema = [(NUAdjustment *)adjustment schema];
  settings = [schema settings];
  allKeys = [settings allKeys];

  return allKeys;
}

- (NSString)displayName
{
  v23 = *MEMORY[0x1E69E9840];
  adjustment = self->_adjustment;
  if (!adjustment)
  {
    v6 = NUAssertLogger_3459();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adjustment empty"];
      v19 = 138543362;
      v20 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v19, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_3459();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        callStackSymbols = [v15 callStackSymbols];
        v18 = [callStackSymbols componentsJoinedByString:@"\n"];
        v19 = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v19, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v19 = 138543362;
      v20 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v19, 0xCu);
    }

    _NUAssertFailHandler();
  }

  identifier = [(NUAdjustment *)adjustment identifier];
  name = [identifier name];

  return name;
}

- (PIAdjustmentController)initWithAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  v8.receiver = self;
  v8.super_class = PIAdjustmentController;
  v5 = [(PIAdjustmentController *)&v8 init];
  adjustment = v5->_adjustment;
  v5->_adjustment = adjustmentCopy;

  return v5;
}

@end