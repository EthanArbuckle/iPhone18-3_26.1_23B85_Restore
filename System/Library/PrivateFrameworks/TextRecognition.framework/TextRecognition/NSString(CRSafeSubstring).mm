@interface NSString(CRSafeSubstring)
- (__CFString)safeSubstringWithRange:()CRSafeSubstring;
@end

@implementation NSString(CRSafeSubstring)

- (__CFString)safeSubstringWithRange:()CRSafeSubstring
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3 < [self length] && a3 + a4 <= objc_msgSend(self, "length"))
    {
      v8 = [self substringWithRange:{a3, a4}];
    }

    else
    {
      v7 = CROSLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v10 = 134218496;
        v11 = a3;
        v12 = 2048;
        v13 = a4;
        v14 = 2048;
        v15 = [self length];
        _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_FAULT, "safeSubstringWithRange: range out of bounds NSMakeRange(%lu, %lu), in string of length %lu", &v10, 0x20u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = &stru_1F2BB4348;
  }

  return v8;
}

@end