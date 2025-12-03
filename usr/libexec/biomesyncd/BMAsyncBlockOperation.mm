@interface BMAsyncBlockOperation
- (BMAsyncBlockOperation)initWithAsyncOperationBlock:(id)block;
- (void)start;
@end

@implementation BMAsyncBlockOperation

- (BMAsyncBlockOperation)initWithAsyncOperationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = BMAsyncBlockOperation;
  v5 = [(BMAsyncBlockOperation *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
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
    block = [(BMAsyncBlockOperation *)self block];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100038A58;
    v4[3] = &unk_100078B70;
    v4[4] = self;
    (block)[2](block, v4);
  }
}

@end