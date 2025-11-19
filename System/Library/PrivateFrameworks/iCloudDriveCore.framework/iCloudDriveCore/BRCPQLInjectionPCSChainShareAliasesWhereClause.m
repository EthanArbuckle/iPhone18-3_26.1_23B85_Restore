@interface BRCPQLInjectionPCSChainShareAliasesWhereClause
+ (id)_createInjectionWithCondition:(BOOL)a3;
@end

@implementation BRCPQLInjectionPCSChainShareAliasesWhereClause

+ (id)_createInjectionWithCondition:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }

  else
  {
    [MEMORY[0x277D82C08] formatInjection:@"AND NOT (item_type = 3 AND item_alias_target like '%%:\\_%%' ESCAPE '\\')"];
  }
  v3 = ;

  return v3;
}

@end