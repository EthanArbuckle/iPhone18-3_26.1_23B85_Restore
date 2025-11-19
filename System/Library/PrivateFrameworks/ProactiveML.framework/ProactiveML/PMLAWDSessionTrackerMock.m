@interface PMLAWDSessionTrackerMock
- (PMLAWDSessionTrackerMock)initWithModel:(id)a3;
@end

@implementation PMLAWDSessionTrackerMock

- (PMLAWDSessionTrackerMock)initWithModel:(id)a3
{
  v7.receiver = self;
  v7.super_class = PMLAWDSessionTrackerMock;
  v3 = [(PMLAWDBaseTracker *)&v7 initWithModel:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    internalTrackedSessions = v3->_internalTrackedSessions;
    v3->_internalTrackedSessions = v4;

    objc_storeStrong(&v3->_trackedSessions, v3->_internalTrackedSessions);
  }

  return v3;
}

@end