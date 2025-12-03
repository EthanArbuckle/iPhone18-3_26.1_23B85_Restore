@interface SISchemaUUID(TranslationDaemonAdditions)
- (id)ltd_safeUUID;
@end

@implementation SISchemaUUID(TranslationDaemonAdditions)

- (id)ltd_safeUUID
{
  if (objc_opt_respondsToSelector())
  {
    [self toSafeNSUUID];
  }

  else
  {
    [self toNSUUID];
  }
  v2 = ;

  return v2;
}

@end