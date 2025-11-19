@interface UISceneHitTestActionResponse
- (UISceneHitTestActionResponse)initWithProcessIdentifier:(int)a3;
- (int)processIdentifer;
@end

@implementation UISceneHitTestActionResponse

- (UISceneHitTestActionResponse)initWithProcessIdentifier:(int)a3
{
  v3 = *&a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = UISceneHitTestActionResponse;
  v7 = [(UISceneHitTestActionResponse *)&v9 initWithInfo:v5 error:0];

  return v7;
}

- (int)processIdentifer
{
  v2 = [(UISceneHitTestActionResponse *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 intValue];

  return v4;
}

@end