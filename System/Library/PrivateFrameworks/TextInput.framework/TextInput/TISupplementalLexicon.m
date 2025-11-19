@interface TISupplementalLexicon
- (BOOL)isEqual:(id)a3;
- (TISupplementalLexicon)initWithCoder:(id)a3;
- (TISupplementalLexicon)initWithItems:(id)a3 searchPrefixes:(unint64_t)a4;
- (id)description;
- (unsigned)searchPrefixCharacter;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TISupplementalLexicon

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p identifier=%llu", objc_opt_class(), self, self->_identifier];;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TISupplementalLexicon *)self isEqualToSupplementalLexicon:v4];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  items = self->_items;
  v5 = a3;
  [v5 encodeObject:items forKey:@"items"];
  [v5 encodeInteger:self->_searchPrefixes forKey:@"searchPrefixes"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_identifier];
  [v5 encodeObject:v6 forKey:@"identifier"];
}

- (TISupplementalLexicon)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TISupplementalLexicon *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
    v8 = [v6 setWithArray:{v7, v14, v15}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;

    v5->_searchPrefixes = [v4 decodeIntegerForKey:@"searchPrefixes"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v5->_identifier = [v11 unsignedLongLongValue];

    v12 = v5;
  }

  return v5;
}

- (unsigned)searchPrefixCharacter
{
  v2 = [(TISupplementalLexicon *)self searchPrefixes];
  if (v2 == 2)
  {
    return 35;
  }

  else
  {
    return (v2 == 1) << 6;
  }
}

- (TISupplementalLexicon)initWithItems:(id)a3 searchPrefixes:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = TISupplementalLexicon;
  v7 = [(TISupplementalLexicon *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    items = v7->_items;
    v7->_items = v8;

    v10 = ++generateIdentifier_count_9909;
    v7->_searchPrefixes = a4;
    v7->_identifier = v10;
    v11 = v7;
  }

  return v7;
}

@end