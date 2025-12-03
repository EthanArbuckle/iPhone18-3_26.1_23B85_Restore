@interface VUILibrarySeasonViewModel
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (VUILibrarySeasonViewModel)initWithSeasonIdentifier:(id)identifier type:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation VUILibrarySeasonViewModel

- (VUILibrarySeasonViewModel)initWithSeasonIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = VUILibrarySeasonViewModel;
  v8 = [(VUILibrarySeasonViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_seasonIdentifier, identifier);
    v9->_type = type;
  }

  return v9;
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  seasonIdentifier = [(VUILibrarySeasonViewModel *)self seasonIdentifier];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(seasonIdentifier, "hash")}];
  v7 = [v3 stringWithFormat:@"%@-%lu", v6, -[VUILibrarySeasonViewModel type](self, "type")];

  return v7;
}

- (unint64_t)hash
{
  type = [(VUILibrarySeasonViewModel *)self type];
  seasonIdentifier = [(VUILibrarySeasonViewModel *)self seasonIdentifier];
  v5 = [seasonIdentifier hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        seasonIdentifier = [(VUILibrarySeasonViewModel *)self seasonIdentifier];
        seasonIdentifier2 = [(VUILibrarySeasonViewModel *)v6 seasonIdentifier];
        v9 = seasonIdentifier;
        v10 = seasonIdentifier2;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          if (!v9 || !v10)
          {

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

          v12 = [v9 isEqual:v10];

          if ((v12 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        type = [(VUILibrarySeasonViewModel *)self type];
        v13 = type == [(VUILibrarySeasonViewModel *)v6 type];
LABEL_15:

        goto LABEL_16;
      }
    }

    v13 = 0;
  }

LABEL_16:

  return v13;
}

@end