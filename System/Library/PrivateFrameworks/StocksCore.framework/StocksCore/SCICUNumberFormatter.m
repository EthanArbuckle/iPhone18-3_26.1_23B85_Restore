@interface SCICUNumberFormatter
- (id)formattedCount:(int64_t)a3;
- (id)formattedCount:(int64_t)a3 withLocale:(id)a4 longform:(BOOL)a5 compactDisplay:(BOOL)a6;
@end

@implementation SCICUNumberFormatter

- (id)formattedCount:(int64_t)a3
{
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [(SCICUNumberFormatter *)self formattedCount:a3 withLocale:v5];

  return v6;
}

- (id)formattedCount:(int64_t)a3 withLocale:(id)a4 longform:(BOOL)a5 compactDisplay:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = [a4 localeIdentifier];
  v10 = formattedCountWithLocale(a3, [v9 UTF8String], v7, v6);

  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    free(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end