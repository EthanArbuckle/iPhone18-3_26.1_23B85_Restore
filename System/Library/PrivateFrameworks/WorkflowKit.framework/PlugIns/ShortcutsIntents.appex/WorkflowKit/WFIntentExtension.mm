@interface WFIntentExtension
- (WFIntentExtension)init;
- (id)handlerForIntent:(id)intent;
@end

@implementation WFIntentExtension

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  if (qword_10000E0A0 != -1)
  {
    dispatch_once(&qword_10000E0A0, &stru_1000083D0);
  }

  v4 = qword_10000E098;
  identifier = [intentCopy identifier];
  v6 = [v4 objectForKeyedSubscript:identifier];

  v7 = qword_10000E098;
  if (v6)
  {
    identifier2 = [intentCopy identifier];
    v9 = [v7 objectForKeyedSubscript:identifier2];
  }

  else
  {
    [qword_10000E098 removeAllObjects];
    v10 = qword_10000E098;
    identifier2 = [intentCopy identifier];
    if ([intentCopy _type] == 2)
    {
      _codableDescription = [intentCopy _codableDescription];
      typeName = [_codableDescription typeName];

      [NSString stringWithFormat:@"WF%@IntentHandler", typeName];
    }

    else
    {
      _intentInstanceDescription = [intentCopy _intentInstanceDescription];
      typeName = [_intentInstanceDescription name];

      [NSString stringWithFormat:@"WF%@Handler", typeName];
    }
    v14 = ;

    v9 = objc_alloc_init(NSClassFromString(v14));
    [v10 setObject:v9 forKeyedSubscript:identifier2];
  }

  return v9;
}

- (WFIntentExtension)init
{
  v7.receiver = self;
  v7.super_class = WFIntentExtension;
  v2 = [(WFIntentExtension *)&v7 init];
  if (v2)
  {
    v3 = +[WFApplicationContext sharedContext];
    v4 = objc_opt_new();
    [v3 setProvider:v4];

    [WFInitialization initializeProcessWithDatabase:1];
    v5 = v2;
  }

  return v2;
}

@end