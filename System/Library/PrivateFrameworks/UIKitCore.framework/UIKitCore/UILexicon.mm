@interface UILexicon
+ (id)_lexiconWithTILexicon:(id)lexicon;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UILexicon

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UILexicon);
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_entries copyItems:1];
  entries = v4->_entries;
  v4->_entries = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    entries = [(UILexicon *)self entries];
    entries2 = [v5 entries];
    if (entries == entries2)
    {
      v10 = 1;
    }

    else
    {
      entries3 = [(UILexicon *)self entries];
      entries4 = [v5 entries];
      v10 = [entries3 isEqual:entries4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_lexiconWithTILexicon:(id)lexicon
{
  v19 = *MEMORY[0x1E69E9840];
  lexiconCopy = lexicon;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  entries = [lexiconCopy entries];
  v6 = [entries countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(entries);
        }

        v10 = [UILexiconEntry _entryWithTILexiconEntry:*(*(&v14 + 1) + 8 * i)];
        [(NSArray *)array addObject:v10];
      }

      v7 = [entries countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(UILexicon);
  entries = v11->_entries;
  v11->_entries = array;

  return v11;
}

@end