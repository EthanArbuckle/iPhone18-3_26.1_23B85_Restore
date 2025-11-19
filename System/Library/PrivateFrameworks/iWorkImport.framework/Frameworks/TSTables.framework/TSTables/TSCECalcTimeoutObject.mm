@interface TSCECalcTimeoutObject
- (TSCECalcTimeoutObject)initWithTimeout:(double)a3;
@end

@implementation TSCECalcTimeoutObject

- (TSCECalcTimeoutObject)initWithTimeout:(double)a3
{
  v14.receiver = self;
  v14.super_class = TSCECalcTimeoutObject;
  v4 = [(TSCECalcTimeoutObject *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeoutInterval = a3;
    add = atomic_fetch_add(dword_27CFB5578, 1u);
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_initWithFormat_(v7, v8, @"kTSCERecalcLoopGroupEmpty%u", v9, v10, add + 1);
    blockingIdentifier = v5->_blockingIdentifier;
    v5->_blockingIdentifier = v11;
  }

  return v5;
}

@end