@interface PCSCKKSOperationBlock
- (void)start;
@end

@implementation PCSCKKSOperationBlock

- (void)start
{
  if ([(PCSCKKSOperation *)self startOperation])
  {
    [(PCSCKKSOperation *)self checkDependencies];
    v3 = [(PCSCKKSOperationBlock *)self block];
    v3[2](v3, 0);

    [(PCSCKKSOperation *)self completeOperation];
  }

  else
  {
    v5 = [(PCSCKKSOperationBlock *)self block];
    v4 = [(PCSCKKSOperation *)self error];
    v5[2](v5, v4);
  }
}

@end