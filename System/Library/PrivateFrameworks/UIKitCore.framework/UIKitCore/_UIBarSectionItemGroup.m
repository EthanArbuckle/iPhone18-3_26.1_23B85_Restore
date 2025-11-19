@interface _UIBarSectionItemGroup
- (BOOL)isEqual:(id)a3;
- (_UIBarSectionItemGroup)initWithGroup:(id)a3;
- (_UIBarSectionItemGroup)initWithItems:(id)a3;
- (id)description;
@end

@implementation _UIBarSectionItemGroup

- (_UIBarSectionItemGroup)initWithGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIBarSectionItemGroup;
  v6 = [(_UIBarSectionItemGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_group, a3);
  }

  return v7;
}

- (_UIBarSectionItemGroup)initWithItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIBarSectionItemGroup;
  v5 = [(_UIBarSectionItemGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    items = self->_items;
    if (items)
    {
      v8 = v5[1];
      v9 = items;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {

        goto LABEL_16;
      }

      if (v10)
      {
        v12 = [(NSArray *)v9 isEqual:v10];

        if (v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    group = self->_group;
    if (group)
    {
      v15 = v6[2];
      v16 = group;
      v17 = v15;
      v18 = v17;
      if (v16 == v17)
      {

        goto LABEL_16;
      }

      if (v17)
      {
        v19 = [(UIBarButtonItemGroup *)v16 isEqual:v17];

        if ((v19 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_16:
        v13 = 1;
LABEL_19:

        goto LABEL_20;
      }
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)description
{
  v3 = [(NSArray *)self->_items count];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = 8;
  if (v3)
  {
    v7 = @"<%@ %p; items: %@>";
  }

  else
  {
    v6 = 16;
    v7 = @"<%@ %p; group: %@>";
  }

  v8 = [v4 stringWithFormat:v7, v5, self, *(&self->super.isa + v6)];

  return v8;
}

@end