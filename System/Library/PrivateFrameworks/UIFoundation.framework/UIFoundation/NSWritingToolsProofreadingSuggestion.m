@interface NSWritingToolsProofreadingSuggestion
- (NSWritingToolsProofreadingSuggestion)initWithUUID:(id)a3 originalRange:(_NSRange)a4 replacementString:(id)a5 state:(int64_t)a6;
- (_NSRange)originalRange;
@end

@implementation NSWritingToolsProofreadingSuggestion

- (NSWritingToolsProofreadingSuggestion)initWithUUID:(id)a3 originalRange:(_NSRange)a4 replacementString:(id)a5 state:(int64_t)a6
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = NSWritingToolsProofreadingSuggestion;
  v14 = [(NSWritingToolsProofreadingSuggestion *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, a3);
    v15->_originalRange.location = location;
    v15->_originalRange.length = length;
    objc_storeStrong(&v15->_replacementString, a5);
    v15->_lengthDelta = [v13 length] - length;
    v15->_state = a6;
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