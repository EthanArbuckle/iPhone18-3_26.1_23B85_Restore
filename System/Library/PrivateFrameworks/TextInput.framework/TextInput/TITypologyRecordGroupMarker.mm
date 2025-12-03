@interface TITypologyRecordGroupMarker
- (TITypologyRecordGroupMarker)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordGroupMarker

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordGroupMarker *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  textChange = [(TITypologyRecordGroupMarker *)self textChange];
  v5 = textChange;
  if (textChange)
  {
    v6 = textChange;
  }

  else
  {
    v6 = &stru_1EF56D550;
  }

  keyboardState = [(TITypologyRecordGroupMarker *)self keyboardState];
  documentState = [keyboardState documentState];
  v9 = [documentState description];
  v10 = [v3 stringWithFormat:@"RECORD GROUP (%@): %@", v6, v9];

  return v10;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordGroupMarker *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordGroupMarker *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordGroupMarker;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_keyboardState forKey:{@"keyboardState", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_textChange forKey:@"textChange"];
}

- (TITypologyRecordGroupMarker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TITypologyRecordGroupMarker;
  v5 = [(TITypologyRecord *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textChange"];
    textChange = v5->_textChange;
    v5->_textChange = v8;
  }

  return v5;
}

@end