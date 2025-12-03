@interface PKSharePreviewRowItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharePreviewRowItem:(id)item;
- (PKSharePreviewRowItem)initWithIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation PKSharePreviewRowItem

- (PKSharePreviewRowItem)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKSharePreviewRowItem;
  v6 = [(PKSharePreviewRowItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_identifier)
  {
    [array addObject:?];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSharePreviewRowItem *)self isEqualToSharePreviewRowItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharePreviewRowItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && self->_displayChevron == *(itemCopy + 8) && self->_displayToggleState == itemCopy[7] && self->_displayCheckmark == *(itemCopy + 9) && self->_accessoryEnabled == *(itemCopy + 10) && self->_enabled == *(itemCopy + 11);

  return v5;
}

@end