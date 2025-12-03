@interface STBlockOperation
+ (id)blockOperationWithBlock:(id)block;
- (void)main;
@end

@implementation STBlockOperation

+ (id)blockOperationWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  [v4 setBlock:blockCopy];

  return v4;
}

- (void)main
{
  block = [(STBlockOperation *)self block];
  block[2]();

  [(STBlockOperation *)self endOperationWithResultObject:0];
}

@end