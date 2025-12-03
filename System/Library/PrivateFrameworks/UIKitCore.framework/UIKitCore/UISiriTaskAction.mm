@interface UISiriTaskAction
- (AFSiriTask)payload;
- (UISiriTaskAction)initWithPayload:(id)payload;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UISiriTaskAction

- (UISiriTaskAction)initWithPayload:(id)payload
{
  if (payload)
  {
    v4 = MEMORY[0x1E698E700];
    payloadCopy = payload;
    v6 = objc_alloc_init(v4);
    [v6 setObject:payloadCopy forSetting:1];

    v9.receiver = self;
    v9.super_class = UISiriTaskAction;
    self = [(UISiriTaskAction *)&v9 initWithInfo:v6 timeout:0 forResponseOnQueue:0 withHandler:0.0];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (AFSiriTask)payload
{
  info = [(UISiriTaskAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"payload";
  }

  else
  {
    return 0;
  }
}

@end