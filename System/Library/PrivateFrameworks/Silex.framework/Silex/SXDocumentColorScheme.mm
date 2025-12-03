@interface SXDocumentColorScheme
- (int64_t)automaticDarkModeEnabledWithValue:(id)value withType:(int)type;
@end

@implementation SXDocumentColorScheme

- (int64_t)automaticDarkModeEnabledWithValue:(id)value withType:(int)type
{
  if (type == 2)
  {
    return [value BOOLValue];
  }

  else
  {
    return -1;
  }
}

@end