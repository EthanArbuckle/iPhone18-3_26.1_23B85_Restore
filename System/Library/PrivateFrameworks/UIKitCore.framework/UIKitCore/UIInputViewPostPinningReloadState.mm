@interface UIInputViewPostPinningReloadState
+ (id)stateWithResponder:(id)a3;
- (void)dealloc;
@end

@implementation UIInputViewPostPinningReloadState

- (void)dealloc
{
  [(UIInputViewPostPinningReloadState *)self setResponderToReload:0];
  v3.receiver = self;
  v3.super_class = UIInputViewPostPinningReloadState;
  [(UIInputViewPostPinningReloadState *)&v3 dealloc];
}

+ (id)stateWithResponder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UIInputViewPostPinningReloadState);
  [(UIInputViewPostPinningReloadState *)v4 setResponderToReload:v3];

  return v4;
}

@end