@interface PLBackgroundJobStatusStopWorkerEvent
- (id)statusDump;
@end

@implementation PLBackgroundJobStatusStopWorkerEvent

- (id)statusDump
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLBackgroundJobStatusStopWorkerEvent;
  v4 = [(PLBackgroundJobStatusEvent *)&v8 statusDump];
  v5 = [(PLBackgroundJobStatusStopWorkerEvent *)self worker];
  v6 = [v3 stringWithFormat:@"%@ - %@ told to stop working with %lu jobs still remaining\n", v4, v5, -[PLBackgroundJobStatusStopWorkerEvent pendingJobsCount](self, "pendingJobsCount")];

  return v6;
}

@end