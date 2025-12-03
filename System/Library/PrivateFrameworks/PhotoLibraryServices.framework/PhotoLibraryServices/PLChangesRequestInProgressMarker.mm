@interface PLChangesRequestInProgressMarker
- (PLChangesRequestInProgressMarker)initWithIdentifier:(id)identifier;
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

- (PLChangesRequestInProgressMarker)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PLChangesRequestInProgressMarker;
  v5 = [(PLChangesRequestInProgressMarker *)&v11 init];
  if (v5)
  {
    v5->_counterValue = +[PLAssetsdCrashRecoverySupport beginTrackPerformChangesRequestInProgress];
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    date = [MEMORY[0x1E695DF00] date];
    date = v5->_date;
    v5->_date = date;

    pthread_threadid_np(0, &v5->_threadId);
  }

  return v5;
}

@end