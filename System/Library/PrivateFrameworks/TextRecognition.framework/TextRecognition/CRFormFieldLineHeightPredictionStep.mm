@interface CRFormFieldLineHeightPredictionStep
- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options;
@end

@implementation CRFormFieldLineHeightPredictionStep

- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options
{
  v20 = *MEMORY[0x1E69E9840];
  processCopy = process;
  documentCopy = document;
  optionsCopy = options;
  v11 = CROSLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = [processCopy count];
    _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldLineHeightPredictionStep is running (#input:%lu).", &v18, 0xCu);
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"ShouldUpdateExternalFieldsOption"];
  bOOLValue = [v12 BOOLValue];

  v14 = [CRFormParser predictLineHeightForFields:processCopy inDocument:documentCopy shouldUpdateExternalFields:bOOLValue];
  v15 = CROSLogForCategory(6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v14 count];
    v18 = 134217984;
    v19 = v16;
    _os_log_impl(&dword_1B40D2000, v15, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldLineHeightPredictionStep is completed (#output:%lu).", &v18, 0xCu);
  }

  return v14;
}

@end