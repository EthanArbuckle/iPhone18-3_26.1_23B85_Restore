@interface _PointQueue
- (_PointQueue)init;
- (unint64_t)effectiveStartIndexBasedOnLength;
@end

@implementation _PointQueue

- (_PointQueue)init
{
  v6.receiver = self;
  v6.super_class = _PointQueue;
  v2 = [(_PointQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
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
  nonSentinelPoints = [(_PointQueue *)self nonSentinelPoints];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47___PointQueue_effectiveStartIndexBasedOnLength__block_invoke;
  v8[3] = &unk_1E7119670;
  v5 = lastObject;
  v9 = v5;
  v10 = &v11;
  [nonSentinelPoints enumerateObjectsWithOptions:2 usingBlock:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

@end