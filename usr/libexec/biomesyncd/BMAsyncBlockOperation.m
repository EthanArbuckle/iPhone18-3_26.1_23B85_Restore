@interface BMAsyncBlockOperation
- (BMAsyncBlockOperation)initWithAsyncOperationBlock:(id)a3;
- (void)start;
@end

@implementation BMAsyncBlockOperation

- (BMAsyncBlockOperation)initWithAsyncOperationBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMAsyncBlockOperation;
  v5 = [(BMAsyncBlockOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;

    v5->_executing = 0;
    v5->_finished = 0;
  }

  return v5;
}

- (void)start
{
  if (([(BMAsyncBlockOperation *)self isCancelled]& 1) == 0)
  {
    [(BMAsyncBlockOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(BMAsyncBlockOperation *)self didChangeValueForKey:@"isExecuting"];
    v3 = [(BMAsyncBlockOperation *)self block];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100038A58;
    v4[3] = &unk_100078B70;
    v4[4] = self;
    (v3)[2](v3, v4);
  }
}

@end