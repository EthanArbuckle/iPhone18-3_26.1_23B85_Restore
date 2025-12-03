@interface PXComposeRecipientTableCellModel
- (PXComposeRecipientTableCellModel)init;
- (void)performChanges:(id)changes;
- (void)setAddress:(id)address;
- (void)setChecked:(BOOL)checked;
- (void)setContact:(id)contact;
- (void)setImage:(id)image;
- (void)setImageRequestID:(int64_t)d;
- (void)setIsValidAddress:(BOOL)address;
- (void)setName:(id)name;
- (void)setShowsCheckbox:(BOOL)checkbox;
@end

@implementation PXComposeRecipientTableCellModel

- (void)setContact:(id)contact
{
  contactCopy = contact;
  contact = self->_contact;
  if (contact != contactCopy)
  {
    v9 = contactCopy;
    v6 = [(CNContact *)contact isEqual:contactCopy];
    contactCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(CNContact *)v9 copy];
      v8 = self->_contact;
      self->_contact = v7;

      [(PXComposeRecipientTableCellModel *)self signalChange:128];
      contactCopy = v9;
    }
  }
}

- (void)setShowsCheckbox:(BOOL)checkbox
{
  if (self->_showsCheckbox != checkbox)
  {
    self->_showsCheckbox = checkbox;
    [(PXComposeRecipientTableCellModel *)self signalChange:64];
  }
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    self->_checked = checked;
    [(PXComposeRecipientTableCellModel *)self signalChange:32];
  }
}

- (void)setIsValidAddress:(BOOL)address
{
  if (self->_isValidAddress != address)
  {
    self->_isValidAddress = address;
    [(PXComposeRecipientTableCellModel *)self signalChange:16];
  }
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  address = self->_address;
  if (address != addressCopy)
  {
    v9 = addressCopy;
    v6 = [(NSString *)address isEqualToString:addressCopy];
    addressCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_address;
      self->_address = v7;

      [(PXComposeRecipientTableCellModel *)self signalChange:8];
      addressCopy = v9;
    }
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  name = self->_name;
  if (name != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)name isEqualToString:nameCopy];
    nameCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_name;
      self->_name = v7;

      [(PXComposeRecipientTableCellModel *)self signalChange:4];
      nameCopy = v9;
    }
  }
}

- (void)setImageRequestID:(int64_t)d
{
  if (self->_imageRequestID != d)
  {
    self->_imageRequestID = d;
    [(PXComposeRecipientTableCellModel *)self signalChange:2];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = self->_image;
  if (image != imageCopy)
  {
    v9 = imageCopy;
    v6 = [(UIImage *)image isEqual:imageCopy];
    imageCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImage *)v9 copy];
      v8 = self->_image;
      self->_image = v7;

      [(PXComposeRecipientTableCellModel *)self signalChange:1];
      imageCopy = v9;
    }
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXComposeRecipientTableCellModel;
  [(PXComposeRecipientTableCellModel *)&v3 performChanges:changes];
}

- (PXComposeRecipientTableCellModel)init
{
  v3.receiver = self;
  v3.super_class = PXComposeRecipientTableCellModel;
  result = [(PXComposeRecipientTableCellModel *)&v3 init];
  if (result)
  {
    result->_imageRequestID = -1;
  }

  return result;
}

@end