@interface NWPathEvaluator(WFAdditions)
+ (id)wf_pathEvaluatorForURL:()WFAdditions;
- (BOOL)wf_isReachable;
@end

@implementation NWPathEvaluator(WFAdditions)

+ (id)wf_pathEvaluatorForURL:()WFAdditions
{
  v3 = a3;
  host = [v3 host];
  v5 = [host length];

  if (v5)
  {
    host2 = [v3 host];
    port = [v3 port];
    stringValue = [port stringValue];
    v9 = stringValue;
    v10 = @"80";
    if (stringValue)
    {
      v10 = stringValue;
    }

    v11 = v10;

    v12 = [MEMORY[0x277CD91D0] endpointWithHostname:host2 port:v11];

    mEMORY[0x277CD9200] = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:v12 parameters:0];
  }

  else
  {
    mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  }

  return mEMORY[0x277CD9200];
}

- (BOOL)wf_isReachable
{
  path = [self path];
  status = [path status];

  return (status & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

@end