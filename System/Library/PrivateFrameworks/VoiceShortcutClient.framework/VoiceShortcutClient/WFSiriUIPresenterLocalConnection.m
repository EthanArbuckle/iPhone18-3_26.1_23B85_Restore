@interface WFSiriUIPresenterLocalConnection
- (WFSiriUIPresenterLocalConnection)initWithPresenter:(id)a3;
@end

@implementation WFSiriUIPresenterLocalConnection

- (WFSiriUIPresenterLocalConnection)initWithPresenter:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFSiriUIPresenterLocalConnection;
  v6 = [(WFSiriUIPresenterLocalConnection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, a3);
    v8 = v7;
  }

  return v7;
}

@end