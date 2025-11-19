@interface _PIVideoStabilizeFlowControl
- (BOOL)ICShouldBeCanceled;
- (void)ICReportProgress:(float)a3;
@end

@implementation _PIVideoStabilizeFlowControl

- (BOOL)ICShouldBeCanceled
{
  v3 = [(_PIVideoStabilizeFlowControl *)self shouldCancelHandler];

  if (!v3)
  {
    return 0;
  }

  v4 = [(_PIVideoStabilizeFlowControl *)self shouldCancelHandler];
  v5 = v4[2]();

  return v5;
}

- (void)ICReportProgress:(float)a3
{
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](self->_rangeMin + a3 * (self->_rangeMax - self->_rangeMin));
  }
}

@end