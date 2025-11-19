@interface SISchemaUUID(TranslationDaemonAdditions)
- (id)ltd_safeUUID;
@end

@implementation SISchemaUUID(TranslationDaemonAdditions)

- (id)ltd_safeUUID
{
  if (objc_opt_respondsToSelector())
  {
    [a1 toSafeNSUUID];
  }

  else
  {
    [a1 toNSUUID];
  }
  v2 = ;

  return v2;
}

@end