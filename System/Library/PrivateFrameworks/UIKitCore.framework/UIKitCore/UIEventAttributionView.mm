@interface UIEventAttributionView
+ (BKSHIDEventAuthenticationMessage)lastEventMessage;
+ (void)_attemptAuthenticationWithEvent:(uint64_t)event;
+ (void)setLastEventMessage:(id)message;
- (UIEventAttributionView)initWithCoder:(id)coder;
- (UIEventAttributionView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_updateLayerContents;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)setHidden:(BOOL)hidden;
@end

@implementation UIEventAttributionView

- (UIEventAttributionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIEventAttributionView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIEventAttributionView *)v3 _commonInit];
  }

  return v4;
}

- (UIEventAttributionView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIEventAttributionView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(UIEventAttributionView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(UIView *)self setUserInteractionEnabled:0];

  [(UIEventAttributionView *)self _updateLayerContents];
}

- (void)_updateLayerContents
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__UIEventAttributionView__updateLayerContents__block_invoke;
  v2[3] = &unk_1E70F5A28;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __46__UIEventAttributionView__updateLayerContents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (_slotContent_onceToken != -1)
    {
      dispatch_once(&_slotContent_onceToken, &__block_literal_global_450);
    }

    v2 = [__slotContent image];
    v3 = [v4 layer];
    [v3 setContents:v2];

    WeakRetained = v4;
  }
}

- (void)setHidden:(BOOL)hidden
{
  v5.receiver = self;
  v5.super_class = UIEventAttributionView;
  [(UIView *)&v5 setHidden:?];
  if (!hidden)
  {
    [(UIEventAttributionView *)self _updateLayerContents];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIEventAttributionView;
  [(UIView *)&v3 didMoveToWindow];
  [(UIEventAttributionView *)self _updateLayerContents];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = UIEventAttributionView;
  [(UIView *)&v3 didMoveToSuperview];
  [(UIEventAttributionView *)self _updateLayerContents];
}

+ (BKSHIDEventAuthenticationMessage)lastEventMessage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__155;
  v10 = __Block_byref_object_dispose__155;
  v11 = 0;
  v2 = _eventMessageQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__UIEventAttributionView_lastEventMessage__block_invoke;
  block[3] = &unk_1E70F2F20;
  block[4] = &v6;
  dispatch_sync(v2, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (void)setLastEventMessage:(id)message
{
  messageCopy = message;
  v4 = _eventMessageQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__UIEventAttributionView_setLastEventMessage___block_invoke;
  block[3] = &unk_1E70F3590;
  v7 = messageCopy;
  v5 = messageCopy;
  dispatch_sync(v4, block);
}

void __46__UIEventAttributionView_setLastEventMessage___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];
  v2 = __eventMessageQueue_lastEventAttributionAuthenticationMessage;
  __eventMessageQueue_lastEventAttributionAuthenticationMessage = v1;
}

+ (void)_attemptAuthenticationWithEvent:(uint64_t)event
{
  v6 = a2;
  v2 = objc_opt_self();
  v3 = v6;
  if (__slotContent)
  {
    _authenticationMessage = [v6 _authenticationMessage];
    v5 = _authenticationMessage;
    if (_authenticationMessage && [_authenticationMessage context] == 1589136771)
    {
      [v2 setLastEventMessage:v5];
    }

    v3 = v6;
  }
}

@end