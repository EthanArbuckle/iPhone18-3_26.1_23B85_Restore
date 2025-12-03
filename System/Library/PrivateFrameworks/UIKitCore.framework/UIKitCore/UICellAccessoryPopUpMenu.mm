@interface UICellAccessoryPopUpMenu
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (UICellAccessoryPopUpMenu)initWithCoder:(NSCoder *)coder;
- (UICellAccessoryPopUpMenu)initWithMenu:(UIMenu *)menu;
- (UIMenu)menu;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UICellAccessoryPopUpMenu

- (UICellAccessoryPopUpMenu)initWithMenu:(UIMenu *)menu
{
  v5 = menu;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICellAccessory.m" lineNumber:647 description:{@"Invalid parameter not satisfying: %@", @"menu != nil"}];
  }

  v11.receiver = self;
  v11.super_class = UICellAccessoryPopUpMenu;
  v6 = [(UICellAccessory *)&v11 init];
  if (v6)
  {
    v7 = [(UIMenu *)v5 copy];
    v8 = v6->_menu;
    v6->_menu = v7;

    [(UICellAccessory *)v6 setReservedLayoutWidth:0.0];
  }

  return v6;
}

- (UIMenu)menu
{
  v2 = [(UIMenu *)self->_menu copy];

  return v2;
}

- (UICellAccessoryPopUpMenu)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"menu"];
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = UICellAccessoryPopUpMenu;
    v6 = [(UICellAccessory *)&v9 initWithCoder:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_menu, v5);
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryPopUpMenu;
  coderCopy = coder;
  [(UICellAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_menu forKey:{@"menu", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = UICellAccessoryPopUpMenu;
  v4 = [(UICellAccessory *)&v10 copyWithZone:zone];
  if (v4)
  {
    v5 = [(UIMenu *)self->_menu copy];
    v6 = v4[7];
    v4[7] = v5;

    v7 = [self->_selectedElementDidChangeHandler copy];
    v8 = v4[8];
    v4[8] = v7;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = UICellAccessoryPopUpMenu;
  if ([(UICellAccessory *)&v14 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5[7];
    v7 = self->_menu;
    v8 = v6;
    v9 = v8;
    if (v7 != v8)
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
      }

      else
      {
        v12 = [(UIMenu *)v7 isEqual:v8];

        if (v12)
        {
          goto LABEL_12;
        }
      }

      v11 = 0;
      goto LABEL_14;
    }

LABEL_12:
    v11 = self->_selectedElementDidChangeHandler == v5[8];
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from
{
  v4.receiver = self;
  v4.super_class = UICellAccessoryPopUpMenu;
  return [(UICellAccessory *)&v4 _canDirectlyUpdateExistingAccessoryViewFrom:from];
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryPopUpMenu;
  v3 = [(UICellAccessory *)&v5 hash];
  return [(UIMenu *)self->_menu hash]^ v3;
}

@end