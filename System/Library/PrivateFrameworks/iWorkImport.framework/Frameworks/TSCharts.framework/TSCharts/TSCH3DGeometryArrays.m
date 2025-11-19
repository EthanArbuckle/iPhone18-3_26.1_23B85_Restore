@interface TSCH3DGeometryArrays
+ (TSCH3DGeometryArrays)arraysWithOffset:(unsigned int)a3 count:(unsigned int)a4 capoffset:(unsigned int)a5 capcount:(unsigned int)a6;
- (TSCH3DGeometryArrays)initWithOffset:(unsigned int)a3 count:(unsigned int)a4 capoffset:(unsigned int)a5 capcount:(unsigned int)a6;
- (range<unsigned)wholeRange;
@end

@implementation TSCH3DGeometryArrays

+ (TSCH3DGeometryArrays)arraysWithOffset:(unsigned int)a3 count:(unsigned int)a4 capoffset:(unsigned int)a5 capcount:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v9 = *&a3;
  v10 = [a1 alloc];
  v15 = objc_msgSend_initWithOffset_count_capoffset_capcount_(v10, v11, v12, v13, v14, v9, v8, v7, v6);

  return v15;
}

- (TSCH3DGeometryArrays)initWithOffset:(unsigned int)a3 count:(unsigned int)a4 capoffset:(unsigned int)a5 capcount:(unsigned int)a6
{
  v11.receiver = self;
  v11.super_class = TSCH3DGeometryArrays;
  result = [(TSCH3DGeometryArrays *)&v11 init];
  if (result)
  {
    result->_offset = a3;
    result->_count = a4;
    result->_capoffset = a5;
    result->_capcount = a6;
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