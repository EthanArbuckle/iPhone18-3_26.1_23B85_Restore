@interface ICSTravelDuration
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4 additionalParameters:(id)a5;
@end

@implementation ICSTravelDuration

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4 additionalParameters:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICSProperty *)self parameters];
  v11 = [v10 objectForKeyedSubscript:@"VALUE"];
  if (v11)
  {
  }

  else
  {
    v12 = [v9 objectForKeyedSubscript:@"VALUE"];

    if (!v12)
    {
      if (!v9)
      {
        v9 = [MEMORY[0x277CBEB38] dictionary];
      }

      [v9 setObject:@"DURATION" forKeyedSubscript:@"VALUE"];
    }
  }

  v13.receiver = self;
  v13.super_class = ICSTravelDuration;
  [(ICSProperty *)&v13 _ICSStringWithOptions:a3 appendingToString:v8 additionalParameters:v9];
}

@end