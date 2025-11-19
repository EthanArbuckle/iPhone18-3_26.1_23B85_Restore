@interface NWPathEvaluator(WFAdditions)
+ (id)wf_pathEvaluatorForURL:()WFAdditions;
- (BOOL)wf_isReachable;
@end

@implementation NWPathEvaluator(WFAdditions)

+ (id)wf_pathEvaluatorForURL:()WFAdditions
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 host];
    v7 = [v3 port];
    v8 = [v7 stringValue];
    v9 = v8;
    v10 = @"80";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [MEMORY[0x277CD91D0] endpointWithHostname:v6 port:v11];

    v13 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:v12 parameters:0];
  }

  else
  {
    v13 = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  }

  return v13;
}

- (BOOL)wf_isReachable
{
  v1 = [a1 path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

@end