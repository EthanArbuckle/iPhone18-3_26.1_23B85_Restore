@interface _WBSJSONEntryState
- (_WBSJSONEntryState)initWithKind:(int64_t)kind;
@end

@implementation _WBSJSONEntryState

- (_WBSJSONEntryState)initWithKind:(int64_t)kind
{
  v10.receiver = self;
  v10.super_class = _WBSJSONEntryState;
  v4 = [(_WBSJSONEntryState *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = kind;
    if (!kind)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      encodedKeys = v5->_encodedKeys;
      v5->_encodedKeys = v6;
    }

    v8 = v5;
  }

  return v5;
}

@end