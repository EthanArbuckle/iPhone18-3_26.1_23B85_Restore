@interface TITypologyRecordHitTest
- (TITypologyRecordHitTest)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordHitTest

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordHitTest *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  touchEvent = [(TITypologyRecordHitTest *)self touchEvent];
  shortDescription = [touchEvent shortDescription];
  v6 = [v3 stringWithFormat:@"HIT TEST at %@ keyCode=%ld", shortDescription, -[TITypologyRecordHitTest keyCode](self, "keyCode")];

  return v6;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordHitTest *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordHitTest *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordHitTest;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_touchEvent forKey:{@"touchEvent", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [coderCopy encodeObject:self->_keyLayout forKey:@"keyLayout"];
  [coderCopy encodeInteger:self->_keyCode forKey:@"keyCode"];
}

- (TITypologyRecordHitTest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TITypologyRecordHitTest;
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

    v5->_keyCode = [coderCopy decodeIntegerForKey:@"keyCode"];
  }

  return v5;
}

@end