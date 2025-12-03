@interface WFUIPresenterLocalConnection
- (WFUIPresenterLocalConnection)initWithPresenter:(id)presenter;
@end

@implementation WFUIPresenterLocalConnection

- (WFUIPresenterLocalConnection)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v10.receiver = self;
  v10.super_class = WFUIPresenterLocalConnection;
  v6 = [(WFUIPresenterLocalConnection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, presenter);
    v8 = v7;
  }

  return v7;
}

@end