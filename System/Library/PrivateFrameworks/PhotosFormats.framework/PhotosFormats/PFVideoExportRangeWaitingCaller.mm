@interface PFVideoExportRangeWaitingCaller
+ (id)waitingCallerWithRequestedRange:(_NSRange)range;
- (PFVideoExportRangeWaitingCaller)init;
- (_NSRange)requestedRange;
@end

@implementation PFVideoExportRangeWaitingCaller

- (_NSRange)requestedRange
{
  objc_copyStruct(v4, &self->_requestedRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (PFVideoExportRangeWaitingCaller)init
{
  v6.receiver = self;
  v6.super_class = PFVideoExportRangeWaitingCaller;
  v2 = [(PFVideoExportRangeWaitingCaller *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    semaphore = v2->_semaphore;
    v2->_semaphore = v3;
  }

  return v2;
}

+ (id)waitingCallerWithRequestedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_opt_new();
  [v5 setRequestedRange:{location, length}];

  return v5;
}

@end