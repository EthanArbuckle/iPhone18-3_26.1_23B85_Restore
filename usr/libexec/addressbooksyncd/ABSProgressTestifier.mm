@interface ABSProgressTestifier
- (void)bearWitness:(double)a3;
@end

@implementation ABSProgressTestifier

- (void)bearWitness:(double)a3
{
  v5 = [(ABSProgressReporter *)self session];
  [v5 reportProgress:a3];

  lastProgress = self->_lastProgress;
  if (lastProgress <= a3)
  {
    if (a3 - lastProgress >= 0.02)
    {
      v9 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Progress: %.4f", &v10, 0xCu);
      }

      self->_lastProgress = a3;
    }
  }

  else
  {
    v7 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_lastProgress;
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Progress went backwards (%.4f => %.4f). It's no big deal but I thought you might want to know.", &v10, 0x16u);
    }
  }
}

@end