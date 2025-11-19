@interface _UIToolTipInteractionStyle
- (UIToolTipProvider)provider;
- (UIView)view;
- (_UIToolTipInteractionStyle)initWithView:(id)a3 provider:(id)a4;
@end

@implementation _UIToolTipInteractionStyle

- (_UIToolTipInteractionStyle)initWithView:(id)a3 provider:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UIToolTipInteractionStyle;
  v5 = a4;
  v6 = a3;
  v7 = [(_UIToolTipInteractionStyle *)&v9 init];
  objc_storeWeak(&v7->_view, v6);

  objc_storeWeak(&v7->_provider, v5);
  return v7;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIToolTipProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end