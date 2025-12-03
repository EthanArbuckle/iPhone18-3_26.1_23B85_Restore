@interface _UISupplementalLexicon
- (_UISupplementalLexicon)initWithItems:(id)items searchPrefixes:(unint64_t)prefixes;
- (_UISupplementalLexicon)initWithItems:(id)items searchPrefixes:(unint64_t)prefixes andTISupplementalLexicon:(id)lexicon;
- (_UISupplementalLexicon)initWithRTISupplementalLexicon:(id)lexicon;
- (id)description;
- (void)dealloc;
@end

@implementation _UISupplementalLexicon

- (_UISupplementalLexicon)initWithItems:(id)items searchPrefixes:(unint64_t)prefixes andTISupplementalLexicon:(id)lexicon
{
  itemsCopy = items;
  lexiconCopy = lexicon;
  v18.receiver = self;
  v18.super_class = _UISupplementalLexicon;
  v11 = [(_UISupplementalLexicon *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_items, items);
    v12->_searchPrefixes = prefixes;
    objc_storeStrong(&v12->_internal, lexicon);
    v13 = supplementalItemQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80___UISupplementalLexicon_initWithItems_searchPrefixes_andTISupplementalLexicon___block_invoke;
    block[3] = &unk_1E70F3590;
    v17 = itemsCopy;
    dispatch_sync(v13, block);

    v14 = +[UIKeyboardImpl sharedInstance];
    [v14 addSupplementalLexicon:v12];
  }

  return v12;
}

- (_UISupplementalLexicon)initWithItems:(id)items searchPrefixes:(unint64_t)prefixes
{
  v27 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v25.receiver = self;
  v25.super_class = _UISupplementalLexicon;
  v7 = [(_UISupplementalLexicon *)&v25 init];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v7->_items, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = itemsCopy;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 addObject:{*(*(*(&v21 + 1) + 8 * v14++) + 8), v21}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    v15 = [MEMORY[0x1E69D96C0] instancesRespondToSelector:sel_initWithItems_searchPrefixes_];
    v16 = objc_alloc(MEMORY[0x1E69D96C0]);
    if (v15)
    {
      v17 = [v16 initWithItems:v9 searchPrefixes:prefixes & 3];
    }

    else
    {
      v17 = [v16 initWithItems:v9];
    }

    v19 = v17;
    v18 = [(_UISupplementalLexicon *)v8 initWithItems:v10 searchPrefixes:prefixes andTISupplementalLexicon:v17, v21];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (_UISupplementalLexicon)initWithRTISupplementalLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  v14.receiver = self;
  v14.super_class = _UISupplementalLexicon;
  v5 = [(_UISupplementalLexicon *)&v14 init];
  if (v5)
  {
    lexicon = [lexiconCopy lexicon];
    v7 = objc_alloc(MEMORY[0x1E695DF70]);
    items = [lexicon items];
    v9 = [v7 initWithCapacity:{objc_msgSend(items, "count")}];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57___UISupplementalLexicon_initWithRTISupplementalLexicon___block_invoke;
    v12[3] = &unk_1E71289E8;
    v13 = v9;
    v10 = v9;
    [lexiconCopy enumerateSupplementalItems:v12];
    v5 = -[_UISupplementalLexicon initWithItems:searchPrefixes:andTISupplementalLexicon:](v5, "initWithItems:searchPrefixes:andTISupplementalLexicon:", v10, [lexicon searchPrefixes] & 3, lexicon);
  }

  return v5;
}

- (void)dealloc
{
  v3 = supplementalItemQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___UISupplementalLexicon_dealloc__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 removeSupplementalLexicon:self];

  v5.receiver = self;
  v5.super_class = _UISupplementalLexicon;
  [(_UISupplementalLexicon *)&v5 dealloc];
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p identifier=%llu", objc_opt_class(), self, objc_msgSend(self->_internal, "identifier")];;
  v4 = v3;
  if (self->_searchPrefixes)
  {
    [v3 appendString:{@", searchPrefixesScanSet="}];
    searchPrefixes = self->_searchPrefixes;
    if (searchPrefixes)
    {
      [v4 appendString:@"@"];
      searchPrefixes = self->_searchPrefixes;
    }

    if ((searchPrefixes & 2) != 0)
    {
      [v4 appendString:@"#"];
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_items, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_items;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) description];
        [v6 addObject:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 componentsJoinedByString:{@", "}];
  [v4 appendFormat:@", items={ %@ }>", v13];

  return v4;
}

@end