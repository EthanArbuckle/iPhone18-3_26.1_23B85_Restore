@interface MBToolsDomainManager
- (MBToolsDomainManager)initWithTools:(id)tools error:(id *)error;
@end

@implementation MBToolsDomainManager

- (MBToolsDomainManager)initWithTools:(id)tools error:(id *)error
{
  toolsCopy = tools;
  v8 = [MBPersona personalPersonaWithError:error];
  if (v8)
  {
    v12.receiver = self;
    v12.super_class = MBToolsDomainManager;
    v9 = [(MBDomainManager *)&v12 initWithPersona:v8];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_tools, tools);
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

@end