@interface _UIApplicationSceneDisplayHostComponent
- (void)setDisplayBasedSafeAreaInsets:(UIEdgeInsets)a3 forSettings:(id)a4;
@end

@implementation _UIApplicationSceneDisplayHostComponent

- (void)setDisplayBasedSafeAreaInsets:(UIEdgeInsets)a3 forSettings:(id)a4
{
  v4 = MEMORY[0x1E696B098];
  v7 = a3;
  v5 = a4;
  v6 = [v4 valueWithBytes:&v7 objCType:"{UIEdgeInsets=dddd}"];
  [v5 setDisplayBasedSafeAreaInsetsValue:{v6, *&v7.top, *&v7.left, *&v7.bottom, *&v7.right}];
}

@end