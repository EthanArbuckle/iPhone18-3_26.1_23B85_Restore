@interface PLGreenController
- (BOOL)greenValuesSimilarToGreenValues:(id)a3;
- (BOOL)isGreenStateValid;
- (PLGreenController)init;
- (void)readValuesFromDisk;
@end

@implementation PLGreenController

- (BOOL)greenValuesSimilarToGreenValues:(id)a3
{
  v4 = a3;
  if ([(PLGreenController *)self isGreenStateValid])
  {
    v5 = [v4 objectForKeyedSubscript:@"key1"];
    v6 = [(PLGreenController *)self currentGreenValues];
    v7 = [v6 objectForKeyedSubscript:@"key1"];
    v8 = [v5 isEqual:v7];

    v9 = [v4 objectForKeyedSubscript:@"key2"];
    v10 = [(PLGreenController *)self currentGreenValues];
    v11 = [v10 objectForKeyedSubscript:@"key2"];
    v12 = [v9 isEqual:v11];

    v13 = [v4 objectForKeyedSubscript:@"key3"];
    v14 = [(PLGreenController *)self currentGreenValues];
    v15 = [v14 objectForKeyedSubscript:@"key3"];
    LOBYTE(v10) = [v13 isEqual:v15];

    v16 = v8 & v12 & v10;
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
  v2 = [(PLGreenController *)self currentGreenValues];
  v3 = [v2 objectForKeyedSubscript:@"state"];
  v4 = [v3 integerValue];

  if (v4 <= 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = v4;
    v8 = 2048;
    v9 = 1;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Green state version is %ld, below the required threshold %ld. Cannot compare green values", &v6, 0x16u);
  }

  return v4 > 0;
}

- (void)readValuesFromDisk
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:@"/var/mobile/Library/Application Support/com.apple.palette.green.plist"];

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