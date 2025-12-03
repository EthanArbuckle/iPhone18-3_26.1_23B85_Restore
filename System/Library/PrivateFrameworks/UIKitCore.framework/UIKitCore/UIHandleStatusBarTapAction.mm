@interface UIHandleStatusBarTapAction
- (UIHandleStatusBarTapAction)initWithStatusBarStyle:(int64_t)style;
- (UIHandleStatusBarTapAction)initWithStatusBarStyle:(int64_t)style andStatusBarStyleOverride:(unint64_t)override;
- (UIHandleStatusBarTapAction)initWithStatusBarStyleOverride:(unint64_t)override;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (int64_t)statusBarStyle;
- (unint64_t)statusBarStyleOverride;
@end

@implementation UIHandleStatusBarTapAction

- (UIHandleStatusBarTapAction)initWithStatusBarStyle:(int64_t)style
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UIHandleStatusBarTapAction;
  v7 = [(UIHandleStatusBarTapAction *)&v9 initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v7;
}

- (UIHandleStatusBarTapAction)initWithStatusBarStyleOverride:(unint64_t)override
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:override];
  [v5 setObject:v6 forSetting:2];

  v9.receiver = self;
  v9.super_class = UIHandleStatusBarTapAction;
  v7 = [(UIHandleStatusBarTapAction *)&v9 initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v7;
}

- (UIHandleStatusBarTapAction)initWithStatusBarStyle:(int64_t)style andStatusBarStyleOverride:(unint64_t)override
{
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [v7 setObject:v8 forSetting:1];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:override];
  [v7 setObject:v9 forSetting:2];

  v12.receiver = self;
  v12.super_class = UIHandleStatusBarTapAction;
  v10 = [(UIHandleStatusBarTapAction *)&v12 initWithInfo:v7 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v10;
}

- (int64_t)statusBarStyle
{
  info = [(UIHandleStatusBarTapAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unint64_t)statusBarStyleOverride
{
  info = [(UIHandleStatusBarTapAction *)self info];
  v3 = [info objectForSetting:2];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"statusBarStyleOverride";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"statusBarStyle";
  }

  else
  {
    return v3;
  }
}

@end