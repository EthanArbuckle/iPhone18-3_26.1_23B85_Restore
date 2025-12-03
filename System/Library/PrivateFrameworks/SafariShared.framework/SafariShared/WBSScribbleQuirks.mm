@interface WBSScribbleQuirks
- (WBSScribbleQuirks)initWithHighLevelDomain:(id)domain;
@end

@implementation WBSScribbleQuirks

- (WBSScribbleQuirks)initWithHighLevelDomain:(id)domain
{
  domainCopy = domain;
  v10.receiver = self;
  v10.super_class = WBSScribbleQuirks;
  v6 = [(WBSScribbleQuirks *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_highLevelDomain, domain);
    v8 = v7;
  }

  return v7;
}

@end