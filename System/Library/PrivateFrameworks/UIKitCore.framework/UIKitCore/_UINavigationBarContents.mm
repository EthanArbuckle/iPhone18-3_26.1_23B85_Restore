@interface _UINavigationBarContents
- (_UINavigationBarContents)init;
- (void)setCancelBarButtonItems:(id)items;
- (void)setOtherBarButtonItems:(id)items;
- (void)setViewsRepresentingBackButton:(id)button;
@end

@implementation _UINavigationBarContents

- (_UINavigationBarContents)init
{
  v9.receiver = self;
  v9.super_class = _UINavigationBarContents;
  v2 = [(_UINavigationBarContents *)&v9 init];
  v3 = v2;
  if (v2)
  {
    viewsRepresentingBackButton = v2->_viewsRepresentingBackButton;
    v5 = MEMORY[0x1E695E0F0];
    v2->_viewsRepresentingBackButton = MEMORY[0x1E695E0F0];

    cancelBarButtonItems = v3->_cancelBarButtonItems;
    v3->_cancelBarButtonItems = v5;

    otherBarButtonItems = v3->_otherBarButtonItems;
    v3->_otherBarButtonItems = v5;
  }

  return v3;
}

- (void)setViewsRepresentingBackButton:(id)button
{
  buttonCopy = button;
  if (buttonCopy)
  {
    v5 = buttonCopy;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v8 = v5;
  if (![(NSArray *)self->_viewsRepresentingBackButton isEqualToArray:?])
  {
    v6 = [v8 copy];
    viewsRepresentingBackButton = self->_viewsRepresentingBackButton;
    self->_viewsRepresentingBackButton = v6;
  }
}

- (void)setCancelBarButtonItems:(id)items
{
  itemsCopy = items;
  if (itemsCopy)
  {
    v5 = itemsCopy;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v8 = v5;
  if (![(NSArray *)self->_cancelBarButtonItems isEqualToArray:?])
  {
    v6 = [v8 copy];
    cancelBarButtonItems = self->_cancelBarButtonItems;
    self->_cancelBarButtonItems = v6;
  }
}

- (void)setOtherBarButtonItems:(id)items
{
  itemsCopy = items;
  if (itemsCopy)
  {
    v5 = itemsCopy;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v8 = v5;
  if (![(NSArray *)self->_otherBarButtonItems isEqualToArray:?])
  {
    v6 = [v8 copy];
    otherBarButtonItems = self->_otherBarButtonItems;
    self->_otherBarButtonItems = v6;
  }
}

@end