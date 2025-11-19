@interface PSFeedback
@end

@implementation PSFeedback

id __28___PSFeedback_donateToBiome__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __28___PSFeedback_donateToBiome__block_invoke_2_cold_1(v3, v4);
    }
  }

  return v2;
}

void __28___PSFeedback_donateToBiome__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error converting NSDictionary to NSData: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end