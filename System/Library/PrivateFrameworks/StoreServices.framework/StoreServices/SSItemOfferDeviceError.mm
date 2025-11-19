@interface SSItemOfferDeviceError
- (id)_initWithMessage:(id)a3 title:(id)a4 URLTitle:(id)a5 URL:(id)a6;
- (void)dealloc;
@end

@implementation SSItemOfferDeviceError

- (id)_initWithMessage:(id)a3 title:(id)a4 URLTitle:(id)a5 URL:(id)a6
{
  v12.receiver = self;
  v12.super_class = SSItemOfferDeviceError;
  v10 = [(SSItemOfferDeviceError *)&v12 init];
  if (v10)
  {
    v10->_localizedMessage = a3;
    v10->_localizedTitle = a4;
    v10->_localizedURLTitle = a5;
    v10->_url = a6;
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