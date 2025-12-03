@interface _UIKBRTMutableOrderIndexSet
- (_UIKBRTMutableOrderIndexSet)init;
- (_UIKBRTMutableOrderIndexSet)initWithIndexesInRange:(_NSRange)range;
- (id)description;
- (unint64_t)beginningIndex;
- (unint64_t)endingIndex;
@end

@implementation _UIKBRTMutableOrderIndexSet

- (_UIKBRTMutableOrderIndexSet)init
{
  v6.receiver = self;
  v6.super_class = _UIKBRTMutableOrderIndexSet;
  v2 = [(_UIKBRTMutableOrderIndexSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
    indexSet = v2->_indexSet;
    v2->_indexSet = v3;

    v2->_reversed = 0;
  }

  return v2;
}

- (_UIKBRTMutableOrderIndexSet)initWithIndexesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = _UIKBRTMutableOrderIndexSet;
  v5 = [(_UIKBRTMutableOrderIndexSet *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{location, length}];
    indexSet = v5->_indexSet;
    v5->_indexSet = v6;

    v5->_reversed = 0;
  }

  return v5;
}

- (unint64_t)beginningIndex
{
  reversed = self->_reversed;
  indexSet = self->_indexSet;
  if (reversed)
  {
    return [(NSMutableIndexSet *)indexSet lastIndex];
  }

  else
  {
    return [(NSMutableIndexSet *)indexSet firstIndex];
  }
}

- (unint64_t)endingIndex
{
  reversed = self->_reversed;
  indexSet = self->_indexSet;
  if (reversed)
  {
    return [(NSMutableIndexSet *)indexSet firstIndex];
  }

  else
  {
    return [(NSMutableIndexSet *)indexSet lastIndex];
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UIKBRTMutableOrderIndexSet;
  v3 = [(_UIKBRTMutableOrderIndexSet *)&v8 description];
  v4 = v3;
  v5 = "NO";
  if (self->_reversed)
  {
    v5 = "YES";
  }

  v6 = [v3 stringByAppendingFormat:@", reversed=%s, %@", v5, self->_indexSet];

  return v6;
}

@end