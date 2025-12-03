@interface LTUIVisualTranslationService
+ (id)compactObservations:(id)observations;
+ (void)isTranslatable:(id)translatable completion:(id)completion;
- (void)translate:(id)translate completion:(id)completion;
- (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion;
- (void)translate:(id)translate targetLocale:(id)locale completion:(id)completion;
@end

@implementation LTUIVisualTranslationService

+ (void)isTranslatable:(id)translatable completion:(id)completion
{
  completionCopy = completion;
  translatableCopy = translatable;
  v7 = [objc_opt_class() compactObservations:translatableCopy];

  [_TtC13TranslationUI24VisualTranslationService isTranslatable:v7 completion:completionCopy];
}

- (void)translate:(id)translate completion:(id)completion
{
  completionCopy = completion;
  translateCopy = translate;
  v7 = [objc_opt_class() compactObservations:translateCopy];

  [_TtC13TranslationUI24VisualTranslationService translate:v7 sourceLocale:0 targetLocale:0 completion:completionCopy];
}

- (void)translate:(id)translate targetLocale:(id)locale completion:(id)completion
{
  completionCopy = completion;
  localeCopy = locale;
  translateCopy = translate;
  v10 = [objc_opt_class() compactObservations:translateCopy];

  [_TtC13TranslationUI24VisualTranslationService translate:v10 sourceLocale:0 targetLocale:localeCopy completion:completionCopy];
}

- (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion
{
  completionCopy = completion;
  targetLocaleCopy = targetLocale;
  localeCopy = locale;
  translateCopy = translate;
  v13 = [objc_opt_class() compactObservations:translateCopy];

  [_TtC13TranslationUI24VisualTranslationService translate:v13 sourceLocale:localeCopy targetLocale:targetLocaleCopy completion:completionCopy];
}

+ (id)compactObservations:(id)observations
{
  v19 = *MEMORY[0x277D85DE8];
  observationsCopy = observations;
  v4 = observationsCopy;
  if (observationsCopy && [observationsCopy count])
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
            getLines = [v11 getLines];

            if (!getLines)
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