@interface SCICUNumberFormatter
- (id)formattedCount:(int64_t)count;
- (id)formattedCount:(int64_t)count withLocale:(id)locale longform:(BOOL)longform compactDisplay:(BOOL)display;
@end

@implementation SCICUNumberFormatter

- (id)formattedCount:(int64_t)count
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [(SCICUNumberFormatter *)self formattedCount:count withLocale:currentLocale];

  return v6;
}

- (id)formattedCount:(int64_t)count withLocale:(id)locale longform:(BOOL)longform compactDisplay:(BOOL)display
{
  displayCopy = display;
  longformCopy = longform;
  localeIdentifier = [locale localeIdentifier];
  v10 = formattedCountWithLocale(count, [localeIdentifier UTF8String], longformCopy, displayCopy);

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