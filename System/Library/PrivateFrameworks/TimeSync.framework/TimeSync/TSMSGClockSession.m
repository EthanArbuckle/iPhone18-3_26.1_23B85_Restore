@interface TSMSGClockSession
+ (id)withSyncId:(unsigned int)a3 nominalSyncDuration:(id)a4;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)nominalSyncDuration;
@end

@implementation TSMSGClockSession

+ (id)withSyncId:(unsigned int)a3 nominalSyncDuration:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = objc_alloc_init(TSMSGClockSession);
  if (v7)
  {
    v7->_syncId = a3;
    v7->_nominalSyncDuration.numerator = var0;
    v7->_nominalSyncDuration.denominator = var1;
    v7->_refCnt = 1;
  }

  return v7;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)nominalSyncDuration
{
  denominator = self->_nominalSyncDuration.denominator;
  numerator = self->_nominalSyncDuration.numerator;
  result.var1 = denominator;
  result.var0 = numerator;
  return result;
}

@end