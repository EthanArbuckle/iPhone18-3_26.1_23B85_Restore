@interface PKSharePreviewRowItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSharePreviewRowItem:(id)a3;
- (PKSharePreviewRowItem)initWithIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation PKSharePreviewRowItem

- (PKSharePreviewRowItem)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKSharePreviewRowItem;
  v6 = [(PKSharePreviewRowItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_identifier)
  {
    [v3 addObject:?];
  }

  if (self->_title)
  {
    [v4 addObject:?];
  }

  if (self->_subtitle)
  {
    [v4 addObject:?];
  }

  if (self->_icon)
  {
    [v4 addObject:?];
  }

  if (self->_titleColor)
  {
    [v4 addObject:?];
  }

  PKCombinedHash();
  PKIntegerHash();
  PKIntegerHash();
  PKIntegerHash();
  PKIntegerHash();
  v5 = PKIntegerHash();

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSharePreviewRowItem *)self isEqualToSharePreviewRowItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharePreviewRowItem:(id)a3
{
  v4 = a3;
  v5 = v4 && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && self->_displayChevron == *(v4 + 8) && self->_displayToggleState == v4[7] && self->_displayCheckmark == *(v4 + 9) && self->_accessoryEnabled == *(v4 + 10) && self->_enabled == *(v4 + 11);

  return v5;
}

@end