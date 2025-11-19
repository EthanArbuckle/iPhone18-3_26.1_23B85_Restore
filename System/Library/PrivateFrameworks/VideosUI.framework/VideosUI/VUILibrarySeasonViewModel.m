@interface VUILibrarySeasonViewModel
- (BOOL)isEqual:(id)a3;
- (NSString)identifier;
- (VUILibrarySeasonViewModel)initWithSeasonIdentifier:(id)a3 type:(unint64_t)a4;
- (unint64_t)hash;
@end

@implementation VUILibrarySeasonViewModel

- (VUILibrarySeasonViewModel)initWithSeasonIdentifier:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VUILibrarySeasonViewModel;
  v8 = [(VUILibrarySeasonViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_seasonIdentifier, a3);
    v9->_type = a4;
  }

  return v9;
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(VUILibrarySeasonViewModel *)self seasonIdentifier];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "hash")}];
  v7 = [v3 stringWithFormat:@"%@-%lu", v6, -[VUILibrarySeasonViewModel type](self, "type")];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VUILibrarySeasonViewModel *)self type];
  v4 = [(VUILibrarySeasonViewModel *)self seasonIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUILibrarySeasonViewModel *)self seasonIdentifier];
        v8 = [(VUILibrarySeasonViewModel *)v6 seasonIdentifier];
        v9 = v7;
        v10 = v8;
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

        v14 = [(VUILibrarySeasonViewModel *)self type];
        v13 = v14 == [(VUILibrarySeasonViewModel *)v6 type];
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