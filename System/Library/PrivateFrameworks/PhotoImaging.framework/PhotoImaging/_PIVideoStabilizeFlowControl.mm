@interface _PIVideoStabilizeFlowControl
- (BOOL)ICShouldBeCanceled;
- (void)ICReportProgress:(float)progress;
@end

@implementation _PIVideoStabilizeFlowControl

- (BOOL)ICShouldBeCanceled
{
  shouldCancelHandler = [(_PIVideoStabilizeFlowControl *)self shouldCancelHandler];

  if (!shouldCancelHandler)
  {
    return 0;
  }

  shouldCancelHandler2 = [(_PIVideoStabilizeFlowControl *)self shouldCancelHandler];
  v5 = shouldCancelHandler2[2]();

  return v5;
}

- (void)ICReportProgress:(float)progress
{
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](self->_rangeMin + progress * (self->_rangeMax - self->_rangeMin));
  }
}

@end