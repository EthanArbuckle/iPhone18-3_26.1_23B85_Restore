@interface STBlockOperation
+ (id)blockOperationWithBlock:(id)a3;
- (void)main;
@end

@implementation STBlockOperation

+ (id)blockOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setBlock:v3];

  return v4;
}

- (void)main
{
  v3 = [(STBlockOperation *)self block];
  v3[2]();

  [(STBlockOperation *)self endOperationWithResultObject:0];
}

@end