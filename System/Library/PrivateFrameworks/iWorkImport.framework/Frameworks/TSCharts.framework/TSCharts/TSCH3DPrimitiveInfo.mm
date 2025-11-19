@interface TSCH3DPrimitiveInfo
+ (id)infoWithType:(int)a3;
+ (id)infoWithType:(int)a3 offset:(int)a4 count:(unsigned int)a5 indices:(id)a6;
- (BOOL)hasEmptyCount;
- (TSCH3DPrimitiveInfo)initWithType:(int)a3 offset:(int)a4 count:(unsigned int)a5 indices:(id)a6;
@end

@implementation TSCH3DPrimitiveInfo

+ (id)infoWithType:(int)a3 offset:(int)a4 count:(unsigned int)a5 indices:(id)a6
{
  v6 = *&a5;
  v7 = *&a4;
  v8 = *&a3;
  v10 = a6;
  v11 = [a1 alloc];
  v16 = objc_msgSend_initWithType_offset_count_indices_(v11, v12, v13, v14, v15, v8, v7, v6, v10);

  return v16;
}

+ (id)infoWithType:(int)a3
{
  v3 = *&a3;
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithType_(v4, v5, v6, v7, v8, v3);

  return v9;
}

- (TSCH3DPrimitiveInfo)initWithType:(int)a3 offset:(int)a4 count:(unsigned int)a5 indices:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = TSCH3DPrimitiveInfo;
  v12 = [(TSCH3DPrimitiveInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = a3;
    v12->_offset = a4;
    v12->_count = a5;
    objc_storeStrong(&v12->_indices, a6);
  }

  return v13;
}

- (BOOL)hasEmptyCount
{
  hasCount = objc_msgSend_hasCount(self, a2, v2, v3, v4);
  if (hasCount)
  {
    LOBYTE(hasCount) = self->_count == 0;
  }

  return hasCount;
}

@end