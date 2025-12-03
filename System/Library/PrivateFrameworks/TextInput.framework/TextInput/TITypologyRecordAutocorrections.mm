@interface TITypologyRecordAutocorrections
- (TITypologyRecordAutocorrections)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordAutocorrections

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordAutocorrections *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)shortDescription
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  autocorrections = [(TITypologyRecordAutocorrections *)self autocorrections];
  inlineCompletions = [autocorrections inlineCompletions];
  v6 = [inlineCompletions count];

  selfCopy = self;
  if (v6)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    autocorrections2 = [(TITypologyRecordAutocorrections *)self autocorrections];
    inlineCompletions2 = [autocorrections2 inlineCompletions];

    v9 = [inlineCompletions2 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v53;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v53 != v11)
          {
            objc_enumerationMutation(inlineCompletions2);
          }

          v13 = *(*(&v52 + 1) + 8 * i);
          input = [v13 input];
          candidate = [v13 candidate];
          -[__CFString appendFormat:](v3, "appendFormat:", @"-[%@->%@]- ", input, candidate);
        }

        v10 = [inlineCompletions2 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v10);
    }

    self = selfCopy;
  }

  autocorrections3 = [(TITypologyRecordAutocorrections *)self autocorrections];
  corrections = [autocorrections3 corrections];
  autocorrection = [corrections autocorrection];

  if (autocorrection)
  {
    autocorrections4 = [(TITypologyRecordAutocorrections *)self autocorrections];
    corrections2 = [autocorrections4 corrections];
    autocorrection2 = [corrections2 autocorrection];
    input2 = [autocorrection2 input];
    autocorrections5 = [(TITypologyRecordAutocorrections *)self autocorrections];
    corrections3 = [autocorrections5 corrections];
    autocorrection3 = [corrections3 autocorrection];
    candidate2 = [autocorrection3 candidate];
    [(__CFString *)v3 appendFormat:@"[%@->%@]", input2, candidate2];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  autocorrections6 = [(TITypologyRecordAutocorrections *)self autocorrections];
  predictions = [autocorrections6 predictions];

  obj = predictions;
  v29 = [predictions countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v49;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v48 + 1) + 8 * j);
        if ([(__CFString *)v3 length])
        {
          v34 = @", ";
        }

        else
        {
          v34 = &stru_1EF56D550;
        }

        input3 = [v33 input];
        candidate3 = [v33 candidate];
        [(__CFString *)v3 appendFormat:@"%@%@->%@", v34, input3, candidate3];
      }

      v30 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v30);
  }

  v37 = MEMORY[0x1E696AEC0];
  requestToken = [(TITypologyRecordAutocorrections *)selfCopy requestToken];
  shortIdentifier = [requestToken shortIdentifier];
  keyboardState = [(TITypologyRecordAutocorrections *)selfCopy keyboardState];
  documentState = [keyboardState documentState];
  v42 = [(__CFString *)v3 length];
  v43 = @"(none)";
  if (v42)
  {
    v43 = v3;
  }

  v44 = [v37 stringWithFormat:@"AUTOCORRECTIONS (req=%@ doc=%@) %@", shortIdentifier, documentState, v43];;

  return v44;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordAutocorrections *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordAutocorrections *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordAutocorrections;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_keyboardState forKey:{@"keyboardState", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_requestToken forKey:@"requestToken"];
  [coderCopy encodeObject:self->_autocorrections forKey:@"autocorrections"];
}

- (TITypologyRecordAutocorrections)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TITypologyRecordAutocorrections;
  v5 = [(TITypologyRecord *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autocorrections"];
    autocorrections = v5->_autocorrections;
    v5->_autocorrections = v10;
  }

  return v5;
}

@end