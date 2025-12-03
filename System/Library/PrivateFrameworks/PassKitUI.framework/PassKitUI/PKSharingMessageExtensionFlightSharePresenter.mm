@interface PKSharingMessageExtensionFlightSharePresenter
+ (id)propertiesForMessage:(id)message;
- (PKSharingMessageExtensionFlightSharePresenter)initWithTargetDevice:(id)device passLibrary:(id)library;
- (PKSharingMessageExtensionRenderer)renderer;
- (void)setMessage:(id)message;
@end

@implementation PKSharingMessageExtensionFlightSharePresenter

- (PKSharingMessageExtensionFlightSharePresenter)initWithTargetDevice:(id)device passLibrary:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PKSharingMessageExtensionFlightSharePresenter;
  v9 = [(PKSharingMessageExtensionFlightSharePresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDevice, device);
    objc_storeStrong(&v10->_passLibrary, library);
  }

  return v10;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_message, message);
  }
}

+ (id)propertiesForMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(PKFlightSharingMessageExtensionViewProperties);
  flight = [messageCopy flight];
  [(PKFlightSharingMessageExtensionViewProperties *)v4 setFlight:flight];

  logoImage = [messageCopy logoImage];
  [(PKFlightSharingMessageExtensionViewProperties *)v4 setLogoImage:logoImage];

  foregroundColor = [messageCopy foregroundColor];
  [(PKFlightSharingMessageExtensionViewProperties *)v4 setForegroundColor:foregroundColor];

  backgroundColor = [messageCopy backgroundColor];

  [(PKFlightSharingMessageExtensionViewProperties *)v4 setBackgroundColor:backgroundColor];

  return v4;
}

- (PKSharingMessageExtensionRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end