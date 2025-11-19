@interface RTISupplementalLexicon
- (BOOL)isEqual:(id)a3;
- (RTISupplementalLexicon)initWithCoder:(id)a3;
- (RTISupplementalLexicon)initWithTISupplementalLexicon:(id)a3 iconForIdentifier:(id)a4;
- (RTISupplementalLexicon)initWithTISupplementalLexicon:(id)a3 iconProvider:(id)a4;
- (id)description;
- (id)iconForIdentifier:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateSupplementalItems:(id)a3;
@end

@implementation RTISupplementalLexicon

- (RTISupplementalLexicon)initWithTISupplementalLexicon:(id)a3 iconForIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RTISupplementalLexicon;
  v8 = [(RTISupplementalLexicon *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    lexicon = v8->_lexicon;
    v8->_lexicon = v9;

    v11 = [v7 copy];
    iconForIdentifier = v8->_iconForIdentifier;
    v8->_iconForIdentifier = v11;
  }

  return v8;
}

- (RTISupplementalLexicon)initWithTISupplementalLexicon:(id)a3 iconProvider:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v6 items];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  if (v7)
  {
    v22 = v6;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [v6 items];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = v7[2](v7, [v16 identifier]);
          if (v17)
          {
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v16, "identifier")}];
            [v10 setObject:v17 forKey:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v6 = v22;
  }

  v19 = [(RTISupplementalLexicon *)self initWithTISupplementalLexicon:v6 iconForIdentifier:v10];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)enumerateSupplementalItems:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(RTISupplementalLexicon *)self lexicon];
    v6 = [v5 items];

    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          v12 = [v11 identifier];
          v13 = [(RTISupplementalLexicon *)self iconForIdentifier];
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
          v15 = [v13 objectForKey:v14];

          v4[2](v4, v11, v15);
        }

        v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)iconForIdentifier:(unint64_t)a3
{
  v4 = [(RTISupplementalLexicon *)self iconForIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_lexicon forKey:@"suppLex"];
  [v4 encodeObject:self->_iconForIdentifier forKey:@"iconForId"];
}

- (RTISupplementalLexicon)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
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
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"iconForId"];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppLex"];
    self = [(RTISupplementalLexicon *)self initWithTISupplementalLexicon:v9 iconForIdentifier:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RTISupplementalLexicon *)self lexicon];
      v6 = [(RTISupplementalLexicon *)v4 lexicon];
      if ([v5 isEqualToSupplementalLexicon:v6])
      {
        v7 = [(RTISupplementalLexicon *)self iconForIdentifier];
        v8 = [(RTISupplementalLexicon *)v4 iconForIdentifier];
        v9 = [v7 isEqualToDictionary:v8];
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
  v4 = [(RTISupplementalLexicon *)self lexicon];
  [v3 appendFormat:@", lexicon=%@", v4];

  v5 = [(RTISupplementalLexicon *)self iconForIdentifier];
  [v3 appendFormat:@", iconForIdentifier=%@>", v5];

  return v3;
}

@end