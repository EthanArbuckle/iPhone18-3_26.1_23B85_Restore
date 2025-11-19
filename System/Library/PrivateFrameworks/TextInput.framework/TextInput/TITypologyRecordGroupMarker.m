@interface TITypologyRecordGroupMarker
- (TITypologyRecordGroupMarker)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)a3;
@end

@implementation TITypologyRecordGroupMarker

- (void)replaceDocumentState:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyRecordGroupMarker *)self keyboardState];
  [v5 setDocumentState:v4];
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(TITypologyRecordGroupMarker *)self textChange];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1EF56D550;
  }

  v7 = [(TITypologyRecordGroupMarker *)self keyboardState];
  v8 = [v7 documentState];
  v9 = [v8 description];
  v10 = [v3 stringWithFormat:@"RECORD GROUP (%@): %@", v6, v9];

  return v10;
}

- (void)removeContextFromKeyboardState
{
  v3 = [(TITypologyRecordGroupMarker *)self keyboardState];
  v4 = [v3 copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordGroupMarker *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordGroupMarker;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_keyboardState forKey:{@"keyboardState", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_textChange forKey:@"textChange"];
}

- (TITypologyRecordGroupMarker)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TITypologyRecordGroupMarker;
  v5 = [(TITypologyRecord *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textChange"];
    textChange = v5->_textChange;
    v5->_textChange = v8;
  }

  return v5;
}

@end