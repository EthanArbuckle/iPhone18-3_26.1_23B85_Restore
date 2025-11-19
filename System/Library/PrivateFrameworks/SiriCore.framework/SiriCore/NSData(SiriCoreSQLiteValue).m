@interface NSData(SiriCoreSQLiteValue)
- (id)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue;
- (id)siriCoreSQLiteValue_toNumber;
- (id)siriCoreSQLiteValue_toString;
- (uint64_t)siriCoreSQLiteValue_blobRepresentationWithLength:()SiriCoreSQLiteValue;
@end

@implementation NSData(SiriCoreSQLiteValue)

- (uint64_t)siriCoreSQLiteValue_blobRepresentationWithLength:()SiriCoreSQLiteValue
{
  if (a3)
  {
    *a3 = [a1 length];
  }

  v4 = a1;

  return [v4 bytes];
}

- (id)siriCoreSQLiteValue_toNumber
{
  v1 = [a1 siriCoreSQLiteValue_toString];
  v2 = [v1 siriCoreSQLiteValue_toNumber];

  return v2;
}

- (id)siriCoreSQLiteValue_toString
{
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:4];

  return v1;
}

- (id)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *MEMORY[0x277CEF0B0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[NSData(SiriCoreSQLiteValue) siriCoreSQLiteValue_escapedString:]";
      v12 = 2112;
      v13 = a1;
      _os_log_error_impl(&dword_2669D1000, v4, OS_LOG_TYPE_ERROR, "%s Using %@ as identifier is NOT supported.", buf, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [MEMORY[0x277CCACA8] hexStringFromData:a1];
    v5 = [v6 initWithFormat:@"X'%@'", v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

@end