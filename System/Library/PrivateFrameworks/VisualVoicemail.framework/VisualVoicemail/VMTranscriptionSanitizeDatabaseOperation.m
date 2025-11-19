@interface VMTranscriptionSanitizeDatabaseOperation
- (void)cancel;
- (void)main;
@end

@implementation VMTranscriptionSanitizeDatabaseOperation

- (void)main
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting queued transcription database sanitization.", buf, 2u);
  }

  v4 = VMStoreCopyOfAllRecordsWithFlags(0x8000, 0, 0);
  v5 = VMStoreCopyOfAllRecordsWithFlags(512, 0, 0);
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  if ([v6 count])
  {
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 count];
      *v14 = 134217984;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found %lu records that were left transcribing when they should not have been. Unsetting transcribing flag.", v14, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000097F4;
  v9[3] = &unk_1000ED7D8;
  v9[4] = self;
  v9[5] = buf;
  [v6 enumerateObjectsUsingBlock:v9];
  if (v11[24] == 1)
  {
    VMStoreSave();
  }

  _Block_object_dispose(buf, 8);
}

- (void)cancel
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Operation to sanitize voicemail transcription database was cancelled.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VMTranscriptionSanitizeDatabaseOperation;
  [(VMTranscriptionSanitizeDatabaseOperation *)&v4 cancel];
}

@end