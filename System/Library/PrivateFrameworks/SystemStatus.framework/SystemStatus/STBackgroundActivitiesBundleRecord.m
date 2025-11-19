@interface STBackgroundActivitiesBundleRecord
- (STBackgroundActivitiesBundleRecord)initWithBundleInfoDictionary:(id)a3 bundleRecordIdentifier:(id)a4 bundleURL:(id)a5;
@end

@implementation STBackgroundActivitiesBundleRecord

- (STBackgroundActivitiesBundleRecord)initWithBundleInfoDictionary:(id)a3 bundleRecordIdentifier:(id)a4 bundleURL:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36.receiver = self;
  v36.super_class = STBackgroundActivitiesBundleRecord;
  v9 = [(STBundleRecord_Base *)&v36 initWithBundleInfoDictionary:v8 bundleRecordIdentifier:a4 bundleURL:a5];
  v10 = v9;
  if (v9)
  {
    v29 = v9;
    v31 = [MEMORY[0x1E695DF90] dictionary];
    v30 = [MEMORY[0x1E695DFA8] set];
    v11 = [v8 bs_safeArrayForKey:@"STBackgroundActivities"];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        v15 = 0;
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v32 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 bs_safeStringForKey:@"Identifier"];
            v18 = [v16 bs_safeDictionaryForKey:@"VisualDescriptor"];
            v19 = [[STBackgroundActivityVisualDescriptor alloc] initWithPlistRepresentation:v18];
            v20 = v19;
            if (v17)
            {
              v21 = v19 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (v21)
            {
              v22 = STSystemStatusLogBundleLoading();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138477827;
                v38 = v17;
                _os_log_error_impl(&dword_1DA9C2000, v22, OS_LOG_TYPE_ERROR, "No valid visual descriptor for background activity '%{private}@'", buf, 0xCu);
              }
            }

            else
            {
              [v31 setObject:v19 forKey:v17];
              [v30 addObject:v17];
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v13);
    }

    v23 = [v31 copy];
    v10 = v29;
    backgroundActivitiesToVisualDescriptors = v29->_backgroundActivitiesToVisualDescriptors;
    v29->_backgroundActivitiesToVisualDescriptors = v23;

    v25 = [v30 copy];
    backgroundActivityIdentifiers = v29->_backgroundActivityIdentifiers;
    v29->_backgroundActivityIdentifiers = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

@end