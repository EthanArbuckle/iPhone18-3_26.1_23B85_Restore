@interface UIBarButtonItemStateAppearance
- (UIBarButtonItemStateAppearance)init;
- (UIOffset)backgroundImagePositionAdjustment;
- (UIOffset)titlePositionAdjustment;
- (id)_initWithOwner:(id)owner data:(id)data state:(int64_t)state;
- (void)_writeToStorage:(id)storage;
- (void)setBackgroundImage:(UIImage *)backgroundImage;
- (void)setBackgroundImagePositionAdjustment:(UIOffset)backgroundImagePositionAdjustment;
- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment;
- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes;
@end

@implementation UIBarButtonItemStateAppearance

- (UIBarButtonItemStateAppearance)init
{
  [(UIBarButtonItemStateAppearance *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_initWithOwner:(id)owner data:(id)data state:(int64_t)state
{
  ownerCopy = owner;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = UIBarButtonItemStateAppearance;
  v10 = [(UIBarButtonItemStateAppearance *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_owner = ownerCopy;
    objc_storeStrong(&v10->_data, data);
    v11->_state = state;
  }

  return v11;
}

- (void)_writeToStorage:(id)storage
{
  owner = self->_owner;
  if (owner)
  {
    [(UIBarButtonItemAppearance *)owner _writeToStorage:storage];
  }

  else
  {
    data = self->_data;
    storageCopy = storage;
    writableInstance = [(_UIBarAppearanceData *)data writableInstance];
    v8 = self->_data;
    self->_data = writableInstance;

    storageCopy[2](storageCopy);
  }
}

- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes
{
  v4 = titleTextAttributes;
  if (![(NSDictionary *)v4 count])
  {

    v4 = 0;
  }

  v5 = [(_UIBarButtonItemData *)self->_data titleTextAttributesForState:self->_state];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(NSDictionary *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__UIBarButtonItemStateAppearance_setTitleTextAttributes___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v6;
    [(UIBarButtonItemStateAppearance *)self _writeToStorage:v10];
  }

LABEL_11:
}

- (UIOffset)titlePositionAdjustment
{
  [(_UIBarButtonItemData *)self->_data titlePositionAdjustmentForState:self->_state];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment
{
  vertical = titlePositionAdjustment.vertical;
  horizontal = titlePositionAdjustment.horizontal;
  [(_UIBarButtonItemData *)self->_data titlePositionAdjustmentForState:self->_state];
  if (horizontal != v7 || vertical != v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__UIBarButtonItemStateAppearance_setTitlePositionAdjustment___block_invoke;
    v9[3] = &unk_1E70F6848;
    v9[4] = self;
    *&v9[5] = horizontal;
    *&v9[6] = vertical;
    [(UIBarButtonItemStateAppearance *)self _writeToStorage:v9];
  }
}

- (void)setBackgroundImage:(UIImage *)backgroundImage
{
  v4 = backgroundImage;
  v5 = [(_UIBarButtonItemData *)self->_data backgroundImageForState:self->_state];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(UIImage *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__UIBarButtonItemStateAppearance_setBackgroundImage___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v6;
    [(UIBarButtonItemStateAppearance *)self _writeToStorage:v10];
  }

LABEL_9:
}

- (UIOffset)backgroundImagePositionAdjustment
{
  [(_UIBarButtonItemData *)self->_data backgroundImagePositionAdjustmentForState:self->_state];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setBackgroundImagePositionAdjustment:(UIOffset)backgroundImagePositionAdjustment
{
  vertical = backgroundImagePositionAdjustment.vertical;
  horizontal = backgroundImagePositionAdjustment.horizontal;
  [(_UIBarButtonItemData *)self->_data backgroundImagePositionAdjustmentForState:self->_state];
  if (horizontal != v7 || vertical != v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__UIBarButtonItemStateAppearance_setBackgroundImagePositionAdjustment___block_invoke;
    v9[3] = &unk_1E70F6848;
    v9[4] = self;
    *&v9[5] = horizontal;
    *&v9[6] = vertical;
    [(UIBarButtonItemStateAppearance *)self _writeToStorage:v9];
  }
}

@end