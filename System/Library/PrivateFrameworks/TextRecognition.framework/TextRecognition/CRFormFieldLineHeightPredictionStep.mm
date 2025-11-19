@interface CRFormFieldLineHeightPredictionStep
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
@end

@implementation CRFormFieldLineHeightPredictionStep

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = CROSLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = [v8 count];
    _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_DEBUG, "CRFormPostProcessor: CRFormFieldLineHeightPredictionStep is running (#input:%lu).", &v18, 0xCu);
  }

  v12 = [v10 objectForKeyedSubscript:@"ShouldUpdateExternalFieldsOption"];
  v13 = [v12 BOOLValue];

  v14 = [CRFormParser predictLineHeightForFields:v8 inDocument:v9 shouldUpdateExternalFields:v13];
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