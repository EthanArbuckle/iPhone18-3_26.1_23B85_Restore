@interface WBSScribbleQuirksManager
- (WBSScribbleQuirksManager)init;
- (id)quirksForHighLevelDomain:(id)domain;
@end

@implementation WBSScribbleQuirksManager

- (WBSScribbleQuirksManager)init
{
  v11.receiver = self;
  v11.super_class = WBSScribbleQuirksManager;
  v2 = [(WBSScribbleQuirksManager *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"ScribbleQuirks" withExtension:@"plist"];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
      if ([v5 length])
      {
        v6 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:v5 options:0];
        quirksDictionary = v2->_quirksDictionary;
        v2->_quirksDictionary = v6;
      }

      v8 = v2;
    }

    else
    {
      v9 = v2;
    }
  }

  return v2;
}

- (id)quirksForHighLevelDomain:(id)domain
{
  domainCopy = domain;
  if (-[NSDictionary count](self->_quirksDictionary, "count") && [domainCopy length])
  {
    v5 = [[WBSScribbleQuirks alloc] initWithHighLevelDomain:domainCopy];
    v6 = [(NSDictionary *)self->_quirksDictionary objectForKeyedSubscript:domainCopy];
    v7 = [v6 safari_numberForKey:@"shouldIgnorePointerEventsNone"];
    [(WBSScribbleQuirks *)v5 setShouldIgnorePointerEventsNone:v7];

    v8 = [v6 safari_numberForKey:@"shouldDisableHiddenActiveElement"];
    [(WBSScribbleQuirks *)v5 setShouldDisableHiddenActiveElement:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end