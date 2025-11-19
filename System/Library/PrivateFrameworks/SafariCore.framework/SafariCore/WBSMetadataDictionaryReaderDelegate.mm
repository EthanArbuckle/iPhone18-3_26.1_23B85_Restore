@interface WBSMetadataDictionaryReaderDelegate
- (BOOL)jsonReader:(id)a3 scalarValue:(id)a4;
- (BOOL)jsonReaderBeginArray:(id)a3;
- (BOOL)jsonReaderBeginObject:(id)a3;
- (BOOL)jsonReaderEndObject:(id)a3;
- (WBSMetadataDictionaryReaderDelegate)init;
@end

@implementation WBSMetadataDictionaryReaderDelegate

- (WBSMetadataDictionaryReaderDelegate)init
{
  v13.receiver = self;
  v13.super_class = WBSMetadataDictionaryReaderDelegate;
  v2 = [(WBSMetadataDictionaryReaderDelegate *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    metadataDictionary = v2->_metadataDictionary;
    v2->_metadataDictionary = v3;

    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"browser_name", @"browser_version", @"data_type", @"export_time_usec", @"schema_version", 0}];
    validKeys = v2->_validKeys;
    v2->_validKeys = v5;

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"browser_name", @"browser_version", @"data_type", 0}];
    stringKeys = v2->_stringKeys;
    v2->_stringKeys = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"export_time_usec", @"schema_version", 0}];
    numberKeys = v2->_numberKeys;
    v2->_numberKeys = v9;

    v11 = v2;
  }

  return v2;
}

- (BOOL)jsonReader:(id)a3 scalarValue:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_level != 2 || !self->_insideMetadata || ![(NSSet *)self->_validKeys containsObject:self->_lastKey])
  {
    goto LABEL_9;
  }

  if ([(NSSet *)self->_stringKeys containsObject:self->_lastKey])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A798];
      v22 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a string for %@, got a %@", self->_lastKey, objc_opt_class()];
      v23[0] = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = v23;
      v16 = &v22;
LABEL_13:
      v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
      v18 = [v11 errorWithDomain:v12 code:22 userInfo:v17];
      error = self->_error;
      self->_error = v18;

      v8 = 0;
      goto LABEL_10;
    }
  }

  if ([(NSSet *)self->_numberKeys containsObject:self->_lastKey])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A798];
      v20 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a number for %@, got a %@", self->_lastKey, objc_opt_class()];
      v21 = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v21;
      v16 = &v20;
      goto LABEL_13;
    }
  }

  [(NSMutableDictionary *)self->_metadataDictionary setObject:v7 forKeyedSubscript:self->_lastKey];
LABEL_9:
  v8 = 1;
LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)jsonReaderBeginObject:(id)a3
{
  v3 = self->_level + 1;
  self->_level = v3;
  if (v3 == 2 && [(NSString *)self->_lastKey isEqualToString:@"metadata"])
  {
    self->_insideMetadata = 1;
  }

  return 1;
}

- (BOOL)jsonReaderEndObject:(id)a3
{
  insideMetadata = self->_insideMetadata;
  if (!insideMetadata)
  {
    --self->_level;
  }

  return !insideMetadata;
}

- (BOOL)jsonReaderBeginArray:(id)a3
{
  v3 = self->_level + 1;
  self->_level = v3;
  if (v3 != 2)
  {
    return 1;
  }

  if ([(NSString *)self->_lastKey isEqualToString:@"Browser History"])
  {
    v5 = @"chrome_history";
LABEL_4:
    [(NSMutableDictionary *)self->_metadataDictionary setObject:v5 forKeyedSubscript:@"data_type"];
    return 0;
  }

  if (self->_level == 2 && [(NSString *)self->_lastKey isEqualToString:@"Extensions"])
  {
    v5 = @"chrome_extensions";
    goto LABEL_4;
  }

  return 1;
}

@end