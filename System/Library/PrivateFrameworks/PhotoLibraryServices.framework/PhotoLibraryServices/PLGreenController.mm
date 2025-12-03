@interface PLGreenController
- (BOOL)greenValuesSimilarToGreenValues:(id)values;
- (BOOL)isGreenStateValid;
- (PLGreenController)init;
- (void)readValuesFromDisk;
@end

@implementation PLGreenController

- (BOOL)greenValuesSimilarToGreenValues:(id)values
{
  valuesCopy = values;
  if ([(PLGreenController *)self isGreenStateValid])
  {
    v5 = [valuesCopy objectForKeyedSubscript:@"key1"];
    currentGreenValues = [(PLGreenController *)self currentGreenValues];
    v7 = [currentGreenValues objectForKeyedSubscript:@"key1"];
    v8 = [v5 isEqual:v7];

    v9 = [valuesCopy objectForKeyedSubscript:@"key2"];
    currentGreenValues2 = [(PLGreenController *)self currentGreenValues];
    v11 = [currentGreenValues2 objectForKeyedSubscript:@"key2"];
    v12 = [v9 isEqual:v11];

    v13 = [valuesCopy objectForKeyedSubscript:@"key3"];
    currentGreenValues3 = [(PLGreenController *)self currentGreenValues];
    v15 = [currentGreenValues3 objectForKeyedSubscript:@"key3"];
    LOBYTE(currentGreenValues2) = [v13 isEqual:v15];

    v16 = v8 & v12 & currentGreenValues2;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isGreenStateValid
{
  v10 = *MEMORY[0x1E69E9840];
  currentGreenValues = [(PLGreenController *)self currentGreenValues];
  v3 = [currentGreenValues objectForKeyedSubscript:@"state"];
  integerValue = [v3 integerValue];

  if (integerValue <= 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = integerValue;
    v8 = 2048;
    v9 = 1;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Green state version is %ld, below the required threshold %ld. Cannot compare green values", &v6, 0x16u);
  }

  return integerValue > 0;
}

- (void)readValuesFromDisk
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Application Support/com.apple.palette.green.plist"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/var/mobile/Library/Application Support/com.apple.palette.green.plist"];
    currentGreenValues = self->_currentGreenValues;
    self->_currentGreenValues = v5;
  }
}

- (PLGreenController)init
{
  v5.receiver = self;
  v5.super_class = PLGreenController;
  v2 = [(PLGreenController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLGreenController *)v2 readValuesFromDisk];
  }

  return v3;
}

@end