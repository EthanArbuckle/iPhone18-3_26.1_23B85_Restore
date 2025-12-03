@interface NSWritingToolsProofreadingSuggestion
- (NSWritingToolsProofreadingSuggestion)initWithUUID:(id)d originalRange:(_NSRange)range replacementString:(id)string state:(int64_t)state;
- (_NSRange)originalRange;
@end

@implementation NSWritingToolsProofreadingSuggestion

- (NSWritingToolsProofreadingSuggestion)initWithUUID:(id)d originalRange:(_NSRange)range replacementString:(id)string state:(int64_t)state
{
  length = range.length;
  location = range.location;
  dCopy = d;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = NSWritingToolsProofreadingSuggestion;
  v14 = [(NSWritingToolsProofreadingSuggestion *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, d);
    v15->_originalRange.location = location;
    v15->_originalRange.length = length;
    objc_storeStrong(&v15->_replacementString, string);
    v15->_lengthDelta = [stringCopy length] - length;
    v15->_state = state;
  }

  return v15;
}

- (_NSRange)originalRange
{
  objc_copyStruct(v4, &self->_originalRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end