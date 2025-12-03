@interface PKActivityItemProvider
- (PKActivityItemProvider)initWithPass:(id)pass passView:(id)view linkedApp:(id)app sharingMethod:(int64_t)method;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)item;
@end

@implementation PKActivityItemProvider

- (PKActivityItemProvider)initWithPass:(id)pass passView:(id)view linkedApp:(id)app sharingMethod:(int64_t)method
{
  passCopy = pass;
  viewCopy = view;
  appCopy = app;
  if (method == -1)
  {
    selfCopy = 0;
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
    v18.receiver = self;
    v18.super_class = PKActivityItemProvider;
    v15 = [(UIActivityItemProvider *)&v18 initWithPlaceholderItem:data];

    if (v15)
    {
      objc_storeStrong(&v15->_pass, pass);
      objc_storeStrong(&v15->_passView, view);
      objc_storeStrong(&v15->_linkedApp, app);
      v15->_sharingMethod = method;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)item
{
  sharingMethod = self->_sharingMethod;
  pass = self->_pass;
  if (sharingMethod == 1)
  {
    [(PKPass *)pass sharingText];
  }

  else
  {
    [(PKPass *)pass archiveData];
  }
  v4 = ;

  return v4;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = [(PKPassView *)self->_passView suppressedContent:controller];
  [(PKPassView *)self->_passView setSuppressedContent:70];
  height = [(PKPassView *)self->_passView snapshotOfFrontFaceWithRequestedSize:width, height];
  [(PKPassView *)self->_passView setSuppressedContent:v8];

  return height;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  iconImage = [(PKLinkedApplication *)self->_linkedApp iconImage];
  if (iconImage)
  {
    v5 = iconImage;
  }

  else
  {
    v6 = MEMORY[0x1E69DCAB8];
    iconImage2 = [(PKPass *)self->_pass iconImage];
    v5 = [v6 imageWithPKImage:iconImage2];

    if (!v5)
    {
      v8 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
      v5 = PKUIGetWalletAppIconWithDescriptor(v8);
    }
  }

  v9 = objc_alloc(MEMORY[0x1E696EC60]);
  v10 = UIImagePNGRepresentation(v5);
  v11 = [v9 initWithData:v10 MIMEType:@"image/png"];

  v12 = objc_alloc_init(MEMORY[0x1E696EC98]);
  [v12 setIcon:v11];
  v13 = objc_alloc_init(MEMORY[0x1E696ED18]);
  localizedDescription = [(PKPass *)self->_pass localizedDescription];
  [v13 setName:localizedDescription];

  [v13 setStyle:{-[PKPass style](self->_pass, "style")}];
  v15 = MEMORY[0x1E69B8A68];
  relevantDates = [(PKPass *)self->_pass relevantDates];
  v17 = [v15 findDateFromDates:relevantDates option:0];
  [v13 setEventDate:v17];

  expirationDate = [(PKPass *)self->_pass expirationDate];
  [v13 setExpirationDate:expirationDate];

  [v12 setSpecialization:v13];

  return v12;
}

@end