@interface PLPlatterCustomContentView
- (PLPlatterCustomContentView)initWithAncestorPlatterView:(id)view;
- (void)willRemoveSubview:(id)subview;
@end

@implementation PLPlatterCustomContentView

- (PLPlatterCustomContentView)initWithAncestorPlatterView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = PLPlatterCustomContentView;
  v5 = [(PLPlatterCustomContentView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_ancestorPlatterView, viewCopy);
  }

  return v6;
}

- (void)willRemoveSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = PLPlatterCustomContentView;
  subviewCopy = subview;
  [(PLPlatterCustomContentView *)&v6 willRemoveSubview:subviewCopy];
  WeakRetained = objc_loadWeakRetained(&self->_ancestorPlatterView);
  [WeakRetained _willRemoveCustomContent:{subviewCopy, v6.receiver, v6.super_class}];
}

@end