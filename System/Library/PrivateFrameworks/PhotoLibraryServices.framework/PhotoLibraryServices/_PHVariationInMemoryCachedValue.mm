@interface _PHVariationInMemoryCachedValue
- (BOOL)isValid;
- (_PHVariationInMemoryCachedValue)initWithInfo:(id)a3 fileURL:(id)a4;
- (id)_currentFileModificationDate;
@end

@implementation _PHVariationInMemoryCachedValue

- (BOOL)isValid
{
  v3 = [(_PHVariationInMemoryCachedValue *)self _currentFileModificationDate];
  v4 = [(_PHVariationInMemoryCachedValue *)self expectedDate];
  v5 = [v4 isEqualToDate:v3];

  return v5;
}

- (id)_currentFileModificationDate
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(_PHVariationInMemoryCachedValue *)self fileURL];
  v5 = [v4 path];
  v12 = 0;
  v6 = [v3 attributesOfItemAtPath:v5 error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(_PHVariationInMemoryCachedValue *)self fileURL];
      *buf = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "%@: error reading file attributes of file at %@ (%@)", buf, 0x20u);
    }
  }

  v10 = [v6 fileModificationDate];

  return v10;
}

- (_PHVariationInMemoryCachedValue)initWithInfo:(id)a3 fileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _PHVariationInMemoryCachedValue;
  v8 = [(_PHVariationInMemoryCachedValue *)&v15 init];
  if (!v8)
  {
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v6 copy];
    info = v8->_info;
    v8->_info = v10;

    objc_storeStrong(&v8->_fileURL, a4);
    v12 = [(_PHVariationInMemoryCachedValue *)v8 _currentFileModificationDate];
    expectedDate = v8->_expectedDate;
    v8->_expectedDate = v12;

    if (!v8->_expectedDate)
    {
      v9 = 0;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

@end