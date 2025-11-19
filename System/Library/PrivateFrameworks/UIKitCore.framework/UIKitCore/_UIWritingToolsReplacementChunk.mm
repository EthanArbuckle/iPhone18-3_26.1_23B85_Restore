@interface _UIWritingToolsReplacementChunk
- (_NSRange)originalRange;
- (_UIWritingToolsReplacementChunk)initWithReplacementChunk:(id)a3 originalRange:(_NSRange)a4 uuid:(id)a5;
- (id)description;
@end

@implementation _UIWritingToolsReplacementChunk

- (_UIWritingToolsReplacementChunk)initWithReplacementChunk:(id)a3 originalRange:(_NSRange)a4 uuid:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _UIWritingToolsReplacementChunk;
  v12 = [(_UIWritingToolsReplacementChunk *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replacement, a3);
    v13->_originalRange.location = location;
    v13->_originalRange.length = length;
    objc_storeStrong(&v13->_uuid, a5);
    v14 = [v10 length];
    v15 = v13->_originalRange.length + v13->_originalRange.location;
    v13->_lengthDelta = v14 - length;
    v13->_originalEndIndex = v15;
  }

  return v13;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIWritingToolsReplacementChunk;
  v3 = [(_UIWritingToolsReplacementChunk *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" range={%lu, %lu} delta=%ld end=%lu uuid=%p replacement=%@", self->_originalRange.location, self->_originalRange.length, self->_lengthDelta, self->_originalEndIndex, self->_uuid, self->_replacement];

  return v4;
}

- (_NSRange)originalRange
{
  length = self->_originalRange.length;
  location = self->_originalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end