@interface TPSActionableContent
- (TPSActionableContent)initWithCoder:(id)a3;
- (TPSActionableContent)initWithDictionary:(id)a3 metadata:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSActionableContent

- (TPSActionableContent)initWithDictionary:(id)a3 metadata:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27.receiver = self;
  v27.super_class = TPSActionableContent;
  v7 = [(TPSContent *)&v27 initWithDictionary:v6 metadata:a4];
  if (v7)
  {
    v8 = [v6 TPSSafeArrayForKey:@"actions"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TPSActionableContent;
  v4 = [(TPSContent *)&v7 copyWithZone:a3];
  v5 = [(TPSActionableContent *)self actions];
  [v4 setActions:v5];

  return v4;
}

- (TPSActionableContent)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TPSActionableContent;
  v5 = [(TPSContent *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSActionableContent;
  v4 = a3;
  [(TPSContent *)&v6 encodeWithCoder:v4];
  v5 = [(TPSActionableContent *)self actions:v6.receiver];
  [v4 encodeObject:v5 forKey:@"actions"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v10.receiver = self;
  v10.super_class = TPSActionableContent;
  v4 = [(TPSContent *)&v10 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSActionableContent *)self actions];

  if (v6)
  {
    v7 = [(TPSActionableContent *)self actions];
    v8 = [v7 debugDescription];
    [v5 appendFormat:@"\n %@ = %@", @"actions", v8];
  }

  return v5;
}

@end