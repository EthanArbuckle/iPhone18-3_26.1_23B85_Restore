@interface _UIDictationCursorAccessory
- (id)identifier;
@end

@implementation _UIDictationCursorAccessory

- (id)identifier
{
  v5.receiver = self;
  v5.super_class = _UIDictationCursorAccessory;
  identifier = [(_UICursorAccessory *)&v5 identifier];
  if (!identifier)
  {
    identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"dictation"];
    [(_UICursorAccessory *)self setIdentifier:identifier];
  }

  return identifier;
}

@end