@interface MSUCheckpointAsyncContext
- (MSUCheckpointAsyncContext)init;
- (void)cancel;
- (void)dealloc;
- (void)runForCheckpoint:(void *)checkpoint;
- (void)runSynchronousForCheckpoint:(void *)checkpoint;
- (void)setAwaitDescription:(void *)description;
- (void)setStepDescription:(void *)description;
@end

@implementation MSUCheckpointAsyncContext

- (MSUCheckpointAsyncContext)init
{
  v4.receiver = self;
  v4.super_class = MSUCheckpointAsyncContext;
  v2 = [(MSUCheckpointAsyncContext *)&v4 init];
  if (v2)
  {
    -[MSUCheckpointAsyncContext setContextUUID:](v2, "setContextUUID:", [+[NSUUID UUID](NSUUID UUIDString]);
  }

  return v2;
}

- (void)dealloc
{
  free(self->_stepDescription);
  free(self->_awaitDescription);

  v3.receiver = self;
  v3.super_class = MSUCheckpointAsyncContext;
  [(MSUCheckpointAsyncContext *)&v3 dealloc];
}

- (void)setStepDescription:(void *)description
{
  free(self->_stepDescription);
  self->_stepDescription = 0;
  if (description)
  {
    v5 = calloc(1uLL, 0x60uLL);
    self->_stepDescription = v5;
    v6 = *(description + 1);
    *v5 = *description;
    v5[1] = v6;
    v7 = *(description + 5);
    v9 = *(description + 2);
    v8 = *(description + 3);
    v5[4] = *(description + 4);
    v5[5] = v7;
    v5[2] = v9;
    v5[3] = v8;
  }
}

- (void)setAwaitDescription:(void *)description
{
  free(self->_awaitDescription);
  self->_awaitDescription = 0;
  if (description)
  {
    v5 = calloc(1uLL, 0x60uLL);
    self->_awaitDescription = v5;
    v6 = *(description + 1);
    *v5 = *description;
    v5[1] = v6;
    v7 = *(description + 5);
    v9 = *(description + 2);
    v8 = *(description + 3);
    v5[4] = *(description + 4);
    v5[5] = v7;
    v5[2] = v9;
    v5[3] = v8;
  }
}

- (void)runForCheckpoint:(void *)checkpoint
{
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"MSUCheckpointAsyncContext is a abstract class." userInfo:0];

  [(NSException *)v3 raise];
}

- (void)runSynchronousForCheckpoint:(void *)checkpoint
{
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"MSUCheckpointAsyncContext is a abstract class." userInfo:0];

  [(NSException *)v3 raise];
}

- (void)cancel
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"MSUCheckpointAsyncContext is a abstract class." userInfo:0];

  [(NSException *)v2 raise];
}

@end