@interface PLBackgroundJobStatusStartWorkerEvent
- (id)statusDump;
@end

@implementation PLBackgroundJobStatusStartWorkerEvent

- (id)statusDump
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLBackgroundJobStatusStartWorkerEvent;
  statusDump = [(PLBackgroundJobStatusEvent *)&v8 statusDump];
  worker = [(PLBackgroundJobStatusStartWorkerEvent *)self worker];
  v6 = [v3 stringWithFormat:@"%@ - %@ working on %lu jobs\n", statusDump, worker, -[PLBackgroundJobStatusStartWorkerEvent jobsCount](self, "jobsCount")];

  return v6;
}

@end