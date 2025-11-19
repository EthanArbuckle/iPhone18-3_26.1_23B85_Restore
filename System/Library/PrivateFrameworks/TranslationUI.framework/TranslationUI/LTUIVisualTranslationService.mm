@interface LTUIVisualTranslationService
+ (id)compactObservations:(id)a3;
+ (void)isTranslatable:(id)a3 completion:(id)a4;
- (void)translate:(id)a3 completion:(id)a4;
- (void)translate:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 completion:(id)a6;
- (void)translate:(id)a3 targetLocale:(id)a4 completion:(id)a5;
@end

@implementation LTUIVisualTranslationService

+ (void)isTranslatable:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() compactObservations:v6];

  [_TtC13TranslationUI24VisualTranslationService isTranslatable:v7 completion:v5];
}

- (void)translate:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() compactObservations:v6];

  [_TtC13TranslationUI24VisualTranslationService translate:v7 sourceLocale:0 targetLocale:0 completion:v5];
}

- (void)translate:(id)a3 targetLocale:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() compactObservations:v9];

  [_TtC13TranslationUI24VisualTranslationService translate:v10 sourceLocale:0 targetLocale:v8 completion:v7];
}

- (void)translate:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() compactObservations:v12];

  [_TtC13TranslationUI24VisualTranslationService translate:v13 sourceLocale:v11 targetLocale:v10 completion:v9];
}

+ (id)compactObservations:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 mutableCopy];
    v6 = [v5 count];
    if (v6 - 1 >= 0)
    {
      v8 = v6;
      *&v7 = 134217984;
      v16 = v7;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:{--v8, v16}];
        if (v9)
        {
        }

        else
        {
          v10 = [v5 objectAtIndexedSubscript:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v5 objectAtIndexedSubscript:v8];
            v12 = [v11 getLines];

            if (!v12)
            {
              v13 = _LTOSLogVisualTranslation();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = v16;
                v18 = v8;
                _os_log_error_impl(&dword_26F39E000, v13, OS_LOG_TYPE_ERROR, "Text block at index %lu has no observations", buf, 0xCu);
              }

              [v5 removeObjectAtIndex:v8];
            }
          }

          else
          {
          }
        }
      }

      while (v8 > 0);
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

@end