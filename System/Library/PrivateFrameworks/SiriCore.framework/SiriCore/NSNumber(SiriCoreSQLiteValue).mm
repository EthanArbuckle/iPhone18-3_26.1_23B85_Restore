@interface NSNumber(SiriCoreSQLiteValue)
- (id)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue;
- (id)siriCoreSQLiteValue_toData;
- (uint64_t)siriCoreSQLiteValue_type;
@end

@implementation NSNumber(SiriCoreSQLiteValue)

- (uint64_t)siriCoreSQLiteValue_type
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *[self objCType] - 66;
  if (v2 <= 0x31)
  {
    if (((1 << v2) & 0x2848200028483) != 0)
    {
      result = 3;
      goto LABEL_4;
    }

    if (((1 << v2) & 0x1400000000) != 0)
    {
      result = 2;
      goto LABEL_4;
    }
  }

  v5 = *MEMORY[0x277CEF0B0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
  {
    selfCopy = self;
    v7 = v5;
    v8 = 136315650;
    v9 = "[NSNumber(SiriCoreSQLiteValue) siriCoreSQLiteValue_type]";
    v10 = 2112;
    selfCopy2 = self;
    v12 = 2080;
    objCType = [self objCType];
    _os_log_error_impl(&dword_2669D1000, v7, OS_LOG_TYPE_ERROR, "%s %@ (objCType = %s)", &v8, 0x20u);
  }

  result = 0;
LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)siriCoreSQLiteValue_toData
{
  siriCoreSQLiteValue_toString = [self siriCoreSQLiteValue_toString];
  siriCoreSQLiteValue_toData = [siriCoreSQLiteValue_toString siriCoreSQLiteValue_toData];

  return siriCoreSQLiteValue_toData;
}

- (id)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *MEMORY[0x277CEF0B0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[NSNumber(SiriCoreSQLiteValue) siriCoreSQLiteValue_escapedString:]";
      v10 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_2669D1000, v4, OS_LOG_TYPE_ERROR, "%s Using %@ as identifier is NOT supported.", &v8, 0x16u);
    }

    stringValue = 0;
  }

  else
  {
    stringValue = [self stringValue];
  }

  v6 = *MEMORY[0x277D85DE8];

  return stringValue;
}

@end