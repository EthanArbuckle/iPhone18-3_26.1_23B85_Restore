@interface PLBackgroundJobStatusStopWorkerEvent
- (id)statusDump;
@end

@implementation PLBackgroundJobStatusStopWorkerEvent

- (id)statusDump
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLBackgroundJobStatusStopWorkerEvent;
  statusDump = [(PLBackgroundJobStatusEvent *)&v8 statusDump];
  worker = [(PLBackgroundJobStatusStopWorkerEvent *)self worker];
  v6 = [v3 stringWithFormat:@"%@ - %@ told to stop working with %lu jobs still remaining\n", statusDump, worker, -[PLBackgroundJobStatusStopWorkerEvent pendingJobsCount](self, "pendingJobsCount")];

  return v6;
}

@end