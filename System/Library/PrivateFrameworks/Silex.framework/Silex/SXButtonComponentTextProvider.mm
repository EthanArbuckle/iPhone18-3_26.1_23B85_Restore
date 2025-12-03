@interface SXButtonComponentTextProvider
- (id)textForComponent:(id)component;
@end

@implementation SXButtonComponentTextProvider

- (id)textForComponent:(id)component
{
  text = [component text];
  v4 = text;
  if (text)
  {
    v5 = text;
  }

  else
  {
    v5 = &stru_1F532F6C0;
  }

  v6 = v5;

  return v5;
}

@end