@interface UISceneHitTestActionResponse
- (UISceneHitTestActionResponse)initWithProcessIdentifier:(int)identifier;
- (int)processIdentifer;
@end

@implementation UISceneHitTestActionResponse

- (UISceneHitTestActionResponse)initWithProcessIdentifier:(int)identifier
{
  v3 = *&identifier;
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
  info = [(UISceneHitTestActionResponse *)self info];
  v3 = [info objectForSetting:1];
  intValue = [v3 intValue];

  return intValue;
}

@end