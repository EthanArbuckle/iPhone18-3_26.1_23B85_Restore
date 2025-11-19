@interface SBHCustomIconElement
+ (Class)elementClassWithIdentifier:(id)a3;
- (SBHCustomIconElement)init;
- (SBHCustomIconElement)initWithUniqueIdentifier:(id)a3;
- (id)copyWithSuggestionSource:(int64_t)a3;
- (id)copyWithUniqueIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBHCustomIconElement

+ (Class)elementClassWithIdentifier:(id)a3
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_self();
  v24[0] = v4;
  v5 = objc_opt_self();
  v24[1] = v5;
  v6 = objc_opt_self();
  v24[2] = v6;
  v7 = objc_opt_self();
  v24[3] = v7;
  v8 = objc_opt_self();
  v24[4] = v8;
  v9 = objc_opt_self();
  v24[5] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 elementIdentifier];
        v17 = [v3 isEqualToString:v16];

        if (v17)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (SBHCustomIconElement)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHCustomIconElement;
  v5 = [(SBHCustomIconElement *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v5->_suggestionSource = 0;
  }

  return v5;
}

- (SBHCustomIconElement)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(SBHCustomIconElement *)self initWithUniqueIdentifier:v4];

  return v5;
}

- (id)copyWithSuggestionSource:(int64_t)a3
{
  result = [objc_alloc(objc_opt_class()) initWithUniqueIdentifier:self->_uniqueIdentifier];
  *(result + 3) = a3;
  return result;
}

- (id)copyWithUniqueIdentifier
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  v6 = [v3 initWithUniqueIdentifier:v5];

  v6[3] = self->_suggestionSource;
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_alloc(objc_opt_class()) initWithUniqueIdentifier:self->_uniqueIdentifier];
  *(result + 3) = self->_suggestionSource;
  return result;
}

@end