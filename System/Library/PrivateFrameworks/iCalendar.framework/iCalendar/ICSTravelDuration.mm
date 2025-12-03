@interface ICSTravelDuration
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string additionalParameters:(id)parameters;
@end

@implementation ICSTravelDuration

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string additionalParameters:(id)parameters
{
  stringCopy = string;
  parametersCopy = parameters;
  parameters = [(ICSProperty *)self parameters];
  v11 = [parameters objectForKeyedSubscript:@"VALUE"];
  if (v11)
  {
  }

  else
  {
    v12 = [parametersCopy objectForKeyedSubscript:@"VALUE"];

    if (!v12)
    {
      if (!parametersCopy)
      {
        parametersCopy = [MEMORY[0x277CBEB38] dictionary];
      }

      [parametersCopy setObject:@"DURATION" forKeyedSubscript:@"VALUE"];
    }
  }

  v13.receiver = self;
  v13.super_class = ICSTravelDuration;
  [(ICSProperty *)&v13 _ICSStringWithOptions:options appendingToString:stringCopy additionalParameters:parametersCopy];
}

@end