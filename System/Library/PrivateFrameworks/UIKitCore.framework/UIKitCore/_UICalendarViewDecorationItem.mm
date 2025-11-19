@interface _UICalendarViewDecorationItem
- (UIView)_parent;
- (id)_decorationViewForReuseView:(id)a3;
@end

@implementation _UICalendarViewDecorationItem

- (id)_decorationViewForReuseView:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UICalendarViewDecoration.m" lineNumber:204 description:@"This must be implemented by a decoration subclass"];

  return 0;
}

- (UIView)_parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end