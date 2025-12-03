@interface PCSCKKSOperationBlock
- (void)start;
@end

@implementation PCSCKKSOperationBlock

- (void)start
{
  if ([(PCSCKKSOperation *)self startOperation])
  {
    [(PCSCKKSOperation *)self checkDependencies];
    block = [(PCSCKKSOperationBlock *)self block];
    block[2](block, 0);

    [(PCSCKKSOperation *)self completeOperation];
  }

  else
  {
    block2 = [(PCSCKKSOperationBlock *)self block];
    error = [(PCSCKKSOperation *)self error];
    block2[2](block2, error);
  }
}

@end