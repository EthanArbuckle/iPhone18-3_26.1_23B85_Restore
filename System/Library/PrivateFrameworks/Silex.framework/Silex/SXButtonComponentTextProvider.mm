@interface SXButtonComponentTextProvider
- (id)textForComponent:(id)a3;
@end

@implementation SXButtonComponentTextProvider

- (id)textForComponent:(id)a3
{
  v3 = [a3 text];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F532F6C0;
  }

  v6 = v5;

  return v5;
}

@end