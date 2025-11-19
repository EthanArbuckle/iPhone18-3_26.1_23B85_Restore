@interface _LTTextLanguageDetectorScorerItem
- (_LTTextLanguageDetectorScorerItem)initWithLocale:(id)a3 confidence:(double)a4 wordCount:(int64_t)a5;
@end

@implementation _LTTextLanguageDetectorScorerItem

- (_LTTextLanguageDetectorScorerItem)initWithLocale:(id)a3 confidence:(double)a4 wordCount:(int64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v18.receiver = self;
  v18.super_class = _LTTextLanguageDetectorScorerItem;
  v10 = [(_LTTextLanguageDetectorScorerItem *)&v18 init];
  if (!v10)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = _LTOSLogLID();
  v12 = v11;
  if (!v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "nil locale encountered in scorable item init; will ignore this item", buf, 2u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = v12;
    v17 = [v9 localeIdentifier];
    *buf = 138543874;
    v20 = v17;
    v21 = 2048;
    v22 = a4;
    v23 = 2048;
    v24 = a5;
    _os_log_debug_impl(&dword_232E53000, v16, OS_LOG_TYPE_DEBUG, "new scoring item locale: %{public}@; confidence: %f; words: %ld", buf, 0x20u);
  }

  objc_storeStrong(&v10->_locale, a3);
  v10->_confidence = a4;
  v10->_wordCount = a5;
  v13 = v10;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end