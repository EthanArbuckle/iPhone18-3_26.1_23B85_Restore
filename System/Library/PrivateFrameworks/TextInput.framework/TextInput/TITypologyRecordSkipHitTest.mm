@interface TITypologyRecordSkipHitTest
- (TITypologyRecordSkipHitTest)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordSkipHitTest

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordSkipHitTest *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  touchEvent = [(TITypologyRecordSkipHitTest *)self touchEvent];
  shortDescription = [touchEvent shortDescription];
  v5 = [v2 stringWithFormat:@"SKIP HIT TEST at %@", shortDescription];

  return v5;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordSkipHitTest *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordSkipHitTest *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordSkipHitTest;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_touchEvent forKey:{@"touchEvent", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [coderCopy encodeObject:self->_keyLayout forKey:@"keyLayout"];
}

- (TITypologyRecordSkipHitTest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TITypologyRecordSkipHitTest;
  v5 = [(TITypologyRecord *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"touchEvent"];
    touchEvent = v5->_touchEvent;
    v5->_touchEvent = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyLayout"];
    keyLayout = v5->_keyLayout;
    v5->_keyLayout = v10;
  }

  return v5;
}

@end