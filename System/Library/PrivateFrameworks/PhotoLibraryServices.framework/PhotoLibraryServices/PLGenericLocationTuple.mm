@interface PLGenericLocationTuple
- (BOOL)isEqual:(id)equal;
- (PLGenericLocationTuple)initWithText:(id)text lookupIdentifier:(id)identifier indexCategory:(unint64_t)category;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLGenericLocationTuple

- (unint64_t)hash
{
  indexCategory = [(PLGenericLocationTuple *)self indexCategory];
  text = [(PLGenericLocationTuple *)self text];
  localizedLowercaseString = [text localizedLowercaseString];
  v6 = [localizedLowercaseString hash];
  lookupIdentifier = [(PLGenericLocationTuple *)self lookupIdentifier];
  v8 = indexCategory ^ [lookupIdentifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      text = [(PLGenericLocationTuple *)self text];
      if ([text length])
      {
        text2 = [(PLGenericLocationTuple *)v5 text];
        v8 = [text2 length];

        if (!v8)
        {
          v10 = 0;
LABEL_11:
          lookupIdentifier = [(PLGenericLocationTuple *)self lookupIdentifier];
          if ([lookupIdentifier length])
          {
            lookupIdentifier2 = [(PLGenericLocationTuple *)v5 lookupIdentifier];
            v14 = [lookupIdentifier2 length];

            if (v10)
            {
              goto LABEL_15;
            }

            if (v14)
            {
              lookupIdentifier3 = [(PLGenericLocationTuple *)self lookupIdentifier];
              lookupIdentifier4 = [(PLGenericLocationTuple *)v5 lookupIdentifier];
              v17 = [lookupIdentifier3 isEqualToString:lookupIdentifier4];

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

          indexCategory = [(PLGenericLocationTuple *)self indexCategory];
          v11 = indexCategory == [(PLGenericLocationTuple *)v5 indexCategory];
          goto LABEL_18;
        }

        text = [(PLGenericLocationTuple *)self text];
        text3 = [(PLGenericLocationTuple *)v5 text];
        v10 = [text localizedCaseInsensitiveCompare:text3] != 0;
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

- (PLGenericLocationTuple)initWithText:(id)text lookupIdentifier:(id)identifier indexCategory:(unint64_t)category
{
  textCopy = text;
  identifierCopy = identifier;
  if (![textCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericLocationTuple.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"text.length > 0"}];
  }

  v18.receiver = self;
  v18.super_class = PLGenericLocationTuple;
  v11 = [(PLGenericLocationTuple *)&v18 init];
  if (v11)
  {
    v12 = [textCopy copy];
    text = v11->_text;
    v11->_text = v12;

    v14 = [identifierCopy copy];
    lookupIdentifier = v11->_lookupIdentifier;
    v11->_lookupIdentifier = v14;

    v11->_indexCategory = category;
  }

  return v11;
}

@end