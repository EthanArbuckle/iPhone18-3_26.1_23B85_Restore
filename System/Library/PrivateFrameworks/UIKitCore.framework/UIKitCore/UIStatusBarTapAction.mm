@interface UIStatusBarTapAction
- (UIStatusBarTapAction)initWithType:(int64_t)type xPosition:(double)position;
- (double)xPosition;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (int64_t)type;
@end

@implementation UIStatusBarTapAction

- (UIStatusBarTapAction)initWithType:(int64_t)type xPosition:(double)position
{
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v7 setObject:v8 forSetting:1];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:position];
  [v7 setObject:v9 forSetting:2];

  v12.receiver = self;
  v12.super_class = UIStatusBarTapAction;
  v10 = [(UIStatusBarTapAction *)&v12 initWithInfo:v7 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v10;
}

- (int64_t)type
{
  info = [(UIStatusBarTapAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (double)xPosition
{
  info = [(UIStatusBarTapAction *)self info];
  v3 = [info objectForSetting:2];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"xPosition";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"type";
  }

  else
  {
    return v3;
  }
}

@end