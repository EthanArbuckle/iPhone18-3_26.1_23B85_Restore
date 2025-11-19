@interface PKPassShareScheduleRowItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassShareScheduleRowItem:(id)a3;
- (PKPassShareScheduleRowItem)initWithTitle:(id)a3 icon:(id)a4;
- (unint64_t)hash;
@end

@implementation PKPassShareScheduleRowItem

- (PKPassShareScheduleRowItem)initWithTitle:(id)a3 icon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PKPassShareScheduleRowItem;
  v9 = [(PKPassShareScheduleRowItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_icon, a4);
    if (v7)
    {
      v11 = v7;
      identifier = v10->_identifier;
      v10->_identifier = v11;
    }

    else
    {
      identifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v13 = [(NSString *)identifier UUIDString];
      v14 = v10->_identifier;
      v10->_identifier = v13;
    }
  }

  return v10;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassShareScheduleRowItem *)self isEqualToPassShareScheduleRowItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassShareScheduleRowItem:(id)a3
{
  v4 = a3;
  v5 = v4 && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && self->_hasToggle == v4[8] && self->_hasTimePicker == v4[9] && self->_hasDayPicker == v4[10] && self->_selectable == v4[11] && self->_isOn == v4[12] && self->_userInteractionEnabled == v4[13];

  return v5;
}

@end