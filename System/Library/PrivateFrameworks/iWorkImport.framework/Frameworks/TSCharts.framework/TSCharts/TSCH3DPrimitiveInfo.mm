@interface TSCH3DPrimitiveInfo
+ (id)infoWithType:(int)type;
+ (id)infoWithType:(int)type offset:(int)offset count:(unsigned int)count indices:(id)indices;
- (BOOL)hasEmptyCount;
- (TSCH3DPrimitiveInfo)initWithType:(int)type offset:(int)offset count:(unsigned int)count indices:(id)indices;
@end

@implementation TSCH3DPrimitiveInfo

+ (id)infoWithType:(int)type offset:(int)offset count:(unsigned int)count indices:(id)indices
{
  v6 = *&count;
  v7 = *&offset;
  v8 = *&type;
  indicesCopy = indices;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithType_offset_count_indices_(v11, v12, v13, v14, v15, v8, v7, v6, indicesCopy);

  return v16;
}

+ (id)infoWithType:(int)type
{
  v3 = *&type;
  v4 = [self alloc];
  v9 = objc_msgSend_initWithType_(v4, v5, v6, v7, v8, v3);

  return v9;
}

- (TSCH3DPrimitiveInfo)initWithType:(int)type offset:(int)offset count:(unsigned int)count indices:(id)indices
{
  indicesCopy = indices;
  v15.receiver = self;
  v15.super_class = TSCH3DPrimitiveInfo;
  v12 = [(TSCH3DPrimitiveInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = type;
    v12->_offset = offset;
    v12->_count = count;
    objc_storeStrong(&v12->_indices, indices);
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