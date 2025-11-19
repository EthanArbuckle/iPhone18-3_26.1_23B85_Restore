@interface CRFormUnderlinedFieldTextOverlapCleanupStep
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
@end

@implementation CRFormUnderlinedFieldTextOverlapCleanupStep

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = CROSLogForCategory(6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = 136315138;
    v15 = [v11 UTF8String];
    _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: %s is running.", &v14, 0xCu);
  }

  v12 = [CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:v7 document:v8 underlinedFieldsOnly:1];

  return v12;
}

@end