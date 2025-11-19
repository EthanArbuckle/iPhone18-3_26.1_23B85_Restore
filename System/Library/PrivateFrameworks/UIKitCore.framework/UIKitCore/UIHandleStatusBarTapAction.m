@interface UIHandleStatusBarTapAction
- (UIHandleStatusBarTapAction)initWithStatusBarStyle:(int64_t)a3;
- (UIHandleStatusBarTapAction)initWithStatusBarStyle:(int64_t)a3 andStatusBarStyleOverride:(unint64_t)a4;
- (UIHandleStatusBarTapAction)initWithStatusBarStyleOverride:(unint64_t)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (int64_t)statusBarStyle;
- (unint64_t)statusBarStyleOverride;
@end

@implementation UIHandleStatusBarTapAction

- (UIHandleStatusBarTapAction)initWithStatusBarStyle:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UIHandleStatusBarTapAction;
  v7 = [(UIHandleStatusBarTapAction *)&v9 initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v7;
}

- (UIHandleStatusBarTapAction)initWithStatusBarStyleOverride:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v5 setObject:v6 forSetting:2];

  v9.receiver = self;
  v9.super_class = UIHandleStatusBarTapAction;
  v7 = [(UIHandleStatusBarTapAction *)&v9 initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v7;
}

- (UIHandleStatusBarTapAction)initWithStatusBarStyle:(int64_t)a3 andStatusBarStyleOverride:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:v8 forSetting:1];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  [v7 setObject:v9 forSetting:2];

  v12.receiver = self;
  v12.super_class = UIHandleStatusBarTapAction;
  v10 = [(UIHandleStatusBarTapAction *)&v12 initWithInfo:v7 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v10;
}

- (int64_t)statusBarStyle
{
  v2 = [(UIHandleStatusBarTapAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (unint64_t)statusBarStyleOverride
{
  v2 = [(UIHandleStatusBarTapAction *)self info];
  v3 = [v2 objectForSetting:2];
  v4 = [v3 integerValue];

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"statusBarStyleOverride";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"statusBarStyle";
  }

  else
  {
    return v3;
  }
}

@end