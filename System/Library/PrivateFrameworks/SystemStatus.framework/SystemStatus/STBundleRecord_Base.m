@interface STBundleRecord_Base
+ (id)bundleRecordForBundleAtURL:(id)a3;
- (STBundleRecord_Base)initWithBundleInfoDictionary:(id)a3 bundleRecordIdentifier:(id)a4 bundleURL:(id)a5;
@end

@implementation STBundleRecord_Base

+ (id)bundleRecordForBundleAtURL:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CFBundleCopyInfoDictionaryInDirectory(v4);
  v6 = v5;
  if (!v5 || (-[__CFDictionary allKeys](v5, "allKeys"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, !v8))
  {
    v9 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v4;
      _os_log_error_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_ERROR, "Error loading data for bundle at %{public}@", &v15, 0xCu);
    }
  }

  v10 = [(__CFDictionary *)v6 bs_safeObjectForKey:*MEMORY[0x1E695E4F0] ofType:objc_opt_class()];
  v11 = [(__CFDictionary *)v6 bs_safeObjectForKey:@"STBundleRecordType" ofType:objc_opt_class()];
  if (v10)
  {
    v12 = [[a1 alloc] initWithBundleInfoDictionary:v6 bundleRecordIdentifier:v10 bundleURL:v4];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (STBundleRecord_Base)initWithBundleInfoDictionary:(id)a3 bundleRecordIdentifier:(id)a4 bundleURL:(id)a5
{
  v7 = a4;
  v8 = a5;
  v15.receiver = self;
  v15.super_class = STBundleRecord_Base;
  v9 = [(STBundleRecord_Base *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    recordIdentifier = v9->_recordIdentifier;
    v9->_recordIdentifier = v10;

    v12 = [v8 copy];
    recordBundleURL = v9->_recordBundleURL;
    v9->_recordBundleURL = v12;
  }

  return v9;
}

@end