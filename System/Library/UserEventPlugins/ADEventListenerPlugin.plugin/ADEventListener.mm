@interface ADEventListener
- (ADEventListener)initWithQueue:(id)a3;
- (void)dealloc;
@end

@implementation ADEventListener

- (ADEventListener)initWithQueue:(id)a3
{
  v5.receiver = self;
  v5.super_class = ADEventListener;
  v3 = [(ADEventListener *)&v5 init];
  if (v3)
  {
    v3->_appStateChangeEventListener = objc_alloc_init(ADApplicationStateChangeEventListener);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ADEventListener;
  [(ADEventListener *)&v3 dealloc];
}

@end