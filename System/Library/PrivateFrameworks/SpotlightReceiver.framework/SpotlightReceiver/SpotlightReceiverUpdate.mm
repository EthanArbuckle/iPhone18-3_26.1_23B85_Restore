@interface SpotlightReceiverUpdate
- (SpotlightReceiverUpdate)initWithStatus:(int64_t)status info:(id)info attributes:(id)attributes;
@end

@implementation SpotlightReceiverUpdate

- (SpotlightReceiverUpdate)initWithStatus:(int64_t)status info:(id)info attributes:(id)attributes
{
  infoCopy = info;
  attributesCopy = attributes;
  v14.receiver = self;
  v14.super_class = SpotlightReceiverUpdate;
  v11 = [(SpotlightReceiverUpdate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = status;
    objc_storeStrong(&v11->_info, info);
    objc_storeStrong(&v12->_attributes, attributes);
  }

  return v12;
}

@end