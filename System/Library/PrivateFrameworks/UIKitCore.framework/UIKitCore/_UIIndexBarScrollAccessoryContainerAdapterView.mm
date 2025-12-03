@interface _UIIndexBarScrollAccessoryContainerAdapterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIIndexBarScrollAccessoryContainerAdapterView)initWithContents:(id)contents delegatingToView:(id)view;
@end

@implementation _UIIndexBarScrollAccessoryContainerAdapterView

- (_UIIndexBarScrollAccessoryContainerAdapterView)initWithContents:(id)contents delegatingToView:(id)view
{
  contentsCopy = contents;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = _UIIndexBarScrollAccessoryContainerAdapterView;
  v8 = [(UIView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegatedView, view);
    [(UIView *)v9 addSubview:contentsCopy];
    [contentsCopy setTranslatesAutoresizingMaskIntoConstraints:1];
    [(UIView *)v9 bounds];
    [contentsCopy setFrame:?];
    [contentsCopy setAutoresizingMask:18];
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIScrollAccessory *)self->_delegatedView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end