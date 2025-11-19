@interface SRParameter
+ (id)BOOLNil;
+ (id)BOOLNo;
+ (id)BOOLYes;
+ (id)doubleMin;
+ (id)doubleNil;
+ (id)filePathNil;
+ (id)longNil;
+ (id)longZero;
+ (id)nilParameterWithType:(int64_t)a3;
+ (id)parameterWithDouble:(double)a3 name:(id)a4;
+ (id)parameterWithFilePath:(id)a3 name:(id)a4;
+ (id)parameterWithLong:(int64_t)a3 name:(id)a4;
+ (id)parameterWithString:(id)a3 name:(id)a4;
+ (id)stringNil;
+ (id)typeStringFromParameterType:(int64_t)a3;
- (BOOL)isNil;
- (BOOL)isPositiveLong;
- (BOOL)updateWithDouble:(double)a3;
- (BOOL)updateWithFilePath:(id)a3;
- (BOOL)updateWithLong:(int64_t)a3;
- (BOOL)updateWithString:(id)a3;
- (SRParameter)initWithDouble:(double)a3 flags:(int64_t)a4 name:(id)a5;
- (SRParameter)initWithFilePath:(id)a3 flags:(int64_t)a4 name:(id)a5;
- (SRParameter)initWithLong:(int64_t)a3 flags:(int64_t)a4 name:(id)a5;
- (SRParameter)initWithString:(id)a3 flags:(int64_t)a4 name:(id)a5;
- (SRParameter)initWithType:(int64_t)a3 flags:(int64_t)a4 name:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getBooleanValue;
- (id)getDoubleValue;
- (id)getFilePathNameValue;
- (id)getFilePathValue;
- (id)getLongValue;
- (id)getStringValue;
- (void)getBooleanValue;
- (void)getDoubleValue;
- (void)getFilePathValue;
- (void)getLongValue;
- (void)getStringValue;
- (void)isNil;
- (void)makeNil;
- (void)setName:(id)a3;
- (void)setNumber:(id)a3;
- (void)setString:(id)a3;
@end

@implementation SRParameter

- (id)getFilePathValue
{
  if ([(SRParameter *)self isFilePath])
  {
    v3 = self->_value;
  }

  else
  {
    v4 = SRLogCategoryTrial();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SRParameter *)self getFilePathValue];
    }

    v3 = 0;
  }

  return v3;
}

- (id)getFilePathNameValue
{
  if ([(SRParameter *)self isFilePath])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:self->_value];
    v4 = [v3 lastPathComponent];
  }

  else
  {
    v5 = SRLogCategoryTrial();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SRParameter *)self getFilePathValue];
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)isNil
{
  p_type = &self->_type;
  if (self->_type <= 4uLL)
  {
    return self->_value == 0;
  }

  v4 = SRLogCategoryTrial();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(SRParameter *)p_type isNil];
  }

  return 1;
}

- (id)getBooleanValue
{
  if ([(SRParameter *)self isBool])
  {
    v3 = self->_value;
  }

  else
  {
    v4 = SRLogCategoryTrial();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SRParameter *)self getBooleanValue];
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)isPositiveLong
{
  if (self->_type == 1)
  {
    value = self->_value;
    if (value)
    {
      LOBYTE(value) = [value longValue:v2]> 0;
    }
  }

  else
  {
    LOBYTE(value) = 0;
  }

  return value;
}

- (id)getDoubleValue
{
  if ([(SRParameter *)self isDouble])
  {
    v3 = self->_value;
  }

  else
  {
    v4 = SRLogCategoryTrial();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SRParameter *)self getDoubleValue];
    }

    v3 = 0;
  }

  return v3;
}

- (id)getLongValue
{
  if ([(SRParameter *)self isLong])
  {
    v3 = self->_value;
  }

  else
  {
    v4 = SRLogCategoryTrial();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SRParameter *)self getLongValue];
    }

    v3 = 0;
  }

  return v3;
}

- (SRParameter)initWithType:(int64_t)a3 flags:(int64_t)a4 name:(id)a5
{
  v8 = a5;
  v18.receiver = self;
  v18.super_class = SRParameter;
  v9 = [(SRParameter *)&v18 init];
  v10 = v9;
  if (!v9)
  {
    v14 = SRLogCategoryTrial();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithType:flags:name:];
    }

    goto LABEL_7;
  }

  v9->_type = a3;
  v9->_flag = a4;
  v11 = [v8 copy];
  v12 = v10[3];
  v10[3] = v11;

  v13 = v10[5];
  v10[5] = 0;

  if (a3 < 3 || (a3 - 3) < 2)
  {
    v14 = v10[4];
    v10[4] = 0;
LABEL_7:

    v15 = v10;
    goto LABEL_8;
  }

  v17 = SRLogCategoryTrial();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SRParameter initWithType:? flags:? name:?];
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (SRParameter)initWithLong:(int64_t)a3 flags:(int64_t)a4 name:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = SRParameter;
  v9 = [(SRParameter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 1;
    v9->_flag = a4;
    v11 = [MEMORY[0x1E696AD98] numberWithLong:a3];
    value = v10->_value;
    v10->_value = v11;

    v13 = [v8 copy];
    name = v10->_name;
    v10->_name = v13;
  }

  else
  {
    name = SRLogCategoryTrial();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithLong:flags:name:];
    }
  }

  return v10;
}

- (SRParameter)initWithDouble:(double)a3 flags:(int64_t)a4 name:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = SRParameter;
  v9 = [(SRParameter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    v9->_flag = a4;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    value = v10->_value;
    v10->_value = v11;

    v13 = [v8 copy];
    name = v10->_name;
    v10->_name = v13;
  }

  else
  {
    name = SRLogCategoryTrial();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithDouble:flags:name:];
    }
  }

  return v10;
}

- (SRParameter)initWithString:(id)a3 flags:(int64_t)a4 name:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = SRParameter;
  v10 = [(SRParameter *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 3;
    v10->_flag = a4;
    v12 = [MEMORY[0x1E696AEC0] stringWithString:v8];
    value = v11->_value;
    v11->_value = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;
  }

  else
  {
    name = SRLogCategoryTrial();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithString:flags:name:];
    }
  }

  return v11;
}

- (SRParameter)initWithFilePath:(id)a3 flags:(int64_t)a4 name:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = SRParameter;
  v10 = [(SRParameter *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 4;
    v10->_flag = a4;
    v12 = [MEMORY[0x1E696AEC0] stringWithString:v8];
    value = v11->_value;
    v11->_value = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;
  }

  else
  {
    name = SRLogCategoryTrial();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithFilePath:flags:name:];
    }
  }

  return v11;
}

+ (id)nilParameterWithType:(int64_t)a3
{
  v3 = [[a1 alloc] initWithType:a3 flags:0 name:@"Unknown"];

  return v3;
}

+ (id)parameterWithLong:(int64_t)a3 name:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithLong:a3 flags:0 name:v6];

  return v7;
}

+ (id)parameterWithDouble:(double)a3 name:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithDouble:0 flags:v6 name:a3];

  return v7;
}

+ (id)parameterWithString:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithString:v7 flags:0 name:v6];

  return v8;
}

+ (id)parameterWithFilePath:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFilePath:v7 flags:0 name:v6];

  return v8;
}

+ (id)typeStringFromParameterType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A2B188[a3];
  }
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setNumber:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v4 = v4;
  }

  value = self->_value;
  self->_value = v4;
}

- (void)setString:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithString:?];
  }

  else
  {
    v4 = 0;
  }

  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (!v4)
  {
    v5 = SRLogCategoryTrial();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SRParameter copyWithZone:];
    }
  }

  p_type = &self->_type;
  [v4 setType:self->_type];
  [v4 setName:self->_name];
  irisName = self->_irisName;
  if (irisName)
  {
    v8 = [(NSString *)irisName copy];
    [v4 setIrisName:v8];
  }

  else
  {
    [v4 setIrisName:0];
  }

  if (*p_type < 3)
  {
    [v4 setNumber:self->_value];
LABEL_12:
    v9 = v4;
    goto LABEL_13;
  }

  if ((*p_type - 3) < 2)
  {
    [v4 setString:self->_value];
    goto LABEL_12;
  }

  v11 = SRLogCategoryTrial();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SRParameter copyWithZone:?];
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)makeNil
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "makeNil for SRParameter with invalid type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  type = self->_type;
  v3 = &stru_1F2422260;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_29;
      }

      v7 = MEMORY[0x1E696AEC0];
      value = self->_value;
      if (value)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[NSObject longValue](value, "longValue")];
        [v7 stringWithFormat:@"type = Long, value = %@", v9];
        v3 = LABEL_14:;

        goto LABEL_29;
      }

      v18 = @"nil";
      v6 = @"type = Long, value = %@";
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v14 = self->_value;
      if (v14)
      {
        v15 = [v14 BOOLValue];
        v16 = @"NO";
        if (v15)
        {
          v16 = @"YES";
        }
      }

      else
      {
        v16 = @"nil";
      }

      v18 = v16;
      v6 = @"type = Boolean, value = %@";
    }
  }

  else
  {
    if (type != 2)
    {
      if (type == 3)
      {
        v4 = MEMORY[0x1E696AEC0];
        v12 = self->_value;
        if (!v12)
        {
          v12 = @"nil";
        }

        v18 = v12;
        v6 = @"type = String, value = %@";
      }

      else
      {
        if (type != 4)
        {
          goto LABEL_29;
        }

        v4 = MEMORY[0x1E696AEC0];
        v5 = self->_value;
        if (!v5)
        {
          v5 = @"nil";
        }

        v18 = v5;
        v6 = @"type = FilePath, value = %@";
      }

      v13 = v4;
      goto LABEL_28;
    }

    v7 = MEMORY[0x1E696AEC0];
    v10 = self->_value;
    if (v10)
    {
      [v10 doubleValue];
      v9 = [v7 stringWithFormat:@"%.10e", v11];
      [v7 stringWithFormat:@"type = Double, value = %@", v9];
      goto LABEL_14;
    }

    v18 = @"nil";
    v6 = @"type = Double, value = %@";
  }

  v13 = v7;
LABEL_28:
  v3 = [v13 stringWithFormat:v6, v18];
LABEL_29:

  return v3;
}

+ (id)BOOLNo
{
  if (BOOLNo_onceToken != -1)
  {
    +[SRParameter BOOLNo];
  }

  v3 = BOOLNo_paramBoolNo;

  return v3;
}

uint64_t __21__SRParameter_BOOLNo__block_invoke()
{
  BOOLNo_paramBoolNo = [SRParameter parameterWithBoolean:0 name:@"Unknown"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)BOOLYes
{
  if (BOOLYes_onceToken != -1)
  {
    +[SRParameter BOOLYes];
  }

  v3 = BOOLYes_paramBoolYes;

  return v3;
}

uint64_t __22__SRParameter_BOOLYes__block_invoke()
{
  BOOLYes_paramBoolYes = [SRParameter parameterWithBoolean:1 name:@"Unknown"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)longZero
{
  if (longZero_onceToken != -1)
  {
    +[SRParameter longZero];
  }

  v3 = longZero_paramLongZero;

  return v3;
}

uint64_t __23__SRParameter_longZero__block_invoke()
{
  longZero_paramLongZero = [SRParameter parameterWithLong:0 name:@"Unknown"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)doubleMin
{
  if (doubleMin_onceToken != -1)
  {
    +[SRParameter doubleMin];
  }

  v3 = doubleMin_paramDoubleMin;

  return v3;
}

uint64_t __24__SRParameter_doubleMin__block_invoke()
{
  doubleMin_paramDoubleMin = [SRParameter parameterWithDouble:@"Unknown" name:2.22507386e-308];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)BOOLNil
{
  if (BOOLNil_onceToken != -1)
  {
    +[SRParameter BOOLNil];
  }

  v3 = BOOLNil_paramBoolNil;

  return v3;
}

uint64_t __22__SRParameter_BOOLNil__block_invoke()
{
  BOOLNil_paramBoolNil = [SRParameter nilParameterWithType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)longNil
{
  if (longNil_onceToken != -1)
  {
    +[SRParameter longNil];
  }

  v3 = longNil_paramLongNil;

  return v3;
}

uint64_t __22__SRParameter_longNil__block_invoke()
{
  longNil_paramLongNil = [SRParameter nilParameterWithType:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)doubleNil
{
  if (doubleNil_onceToken != -1)
  {
    +[SRParameter doubleNil];
  }

  v3 = doubleNil_paramDoubleNil;

  return v3;
}

uint64_t __24__SRParameter_doubleNil__block_invoke()
{
  doubleNil_paramDoubleNil = [SRParameter nilParameterWithType:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)stringNil
{
  if (stringNil_onceToken != -1)
  {
    +[SRParameter stringNil];
  }

  v3 = stringNil_paramStringNil;

  return v3;
}

uint64_t __24__SRParameter_stringNil__block_invoke()
{
  stringNil_paramStringNil = [SRParameter nilParameterWithType:3];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)filePathNil
{
  if (filePathNil_onceToken != -1)
  {
    +[SRParameter filePathNil];
  }

  v3 = filePathNil_paramFilePathNil;

  return v3;
}

uint64_t __26__SRParameter_filePathNil__block_invoke()
{
  filePathNil_paramFilePathNil = [SRParameter nilParameterWithType:4];

  return MEMORY[0x1EEE66BB8]();
}

- (id)getStringValue
{
  if ([(SRParameter *)self isString])
  {
    v3 = self->_value;
  }

  else
  {
    v4 = SRLogCategoryTrial();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SRParameter *)self getStringValue];
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)updateWithLong:(int64_t)a3
{
  v5 = [(SRParameter *)self isLong];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLong:a3];
    value = self->_value;
    self->_value = v6;
  }

  else
  {
    v8 = SRLogCategoryTrial();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithLong:?];
    }
  }

  return v5;
}

- (BOOL)updateWithDouble:(double)a3
{
  v5 = [(SRParameter *)self isDouble];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    value = self->_value;
    self->_value = v6;
  }

  else
  {
    v8 = SRLogCategoryTrial();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithDouble:?];
    }
  }

  return v5;
}

- (BOOL)updateWithString:(id)a3
{
  v4 = a3;
  v5 = [(SRParameter *)self isString];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithString:v4];
    value = self->_value;
    self->_value = v6;
  }

  else
  {
    v8 = SRLogCategoryTrial();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithString:?];
    }
  }

  return v5;
}

- (BOOL)updateWithFilePath:(id)a3
{
  v4 = a3;
  v5 = [(SRParameter *)self isFilePath];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithString:v4];
    value = self->_value;
    self->_value = v6;
  }

  else
  {
    v8 = SRLogCategoryTrial();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithFilePath:?];
    }
  }

  return v5;
}

- (void)initWithType:(uint64_t *)a1 flags:name:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "initWithType for SRParameter with invalid type: %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithType:flags:name:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithBoolean:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithLong:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDouble:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithString:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithFilePath:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyWithZone:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyWithZone:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "copyWithZone for SRParameter with invalid type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)isNil
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "isNil for SRParameter with invalid type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getBooleanValue
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getBooleanValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getLongValue
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getLongValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getDoubleValue
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getDoubleValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getStringValue
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getStringValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getFilePathValue
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getFilePathValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateWithBoolean:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter updateWithBoolean called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateWithLong:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter updateWithLong called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDouble:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter updateWithDouble called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateWithString:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter updateWithString called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateWithFilePath:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter updateWithFilePath called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end