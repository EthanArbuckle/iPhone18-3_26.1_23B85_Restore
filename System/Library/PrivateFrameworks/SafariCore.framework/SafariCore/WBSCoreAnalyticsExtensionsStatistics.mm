@interface WBSCoreAnalyticsExtensionsStatistics
- (WBSCoreAnalyticsExtensionsStatistics)initWithExtensionsList:(id)list extractDeveloperIdentifier:(id)identifier extractComposedIdentifier:(id)composedIdentifier extensionTelemetryDataPredicate:(id)predicate;
@end

@implementation WBSCoreAnalyticsExtensionsStatistics

- (WBSCoreAnalyticsExtensionsStatistics)initWithExtensionsList:(id)list extractDeveloperIdentifier:(id)identifier extractComposedIdentifier:(id)composedIdentifier extensionTelemetryDataPredicate:(id)predicate
{
  v34 = *MEMORY[0x1E69E9840];
  listCopy = list;
  identifierCopy = identifier;
  predicateCopy = predicate;
  v32.receiver = self;
  v32.super_class = WBSCoreAnalyticsExtensionsStatistics;
  v27 = [(WBSCoreAnalyticsExtensionsStatistics *)&v32 init];
  if (v27)
  {
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = listCopy;
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
          v16 = identifierCopy[2](identifierCopy, v15);
          if ([v16 length])
          {
            v17 = predicateCopy[2](predicateCopy, v15);
            enabled = [v17 enabled];
            if (!v27->_hasExtensionThatCanOverrideNewTabPage && [v17 canOverrideNewTabPage])
            {
              v27->_hasExtensionThatCanOverrideNewTabPage = 1;
            }

            [(NSArray *)array addObject:v17, listCopy];

            v10 += enabled;
            v11 += enabled ^ 1;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v27->_enabledCount = v10;
    v27->_disabledCount = v11;
    telemetryDataForExtensions = v27->_telemetryDataForExtensions;
    v27->_telemetryDataForExtensions = array;

    v20 = v27;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v27;
}

@end