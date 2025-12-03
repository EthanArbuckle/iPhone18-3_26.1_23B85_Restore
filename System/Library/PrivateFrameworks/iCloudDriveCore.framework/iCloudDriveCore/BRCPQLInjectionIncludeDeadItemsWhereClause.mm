@interface BRCPQLInjectionIncludeDeadItemsWhereClause
+ (id)_createInjectionWithCondition:(BOOL)condition;
@end

@implementation BRCPQLInjectionIncludeDeadItemsWhereClause

+ (id)_createInjectionWithCondition:(BOOL)condition
{
  if (condition)
  {
    v3 = "";
    v4 = 0;
  }

  else
  {
    v3 = "AND item_state IN (0)";
    v4 = 21;
  }

  v5 = [MEMORY[0x277D82C18] rawInjection:v3 length:v4];

  return v5;
}

@end