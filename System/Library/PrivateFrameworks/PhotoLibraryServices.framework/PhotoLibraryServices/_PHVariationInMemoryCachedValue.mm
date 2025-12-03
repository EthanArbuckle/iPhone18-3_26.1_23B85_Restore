@interface _PHVariationInMemoryCachedValue
- (BOOL)isValid;
- (_PHVariationInMemoryCachedValue)initWithInfo:(id)info fileURL:(id)l;
- (id)_currentFileModificationDate;
@end

@implementation _PHVariationInMemoryCachedValue

- (BOOL)isValid
{
  _currentFileModificationDate = [(_PHVariationInMemoryCachedValue *)self _currentFileModificationDate];
  expectedDate = [(_PHVariationInMemoryCachedValue *)self expectedDate];
  v5 = [expectedDate isEqualToDate:_currentFileModificationDate];

  return v5;
}

- (id)_currentFileModificationDate
{
  v19 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileURL = [(_PHVariationInMemoryCachedValue *)self fileURL];
  path = [fileURL path];
  v12 = 0;
  v6 = [defaultManager attributesOfItemAtPath:path error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      fileURL2 = [(_PHVariationInMemoryCachedValue *)self fileURL];
      *buf = 138412802;
      selfCopy = self;
      v15 = 2112;
      v16 = fileURL2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "%@: error reading file attributes of file at %@ (%@)", buf, 0x20u);
    }
  }

  fileModificationDate = [v6 fileModificationDate];

  return fileModificationDate;
}

- (_PHVariationInMemoryCachedValue)initWithInfo:(id)info fileURL:(id)l
{
  infoCopy = info;
  lCopy = l;
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
  if (infoCopy && lCopy)
  {
    v10 = [infoCopy copy];
    info = v8->_info;
    v8->_info = v10;

    objc_storeStrong(&v8->_fileURL, l);
    _currentFileModificationDate = [(_PHVariationInMemoryCachedValue *)v8 _currentFileModificationDate];
    expectedDate = v8->_expectedDate;
    v8->_expectedDate = _currentFileModificationDate;

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