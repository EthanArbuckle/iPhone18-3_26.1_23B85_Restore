@interface PLBackgroundJobStatusFinishWorkerEvent
- (id)statusDump;
@end

@implementation PLBackgroundJobStatusFinishWorkerEvent

- (id)statusDump
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLBackgroundJobStatusFinishWorkerEvent;
  statusDump = [(PLBackgroundJobStatusEvent *)&v8 statusDump];
  worker = [(PLBackgroundJobStatusFinishWorkerEvent *)self worker];
  v6 = [v3 stringWithFormat:@"%@ - %@ finished running jobs\n", statusDump, worker];

  return v6;
}

@end