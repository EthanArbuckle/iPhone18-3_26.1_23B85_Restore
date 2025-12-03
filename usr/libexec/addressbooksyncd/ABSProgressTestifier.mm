@interface ABSProgressTestifier
- (void)bearWitness:(double)witness;
@end

@implementation ABSProgressTestifier

- (void)bearWitness:(double)witness
{
  session = [(ABSProgressReporter *)self session];
  [session reportProgress:witness];

  lastProgress = self->_lastProgress;
  if (lastProgress <= witness)
  {
    if (witness - lastProgress >= 0.02)
    {
      v9 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        witnessCopy = witness;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Progress: %.4f", &v10, 0xCu);
      }

      self->_lastProgress = witness;
    }
  }

  else
  {
    v7 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_lastProgress;
      v10 = 134218240;
      witnessCopy = v8;
      v12 = 2048;
      witnessCopy2 = witness;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Progress went backwards (%.4f => %.4f). It's no big deal but I thought you might want to know.", &v10, 0x16u);
    }
  }
}

@end