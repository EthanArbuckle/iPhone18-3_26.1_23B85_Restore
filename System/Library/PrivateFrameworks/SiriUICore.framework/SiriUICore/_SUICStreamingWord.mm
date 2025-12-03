@interface _SUICStreamingWord
- (_NSRange)textRange;
- (_SUICStreamingWord)init;
@end

@implementation _SUICStreamingWord

- (_SUICStreamingWord)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _SUICStreamingWord;
  v2 = [(_SUICStreamingWord *)&v7 init];
  if (v2)
  {
    layer = [MEMORY[0x1E6979398] layer];
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v4 setName:@"blurFilter"];
    [v4 setValue:&unk_1F43C7428 forKeyPath:*MEMORY[0x1E6979BA8]];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [layer setFilters:v5];

    [(_SUICStreamingWord *)v2 setWordLayer:layer];
  }

  return v2;
}

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end