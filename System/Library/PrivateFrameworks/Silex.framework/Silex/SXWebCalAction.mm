@interface SXWebCalAction
- (SXWebCalAction)initWithURL:(id)a3;
@end

@implementation SXWebCalAction

- (SXWebCalAction)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXWebCalAction;
  v6 = [(SXWebCalAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
  }

  return v7;
}

@end