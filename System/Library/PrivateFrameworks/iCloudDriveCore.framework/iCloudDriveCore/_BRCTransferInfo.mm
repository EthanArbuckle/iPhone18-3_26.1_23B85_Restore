@interface _BRCTransferInfo
- (_BRCTransferInfo)initWithVersionSize:(id)size;
@end

@implementation _BRCTransferInfo

- (_BRCTransferInfo)initWithVersionSize:(id)size
{
  sizeCopy = size;
  v9.receiver = self;
  v9.super_class = _BRCTransferInfo;
  v6 = [(_BRCTransferInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_versionSize, size);
    v7->_accumulatedCUCDelta = 0;
  }

  return v7;
}

@end