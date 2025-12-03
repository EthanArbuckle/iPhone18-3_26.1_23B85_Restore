@interface TISupplementalLexicon(TextInputCore)
- (id)core_searchPrefixSet;
@end

@implementation TISupplementalLexicon(TextInputCore)

- (id)core_searchPrefixSet
{
  if ([self searchPrefixes])
  {
    v2 = objc_opt_new();
    if ([self searchPrefixes])
    {
      [v2 appendString:@"@"];
    }

    if (([self searchPrefixes] & 2) != 0)
    {
      [v2 appendString:@"#"];
    }

    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end