@interface SSItemOfferDeviceError
- (id)_initWithMessage:(id)message title:(id)title URLTitle:(id)lTitle URL:(id)l;
- (void)dealloc;
@end

@implementation SSItemOfferDeviceError

- (id)_initWithMessage:(id)message title:(id)title URLTitle:(id)lTitle URL:(id)l
{
  v12.receiver = self;
  v12.super_class = SSItemOfferDeviceError;
  v10 = [(SSItemOfferDeviceError *)&v12 init];
  if (v10)
  {
    v10->_localizedMessage = message;
    v10->_localizedTitle = title;
    v10->_localizedURLTitle = lTitle;
    v10->_url = l;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemOfferDeviceError;
  [(SSItemOfferDeviceError *)&v3 dealloc];
}

@end