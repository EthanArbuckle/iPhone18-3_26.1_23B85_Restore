@interface UIAssignToContactActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)_embeddedActivityViewController;
- (id)activityTitle;
- (id)activityViewController;
- (void)_cleanup;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation UIAssignToContactActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Assign to Contact[Activity]" value:@"Assign to Contact" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = a3;
  if ((_UIActivityItemTypes() & 0x42) == 0 || (_UIActivityItemTypes() & 0x40) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = !_UIActivityHasAtMoreThan(v3, 2, 1);
  }

  return v4;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = getCNContactPickerViewControllerClass;
  v5 = a3;
  v6 = objc_alloc_init(v4());
  peoplePicker = self->_peoplePicker;
  self->_peoplePicker = v6;

  [(CNContactPickerViewController *)self->_peoplePicker setPreferredContentSize:320.0, 426.0];
  v8 = [MEMORY[0x1E69DC938] currentDevice];
  -[CNContactPickerViewController setAllowsCancel:](self->_peoplePicker, "setAllowsCancel:", [v8 userInterfaceIdiom] == 0);

  [(CNContactPickerViewController *)self->_peoplePicker setDelegate:self];
  [(CNContactPickerViewController *)self->_peoplePicker setAutocloses:0];
  v11 = _UIActivityItemsGetImages(v5, 0, 1);

  v9 = [v11 firstObject];
  image = self->_image;
  self->_image = v9;
}

- (id)_embeddedActivityViewController
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = self->_peoplePicker;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activityViewController
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_peoplePicker;
  }

  return v5;
}

- (void)_cleanup
{
  v3 = [(UIAssignToContactActivity *)self peoplePicker];
  [v3 setDelegate:0];

  [(UIAssignToContactActivity *)self setPeoplePicker:0];
  v4 = [(UIAssignToContactActivity *)self imagePickerController];
  [v4 setDelegate:0];

  [(UIAssignToContactActivity *)self setImagePickerController:0];
  [(UIAssignToContactActivity *)self setImage:0];

  [(UIAssignToContactActivity *)self setPerson:0];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v18[5] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_person, a4);
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E69DCAD0]);
  v8 = UIImageJPEGRepresentation(self->_image, 1.0);
  v9 = [v7 _initWithSourceImageData:v8 cropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  imagePickerController = self->_imagePickerController;
  self->_imagePickerController = v9;

  [(UIImagePickerController *)self->_imagePickerController setDelegate:self];
  [(UIImagePickerController *)self->_imagePickerController setModalPresentationStyle:3];
  [(UIImagePickerController *)self->_imagePickerController _setImagePickerSavingOptions:5];
  v11 = MEMORY[0x1E695DF90];
  v12 = [(UIImagePickerController *)self->_imagePickerController _properties];
  v13 = [v11 dictionaryWithDictionary:v12];

  v14 = *MEMORY[0x1E69DE8B8];
  v17[0] = *MEMORY[0x1E69DDDD8];
  v17[1] = v14;
  v18[0] = MEMORY[0x1E695E118];
  v18[1] = MEMORY[0x1E695E118];
  v15 = *MEMORY[0x1E69DE998];
  v17[2] = *MEMORY[0x1E69DE930];
  v17[3] = v15;
  v18[2] = MEMORY[0x1E695E118];
  v18[3] = MEMORY[0x1E695E118];
  v17[4] = *MEMORY[0x1E69DE8B0];
  v18[4] = MEMORY[0x1E695E118];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  [v13 addEntriesFromDictionary:v16];

  [(UIImagePickerController *)self->_imagePickerController _setProperties:v13];
  [(CNContactPickerViewController *)self->_peoplePicker setModalPresentationStyle:16];
  [(CNContactPickerViewController *)self->_peoplePicker presentViewController:self->_imagePickerController withTransition:1 completion:0];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v30 = a4;
  v5 = self->_person;
  v6 = [v30 objectForKey:*MEMORY[0x1E69DDDE8]];
  v7 = UIImageJPEGRepresentation(v6, 0.8);

  v8 = [v30 objectForKey:*MEMORY[0x1E69DE938]];
  v9 = UIImageJPEGRepresentation(v8, 0.8);

  v10 = [v30 objectForKey:*MEMORY[0x1E69DE960]];
  if (!v10)
  {
    v11 = [v30 objectForKey:*MEMORY[0x1E69DDE10]];
    v10 = UIImageJPEGRepresentation(v11, 0.8);
  }

  v12 = [v30 objectForKey:*MEMORY[0x1E69DDDE0]];
  v13 = v12;
  if (v12)
  {
    [v12 CGRectValue];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  v22 = [(CNContact *)v5 mutableCopy];
  v23 = v22;
  if (v10)
  {
    [v22 setImageData:v10];
  }

  if (v7)
  {
    v24 = getCNContactThumbnailImageDataKey();
    [v23 setValue:v7 forKey:v24];

    v25 = [MEMORY[0x1E696B098] valueWithRect:{v15, v17, v19, v21}];
    v26 = getCNContactCropRectKey();
    [v23 setValue:v25 forKey:v26];
  }

  if (v9)
  {
    v27 = getCNContactFullscreenImageDataKey();
    [v23 setValue:v9 forKey:v27];
  }

  v28 = [(objc_class *)getCNContactViewControllerClass() viewControllerForUpdatingContact:v23 withPropertiesFromContact:v23];
  [v28 setDelegate:self];
  v29 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v28];
  [v29 setModalPresentationStyle:3];
  [(UIImagePickerController *)self->_imagePickerController presentViewController:v29 animated:1 completion:0];
}

@end