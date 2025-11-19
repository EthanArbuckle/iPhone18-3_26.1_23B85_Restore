@interface SBUIBackgroundContentTouchAction
- (CGPoint)location;
- (SBUIBackgroundContentTouchAction)initWithLocation:(CGPoint)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation SBUIBackgroundContentTouchAction

- (SBUIBackgroundContentTouchAction)initWithLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  v7 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  [v6 setObject:v7 forSetting:1];

  v10.receiver = self;
  v10.super_class = SBUIBackgroundContentTouchAction;
  v8 = [(SBUIBackgroundContentTouchAction *)&v10 initWithInfo:v6 responder:0];

  return v8;
}

- (CGPoint)location
{
  v2 = [(SBUIBackgroundContentTouchAction *)self info];
  v3 = [v2 objectForSetting:1];
  [v3 CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"location";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 == 1)
  {
    [a4 CGPointValue];
    v7 = NSStringFromCGPoint(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end