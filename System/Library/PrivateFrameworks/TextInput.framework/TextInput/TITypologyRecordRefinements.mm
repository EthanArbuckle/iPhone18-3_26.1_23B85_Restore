@interface TITypologyRecordRefinements
- (TITypologyRecordRefinements)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)a3;
@end

@implementation TITypologyRecordRefinements

- (void)replaceDocumentState:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyRecordRefinements *)self keyboardState];
  [v5 setDocumentState:v4];
}

- (id)shortDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(TITypologyRecordRefinements *)self refinements];
  v5 = [v4 candidates];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) candidate];
        [v3 appendFormat:@" %@", v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(TITypologyRecordRefinements *)self candidate];
  v13 = [v12 candidate];
  v14 = [v11 stringWithFormat:@"REFINEMENTS for %@: %@", v13, v3];

  return v14;
}

- (void)removeContextFromKeyboardState
{
  v3 = [(TITypologyRecordRefinements *)self keyboardState];
  v4 = [v3 copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordRefinements *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordRefinements;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_candidate forKey:{@"candidate", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [v4 encodeObject:self->_refinements forKey:@"refinements"];
}

- (TITypologyRecordRefinements)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TITypologyRecordRefinements;
  v5 = [(TITypologyRecord *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    candidate = v5->_candidate;
    v5->_candidate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"refinements"];
    refinements = v5->_refinements;
    v5->_refinements = v10;
  }

  return v5;
}

@end