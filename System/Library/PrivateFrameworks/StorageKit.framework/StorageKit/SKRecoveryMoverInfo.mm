@interface SKRecoveryMoverInfo
- (SKRecoveryMoverInfo)initWithSrcOffset:(unint64_t)offset dstOffset:(unint64_t)dstOffset length:(unint64_t)length partitionID:(id)d;
@end

@implementation SKRecoveryMoverInfo

- (SKRecoveryMoverInfo)initWithSrcOffset:(unint64_t)offset dstOffset:(unint64_t)dstOffset length:(unint64_t)length partitionID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = SKRecoveryMoverInfo;
  v12 = [(SKRecoveryMoverInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_srcOffset = offset;
    v12->_dstOffset = dstOffset;
    v12->_length = length;
    objc_storeStrong(&v12->_partitionID, d);
  }

  return v13;
}

@end