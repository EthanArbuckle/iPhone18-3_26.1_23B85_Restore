@interface PKSharingMessageExtensionFlightSharePresenter
+ (id)propertiesForMessage:(id)a3;
- (PKSharingMessageExtensionFlightSharePresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4;
- (PKSharingMessageExtensionRenderer)renderer;
- (void)setMessage:(id)a3;
@end

@implementation PKSharingMessageExtensionFlightSharePresenter

- (PKSharingMessageExtensionFlightSharePresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSharingMessageExtensionFlightSharePresenter;
  v9 = [(PKSharingMessageExtensionFlightSharePresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDevice, a3);
    objc_storeStrong(&v10->_passLibrary, a4);
  }

  return v10;
}

- (void)setMessage:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_message, a3);
  }
}

+ (id)propertiesForMessage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKFlightSharingMessageExtensionViewProperties);
  v5 = [v3 flight];
  [(PKFlightSharingMessageExtensionViewProperties *)v4 setFlight:v5];

  v6 = [v3 logoImage];
  [(PKFlightSharingMessageExtensionViewProperties *)v4 setLogoImage:v6];

  v7 = [v3 foregroundColor];
  [(PKFlightSharingMessageExtensionViewProperties *)v4 setForegroundColor:v7];

  v8 = [v3 backgroundColor];

  [(PKFlightSharingMessageExtensionViewProperties *)v4 setBackgroundColor:v8];

  return v4;
}

- (PKSharingMessageExtensionRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end