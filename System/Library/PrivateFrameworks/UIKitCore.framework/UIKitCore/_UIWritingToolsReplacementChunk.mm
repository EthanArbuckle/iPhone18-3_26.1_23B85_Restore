@interface _UIWritingToolsReplacementChunk
- (_NSRange)originalRange;
- (_UIWritingToolsReplacementChunk)initWithReplacementChunk:(id)chunk originalRange:(_NSRange)range uuid:(id)uuid;
- (id)description;
@end

@implementation _UIWritingToolsReplacementChunk

- (_UIWritingToolsReplacementChunk)initWithReplacementChunk:(id)chunk originalRange:(_NSRange)range uuid:(id)uuid
{
  length = range.length;
  location = range.location;
  chunkCopy = chunk;
  uuidCopy = uuid;
  v17.receiver = self;
  v17.super_class = _UIWritingToolsReplacementChunk;
  v12 = [(_UIWritingToolsReplacementChunk *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replacement, chunk);
    v13->_originalRange.location = location;
    v13->_originalRange.length = length;
    objc_storeStrong(&v13->_uuid, uuid);
    v14 = [chunkCopy length];
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