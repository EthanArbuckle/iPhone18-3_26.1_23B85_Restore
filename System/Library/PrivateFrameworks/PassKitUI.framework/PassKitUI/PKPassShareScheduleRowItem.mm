@interface PKPassShareScheduleRowItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassShareScheduleRowItem:(id)item;
- (PKPassShareScheduleRowItem)initWithTitle:(id)title icon:(id)icon;
- (unint64_t)hash;
@end

@implementation PKPassShareScheduleRowItem

- (PKPassShareScheduleRowItem)initWithTitle:(id)title icon:(id)icon
{
  titleCopy = title;
  iconCopy = icon;
  v16.receiver = self;
  v16.super_class = PKPassShareScheduleRowItem;
  v9 = [(PKPassShareScheduleRowItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_icon, icon);
    if (titleCopy)
    {
      v11 = titleCopy;
      identifier = v10->_identifier;
      v10->_identifier = v11;
    }

    else
    {
      identifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
      uUIDString = [(NSString *)identifier UUIDString];
      v14 = v10->_identifier;
      v10->_identifier = uUIDString;
    }
  }

  return v10;
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

  if (self->_value)
  {
    [v4 addObject:?];
  }

  if (self->_icon)
  {
    [v4 addObject:?];
  }

  if (self->_date)
  {
    [v4 addObject:?];
  }

  if (self->_minimumDate)
  {
    [v4 addObject:?];
  }

  if (self->_maximumDate)
  {
    [v4 addObject:?];
  }

  PKCombinedHash();
  PKIntegerHash();
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassShareScheduleRowItem *)self isEqualToPassShareScheduleRowItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassShareScheduleRowItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && self->_hasToggle == itemCopy[8] && self->_hasTimePicker == itemCopy[9] && self->_hasDayPicker == itemCopy[10] && self->_selectable == itemCopy[11] && self->_isOn == itemCopy[12] && self->_userInteractionEnabled == itemCopy[13];

  return v5;
}

@end