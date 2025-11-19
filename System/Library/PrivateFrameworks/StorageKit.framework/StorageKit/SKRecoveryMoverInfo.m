@interface SKRecoveryMoverInfo
- (SKRecoveryMoverInfo)initWithSrcOffset:(unint64_t)a3 dstOffset:(unint64_t)a4 length:(unint64_t)a5 partitionID:(id)a6;
@end

@implementation SKRecoveryMoverInfo

- (SKRecoveryMoverInfo)initWithSrcOffset:(unint64_t)a3 dstOffset:(unint64_t)a4 length:(unint64_t)a5 partitionID:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = SKRecoveryMoverInfo;
  v12 = [(SKRecoveryMoverInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_srcOffset = a3;
    v12->_dstOffset = a4;
    v12->_length = a5;
    objc_storeStrong(&v12->_partitionID, a6);
  }

  return v13;
}

@end