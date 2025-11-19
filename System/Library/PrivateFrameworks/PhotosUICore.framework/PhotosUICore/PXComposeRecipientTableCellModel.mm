@interface PXComposeRecipientTableCellModel
- (PXComposeRecipientTableCellModel)init;
- (void)performChanges:(id)a3;
- (void)setAddress:(id)a3;
- (void)setChecked:(BOOL)a3;
- (void)setContact:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageRequestID:(int64_t)a3;
- (void)setIsValidAddress:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setShowsCheckbox:(BOOL)a3;
@end

@implementation PXComposeRecipientTableCellModel

- (void)setContact:(id)a3
{
  v4 = a3;
  contact = self->_contact;
  if (contact != v4)
  {
    v9 = v4;
    v6 = [(CNContact *)contact isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(CNContact *)v9 copy];
      v8 = self->_contact;
      self->_contact = v7;

      [(PXComposeRecipientTableCellModel *)self signalChange:128];
      v4 = v9;
    }
  }
}

- (void)setShowsCheckbox:(BOOL)a3
{
  if (self->_showsCheckbox != a3)
  {
    self->_showsCheckbox = a3;
    [(PXComposeRecipientTableCellModel *)self signalChange:64];
  }
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    self->_checked = a3;
    [(PXComposeRecipientTableCellModel *)self signalChange:32];
  }
}

- (void)setIsValidAddress:(BOOL)a3
{
  if (self->_isValidAddress != a3)
  {
    self->_isValidAddress = a3;
    [(PXComposeRecipientTableCellModel *)self signalChange:16];
  }
}

- (void)setAddress:(id)a3
{
  v4 = a3;
  address = self->_address;
  if (address != v4)
  {
    v9 = v4;
    v6 = [(NSString *)address isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_address;
      self->_address = v7;

      [(PXComposeRecipientTableCellModel *)self signalChange:8];
      v4 = v9;
    }
  }
}

- (void)setName:(id)a3
{
  v4 = a3;
  name = self->_name;
  if (name != v4)
  {
    v9 = v4;
    v6 = [(NSString *)name isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_name;
      self->_name = v7;

      [(PXComposeRecipientTableCellModel *)self signalChange:4];
      v4 = v9;
    }
  }
}

- (void)setImageRequestID:(int64_t)a3
{
  if (self->_imageRequestID != a3)
  {
    self->_imageRequestID = a3;
    [(PXComposeRecipientTableCellModel *)self signalChange:2];
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  image = self->_image;
  if (image != v4)
  {
    v9 = v4;
    v6 = [(UIImage *)image isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImage *)v9 copy];
      v8 = self->_image;
      self->_image = v7;

      [(PXComposeRecipientTableCellModel *)self signalChange:1];
      v4 = v9;
    }
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXComposeRecipientTableCellModel;
  [(PXComposeRecipientTableCellModel *)&v3 performChanges:a3];
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