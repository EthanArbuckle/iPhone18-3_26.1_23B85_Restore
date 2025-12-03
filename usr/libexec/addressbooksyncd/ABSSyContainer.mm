@interface ABSSyContainer
- (ABSSyContainer)initWithData:(id)data;
@end

@implementation ABSSyContainer

- (ABSSyContainer)initWithData:(id)data
{
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = ABSSyContainer;
  v5 = [(ABSSyContainer *)&v22 init];
  if (v5)
  {
    v6 = [[ABSPBSyncObject alloc] initWithData:dataCopy];
    pbObject = v5->_pbObject;
    v5->_pbObject = v6;

    v8 = -1.0;
    if ([(ABSPBSyncObject *)v5->_pbObject hasSendTimestamp])
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSinceReferenceDate];
      v11 = v10;
      [(ABSPBSyncObject *)v5->_pbObject sendTimestamp];
      v8 = v11 - v12;
    }

    if ([(ABSPBSyncObject *)v5->_pbObject hasSequenceNumber])
    {
      os_unfair_lock_lock(&stru_100071CA4);
      sequenceNumber = [(ABSPBSyncObject *)v5->_pbObject sequenceNumber];
      sequenceNumber2 = [(ABSPBSyncObject *)v5->_pbObject sequenceNumber];
      v15 = sequenceNumber2;
      v16 = dword_100071968 == 0x80000000 || sequenceNumber < 0;
      v17 = sequenceNumber2 & 0x7FFFFFFF;
      v18 = (dword_100071968 + 1) & 0x7FFFFFFF;
      if (v16)
      {
        v18 = sequenceNumber2 & 0x7FFFFFFF;
      }

      dword_100071968 = v18;
      v19 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v24 = HIWORD(v17);
        v25 = 1024;
        v26 = v15;
        v27 = 2048;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "receive R_PKT_NUM: %04x_%04x T: %f", buf, 0x18u);
      }

      if (dword_100071968 != v17)
      {
        v20 = *(qword_100071D00 + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10003B83C(v20);
        }

        dword_100071968 = v17;
      }

      os_unfair_lock_unlock(&stru_100071CA4);
    }
  }

  return v5;
}

@end