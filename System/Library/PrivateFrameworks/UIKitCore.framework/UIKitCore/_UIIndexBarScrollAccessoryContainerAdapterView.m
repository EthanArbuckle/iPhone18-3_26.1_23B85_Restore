@interface _UIIndexBarScrollAccessoryContainerAdapterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIIndexBarScrollAccessoryContainerAdapterView)initWithContents:(id)a3 delegatingToView:(id)a4;
@end

@implementation _UIIndexBarScrollAccessoryContainerAdapterView

- (_UIIndexBarScrollAccessoryContainerAdapterView)initWithContents:(id)a3 delegatingToView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UIIndexBarScrollAccessoryContainerAdapterView;
  v8 = [(UIView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegatedView, a4);
    [(UIView *)v9 addSubview:v6];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(UIView *)v9 bounds];
    [v6 setFrame:?];
    [v6 setAutoresizingMask:18];
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIScrollAccessory *)self->_delegatedView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end