@interface DeallocNotifier
- (void)dealloc;
@end

@implementation DeallocNotifier

- (void)dealloc
{
  v5 = objc_msgSend_onDealloc(self, a2, v2, v3);

  if (v5)
  {
    v9 = objc_msgSend_onDealloc(self, v6, v7, v8);
    v9[2]();
  }

  v10.receiver = self;
  v10.super_class = DeallocNotifier;
  [(DeallocNotifier *)&v10 dealloc];
}

@end