@interface PFStoryConcreteRecipeSongAsset
+ (BOOL)decomposeURL:(id)a3 usingBlock:(id)a4;
+ (id)URLWithCatalog:(id)a3 songID:(id)a4;
- (BOOL)isEqualToAsset:(id)a3;
- (PFStoryConcreteRecipeSongAsset)initWithIdentifier:(id)a3 category:(int64_t)a4 subcategory:(int64_t)a5 catalog:(id)a6 songID:(id)a7 title:(id)a8 subtitle:(id)a9;
- (PFStoryConcreteRecipeSongAsset)initWithIdentifier:(id)a3 kind:(int64_t)a4 url:(id)a5;
- (id)description;
@end

@implementation PFStoryConcreteRecipeSongAsset

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PFStoryConcreteRecipeSongAsset *)self catalog];
  v7 = [(PFStoryConcreteRecipeSongAsset *)self songID];
  v8 = [(PFStoryConcreteRecipeSongAsset *)self title];
  v9 = [(PFStoryConcreteRecipeSongAsset *)self subtitle];
  v10 = [(PFStoryConcreteRecipeSongAsset *)self colorGradeCategory];
  v11 = [(PFStoryConcreteRecipeSongAsset *)self category];
  if (v11 > 2)
  {
    v12 = @"??";
  }

  else
  {
    v12 = off_1E7B65FD0[v11];
  }

  v13 = [(PFStoryConcreteRecipeSongAsset *)self subcategory];
  if (v13 > 5)
  {
    v14 = @"??";
  }

  else
  {
    v14 = off_1E7B65F78[v13];
  }

  v15 = v14;
  v16 = [v3 initWithFormat:@"<%@ %p; catalog: %@; identifier: %@; title: %@; subtitle: %@; colorGrade: %@; category: %@; subcategory: %@>", v5, self, v6, v7, v8, v9, v10, v12, v15];

  return v16;
}

- (BOOL)isEqualToAsset:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PFStoryConcreteRecipeSongAsset;
  if (-[PFStoryConcreteRecipeAsset isEqualToAsset:](&v21, sel_isEqualToAsset_, v4) && (v5 = -[PFStoryConcreteRecipeSongAsset category](self, "category"), v5 == [v4 category]) && (v6 = -[PFStoryConcreteRecipeSongAsset subcategory](self, "subcategory"), v6 == objc_msgSend(v4, "subcategory")))
  {
    v7 = [(PFStoryConcreteRecipeSongAsset *)self songID];
    v8 = [v4 songID];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [(PFStoryConcreteRecipeSongAsset *)self catalog];
      v10 = [v4 catalog];
      if (v9 == v10 || [v9 isEqualToString:v10])
      {
        v11 = [(PFStoryConcreteRecipeSongAsset *)self title];
        v12 = [v4 title];
        if (v11 == v12 || [v11 isEqual:v12])
        {
          v13 = [(PFStoryConcreteRecipeSongAsset *)self subtitle];
          v14 = [v4 subtitle];
          if (v13 == v14 || [v13 isEqual:v14])
          {
            v15 = [(PFStoryConcreteRecipeSongAsset *)self colorGradeCategory:v13];
            v16 = [v4 colorGradeCategory];
            if (v15 == v16)
            {
              v17 = 1;
            }

            else
            {
              v17 = [v15 isEqual:v16];
            }

            v13 = v19;
            v11 = v20;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (PFStoryConcreteRecipeSongAsset)initWithIdentifier:(id)a3 kind:(int64_t)a4 url:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = _PFAssertFailHandler();
  return [(PFStoryConcreteRecipeSongAsset *)v8 initWithIdentifier:v9 category:v10 subcategory:v11 catalog:v12 songID:v13 title:v14 subtitle:v15, v17];
}

- (PFStoryConcreteRecipeSongAsset)initWithIdentifier:(id)a3 category:(int64_t)a4 subcategory:(int64_t)a5 catalog:(id)a6 songID:(id)a7 title:(id)a8 subtitle:(id)a9
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a3;
  v20 = [PFStoryConcreteRecipeSongAsset URLWithCatalog:v15 songID:v16];
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v16;
  }

  v33.receiver = self;
  v33.super_class = PFStoryConcreteRecipeSongAsset;
  v22 = [(PFStoryConcreteRecipeAsset *)&v33 initWithIdentifier:v21 kind:2 url:v20];

  if (v22)
  {
    v22->_category = a4;
    v22->_subcategory = a5;
    v23 = [v16 copy];
    songID = v22->_songID;
    v22->_songID = v23;

    v25 = [v15 copy];
    catalog = v22->_catalog;
    v22->_catalog = v25;

    v27 = [v17 copy];
    title = v22->_title;
    v22->_title = v27;

    v29 = [v18 copy];
    subtitle = v22->_subtitle;
    v22->_subtitle = v29;

    colorGradeCategory = v22->_colorGradeCategory;
    v22->_colorGradeCategory = 0;
  }

  return v22;
}

+ (BOOL)decomposeURL:(id)a3 usingBlock:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:1];
  v8 = [v7 host];
  if (([v8 isEqualToString:@"song"] & 1) == 0)
  {

    goto LABEL_17;
  }

  v9 = [v7 queryItems];
  v10 = [v9 count];

  if (v10 != 1)
  {
LABEL_17:
    v24 = 0;
    goto LABEL_23;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [v7 queryItems];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v26 = v6;
    v27 = v5;
    v14 = 0;
    v15 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 name];
        v19 = [v18 isEqualToString:@"songID"];

        if (v19)
        {
          v20 = [v17 value];

          v14 = v20;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v13);

    if (!v14)
    {
      v24 = 0;
      v6 = v26;
      v5 = v27;
      goto LABEL_23;
    }

    v21 = [v7 scheme];
    v6 = v26;
    v5 = v27;
    if (v21 && (v32[0] = @"applemusic", v32[1] = @"flexmusic", v32[2] = @"mock", [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v21), v22, v23))
    {
      v26[2](v26, v21, v14);
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v14 = v11;
  }

LABEL_23:
  return v24;
}

+ (id)URLWithCatalog:(id)a3 songID:(id)a4
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%@://song?songID=%@", v8, v7];

  v10 = [v5 URLWithString:v9];

  return v10;
}

@end