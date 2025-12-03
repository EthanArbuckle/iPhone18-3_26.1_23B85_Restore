@interface _UIToolTipInteractionStyle
- (UIToolTipProvider)provider;
- (UIView)view;
- (_UIToolTipInteractionStyle)initWithView:(id)view provider:(id)provider;
@end

@implementation _UIToolTipInteractionStyle

- (_UIToolTipInteractionStyle)initWithView:(id)view provider:(id)provider
{
  v9.receiver = self;
  v9.super_class = _UIToolTipInteractionStyle;
  providerCopy = provider;
  viewCopy = view;
  v7 = [(_UIToolTipInteractionStyle *)&v9 init];
  objc_storeWeak(&v7->_view, viewCopy);

  objc_storeWeak(&v7->_provider, providerCopy);
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