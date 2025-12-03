@interface SVXSpeechSynthesisResultConverter
- (id)toServiceCommandResult:(id)result;
@end

@implementation SVXSpeechSynthesisResultConverter

- (id)toServiceCommandResult:(id)result
{
  type = [result type];
  if (type == 2)
  {
    v4 = +[SVXServiceCommandResult resultIgnored];
  }

  else
  {
    if (type == 1)
    {
      +[SVXServiceCommandResult resultSuccess];
    }

    else
    {
      [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:0];
    }
    v4 = ;
  }

  return v4;
}

@end