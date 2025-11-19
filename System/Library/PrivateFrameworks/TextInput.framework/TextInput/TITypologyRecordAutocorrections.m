@interface TITypologyRecordAutocorrections
- (TITypologyRecordAutocorrections)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)a3;
@end

@implementation TITypologyRecordAutocorrections

- (void)replaceDocumentState:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyRecordAutocorrections *)self keyboardState];
  [v5 setDocumentState:v4];
}

- (id)shortDescription
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(TITypologyRecordAutocorrections *)self autocorrections];
  v5 = [v4 inlineCompletions];
  v6 = [v5 count];

  v46 = self;
  if (v6)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = [(TITypologyRecordAutocorrections *)self autocorrections];
    v8 = [v7 inlineCompletions];

    v9 = [v8 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v52 + 1) + 8 * i);
          v14 = [v13 input];
          v15 = [v13 candidate];
          -[__CFString appendFormat:](v3, "appendFormat:", @"-[%@->%@]- ", v14, v15);
        }

        v10 = [v8 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v10);
    }

    self = v46;
  }

  v16 = [(TITypologyRecordAutocorrections *)self autocorrections];
  v17 = [v16 corrections];
  v18 = [v17 autocorrection];

  if (v18)
  {
    v19 = [(TITypologyRecordAutocorrections *)self autocorrections];
    v20 = [v19 corrections];
    v21 = [v20 autocorrection];
    v22 = [v21 input];
    v23 = [(TITypologyRecordAutocorrections *)self autocorrections];
    v24 = [v23 corrections];
    v25 = [v24 autocorrection];
    v26 = [v25 candidate];
    [(__CFString *)v3 appendFormat:@"[%@->%@]", v22, v26];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = [(TITypologyRecordAutocorrections *)self autocorrections];
  v28 = [v27 predictions];

  obj = v28;
  v29 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
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

        v35 = [v33 input];
        v36 = [v33 candidate];
        [(__CFString *)v3 appendFormat:@"%@%@->%@", v34, v35, v36];
      }

      v30 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v30);
  }

  v37 = MEMORY[0x1E696AEC0];
  v38 = [(TITypologyRecordAutocorrections *)v46 requestToken];
  v39 = [v38 shortIdentifier];
  v40 = [(TITypologyRecordAutocorrections *)v46 keyboardState];
  v41 = [v40 documentState];
  v42 = [(__CFString *)v3 length];
  v43 = @"(none)";
  if (v42)
  {
    v43 = v3;
  }

  v44 = [v37 stringWithFormat:@"AUTOCORRECTIONS (req=%@ doc=%@) %@", v39, v41, v43];;

  return v44;
}

- (void)removeContextFromKeyboardState
{
  v3 = [(TITypologyRecordAutocorrections *)self keyboardState];
  v4 = [v3 copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordAutocorrections *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordAutocorrections;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_keyboardState forKey:{@"keyboardState", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_requestToken forKey:@"requestToken"];
  [v4 encodeObject:self->_autocorrections forKey:@"autocorrections"];
}

- (TITypologyRecordAutocorrections)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TITypologyRecordAutocorrections;
  v5 = [(TITypologyRecord *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autocorrections"];
    autocorrections = v5->_autocorrections;
    v5->_autocorrections = v10;
  }

  return v5;
}

@end