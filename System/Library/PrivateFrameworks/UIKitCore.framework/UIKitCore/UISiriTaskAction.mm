@interface UISiriTaskAction
- (AFSiriTask)payload;
- (UISiriTaskAction)initWithPayload:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UISiriTaskAction

- (UISiriTaskAction)initWithPayload:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E698E700];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    [v6 setObject:v5 forSetting:1];

    v9.receiver = self;
    v9.super_class = UISiriTaskAction;
    self = [(UISiriTaskAction *)&v9 initWithInfo:v6 timeout:0 forResponseOnQueue:0 withHandler:0.0];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AFSiriTask)payload
{
  v2 = [(UISiriTaskAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"payload";
  }

  else
  {
    return 0;
  }
}

@end