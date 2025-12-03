@interface ACMExternalAuthContext
- (id)parametersDictionary;
@end

@implementation ACMExternalAuthContext

- (id)parametersDictionary
{
  v5.receiver = self;
  v5.super_class = ACMExternalAuthContext;
  parametersDictionary = [(ACMAuthContext *)&v5 parametersDictionary];
  [parametersDictionary setValue:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", 0), @"s"}];
  if ([(NSNumber *)[(ACCAuthContext *)self touchIDSupport] BOOLValue])
  {
    [parametersDictionary setValue:&unk_2A1EE3080 forKey:@"tid"];
  }

  return parametersDictionary;
}

@end