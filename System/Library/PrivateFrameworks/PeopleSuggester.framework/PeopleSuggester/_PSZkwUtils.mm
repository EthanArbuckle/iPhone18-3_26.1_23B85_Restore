@interface _PSZkwUtils
+ (id)clientModelMismatchErrorResponseForRequest:(id)a3 requestedClientModelId:(id)a4 actualClientModelId:(id)a5;
@end

@implementation _PSZkwUtils

+ (id)clientModelMismatchErrorResponseForRequest:(id)a3 requestedClientModelId:(id)a4 actualClientModelId:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AEC0];
  v8 = a3;
  v9 = [v7 stringWithFormat:@"Wrong delegate for request. Expected %@ but found %@.", a4, a5];
  v10 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [_PSZkwUtils clientModelMismatchErrorResponseForRequest:v9 requestedClientModelId:v10 actualClientModelId:?];
  }

  v11 = objc_alloc(getATXSuggestionRequestResponseClass());
  v12 = MEMORY[0x1E696ABC0];
  getATXSuggestionRequestResponseClass();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v20 = *MEMORY[0x1E696A578];
  v21[0] = v9;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v16 = [v12 errorWithDomain:v14 code:5 userInfo:v15];
  v17 = [v11 initWithSuggestions:0 feedbackMetadata:0 originalRequest:v8 responseCode:3 error:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (void)clientModelMismatchErrorResponseForRequest:(uint64_t)a1 requestedClientModelId:(NSObject *)a2 actualClientModelId:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Client model mismatch when fetching ZKW suggestion: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end