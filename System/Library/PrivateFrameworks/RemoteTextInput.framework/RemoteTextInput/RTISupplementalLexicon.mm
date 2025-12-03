@interface RTISupplementalLexicon
- (BOOL)isEqual:(id)equal;
- (RTISupplementalLexicon)initWithCoder:(id)coder;
- (RTISupplementalLexicon)initWithTISupplementalLexicon:(id)lexicon iconForIdentifier:(id)identifier;
- (RTISupplementalLexicon)initWithTISupplementalLexicon:(id)lexicon iconProvider:(id)provider;
- (id)description;
- (id)iconForIdentifier:(unint64_t)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateSupplementalItems:(id)items;
@end

@implementation RTISupplementalLexicon

- (RTISupplementalLexicon)initWithTISupplementalLexicon:(id)lexicon iconForIdentifier:(id)identifier
{
  lexiconCopy = lexicon;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = RTISupplementalLexicon;
  v8 = [(RTISupplementalLexicon *)&v14 init];
  if (v8)
  {
    v9 = [lexiconCopy copy];
    lexicon = v8->_lexicon;
    v8->_lexicon = v9;

    v11 = [identifierCopy copy];
    iconForIdentifier = v8->_iconForIdentifier;
    v8->_iconForIdentifier = v11;
  }

  return v8;
}

- (RTISupplementalLexicon)initWithTISupplementalLexicon:(id)lexicon iconProvider:(id)provider
{
  v28 = *MEMORY[0x1E69E9840];
  lexiconCopy = lexicon;
  providerCopy = provider;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  items = [lexiconCopy items];
  v10 = [v8 initWithCapacity:{objc_msgSend(items, "count")}];

  if (providerCopy)
  {
    v22 = lexiconCopy;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    items2 = [lexiconCopy items];
    v12 = [items2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(items2);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = providerCopy[2](providerCopy, [v16 identifier]);
          if (v17)
          {
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v16, "identifier")}];
            [v10 setObject:v17 forKey:v18];
          }
        }

        v13 = [items2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    lexiconCopy = v22;
  }

  v19 = [(RTISupplementalLexicon *)self initWithTISupplementalLexicon:lexiconCopy iconForIdentifier:v10];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)enumerateSupplementalItems:(id)items
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (itemsCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    lexicon = [(RTISupplementalLexicon *)self lexicon];
    items = [lexicon items];

    obj = items;
    v7 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          identifier = [v11 identifier];
          iconForIdentifier = [(RTISupplementalLexicon *)self iconForIdentifier];
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
          v15 = [iconForIdentifier objectForKey:v14];

          itemsCopy[2](itemsCopy, v11, v15);
        }

        v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)iconForIdentifier:(unint64_t)identifier
{
  iconForIdentifier = [(RTISupplementalLexicon *)self iconForIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
  v6 = [iconForIdentifier objectForKey:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_lexicon forKey:@"suppLex"];
  [coderCopy encodeObject:self->_iconForIdentifier forKey:@"iconForId"];
}

- (RTISupplementalLexicon)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  if (self)
  {
    v5 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
    v7 = [v5 setWithArray:{v6, v12, v13}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"iconForId"];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppLex"];
    self = [(RTISupplementalLexicon *)self initWithTISupplementalLexicon:v9 iconForIdentifier:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lexicon = [(RTISupplementalLexicon *)self lexicon];
      lexicon2 = [(RTISupplementalLexicon *)equalCopy lexicon];
      if ([lexicon isEqualToSupplementalLexicon:lexicon2])
      {
        iconForIdentifier = [(RTISupplementalLexicon *)self iconForIdentifier];
        iconForIdentifier2 = [(RTISupplementalLexicon *)equalCopy iconForIdentifier];
        v9 = [iconForIdentifier isEqualToDictionary:iconForIdentifier2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p identifier=%llu", objc_opt_class(), self, -[RTISupplementalLexicon identifier](self, "identifier")];;
  lexicon = [(RTISupplementalLexicon *)self lexicon];
  [v3 appendFormat:@", lexicon=%@", lexicon];

  iconForIdentifier = [(RTISupplementalLexicon *)self iconForIdentifier];
  [v3 appendFormat:@", iconForIdentifier=%@>", iconForIdentifier];

  return v3;
}

@end