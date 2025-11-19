@interface PLGenericLocationTuple
- (BOOL)isEqual:(id)a3;
- (PLGenericLocationTuple)initWithText:(id)a3 lookupIdentifier:(id)a4 indexCategory:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLGenericLocationTuple

- (unint64_t)hash
{
  v3 = [(PLGenericLocationTuple *)self indexCategory];
  v4 = [(PLGenericLocationTuple *)self text];
  v5 = [v4 localizedLowercaseString];
  v6 = [v5 hash];
  v7 = [(PLGenericLocationTuple *)self lookupIdentifier];
  v8 = v3 ^ [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PLGenericLocationTuple *)self text];
      if ([v6 length])
      {
        v7 = [(PLGenericLocationTuple *)v5 text];
        v8 = [v7 length];

        if (!v8)
        {
          v10 = 0;
LABEL_11:
          v12 = [(PLGenericLocationTuple *)self lookupIdentifier];
          if ([v12 length])
          {
            v13 = [(PLGenericLocationTuple *)v5 lookupIdentifier];
            v14 = [v13 length];

            if (v10)
            {
              goto LABEL_15;
            }

            if (v14)
            {
              v15 = [(PLGenericLocationTuple *)self lookupIdentifier];
              v16 = [(PLGenericLocationTuple *)v5 lookupIdentifier];
              v17 = [v15 isEqualToString:v16];

              if (!v17)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {

            if (v10)
            {
LABEL_15:
              v11 = 0;
LABEL_18:

              goto LABEL_19;
            }
          }

          v18 = [(PLGenericLocationTuple *)self indexCategory];
          v11 = v18 == [(PLGenericLocationTuple *)v5 indexCategory];
          goto LABEL_18;
        }

        v6 = [(PLGenericLocationTuple *)self text];
        v9 = [(PLGenericLocationTuple *)v5 text];
        v10 = [v6 localizedCaseInsensitiveCompare:v9] != 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_11;
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  text = self->_text;
  lookupIdentifier = self->_lookupIdentifier;
  v5 = PLDebugStringForSearchIndexCategory(self->_indexCategory);
  v6 = [v2 stringWithFormat:@"Generic Location Tuple for text: %@, lookupIdentifier: %@, indexCategory: %@", text, lookupIdentifier, v5];

  return v6;
}

- (PLGenericLocationTuple)initWithText:(id)a3 lookupIdentifier:(id)a4 indexCategory:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (![v9 length])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLGenericLocationTuple.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"text.length > 0"}];
  }

  v18.receiver = self;
  v18.super_class = PLGenericLocationTuple;
  v11 = [(PLGenericLocationTuple *)&v18 init];
  if (v11)
  {
    v12 = [v9 copy];
    text = v11->_text;
    v11->_text = v12;

    v14 = [v10 copy];
    lookupIdentifier = v11->_lookupIdentifier;
    v11->_lookupIdentifier = v14;

    v11->_indexCategory = a5;
  }

  return v11;
}

@end