@interface PLBackgroundJobStatusFinishWorkerEvent
- (id)statusDump;
@end

@implementation PLBackgroundJobStatusFinishWorkerEvent

- (id)statusDump
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLBackgroundJobStatusFinishWorkerEvent;
  v4 = [(PLBackgroundJobStatusEvent *)&v8 statusDump];
  v5 = [(PLBackgroundJobStatusFinishWorkerEvent *)self worker];
  v6 = [v3 stringWithFormat:@"%@ - %@ finished running jobs\n", v4, v5];

  return v6;
}

@end