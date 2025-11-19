@interface SPMatcher
+ (id)transcriptionForString:(id)a3 withLanguage:(id)a4;
- (SPMatcher)initWithSearchString:(id)a3 andLocale:(id)a4 andOptions:(unint64_t)a5;
- (void)dealloc;
@end

@implementation SPMatcher

- (SPMatcher)initWithSearchString:(id)a3 andLocale:(id)a4 andOptions:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SPMatcher;
  v9 = [(SPMatcher *)&v11 init];
  if (v9)
  {
    v9->_matcher = icu_word_matcher_create();
  }

  return v9;
}

- (void)dealloc
{
  matcher = self->_matcher;
  icu_ctx_release();
  v4.receiver = self;
  v4.super_class = SPMatcher;
  [(SPMatcher *)&v4 dealloc];
}

+ (id)transcriptionForString:(id)a3 withLanguage:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x400uLL);
  v6 = a3;
  v7 = a4;
  [a3 UTF8String];
  [v7 UTF8String];

  if (resolve_transcriptions_for_locale())
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end