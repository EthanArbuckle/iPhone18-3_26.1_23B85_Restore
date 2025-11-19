@interface PXCurrentTimeRecord
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (PXCurrentTimeRecord)initWithSampleTime:(id *)a3 rate:(float)a4;
- (id)description;
@end

@implementation PXCurrentTimeRecord

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(PXCurrentTimeRecord *)self sampleTime];
  v4 = CMTimeCopyDescription(0, &time);
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sampleTimestamp];
  [(PXCurrentTimeRecord *)self rate];
  v7 = v6;
  [(PXCurrentTimeRecord *)self currentTime];
  v8 = CMTimeCopyDescription(0, &time);
  v9 = [v3 initWithFormat:@"<%@ %p; Sample Time: %@, Sample Timestamp: %@; Rate: %.2f; Current Time: %@>", self, self, v4, v5, *&v7, v8];

  return v9;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  result = [(PXCurrentTimeRecord *)self isValid];
  if (result)
  {
    v6 = CFAbsoluteTimeGetCurrent() - self->_sampleTimestamp;
    [(PXCurrentTimeRecord *)self rate];
    v8 = v6 * v7;
    [(PXCurrentTimeRecord *)self sampleTime];
    CMTimeMakeWithSeconds(&v10, v8, PXAudioDefaultCMTimeScale);
    return CMTimeAdd(retstr, &lhs, &v10);
  }

  else
  {
    v9 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v9 + 16);
  }

  return result;
}

- (PXCurrentTimeRecord)initWithSampleTime:(id *)a3 rate:(float)a4
{
  v9.receiver = self;
  v9.super_class = PXCurrentTimeRecord;
  v6 = [(PXCurrentTimeRecord *)&v9 init];
  if (v6)
  {
    *(v6 + 1) = CFAbsoluteTimeGetCurrent();
    var3 = a3->var3;
    *(v6 + 24) = *&a3->var0;
    *(v6 + 5) = var3;
    *(v6 + 5) = a4;
    v6[16] = a3->var2 & 1;
  }

  return v6;
}

@end