@interface SAFrameSiblingsDeserializationHelper
- (SAFrameSiblingsDeserializationHelper)initWithFrameHelpers:(id)a3;
@end

@implementation SAFrameSiblingsDeserializationHelper

- (SAFrameSiblingsDeserializationHelper)initWithFrameHelpers:(id)a3
{
  v8.receiver = self;
  v8.super_class = SAFrameSiblingsDeserializationHelper;
  v4 = [(SAFrameSiblingsDeserializationHelper *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_frameHelpers, a3);
    v6 = v5;
  }

  return v5;
}

@end