@interface _UITextFieldEditingProcessor
- (_UITextFieldEditingProcessorDelegate)delegate;
- (id)beginEditingWithTextStorage:(id)storage;
- (id)overridingEditingAttributesForAttributes:(id)attributes withOverrides:(id)overrides;
@end

@implementation _UITextFieldEditingProcessor

- (id)beginEditingWithTextStorage:(id)storage
{
  storageCopy = storage;
  delegate = [(_UITextFieldEditingProcessor *)self delegate];
  v6 = [delegate editingProcessorOverridingEditingAttributes:self];

  allKeys = [v6 allKeys];
  if ([v6 count])
  {
    v8 = [[_UITextFieldEditingToken alloc] initWithTextStorage:storageCopy attributeNames:allKeys];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60___UITextFieldEditingProcessor_beginEditingWithTextStorage___block_invoke;
    v11[3] = &unk_1E7126240;
    v11[4] = self;
    v11[5] = v6;
    v11[6] = v8;
    [storageCopy coordinateAccess:v11];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)overridingEditingAttributesForAttributes:(id)attributes withOverrides:(id)overrides
{
  v31 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  overridesCopy = overrides;
  v7 = *off_1E70EC920;
  v8 = [overridesCopy objectForKeyedSubscript:*off_1E70EC920];
  v9 = *off_1E70EC918;
  v10 = [overridesCopy objectForKeyedSubscript:*off_1E70EC918];
  if (v8 | v10)
  {
    v25 = attributesCopy;
    v11 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = overridesCopy;
    allKeys = [overridesCopy allKeys];
    v13 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(allKeys);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          if (!v8 || (v18 = [*(*(&v26 + 1) + 8 * i) isEqualToString:v7], v19 = v8, (v18 & 1) == 0))
          {
            if (!v10)
            {
              continue;
            }

            v20 = [v17 isEqualToString:v9];
            v19 = v10;
            if (!v20)
            {
              continue;
            }
          }

          [v11 setObject:v19 forKeyedSubscript:v17];
        }

        v14 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    attributesCopy = v25;
    if (v25)
    {
      v21 = [v25 objectForKeyedSubscript:@"_UILastStoredDefaultTextAttributesName"];

      if (!v21)
      {
        [v11 setObject:v25 forKeyedSubscript:@"_UILastStoredDefaultTextAttributesName"];
      }
    }

    v22 = [v11 copy];

    overridesCopy = v24;
  }

  else
  {
    v22 = MEMORY[0x1E695E0F8];
  }

  return v22;
}

- (_UITextFieldEditingProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end