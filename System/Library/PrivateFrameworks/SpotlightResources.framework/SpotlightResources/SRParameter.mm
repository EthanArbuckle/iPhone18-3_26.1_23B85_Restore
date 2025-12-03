@interface SRParameter
+ (id)BOOLNil;
+ (id)BOOLNo;
+ (id)BOOLYes;
+ (id)doubleMin;
+ (id)doubleNil;
+ (id)filePathNil;
+ (id)longNil;
+ (id)longZero;
+ (id)nilParameterWithType:(int64_t)type;
+ (id)parameterWithDouble:(double)double name:(id)name;
+ (id)parameterWithFilePath:(id)path name:(id)name;
+ (id)parameterWithLong:(int64_t)long name:(id)name;
+ (id)parameterWithString:(id)string name:(id)name;
+ (id)stringNil;
+ (id)typeStringFromParameterType:(int64_t)type;
- (BOOL)isNil;
- (BOOL)isPositiveLong;
- (BOOL)updateWithDouble:(double)double;
- (BOOL)updateWithFilePath:(id)path;
- (BOOL)updateWithLong:(int64_t)long;
- (BOOL)updateWithString:(id)string;
- (SRParameter)initWithDouble:(double)double flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithFilePath:(id)path flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithLong:(int64_t)long flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithString:(id)string flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithType:(int64_t)type flags:(int64_t)flags name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)setName:(id)name;
- (void)setNumber:(id)number;
- (void)setString:(id)string;
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
    lastPathComponent = [v3 lastPathComponent];
  }

  else
  {
    v5 = SRLogCategoryTrial();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SRParameter *)self getFilePathValue];
    }

    lastPathComponent = 0;
  }

  return lastPathComponent;
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

- (SRParameter)initWithType:(int64_t)type flags:(int64_t)flags name:(id)name
{
  nameCopy = name;
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

  v9->_type = type;
  v9->_flag = flags;
  v11 = [nameCopy copy];
  v12 = v10[3];
  v10[3] = v11;

  v13 = v10[5];
  v10[5] = 0;

  if (type < 3 || (type - 3) < 2)
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

- (SRParameter)initWithLong:(int64_t)long flags:(int64_t)flags name:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SRParameter;
  v9 = [(SRParameter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 1;
    v9->_flag = flags;
    v11 = [MEMORY[0x1E696AD98] numberWithLong:long];
    value = v10->_value;
    v10->_value = v11;

    v13 = [nameCopy copy];
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

- (SRParameter)initWithDouble:(double)double flags:(int64_t)flags name:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SRParameter;
  v9 = [(SRParameter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    v9->_flag = flags;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:double];
    value = v10->_value;
    v10->_value = v11;

    v13 = [nameCopy copy];
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

- (SRParameter)initWithString:(id)string flags:(int64_t)flags name:(id)name
{
  stringCopy = string;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SRParameter;
  v10 = [(SRParameter *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 3;
    v10->_flag = flags;
    v12 = [MEMORY[0x1E696AEC0] stringWithString:stringCopy];
    value = v11->_value;
    v11->_value = v12;

    v14 = [nameCopy copy];
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

- (SRParameter)initWithFilePath:(id)path flags:(int64_t)flags name:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SRParameter;
  v10 = [(SRParameter *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 4;
    v10->_flag = flags;
    v12 = [MEMORY[0x1E696AEC0] stringWithString:pathCopy];
    value = v11->_value;
    v11->_value = v12;

    v14 = [nameCopy copy];
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

+ (id)nilParameterWithType:(int64_t)type
{
  v3 = [[self alloc] initWithType:type flags:0 name:@"Unknown"];

  return v3;
}

+ (id)parameterWithLong:(int64_t)long name:(id)name
{
  nameCopy = name;
  v7 = [[self alloc] initWithLong:long flags:0 name:nameCopy];

  return v7;
}

+ (id)parameterWithDouble:(double)double name:(id)name
{
  nameCopy = name;
  v7 = [[self alloc] initWithDouble:0 flags:nameCopy name:double];

  return v7;
}

+ (id)parameterWithString:(id)string name:(id)name
{
  nameCopy = name;
  stringCopy = string;
  v8 = [[self alloc] initWithString:stringCopy flags:0 name:nameCopy];

  return v8;
}

+ (id)parameterWithFilePath:(id)path name:(id)name
{
  nameCopy = name;
  pathCopy = path;
  v8 = [[self alloc] initWithFilePath:pathCopy flags:0 name:nameCopy];

  return v8;
}

+ (id)typeStringFromParameterType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A2B188[type];
  }
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setNumber:(id)number
{
  numberCopy = number;
  v6 = numberCopy;
  if (numberCopy)
  {
    numberCopy = numberCopy;
  }

  value = self->_value;
  self->_value = numberCopy;
}

- (void)setString:(id)string
{
  if (string)
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

- (id)copyWithZone:(_NSZone *)zone
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
  OUTLINED_FUNCTION_2_2(self, *MEMORY[0x1E69E9840]);
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
        bOOLValue = [v14 BOOLValue];
        v16 = @"NO";
        if (bOOLValue)
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

- (BOOL)updateWithLong:(int64_t)long
{
  isLong = [(SRParameter *)self isLong];
  if (isLong)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLong:long];
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

  return isLong;
}

- (BOOL)updateWithDouble:(double)double
{
  isDouble = [(SRParameter *)self isDouble];
  if (isDouble)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:double];
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

  return isDouble;
}

- (BOOL)updateWithString:(id)string
{
  stringCopy = string;
  isString = [(SRParameter *)self isString];
  if (isString)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithString:stringCopy];
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

  return isString;
}

- (BOOL)updateWithFilePath:(id)path
{
  pathCopy = path;
  isFilePath = [(SRParameter *)self isFilePath];
  if (isFilePath)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithString:pathCopy];
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

  return isFilePath;
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
  OUTLINED_FUNCTION_2_2(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "isNil for SRParameter with invalid type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getBooleanValue
{
  OUTLINED_FUNCTION_3_1(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getBooleanValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getLongValue
{
  OUTLINED_FUNCTION_3_1(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getLongValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getDoubleValue
{
  OUTLINED_FUNCTION_3_1(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getDoubleValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getStringValue
{
  OUTLINED_FUNCTION_3_1(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v1, v2, "SRParameter getStringValue called for type %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)getFilePathValue
{
  OUTLINED_FUNCTION_3_1(self, *MEMORY[0x1E69E9840]);
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