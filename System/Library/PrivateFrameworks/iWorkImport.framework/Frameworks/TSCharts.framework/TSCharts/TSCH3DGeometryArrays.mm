@interface TSCH3DGeometryArrays
+ (TSCH3DGeometryArrays)arraysWithOffset:(unsigned int)offset count:(unsigned int)count capoffset:(unsigned int)capoffset capcount:(unsigned int)capcount;
- (TSCH3DGeometryArrays)initWithOffset:(unsigned int)offset count:(unsigned int)count capoffset:(unsigned int)capoffset capcount:(unsigned int)capcount;
- (range<unsigned)wholeRange;
@end

@implementation TSCH3DGeometryArrays

+ (TSCH3DGeometryArrays)arraysWithOffset:(unsigned int)offset count:(unsigned int)count capoffset:(unsigned int)capoffset capcount:(unsigned int)capcount
{
  v6 = *&capcount;
  v7 = *&capoffset;
  v8 = *&count;
  v9 = *&offset;
  v10 = [self alloc];
  v15 = objc_msgSend_initWithOffset_count_capoffset_capcount_(v10, v11, v12, v13, v14, v9, v8, v7, v6);

  return v15;
}

- (TSCH3DGeometryArrays)initWithOffset:(unsigned int)offset count:(unsigned int)count capoffset:(unsigned int)capoffset capcount:(unsigned int)capcount
{
  v11.receiver = self;
  v11.super_class = TSCH3DGeometryArrays;
  result = [(TSCH3DGeometryArrays *)&v11 init];
  if (result)
  {
    result->_offset = offset;
    result->_count = count;
    result->_capoffset = capoffset;
    result->_capcount = capcount;
  }

  return result;
}

- (range<unsigned)wholeRange
{
  v6 = objc_msgSend_range(self, a2, v2, v3, v4);
  v7 = v6;
  v8 = HIDWORD(v6);
  v13 = objc_msgSend_capRange(self, v9, v10, v11, v12);
  if (v7 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  v15 = HIDWORD(v13) + v13;
  if (v8 + v7 > HIDWORD(v13) + v13)
  {
    v15 = v8 + v7;
  }

  return (v14 | ((v15 - v14) << 32));
}

@end