@interface SKUIProfileImagePicker
+ (id)_fixCropRect:(id)rect forOriginalImage:(id)image;
- (SKUIProfileImagePicker)initWithClientContext:(id)context;
- (SKUIProfileImagePickerDelegate)delegate;
- (void)_didCancel;
- (void)_presentImagePickerWithSourceType:(int64_t)type;
- (void)_showImagePicker;
- (void)_showImageSourcePicker;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SKUIProfileImagePicker

- (SKUIProfileImagePicker)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProfileImagePicker initWithClientContext:];
  }

  v9.receiver = self;
  v9.super_class = SKUIProfileImagePicker;
  v6 = [(SKUIProfileImagePicker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SKUIProfileImagePicker *)v6 setModalPresentationStyle:4];
    objc_storeStrong(&v7->_clientContext, context);
    v7->_firstApperance = 0;
  }

  return v7;
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  [(SKUIProfileImagePicker *)self dismissViewControllerAnimated:1 completion:0];

  [(SKUIProfileImagePicker *)self _didCancel];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  [(SKUIProfileImagePicker *)self dismissViewControllerAnimated:1 completion:0];
  v12 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D76A80]];
  v6 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D76A48]];

  if (v6)
  {
    v7 = v12 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [objc_opt_class() _fixCropRect:v6 forOriginalImage:v12];

    v6 = v8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 profileImagePicker:self didPickProfileImage:v12 withCropRect:v6];
  }
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:clearColor];

  [(SKUIProfileImagePicker *)self setView:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKUIProfileImagePicker;
  [(SKUIProfileImagePicker *)&v4 viewDidAppear:appear];
  if (!self->_firstApperance)
  {
    self->_firstApperance = 1;
    [(SKUIProfileImagePicker *)self _showImagePicker];
  }
}

+ (id)_fixCropRect:(id)rect forOriginalImage:(id)image
{
  rectCopy = rect;
  imageCopy = image;
  [rectCopy CGRectValue];
  v10 = v9;
  v12 = v11;
  if (v7 >= 0.0)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + v7;
  }

  if (v7 >= 0.0)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0.0;
  }

  [imageCopy size];
  if (v14 + v13 > v15)
  {
    [imageCopy size];
    v13 = v16 - v14;
  }

  if (v10 < 0.0)
  {
    v12 = v12 + v10;
    v10 = 0.0;
  }

  [imageCopy size];
  if (v10 + v12 > v17)
  {
    [imageCopy size];
    v12 = v18 - v10;
  }

  [rectCopy CGRectValue];
  v27.origin.x = v19;
  v27.origin.y = v20;
  v27.size.width = v21;
  v27.size.height = v22;
  v26.origin.x = v14;
  v26.origin.y = v10;
  v26.size.width = v13;
  v26.size.height = v12;
  if (!CGRectEqualToRect(v26, v27))
  {
    v23 = [MEMORY[0x277CCAE60] valueWithCGRect:{v14, v10, v13, v12}];

    rectCopy = v23;
  }

  return rectCopy;
}

- (void)_didCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 profileImagePickerDidCancel:self];
  }
}

- (void)_presentImagePickerWithSourceType:(int64_t)type
{
  v19[5] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D755C8]);
  imagePicker = self->_imagePicker;
  self->_imagePicker = v5;

  [(UIImagePickerController *)self->_imagePicker setSourceType:type];
  v7 = SKUIMobileCoreServicesFramework();
  v8 = SKUIWeakLinkedSymbolForString("kUTTypeImage", v7);
  v9 = MEMORY[0x277CBEA60];
  v10 = *v8;
  v11 = [v9 arrayWithObject:v10];
  [(UIImagePickerController *)self->_imagePicker setMediaTypes:v11];
  [(UIImagePickerController *)self->_imagePicker setDelegate:self];
  [(UIImagePickerController *)self->_imagePicker _setImagePickerSavingOptions:3];
  v12 = MEMORY[0x277CBEB38];
  _properties = [(UIImagePickerController *)self->_imagePicker _properties];
  v14 = [v12 dictionaryWithDictionary:_properties];

  v15 = *MEMORY[0x277D77490];
  v18[0] = *MEMORY[0x277D76A40];
  v18[1] = v15;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = MEMORY[0x277CBEC38];
  v16 = *MEMORY[0x277D77458];
  v18[2] = *MEMORY[0x277D77438];
  v18[3] = v16;
  v19[2] = MEMORY[0x277CBEC38];
  v19[3] = MEMORY[0x277CBEC38];
  v18[4] = *MEMORY[0x277D77430];
  v19[4] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  [v14 addEntriesFromDictionary:v17];

  [(UIImagePickerController *)self->_imagePicker _setProperties:v14];
  [(SKUIProfileImagePicker *)self presentViewController:self->_imagePicker animated:1 completion:0];
}

- (void)_showImagePicker
{
  v3 = [MEMORY[0x277D755C8] isSourceTypeAvailable:1];
  v4 = [MEMORY[0x277D755C8] isSourceTypeAvailable:0];
  if (v3 & 1) != 0 || (v4)
  {
    if ((v3 & v4) == 1)
    {

      [(SKUIProfileImagePicker *)self _showImageSourcePicker];
    }

    else
    {

      [(SKUIProfileImagePicker *)self _presentImagePickerWithSourceType:v3 != 0];
    }
  }

  else
  {
    v6 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:1 handler:0];
    v5 = [MEMORY[0x277D75110] alertControllerWithTitle:@"PROFILE_NO_PHOTO_SOURCE" message:0 preferredStyle:1];
    [v5 addAction:v6];
    [(SKUIProfileImagePicker *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)_showImageSourcePicker
{
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"SETTINGS_PROFILE_CANCEL" inTable:@"Settings"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_CANCEL" inBundles:0 inTable:@"Settings"];
  }
  v4 = ;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SKUIProfileImagePicker__showImageSourcePicker__block_invoke;
  v17[3] = &unk_2781FBCE8;
  v17[4] = self;
  v5 = [MEMORY[0x277D750F8] actionWithTitle:v4 style:1 handler:v17];
  v6 = self->_clientContext;
  if (v6)
  {
    [(SKUIClientContext *)v6 localizedStringForKey:@"SETTINGS_PROFILE_TAKE_PHOTO" inTable:@"Settings"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_TAKE_PHOTO" inBundles:0 inTable:@"Settings"];
  }
  v7 = ;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__SKUIProfileImagePicker__showImageSourcePicker__block_invoke_2;
  v16[3] = &unk_2781FBCE8;
  v16[4] = self;
  v8 = [MEMORY[0x277D750F8] actionWithTitle:v7 style:0 handler:v16];
  v9 = self->_clientContext;
  if (v9)
  {
    [(SKUIClientContext *)v9 localizedStringForKey:@"SETTINGS_PROFILE_CHOOSE_PHOTO" inTable:@"Settings"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_CHOOSE_PHOTO" inBundles:0 inTable:@"Settings"];
  }
  v10 = ;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SKUIProfileImagePicker__showImageSourcePicker__block_invoke_3;
  v15[3] = &unk_2781FBCE8;
  v15[4] = self;
  v11 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:v15];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  [v14 addAction:v5];
  [v14 addAction:v8];
  [v14 addAction:v11];
  [(SKUIProfileImagePicker *)self presentViewController:v14 animated:1 completion:0];
}

- (SKUIProfileImagePickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProfileImagePicker initWithClientContext:]";
}

@end