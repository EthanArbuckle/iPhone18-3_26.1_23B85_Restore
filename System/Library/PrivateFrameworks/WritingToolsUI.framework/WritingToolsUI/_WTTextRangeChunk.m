@interface _WTTextRangeChunk
- (_NSRange)range;
- (_WTTextRangeChunk)initWithRange:(_NSRange)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _WTTextRangeChunk

- (_WTTextRangeChunk)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v9.receiver = self;
  v9.super_class = _WTTextRangeChunk;
  v5 = [(_WTTextChunk *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_WTTextRangeChunk *)v5 setRange:location, length];
    v7 = v6;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(_WTTextRangeChunk *)self range];
  [v4 setRange:{v5, v6}];
  return v4;
}

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end