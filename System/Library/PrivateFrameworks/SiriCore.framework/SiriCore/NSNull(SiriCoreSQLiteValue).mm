@interface NSNull(SiriCoreSQLiteValue)
- (__CFString)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue;
@end

@implementation NSNull(SiriCoreSQLiteValue)

- (__CFString)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *MEMORY[0x277CEF0B0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[NSNull(SiriCoreSQLiteValue) siriCoreSQLiteValue_escapedString:]";
      v9 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_2669D1000, v4, OS_LOG_TYPE_ERROR, "%s Using %@ as identifier is NOT supported.", &v7, 0x16u);
    }

    result = 0;
  }

  else
  {
    result = @"null";
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end