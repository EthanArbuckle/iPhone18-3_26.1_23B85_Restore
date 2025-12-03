@interface NSUserDefaults(SingleUseToken)
- (id)workflowIdentifierConsumingSingleUseToken:()SingleUseToken;
- (void)setWorkflowIdentifier:()SingleUseToken forToken:;
@end

@implementation NSUserDefaults(SingleUseToken)

- (id)workflowIdentifierConsumingSingleUseToken:()SingleUseToken
{
  v4 = a3;
  v5 = [self dictionaryForKey:@"WFWorkflowSingleUseTokenMap"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:v4];
    if (v7)
    {
      [self setWorkflowIdentifier:0 forToken:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setWorkflowIdentifier:()SingleUseToken forToken:
{
  v9 = a3;
  v6 = a4;
  v7 = [self dictionaryForKey:@"WFWorkflowSingleUseTokenMap"];
  v8 = [v7 mutableCopy];

  if (v9 | v8)
  {
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if (v9)
    {
      [v8 setObject:v9 forKeyedSubscript:v6];
    }

    else
    {
      [v8 removeObjectForKey:v6];
    }

    [self setObject:v8 forKey:@"WFWorkflowSingleUseTokenMap"];
  }
}

@end