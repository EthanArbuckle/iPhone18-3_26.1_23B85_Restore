@interface TITypologyRecordHitTest
- (TITypologyRecordHitTest)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)a3;
@end

@implementation TITypologyRecordHitTest

- (void)replaceDocumentState:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyRecordHitTest *)self keyboardState];
  [v5 setDocumentState:v4];
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(TITypologyRecordHitTest *)self touchEvent];
  v5 = [v4 shortDescription];
  v6 = [v3 stringWithFormat:@"HIT TEST at %@ keyCode=%ld", v5, -[TITypologyRecordHitTest keyCode](self, "keyCode")];

  return v6;
}

- (void)removeContextFromKeyboardState
{
  v3 = [(TITypologyRecordHitTest *)self keyboardState];
  v4 = [v3 copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordHitTest *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordHitTest;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_touchEvent forKey:{@"touchEvent", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [v4 encodeObject:self->_keyLayout forKey:@"keyLayout"];
  [v4 encodeInteger:self->_keyCode forKey:@"keyCode"];
}

- (TITypologyRecordHitTest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TITypologyRecordHitTest;
  v5 = [(TITypologyRecord *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"touchEvent"];
    touchEvent = v5->_touchEvent;
    v5->_touchEvent = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyLayout"];
    keyLayout = v5->_keyLayout;
    v5->_keyLayout = v10;

    v5->_keyCode = [v4 decodeIntegerForKey:@"keyCode"];
  }

  return v5;
}

@end