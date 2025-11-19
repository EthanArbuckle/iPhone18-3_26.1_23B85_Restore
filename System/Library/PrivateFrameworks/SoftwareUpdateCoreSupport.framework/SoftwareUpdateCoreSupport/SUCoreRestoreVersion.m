@interface SUCoreRestoreVersion
+ (BOOL)_enableVerboseLogging;
+ (id)_stringForNSComparisonResult:(int64_t)a3;
- (BOOL)_isStringOnlyNumbers:(id)a3;
- (BOOL)isComparable:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SUCoreRestoreVersion)initWithCoder:(id)a3;
- (SUCoreRestoreVersion)initWithRestoreVersion:(id)a3;
- (id)description;
- (id)getNextNearestRestoreVersionOf:(id)a3 and:(id)a4;
- (id)summary;
- (int64_t)compare:(id)a3;
- (void)_parseRestoreVersionString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreRestoreVersion

- (void)_parseRestoreVersionString
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = [v0 summary];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1E0F71000, v2, v3, "[RestoreVersion] (%{public}@) Parse: first order split result was not as expected (expected 2 values): %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_enableVerboseLogging
{
  if (_enableVerboseLogging_restoreVersionEnableVerboseLoggingOnceToken != -1)
  {
    +[SUCoreRestoreVersion _enableVerboseLogging];
  }

  return _enableVerboseLogging___verboseLoggingEnabled;
}

- (SUCoreRestoreVersion)initWithRestoreVersion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = +[SUCoreLog sharedLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SUCoreRestoreVersion initWithRestoreVersion:v15];
    }

    goto LABEL_11;
  }

  v18.receiver = self;
  v18.super_class = SUCoreRestoreVersion;
  v6 = [(SUCoreRestoreVersion *)&v18 init];
  self = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_restoreVersionString, a3);
    [(SUCoreRestoreVersion *)self _parseRestoreVersionString];
    parsedVersion = self->_parsedVersion;
    if (parsedVersion && [(NSArray *)parsedVersion count]== 5)
    {
      v8 = [(NSArray *)self->_parsedVersion objectAtIndexedSubscript:0];
      self->_majorVersion = [v8 integerValue];

      v9 = [(NSArray *)self->_parsedVersion objectAtIndexedSubscript:1];
      self->_minorVersion = [v9 integerValue];

      v10 = [(NSArray *)self->_parsedVersion objectAtIndexedSubscript:2];
      self->_buildVersion = [v10 integerValue];

      v11 = [(NSArray *)self->_parsedVersion objectAtIndexedSubscript:3];
      self->_syncedVersion = [v11 integerValue];

      v12 = [(NSArray *)self->_parsedVersion objectAtIndexedSubscript:4];
      self->_suffixVersion = [v12 integerValue];

      goto LABEL_6;
    }

    v16 = +[SUCoreLog sharedLogger];
    v15 = [v16 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SUCoreRestoreVersion initWithRestoreVersion:];
    }

LABEL_11:

    v13 = 0;
    goto LABEL_12;
  }

LABEL_6:
  self = self;
  v13 = self;
LABEL_12:

  return v13;
}

- (id)getNextNearestRestoreVersionOf:(id)a3 and:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = self;
  v16 = a3;
  v17 = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v15 count:3];

  v10 = [v9 sortedArrayUsingComparator:{&__block_literal_global_3, v15, v16, v17, v18}];

  v11 = [v10 indexOfObjectIdenticalTo:self];
  if (v11 >= [v10 count] - 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 objectAtIndex:v11 + 1];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)_isStringOnlyNumbers:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 decimalDigitCharacterSet];
  v6 = [v5 invertedSet];
  v7 = [v4 rangeOfCharacterFromSet:v6];

  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)isComparable:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (v5 = -[SUCoreRestoreVersion buildGroup](self, "buildGroup"), v5 == [v4 buildGroup]))
  {
    v6 = [(SUCoreRestoreVersion *)self parsedVersion];
    if ([v6 count] == 5)
    {
      v7 = [v4 parsedVersion];
      v8 = [v7 count] == 5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (+[SUCoreRestoreVersion _enableVerboseLogging])
  {
    v9 = +[SUCoreLog sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SUCoreRestoreVersion *)self summary];
      v12 = [v4 summary];
      v13 = v12;
      v14 = @"NO";
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      if (v8)
      {
        v14 = @"YES";
      }

      v20 = v12;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "[RestoreVersion] Comparable: self=%{public}@ to=%{public}@ | valid=%{public}@", &v17, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int64_t)compare:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SUCoreRestoreVersion *)self isComparable:v4])
  {
    v5 = 0;
    do
    {
      v6 = [(SUCoreRestoreVersion *)self parsedVersion];
      v7 = [v6 objectAtIndex:v5];
      v8 = [v4 parsedVersion];
      v9 = [v8 objectAtIndex:v5];
      v10 = [v7 compare:v9];

      if (v10)
      {
        break;
      }
    }

    while (v5++ != 4);
    if (+[SUCoreRestoreVersion _enableVerboseLogging])
    {
      v12 = +[SUCoreLog sharedLogger];
      v13 = [v12 oslog];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(SUCoreRestoreVersion *)self summary];
        v15 = [v4 summary];
        v16 = [SUCoreRestoreVersion _stringForNSComparisonResult:v10];
        v20 = 138543874;
        v21 = v14;
        v22 = 2114;
        v23 = v15;
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&dword_1E0F71000, v13, OS_LOG_TYPE_DEFAULT, "[RestoreVersion] Compare: self=%{public}@ to=%{public}@ | result=%{public}@", &v20, 0x20u);
      }
    }
  }

  else
  {
    v17 = +[SUCoreDiag sharedDiag];
    [v17 trackAnomaly:@"RestoreVersion" forReason:@"Compare called on restore version when other version is not compatible" withResult:8116 withError:0];

    v10 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)_stringForNSComparisonResult:(int64_t)a3
{
  if ((a3 + 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E86FC8E8[a3 + 1];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCoreRestoreVersion *)self restoreVersionString];
      v7 = [(SUCoreRestoreVersion *)v5 restoreVersionString];

      v8 = [SUCore stringIsEqual:v6 to:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)summary
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SUCoreRestoreVersion *)self restoreVersionString];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SUCoreRestoreVersion *)self restoreVersionString];
  v5 = [(SUCoreRestoreVersion *)self parsedVersion];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [v3 stringWithFormat:@"SUCoreRestoreVersion(restoreVersionString:%@|parsedVersion:%@|buildGroup:%ld)", v4, v6, -[SUCoreRestoreVersion buildGroup](self, "buildGroup")];

  return v7;
}

- (SUCoreRestoreVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RestoreVersionString"];

  v6 = [(SUCoreRestoreVersion *)self initWithRestoreVersion:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreRestoreVersion *)self restoreVersionString];
  [v4 encodeObject:v5 forKey:@"RestoreVersionString"];
}

void __45__SUCoreRestoreVersion__enableVerboseLogging__block_invoke()
{
  v0 = [[SUCoreConfig alloc] initWithProjectName:@"SoftwareUpdateCore"];
  _enableVerboseLogging___verboseLoggingEnabled = [(SUCoreConfig *)v0 getBoolConfigForKey:@"VerboseLogging"];
}

- (void)initWithRestoreVersion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = [v0 summary];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1E0F71000, v2, v3, "[RestoreVersion] (%{public}@) Init: failed to create a valid parsed restore version from string %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end