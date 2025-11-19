@interface WBSCoreAnalyticsExtensionsStatistics
- (WBSCoreAnalyticsExtensionsStatistics)initWithExtensionsList:(id)a3 extractDeveloperIdentifier:(id)a4 extractComposedIdentifier:(id)a5 extensionTelemetryDataPredicate:(id)a6;
@end

@implementation WBSCoreAnalyticsExtensionsStatistics

- (WBSCoreAnalyticsExtensionsStatistics)initWithExtensionsList:(id)a3 extractDeveloperIdentifier:(id)a4 extractComposedIdentifier:(id)a5 extensionTelemetryDataPredicate:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v9 = a4;
  v26 = a6;
  v32.receiver = self;
  v32.super_class = WBSCoreAnalyticsExtensionsStatistics;
  v27 = [(WBSCoreAnalyticsExtensionsStatistics *)&v32 init];
  if (v27)
  {
    v25 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v23;
    v10 = 0;
    v11 = 0;
    v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = v9[2](v9, v15);
          if ([v16 length])
          {
            v17 = v26[2](v26, v15);
            v18 = [v17 enabled];
            if (!v27->_hasExtensionThatCanOverrideNewTabPage && [v17 canOverrideNewTabPage])
            {
              v27->_hasExtensionThatCanOverrideNewTabPage = 1;
            }

            [(NSArray *)v25 addObject:v17, v23];

            v10 += v18;
            v11 += v18 ^ 1;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v27->_enabledCount = v10;
    v27->_disabledCount = v11;
    telemetryDataForExtensions = v27->_telemetryDataForExtensions;
    v27->_telemetryDataForExtensions = v25;

    v20 = v27;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v27;
}

@end