@interface NSManagedObject(Validation)
- (uint64_t)parseValidationErrors:()Validation otherErrors:;
@end

@implementation NSManagedObject(Validation)

- (uint64_t)parseValidationErrors:()Validation otherErrors:
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a4;
  if ([v4 count])
  {
    v5 = NSClassFromString(&cfstr_Xctestprobe.isa);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = +[STLog coreDataValidation];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v21 = v11;
            _os_log_fault_impl(&dword_1B831F000, v12, OS_LOG_TYPE_FAULT, "ScreenTime CoreData Validation failed with: %{public}@", buf, 0xCu);
          }

          if (!v5)
          {
            v13 = -[CoreDataValidationCoreAnalyticsEvent initWithValidationError:]([CoreDataValidationCoreAnalyticsEvent alloc], "initWithValidationError:", [v11 code]);
            [STCoreAnalyticsReporter reportEvent:v13];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

@end