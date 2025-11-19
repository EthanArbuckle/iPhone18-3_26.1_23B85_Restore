@interface SRWritingStats
- (SRAbsoluteTime)initWithSensor:(void *)a1;
- (double)updateSegmentCreationTime:(double)result rateAdjustedSize:;
- (id)description;
- (void)dealloc;
@end

@implementation SRWritingStats

- (SRAbsoluteTime)initWithSensor:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = SRWritingStats;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[7] = NAN;
    v3[1] = 0.0;
    v3[2] = NAN;
    *(v3 + 4) = [a2 copy];
    v5 = mach_continuous_time();
    v4[3] = SRAbsoluteTimeFromContinuousTime(v5);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRWritingStats;
  [(SRWritingStats *)&v3 dealloc];
}

- (double)updateSegmentCreationTime:(double)result rateAdjustedSize:
{
  if (a1)
  {
    v4 = result;
    v6 = *(a1 + 16);
    v7 = mach_continuous_time();
    v8 = SRAbsoluteTimeFromContinuousTime(v7);
    *(a1 + 56) = v4;
    *(a1 + 64) = a2;
    ++*(a1 + 8);
    result = v8 - v4 + *(a1 + 16);
    *(a1 + 16) = result;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    sensor = self->_sensor;
    sessionStart = self->_sessionStart;
    v8 = SRAbsoluteTimeToCFAbsoluteTime(sessionStart);
    totalBytesWritten = self->_totalBytesWritten;
    totalSamplesWritten = self->_totalSamplesWritten;
    segmentCreationTime = self->_segmentCreationTime;
    rateAdjustedSegmentSize = self->_rateAdjustedSegmentSize;
    totalSegmentsCreated = self->_totalSegmentsCreated;
    if (totalSegmentsCreated)
    {
      v14 = self->_totalFillDuration / totalSegmentsCreated;
    }

    else
    {
      v14 = NAN;
    }
  }

  else
  {
    sessionStart = 0.0;
    v8 = SRAbsoluteTimeToCFAbsoluteTime(0.0);
    rateAdjustedSegmentSize = 0;
    totalSamplesWritten = 0;
    sensor = 0;
    totalBytesWritten = 0;
    segmentCreationTime = 0.0;
    v14 = 0.0;
  }

  return [v3 stringWithFormat:@"<%@ (%p)> [%@]:\n{\n  sessionStart: %f (CF: %f), \n  bytesWritten: %llu, \n  samplesWritten: %lu, \n  segmentCreationTime: %f, \n  rateAdjustedSegmentSize: %lu, \n  averageFillDuration: %f\n}", v5, self, sensor, *&sessionStart, *&v8, totalBytesWritten, totalSamplesWritten, *&segmentCreationTime, rateAdjustedSegmentSize, *&v14];
}

@end