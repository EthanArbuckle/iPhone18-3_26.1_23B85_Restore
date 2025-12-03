@interface SBHCustomIconElement
+ (Class)elementClassWithIdentifier:(id)identifier;
- (SBHCustomIconElement)init;
- (SBHCustomIconElement)initWithUniqueIdentifier:(id)identifier;
- (id)copyWithSuggestionSource:(int64_t)source;
- (id)copyWithUniqueIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBHCustomIconElement

+ (Class)elementClassWithIdentifier:(id)identifier
{
  v24[6] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
        elementIdentifier = [v15 elementIdentifier];
        v17 = [identifierCopy isEqualToString:elementIdentifier];

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

- (SBHCustomIconElement)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBHCustomIconElement;
  v5 = [(SBHCustomIconElement *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v5->_suggestionSource = 0;
  }

  return v5;
}

- (SBHCustomIconElement)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(SBHCustomIconElement *)self initWithUniqueIdentifier:uUIDString];

  return v5;
}

- (id)copyWithSuggestionSource:(int64_t)source
{
  result = [objc_alloc(objc_opt_class()) initWithUniqueIdentifier:self->_uniqueIdentifier];
  *(result + 3) = source;
  return result;
}

- (id)copyWithUniqueIdentifier
{
  v3 = objc_alloc(objc_opt_class());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [v3 initWithUniqueIdentifier:uUIDString];

  v6[3] = self->_suggestionSource;
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_alloc(objc_opt_class()) initWithUniqueIdentifier:self->_uniqueIdentifier];
  *(result + 3) = self->_suggestionSource;
  return result;
}

@end