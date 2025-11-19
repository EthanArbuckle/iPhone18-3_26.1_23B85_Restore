@interface VUIAsynchronousWorkToken
- (VUIAsynchronousWorkToken)init;
- (VUIAsynchronousWorkToken)initWithOperation:(id)a3;
- (void)cancel;
@end

@implementation VUIAsynchronousWorkToken

- (VUIAsynchronousWorkToken)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIAsynchronousWorkToken)initWithOperation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIAsynchronousWorkToken;
  v6 = [(VUIAsynchronousWorkToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operation, a3);
  }

  return v7;
}

- (void)cancel
{
  v2 = [(VUIAsynchronousWorkToken *)self operation];
  [v2 cancel];
}

@end