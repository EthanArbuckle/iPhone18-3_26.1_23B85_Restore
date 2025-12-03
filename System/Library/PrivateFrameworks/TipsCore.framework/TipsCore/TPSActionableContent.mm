@interface TPSActionableContent
- (TPSActionableContent)initWithCoder:(id)coder;
- (TPSActionableContent)initWithDictionary:(id)dictionary metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSActionableContent

- (TPSActionableContent)initWithDictionary:(id)dictionary metadata:(id)metadata
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = TPSActionableContent;
  v7 = [(TPSContent *)&v27 initWithDictionary:dictionaryCopy metadata:metadata];
  if (v7)
  {
    v8 = [dictionaryCopy TPSSafeArrayForKey:@"actions"];
    v9 = [v8 count];
    if (v9)
    {
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            v17 = [TPSURLAction alloc];
            v18 = [(TPSURLAction *)v17 initWithDictionary:v16, v23];
            if (v18)
            {
              [v10 addObject:v18];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }

      v19 = [v10 copy];
      actions = v7->_actions;
      v7->_actions = v19;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TPSActionableContent;
  v4 = [(TPSContent *)&v7 copyWithZone:zone];
  actions = [(TPSActionableContent *)self actions];
  [v4 setActions:actions];

  return v4;
}

- (TPSActionableContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TPSActionableContent;
  v5 = [(TPSContent *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSActionableContent;
  coderCopy = coder;
  [(TPSContent *)&v6 encodeWithCoder:coderCopy];
  v5 = [(TPSActionableContent *)self actions:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"actions"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v10.receiver = self;
  v10.super_class = TPSActionableContent;
  v4 = [(TPSContent *)&v10 debugDescription];
  v5 = [v3 initWithString:v4];

  actions = [(TPSActionableContent *)self actions];

  if (actions)
  {
    actions2 = [(TPSActionableContent *)self actions];
    v8 = [actions2 debugDescription];
    [v5 appendFormat:@"\n %@ = %@", @"actions", v8];
  }

  return v5;
}

@end