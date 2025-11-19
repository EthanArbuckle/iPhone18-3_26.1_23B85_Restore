@interface PIAdjustmentController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeFromInputKey:(SEL)a3 timescaleKey:(id)a4;
- (BOOL)_isDefault;
- (BOOL)canBeEnabled;
- (BOOL)canHaveAuto;
- (BOOL)enabled;
- (BOOL)hasAutoKeyInSchema;
- (BOOL)hasInputKey:(id)a3;
- (BOOL)isAuto;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqual:(id)a3 forKeys:(id)a4;
- (BOOL)isEqual:(id)a3 visualChangesOnly:(BOOL)a4;
- (BOOL)isEqualToAdjustmentController:(id)a3;
- (BOOL)isSettingEqual:(id)a3 forKey:(id)a4;
- (NSArray)inputKeys;
- (NSDictionary)settings;
- (NSString)displayName;
- (PIAdjustmentController)initWithAdjustment:(id)a3;
- (id)debugDescription;
- (id)settingForKey:(id)a3;
- (id)valuesForArrayInputKey:(id)a3;
- (unint64_t)hash;
- (void)_setPrimitiveValue:(id)a3 forKey:(id)a4;
- (void)interpolateFromStart:(id)a3 toEnd:(id)a4 progress:(double)a5;
- (void)pasteAdjustment:(id)a3 forMediaType:(int64_t)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setFromAdjustment:(id)a3;
- (void)setIsAuto:(BOOL)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation PIAdjustmentController

- (void)pasteAdjustment:(id)a3 forMediaType:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PIAdjustmentController *)self pasteKeysForMediaType:a4];
  v8 = [objc_opt_class() autoKey];
  v9 = [v6 objectForKeyedSubscript:v8];

  if ([v9 BOOLValue])
  {
    v10 = [(PIAdjustmentController *)self autoKeysForPaste];

    v7 = v10;
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
        v17 = [v6 objectForKeyedSubscript:{v16, v18}];
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
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = [v5 debugDescription];
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
        v9 = [(PIAdjustmentController *)self adjustment];
        v10 = [v9 schema];
        v11 = [v10 settings];
        v12 = [v11 objectForKeyedSubscript:v8];

        v13 = [v12 defaultValue];
        v14 = [(PIAdjustmentController *)self _primitiveValueForKey:v8];
        LODWORD(v10) = [v14 isEqual:v13];

        v5 += v10;
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
  v3 = [(PIAdjustmentController *)self adjustment];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(PIAdjustmentController *)self adjustment];
    v6 = [v5 settings];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setPrimitiveValue:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_changes)
  {
    v7 = objc_opt_new();
    changes = self->_changes;
    self->_changes = v7;
  }

  v9 = [(NUAdjustment *)self->_adjustment objectForKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_changes setObject:v9 forKeyedSubscript:v6];

  [(NUAdjustment *)self->_adjustment setValue:v10 forKey:v6];
}

- (BOOL)isSettingEqual:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PIAdjustmentController *)self adjustment];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v7 objectForKeyedSubscript:v6];

  v11 = [(PIAdjustmentController *)self adjustment];
  v12 = [v11 schema];
  v13 = [v12 settings];
  v14 = [v13 objectForKeyedSubscript:v6];

  v15 = [v14 defaultValue];
  if ([v9 isEqual:v15] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v9, "doubleValue"), v16 == 0.0))
  {

    v9 = 0;
  }

  if ([v10 isEqual:v15] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v10, "doubleValue"), v17 == 0.0))
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

- (BOOL)isEqual:(id)a3 forKeys:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        if (![(PIAdjustmentController *)self isSettingEqual:v6 forKey:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isEqual:(id)a3 visualChangesOnly:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    [(PIAdjustmentController *)self visualInputKeys];
  }

  else
  {
    [(PIAdjustmentController *)self inputKeys];
  }
  v7 = ;
  v8 = [(PIAdjustmentController *)self isEqual:v6 forKeys:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PIAdjustmentController *)self isEqualToAdjustmentController:v4];
  }

  return v5;
}

- (BOOL)isEqualToAdjustmentController:(id)a3
{
  v4 = [a3 adjustment];
  LOBYTE(self) = [(PIAdjustmentController *)self isEqual:v4 visualChangesOnly:0];

  return self;
}

- (unint64_t)hash
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = 0x1675E555296783 * [v2 hash];

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeFromInputKey:(SEL)a3 timescaleKey:(id)a4
{
  v8 = a5;
  v9 = a4;
  v15 = [(PIAdjustmentController *)self adjustment];
  v10 = [v15 objectForKeyedSubscript:v9];

  v11 = [v10 integerValue];
  v12 = [(PIAdjustmentController *)self adjustment];
  v13 = [v12 objectForKeyedSubscript:v8];

  CMTimeMake(retstr, v11, [v13 intValue]);

  return result;
}

- (void)interpolateFromStart:(id)a3 toEnd:(id)a4 progress:(double)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  obj = [(PIAdjustmentController *)self inputKeys];
  v32 = v8;
  if (!v8 || a5 == 1.0)
  {
    v10 = self;
    v11 = v9;
    goto LABEL_6;
  }

  if (a5 == 0.0)
  {
    v10 = self;
    v11 = v8;
LABEL_6:
    [(PIAdjustmentController *)v10 setFromAdjustment:v11];
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
          v21 = v9;
          v22 = [v9 objectForKeyedSubscript:v17];
          v23 = v22;
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
            v28 = v22;
          }

          else
          {
            [v20 doubleValue];
            v26 = v25;
            [v23 doubleValue];
            v28 = [MEMORY[0x1E696AD98] numberWithDouble:v26 + (v27 - v26) * a5];
          }

          v29 = v28;
          v30 = [(PIAdjustmentController *)self adjustment];
          [v30 setObject:v29 forKeyedSubscript:v17];

          v9 = v21;
          v14 = v31;
          v15 = v19;
          v13 = v33;
        }

        else
        {
          v20 = [v9 objectForKeyedSubscript:v17];
          v23 = [(PIAdjustmentController *)self adjustment];
          [v23 setObject:v20 forKeyedSubscript:v17];
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

- (void)setFromAdjustment:(id)a3
{
  v4 = [a3 copy];
  adjustment = self->_adjustment;
  self->_adjustment = v4;

  MEMORY[0x1EEE66BB8](v4, adjustment);
}

- (id)valuesForArrayInputKey:(id)a3
{
  adjustment = self->_adjustment;
  v4 = a3;
  v5 = [(NUAdjustment *)adjustment schema];
  v6 = [v5 settings];

  v7 = [v6 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 values];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PIAdjustmentController *)self inputKeys];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    [(PIAdjustmentController *)self _setPrimitiveValue:v7 forKey:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PIAdjustmentController;
    [(PIAdjustmentController *)&v10 setValue:v7 forUndefinedKey:v6];
  }
}

- (void)setIsAuto:(BOOL)a3
{
  v3 = a3;
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
        v19 = [v16 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
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
      v24 = [v22 callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v25;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if ([(PIAdjustmentController *)self canHaveAuto])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v5 = [(PIAdjustmentController *)self adjustment];
    v6 = [objc_opt_class() autoKey];
    [v5 setObject:v26 forKeyedSubscript:v6];
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
        v20 = [v17 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
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
      v25 = [v23 callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      v27 = 138543362;
      v28 = v26;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v27, 0xCu);
    }

    goto LABEL_17;
  }

  if ([(PIAdjustmentController *)self canHaveAuto])
  {
    v3 = [(PIAdjustmentController *)self adjustment];
    v4 = [objc_opt_class() autoKey];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = [v5 BOOLValue];

    return v6;
  }

  return 0;
}

- (BOOL)hasAutoKeyInSchema
{
  v3 = [objc_opt_class() autoKey];
  LOBYTE(self) = [(PIAdjustmentController *)self hasInputKey:v3];

  return self;
}

- (BOOL)canHaveAuto
{
  v3 = [objc_opt_class() autoKey];
  LOBYTE(self) = [(PIAdjustmentController *)self hasInputKey:v3];

  return self;
}

- (BOOL)canBeEnabled
{
  v3 = [objc_opt_class() enabledKey];
  LOBYTE(self) = [(PIAdjustmentController *)self hasInputKey:v3];

  return self;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() enabledKey];
  if (![(PIAdjustmentController *)self hasInputKey:v5])
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
        v20 = [v17 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
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
      v25 = [v23 callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v26;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PIAdjustmentController *)self adjustment];
  v7 = [objc_opt_class() enabledKey];
  [v6 setObject:v27 forKeyedSubscript:v7];
}

- (BOOL)enabled
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(PIAdjustmentController *)self canBeEnabled])
  {
    v3 = [(PIAdjustmentController *)self adjustment];
    v4 = [objc_opt_class() enabledKey];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = [v5 BOOLValue];

    return v6;
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
      v25 = [v23 callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
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
    v20 = [v17 callStackSymbols];
    v21 = [v20 componentsJoinedByString:@"\n"];
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

- (BOOL)hasInputKey:(id)a3
{
  v3 = [(PIAdjustmentController *)self settingForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)settingForKey:(id)a3
{
  adjustment = self->_adjustment;
  v4 = a3;
  v5 = [(NUAdjustment *)adjustment schema];
  v6 = [v5 settings];
  v7 = [v6 objectForKeyedSubscript:v4];

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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        v20 = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v20, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      v20 = 138543362;
      v21 = v14;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v20, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v3 = [(NUAdjustment *)adjustment schema];
  v4 = [v3 settings];
  v5 = [v4 allKeys];

  return v5;
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
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        v19 = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v19, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      v19 = 138543362;
      v20 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v19, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v3 = [(NUAdjustment *)adjustment identifier];
  v4 = [v3 name];

  return v4;
}

- (PIAdjustmentController)initWithAdjustment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PIAdjustmentController;
  v5 = [(PIAdjustmentController *)&v8 init];
  adjustment = v5->_adjustment;
  v5->_adjustment = v4;

  return v5;
}

@end