@interface UIPPTRequestAction
- (BOOL)shouldChangeOrientation;
- (UIPPTRequestAction)initWithDesiredOrientation:(int64_t)orientation;
- (int64_t)orientationRequested;
@end

@implementation UIPPTRequestAction

- (UIPPTRequestAction)initWithDesiredOrientation:(int64_t)orientation
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UIPPTRequestAction;
  v7 = [(UIPPTRequestAction *)&v9 initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v7;
}

- (BOOL)shouldChangeOrientation
{
  info = [(UIPPTRequestAction *)self info];
  v3 = [info objectForSetting:1];

  return v3 != 0;
}

- (int64_t)orientationRequested
{
  info = [(UIPPTRequestAction *)self info];
  v3 = [info objectForSetting:1];

  integerValue = [v3 integerValue];
  return integerValue;
}

@end