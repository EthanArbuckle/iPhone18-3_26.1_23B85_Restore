@interface QLCustomMessageForwarder
- (QLCustomMessageForwarder)initWithPreviewDelegate:(id)a3;
@end

@implementation QLCustomMessageForwarder

- (QLCustomMessageForwarder)initWithPreviewDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = QLCustomMessageForwarder;
  v6 = [(QLCustomMessageForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewDelegate, a3);
  }

  return v7;
}

@end