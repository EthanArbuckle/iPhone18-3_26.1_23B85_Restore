@interface QLCustomMessageForwarder
- (QLCustomMessageForwarder)initWithPreviewDelegate:(id)delegate;
@end

@implementation QLCustomMessageForwarder

- (QLCustomMessageForwarder)initWithPreviewDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = QLCustomMessageForwarder;
  v6 = [(QLCustomMessageForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewDelegate, delegate);
  }

  return v7;
}

@end