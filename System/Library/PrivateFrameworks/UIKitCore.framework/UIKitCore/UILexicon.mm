@interface UILexicon
+ (id)_lexiconWithTILexicon:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UILexicon

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UILexicon);
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_entries copyItems:1];
  entries = v4->_entries;
  v4->_entries = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(UILexicon *)self entries];
    v7 = [v5 entries];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(UILexicon *)self entries];
      v9 = [v5 entries];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_lexiconWithTILexicon:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 entries];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [UILexiconEntry _entryWithTILexiconEntry:*(*(&v14 + 1) + 8 * i)];
        [(NSArray *)v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(UILexicon);
  entries = v11->_entries;
  v11->_entries = v4;

  return v11;
}

@end