@interface WLSocketCommandMessage
- (WLSocketCommandMessage)initWithCommandString:(id)a3;
@end

@implementation WLSocketCommandMessage

- (WLSocketCommandMessage)initWithCommandString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WLSocketCommandMessage;
  v5 = [(WLSocketMessage *)&v8 initWithType:1];
  v6 = v5;
  if (v5)
  {
    [(WLSocketCommandMessage *)v5 setCommand:v4];
  }

  return v6;
}

@end