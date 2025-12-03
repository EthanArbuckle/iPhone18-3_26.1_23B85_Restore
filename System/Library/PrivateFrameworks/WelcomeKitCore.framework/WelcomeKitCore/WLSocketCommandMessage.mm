@interface WLSocketCommandMessage
- (WLSocketCommandMessage)initWithCommandString:(id)string;
@end

@implementation WLSocketCommandMessage

- (WLSocketCommandMessage)initWithCommandString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = WLSocketCommandMessage;
  v5 = [(WLSocketMessage *)&v8 initWithType:1];
  v6 = v5;
  if (v5)
  {
    [(WLSocketCommandMessage *)v5 setCommand:stringCopy];
  }

  return v6;
}

@end