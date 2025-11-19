@interface PPTopicUtils
+ (id)cachedTopicScoresAtPath:(id)a3;
@end

@implementation PPTopicUtils

+ (id)cachedTopicScoresAtPath:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [MEMORY[0x1E69C5D40] dictionaryWithPath:a3 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = pp_topics_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_ERROR, "Could not read Portrait topic cache plist: %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

@end