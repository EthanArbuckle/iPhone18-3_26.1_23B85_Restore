@interface SXDocumentColorScheme
- (int64_t)automaticDarkModeEnabledWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXDocumentColorScheme

- (int64_t)automaticDarkModeEnabledWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 2)
  {
    return [a3 BOOLValue];
  }

  else
  {
    return -1;
  }
}

@end