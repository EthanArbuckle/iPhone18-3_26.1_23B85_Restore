@interface PLPlatterCustomContentView
- (PLPlatterCustomContentView)initWithAncestorPlatterView:(id)a3;
- (void)willRemoveSubview:(id)a3;
@end

@implementation PLPlatterCustomContentView

- (PLPlatterCustomContentView)initWithAncestorPlatterView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PLPlatterCustomContentView;
  v5 = [(PLPlatterCustomContentView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_ancestorPlatterView, v4);
  }

  return v6;
}

- (void)willRemoveSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = PLPlatterCustomContentView;
  v4 = a3;
  [(PLPlatterCustomContentView *)&v6 willRemoveSubview:v4];
  WeakRetained = objc_loadWeakRetained(&self->_ancestorPlatterView);
  [WeakRetained _willRemoveCustomContent:{v4, v6.receiver, v6.super_class}];
}

@end