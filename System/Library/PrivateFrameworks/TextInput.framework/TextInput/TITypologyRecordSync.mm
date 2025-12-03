@interface TITypologyRecordSync
- (TITypologyRecordSync)initWithCoder:(id)coder;
- (id)shortDescription;
- (id)textSummary;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordSync

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordSync *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  keyboardState = [(TITypologyRecordSync *)self keyboardState];
  documentState = [keyboardState documentState];
  v5 = [v2 stringWithFormat:@"SYNC TO %@", documentState];

  return v5;
}

- (id)textSummary
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n<context"];
  keyboardState = [(TITypologyRecordSync *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  if (contextBeforeInput)
  {
    keyboardState2 = [(TITypologyRecordSync *)self keyboardState];
    documentState2 = [keyboardState2 documentState];
    contextBeforeInput2 = [documentState2 contextBeforeInput];
    v10 = __35__TITypologyRecordSync_textSummary__block_invoke(contextBeforeInput2);
    [v3 appendFormat:@" before=%@", v10];
  }

  keyboardState3 = [(TITypologyRecordSync *)self keyboardState];
  documentState3 = [keyboardState3 documentState];
  selectedText = [documentState3 selectedText];

  if (selectedText)
  {
    keyboardState4 = [(TITypologyRecordSync *)self keyboardState];
    documentState4 = [keyboardState4 documentState];
    selectedText2 = [documentState4 selectedText];
    v17 = __35__TITypologyRecordSync_textSummary__block_invoke(selectedText2);
    [v3 appendFormat:@" selected=%@", v17];
  }

  keyboardState5 = [(TITypologyRecordSync *)self keyboardState];
  documentState5 = [keyboardState5 documentState];
  contextAfterInput = [documentState5 contextAfterInput];

  if (contextAfterInput)
  {
    keyboardState6 = [(TITypologyRecordSync *)self keyboardState];
    documentState6 = [keyboardState6 documentState];
    contextAfterInput2 = [documentState6 contextAfterInput];
    v24 = __35__TITypologyRecordSync_textSummary__block_invoke(contextAfterInput2);
    [v3 appendFormat:@" after=%@", v24];
  }

  [v3 appendString:@"> "];

  return v3;
}

id __35__TITypologyRecordSync_textSummary__block_invoke(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"\ withString:@"\\\];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@" withString:@"\];

  return v3;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordSync *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordSync *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordSync;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_keyboardState forKey:{@"keyboardState", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_keyboardConfig forKey:@"keyboardConfig"];
}

- (TITypologyRecordSync)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TITypologyRecordSync;
  v5 = [(TITypologyRecord *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardConfig"];
    keyboardConfig = v5->_keyboardConfig;
    v5->_keyboardConfig = v8;
  }

  return v5;
}

@end