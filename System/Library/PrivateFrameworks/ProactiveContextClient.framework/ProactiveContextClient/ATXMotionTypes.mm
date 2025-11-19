@interface ATXMotionTypes
+ (id)stringForMotionType:(int64_t)a3;
+ (int64_t)motionTypeForString:(id)a3 found:(BOOL *)a4;
@end

@implementation ATXMotionTypes

+ (id)stringForMotionType:(int64_t)a3
{
  if (a3 < 5)
  {
    return off_279AB7F50[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXMotionTypes *)a3 stringForMotionType:v5];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForMotionType called with invalid ATXMotionType of %tu", a3}];
  return @"Error";
}

+ (int64_t)motionTypeForString:(id)a3 found:(BOOL *)a4
{
  v6 = a3;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    v9 = [a1 stringForMotionType:v7];
    v10 = [v9 isEqualToString:v6];

    if (v10)
    {
      break;
    }

    v7 = v8 + 1;
    if (v8 == 4)
    {
      if (!a4)
      {
        goto LABEL_9;
      }

      v11 = 0;
      goto LABEL_8;
    }
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v11 = 1;
LABEL_8:
  *a4 = v11;
LABEL_9:

  return v8;
}

+ (void)stringForMotionType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_260C9F000, a2, OS_LOG_TYPE_ERROR, "stringForMotionType called with invalid ATXMotionType of %tu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end