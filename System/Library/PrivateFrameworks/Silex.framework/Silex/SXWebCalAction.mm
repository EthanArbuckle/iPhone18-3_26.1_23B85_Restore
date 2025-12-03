@interface SXWebCalAction
- (SXWebCalAction)initWithURL:(id)l;
@end

@implementation SXWebCalAction

- (SXWebCalAction)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SXWebCalAction;
  v6 = [(SXWebCalAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
  }

  return v7;
}

@end