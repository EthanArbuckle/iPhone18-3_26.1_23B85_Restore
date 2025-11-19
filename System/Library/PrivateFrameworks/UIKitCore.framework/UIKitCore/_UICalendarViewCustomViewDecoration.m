@interface _UICalendarViewCustomViewDecoration
- (_UICalendarViewCustomViewDecoration)initWithCustomViewProvider:(id)a3;
- (id)_decorationViewForReuseView:(id)a3;
@end

@implementation _UICalendarViewCustomViewDecoration

- (_UICalendarViewCustomViewDecoration)initWithCustomViewProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UICalendarViewCustomViewDecoration;
  v5 = [(_UICalendarViewCustomViewDecoration *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    customViewProvider = v5->_customViewProvider;
    v5->_customViewProvider = v6;
  }

  return v5;
}

- (id)_decorationViewForReuseView:(id)a3
{
  fulfilledCustomView = self->_fulfilledCustomView;
  if (!fulfilledCustomView)
  {
    v5 = (*(self->_customViewProvider + 2))();
    v6 = self->_fulfilledCustomView;
    self->_fulfilledCustomView = v5;

    customViewProvider = self->_customViewProvider;
    self->_customViewProvider = 0;

    fulfilledCustomView = self->_fulfilledCustomView;
  }

  return fulfilledCustomView;
}

@end