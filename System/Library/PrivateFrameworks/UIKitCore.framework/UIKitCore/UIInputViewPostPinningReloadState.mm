@interface UIInputViewPostPinningReloadState
+ (id)stateWithResponder:(id)responder;
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

+ (id)stateWithResponder:(id)responder
{
  responderCopy = responder;
  v4 = objc_alloc_init(UIInputViewPostPinningReloadState);
  [(UIInputViewPostPinningReloadState *)v4 setResponderToReload:responderCopy];

  return v4;
}

@end