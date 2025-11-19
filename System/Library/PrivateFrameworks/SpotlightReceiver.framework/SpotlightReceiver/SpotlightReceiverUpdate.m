@interface SpotlightReceiverUpdate
- (SpotlightReceiverUpdate)initWithStatus:(int64_t)a3 info:(id)a4 attributes:(id)a5;
@end

@implementation SpotlightReceiverUpdate

- (SpotlightReceiverUpdate)initWithStatus:(int64_t)a3 info:(id)a4 attributes:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SpotlightReceiverUpdate;
  v11 = [(SpotlightReceiverUpdate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = a3;
    objc_storeStrong(&v11->_info, a4);
    objc_storeStrong(&v12->_attributes, a5);
  }

  return v12;
}

@end