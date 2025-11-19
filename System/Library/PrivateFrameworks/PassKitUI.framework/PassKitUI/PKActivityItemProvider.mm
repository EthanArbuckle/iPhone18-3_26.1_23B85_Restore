@interface PKActivityItemProvider
- (PKActivityItemProvider)initWithPass:(id)a3 passView:(id)a4 linkedApp:(id)a5 sharingMethod:(int64_t)a6;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)item;
@end

@implementation PKActivityItemProvider

- (PKActivityItemProvider)initWithPass:(id)a3 passView:(id)a4 linkedApp:(id)a5 sharingMethod:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a6 == -1)
  {
    v16 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E695DEF0] data];
    v18.receiver = self;
    v18.super_class = PKActivityItemProvider;
    v15 = [(UIActivityItemProvider *)&v18 initWithPlaceholderItem:v14];

    if (v15)
    {
      objc_storeStrong(&v15->_pass, a3);
      objc_storeStrong(&v15->_passView, a4);
      objc_storeStrong(&v15->_linkedApp, a5);
      v15->_sharingMethod = a6;
    }

    self = v15;
    v16 = self;
  }

  return v16;
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

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = [(PKPassView *)self->_passView suppressedContent:a3];
  [(PKPassView *)self->_passView setSuppressedContent:70];
  v9 = [(PKPassView *)self->_passView snapshotOfFrontFaceWithRequestedSize:width, height];
  [(PKPassView *)self->_passView setSuppressedContent:v8];

  return v9;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = [(PKLinkedApplication *)self->_linkedApp iconImage];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [(PKPass *)self->_pass iconImage];
    v5 = [v6 imageWithPKImage:v7];

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
  v14 = [(PKPass *)self->_pass localizedDescription];
  [v13 setName:v14];

  [v13 setStyle:{-[PKPass style](self->_pass, "style")}];
  v15 = MEMORY[0x1E69B8A68];
  v16 = [(PKPass *)self->_pass relevantDates];
  v17 = [v15 findDateFromDates:v16 option:0];
  [v13 setEventDate:v17];

  v18 = [(PKPass *)self->_pass expirationDate];
  [v13 setExpirationDate:v18];

  [v12 setSpecialization:v13];

  return v12;
}

@end