@interface SUCoreRestoreVersion
+ (BOOL)_enableVerboseLogging;
+ (id)_stringForNSComparisonResult:(int64_t)result;
- (BOOL)_isStringOnlyNumbers:(id)numbers;
- (BOOL)isComparable:(id)comparable;
- (BOOL)isEqual:(id)equal;
- (SUCoreRestoreVersion)initWithCoder:(id)coder;
- (SUCoreRestoreVersion)initWithRestoreVersion:(id)version;
- (id)description;
- (id)getNextNearestRestoreVersionOf:(id)of and:(id)and;
- (id)summary;
- (int64_t)compare:(id)compare;
- (void)_parseRestoreVersionString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreRestoreVersion

- (void)_parseRestoreVersionString
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x1E69E9840];
  summary = [v0 summary];
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

- (SUCoreRestoreVersion)initWithRestoreVersion:(id)version
{
  versionCopy = version;
  if (!versionCopy)
  {
    v14 = +[SUCoreLog sharedLogger];
    oslog = [v14 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreRestoreVersion initWithRestoreVersion:oslog];
    }

    goto LABEL_11;
  }

  v18.receiver = self;
  v18.super_class = SUCoreRestoreVersion;
  v6 = [(SUCoreRestoreVersion *)&v18 init];
  self = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_restoreVersionString, version);
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
    oslog = [v16 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreRestoreVersion initWithRestoreVersion:];
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

LABEL_6:
  self = self;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (id)getNextNearestRestoreVersionOf:(id)of and:(id)and
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  ofCopy = of;
  andCopy = and;
  v6 = MEMORY[0x1E695DEC8];
  andCopy2 = and;
  ofCopy2 = of;
  v9 = [v6 arrayWithObjects:&selfCopy count:3];

  v10 = [v9 sortedArrayUsingComparator:{&__block_literal_global_3, selfCopy, ofCopy, andCopy, v18}];

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

- (BOOL)_isStringOnlyNumbers:(id)numbers
{
  v3 = MEMORY[0x1E696AB08];
  numbersCopy = numbers;
  decimalDigitCharacterSet = [v3 decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];
  v7 = [numbersCopy rangeOfCharacterFromSet:invertedSet];

  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)isComparable:(id)comparable
{
  v23 = *MEMORY[0x1E69E9840];
  comparableCopy = comparable;
  if (comparableCopy && (v5 = -[SUCoreRestoreVersion buildGroup](self, "buildGroup"), v5 == [comparableCopy buildGroup]))
  {
    parsedVersion = [(SUCoreRestoreVersion *)self parsedVersion];
    if ([parsedVersion count] == 5)
    {
      parsedVersion2 = [comparableCopy parsedVersion];
      v8 = [parsedVersion2 count] == 5;
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
    oslog = [v9 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [(SUCoreRestoreVersion *)self summary];
      summary2 = [comparableCopy summary];
      v13 = summary2;
      v14 = @"NO";
      v17 = 138543874;
      v18 = summary;
      v19 = 2114;
      if (v8)
      {
        v14 = @"YES";
      }

      v20 = summary2;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[RestoreVersion] Comparable: self=%{public}@ to=%{public}@ | valid=%{public}@", &v17, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int64_t)compare:(id)compare
{
  v26 = *MEMORY[0x1E69E9840];
  compareCopy = compare;
  if ([(SUCoreRestoreVersion *)self isComparable:compareCopy])
  {
    v5 = 0;
    do
    {
      parsedVersion = [(SUCoreRestoreVersion *)self parsedVersion];
      v7 = [parsedVersion objectAtIndex:v5];
      parsedVersion2 = [compareCopy parsedVersion];
      v9 = [parsedVersion2 objectAtIndex:v5];
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
      oslog = [v12 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        summary = [(SUCoreRestoreVersion *)self summary];
        summary2 = [compareCopy summary];
        v16 = [SUCoreRestoreVersion _stringForNSComparisonResult:v10];
        v20 = 138543874;
        v21 = summary;
        v22 = 2114;
        v23 = summary2;
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[RestoreVersion] Compare: self=%{public}@ to=%{public}@ | result=%{public}@", &v20, 0x20u);
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

+ (id)_stringForNSComparisonResult:(int64_t)result
{
  if ((result + 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E86FC8E8[result + 1];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      restoreVersionString = [(SUCoreRestoreVersion *)self restoreVersionString];
      restoreVersionString2 = [(SUCoreRestoreVersion *)v5 restoreVersionString];

      v8 = [SUCore stringIsEqual:restoreVersionString to:restoreVersionString2];
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
  restoreVersionString = [(SUCoreRestoreVersion *)self restoreVersionString];
  v4 = [v2 stringWithFormat:@"%@", restoreVersionString];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  restoreVersionString = [(SUCoreRestoreVersion *)self restoreVersionString];
  parsedVersion = [(SUCoreRestoreVersion *)self parsedVersion];
  v6 = [parsedVersion componentsJoinedByString:@"."];
  v7 = [v3 stringWithFormat:@"SUCoreRestoreVersion(restoreVersionString:%@|parsedVersion:%@|buildGroup:%ld)", restoreVersionString, v6, -[SUCoreRestoreVersion buildGroup](self, "buildGroup")];

  return v7;
}

- (SUCoreRestoreVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RestoreVersionString"];

  v6 = [(SUCoreRestoreVersion *)self initWithRestoreVersion:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  restoreVersionString = [(SUCoreRestoreVersion *)self restoreVersionString];
  [coderCopy encodeObject:restoreVersionString forKey:@"RestoreVersionString"];
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