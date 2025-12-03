@interface _CACGesturePointQueue
- (_CACGesturePointQueue)init;
- (unint64_t)effectiveStartIndexBasedOnLength;
@end

@implementation _CACGesturePointQueue

- (_CACGesturePointQueue)init
{
  v6.receiver = self;
  v6.super_class = _CACGesturePointQueue;
  v2 = [(_CACGesturePointQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nonSentinelPoints = v2->_nonSentinelPoints;
    v2->_nonSentinelPoints = v3;
  }

  return v2;
}

- (unint64_t)effectiveStartIndexBasedOnLength
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lastObject = [(NSMutableArray *)self->_nonSentinelPoints lastObject];
  nonSentinelPoints = [(_CACGesturePointQueue *)self nonSentinelPoints];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57___CACGesturePointQueue_effectiveStartIndexBasedOnLength__block_invoke;
  v8[3] = &unk_279CEB668;
  v5 = lastObject;
  v9 = v5;
  v10 = &v11;
  [nonSentinelPoints enumerateObjectsWithOptions:2 usingBlock:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

@end