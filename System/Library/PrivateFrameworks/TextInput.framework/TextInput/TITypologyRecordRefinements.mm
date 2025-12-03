@interface TITypologyRecordRefinements
- (TITypologyRecordRefinements)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordRefinements

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordRefinements *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)shortDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  refinements = [(TITypologyRecordRefinements *)self refinements];
  candidates = [refinements candidates];

  v6 = [candidates countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(candidates);
        }

        candidate = [*(*(&v16 + 1) + 8 * i) candidate];
        [v3 appendFormat:@" %@", candidate];
      }

      v7 = [candidates countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x1E696AEC0];
  candidate2 = [(TITypologyRecordRefinements *)self candidate];
  v12Candidate = [candidate2 candidate];
  v14 = [v11 stringWithFormat:@"REFINEMENTS for %@: %@", v12Candidate, v3];

  return v14;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordRefinements *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordRefinements *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordRefinements;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_candidate forKey:{@"candidate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [coderCopy encodeObject:self->_refinements forKey:@"refinements"];
}

- (TITypologyRecordRefinements)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TITypologyRecordRefinements;
  v5 = [(TITypologyRecord *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    candidate = v5->_candidate;
    v5->_candidate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refinements"];
    refinements = v5->_refinements;
    v5->_refinements = v10;
  }

  return v5;
}

@end