@interface CRFormUnderlinedFieldTextOverlapCleanupStep
- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options;
@end

@implementation CRFormUnderlinedFieldTextOverlapCleanupStep

- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options
{
  v16 = *MEMORY[0x1E69E9840];
  processCopy = process;
  documentCopy = document;
  v9 = CROSLogForCategory(6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = 136315138;
    uTF8String = [v11 UTF8String];
    _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: %s is running.", &v14, 0xCu);
  }

  v12 = [CRFormFieldTextOverlapCleanupStep cleanupTextOverlapForFields:processCopy document:documentCopy underlinedFieldsOnly:1];

  return v12;
}

@end