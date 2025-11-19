@interface PLChangesRequestInProgressMarker
- (PLChangesRequestInProgressMarker)initWithIdentifier:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation PLChangesRequestInProgressMarker

- (void)dealloc
{
  +[PLAssetsdCrashRecoverySupport endTrackPerformChangesRequestInProgress];
  v3.receiver = self;
  v3.super_class = PLChangesRequestInProgressMarker;
  [(PLChangesRequestInProgressMarker *)&v3 dealloc];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PLChangesRequestInProgressMarker;
  v3 = [(PLChangesRequestInProgressMarker *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"c:%d t:%llx d:%@ i:%@", self->_counterValue, self->_threadId, self->_date, self->_identifier];

  return v4;
}

- (PLChangesRequestInProgressMarker)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLChangesRequestInProgressMarker;
  v5 = [(PLChangesRequestInProgressMarker *)&v11 init];
  if (v5)
  {
    v5->_counterValue = +[PLAssetsdCrashRecoverySupport beginTrackPerformChangesRequestInProgress];
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [MEMORY[0x1E695DF00] date];
    date = v5->_date;
    v5->_date = v8;

    pthread_threadid_np(0, &v5->_threadId);
  }

  return v5;
}

@end