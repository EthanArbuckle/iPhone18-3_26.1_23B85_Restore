@interface PFStoryConcreteRecipeSongAsset
+ (BOOL)decomposeURL:(id)l usingBlock:(id)block;
+ (id)URLWithCatalog:(id)catalog songID:(id)d;
- (BOOL)isEqualToAsset:(id)asset;
- (PFStoryConcreteRecipeSongAsset)initWithIdentifier:(id)identifier category:(int64_t)category subcategory:(int64_t)subcategory catalog:(id)catalog songID:(id)d title:(id)title subtitle:(id)subtitle;
- (PFStoryConcreteRecipeSongAsset)initWithIdentifier:(id)identifier kind:(int64_t)kind url:(id)url;
- (id)description;
@end

@implementation PFStoryConcreteRecipeSongAsset

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  catalog = [(PFStoryConcreteRecipeSongAsset *)self catalog];
  songID = [(PFStoryConcreteRecipeSongAsset *)self songID];
  title = [(PFStoryConcreteRecipeSongAsset *)self title];
  subtitle = [(PFStoryConcreteRecipeSongAsset *)self subtitle];
  colorGradeCategory = [(PFStoryConcreteRecipeSongAsset *)self colorGradeCategory];
  category = [(PFStoryConcreteRecipeSongAsset *)self category];
  if (category > 2)
  {
    v12 = @"??";
  }

  else
  {
    v12 = off_1E7B65FD0[category];
  }

  subcategory = [(PFStoryConcreteRecipeSongAsset *)self subcategory];
  if (subcategory > 5)
  {
    v14 = @"??";
  }

  else
  {
    v14 = off_1E7B65F78[subcategory];
  }

  v15 = v14;
  v16 = [v3 initWithFormat:@"<%@ %p; catalog: %@; identifier: %@; title: %@; subtitle: %@; colorGrade: %@; category: %@; subcategory: %@>", v5, self, catalog, songID, title, subtitle, colorGradeCategory, v12, v15];

  return v16;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v21.receiver = self;
  v21.super_class = PFStoryConcreteRecipeSongAsset;
  if (-[PFStoryConcreteRecipeAsset isEqualToAsset:](&v21, sel_isEqualToAsset_, assetCopy) && (v5 = -[PFStoryConcreteRecipeSongAsset category](self, "category"), v5 == [assetCopy category]) && (v6 = -[PFStoryConcreteRecipeSongAsset subcategory](self, "subcategory"), v6 == objc_msgSend(assetCopy, "subcategory")))
  {
    songID = [(PFStoryConcreteRecipeSongAsset *)self songID];
    songID2 = [assetCopy songID];
    if (songID == songID2 || [songID isEqual:songID2])
    {
      catalog = [(PFStoryConcreteRecipeSongAsset *)self catalog];
      catalog2 = [assetCopy catalog];
      if (catalog == catalog2 || [catalog isEqualToString:catalog2])
      {
        title = [(PFStoryConcreteRecipeSongAsset *)self title];
        title2 = [assetCopy title];
        if (title == title2 || [title isEqual:title2])
        {
          subtitle = [(PFStoryConcreteRecipeSongAsset *)self subtitle];
          subtitle2 = [assetCopy subtitle];
          if (subtitle == subtitle2 || [subtitle isEqual:subtitle2])
          {
            v15 = [(PFStoryConcreteRecipeSongAsset *)self colorGradeCategory:subtitle];
            colorGradeCategory = [assetCopy colorGradeCategory];
            if (v15 == colorGradeCategory)
            {
              v17 = 1;
            }

            else
            {
              v17 = [v15 isEqual:colorGradeCategory];
            }

            subtitle = v19;
            title = v20;
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

- (PFStoryConcreteRecipeSongAsset)initWithIdentifier:(id)identifier kind:(int64_t)kind url:(id)url
{
  identifierCopy = identifier;
  urlCopy = url;
  v8 = _PFAssertFailHandler();
  return [(PFStoryConcreteRecipeSongAsset *)v8 initWithIdentifier:v9 category:v10 subcategory:v11 catalog:v12 songID:v13 title:v14 subtitle:v15, v17];
}

- (PFStoryConcreteRecipeSongAsset)initWithIdentifier:(id)identifier category:(int64_t)category subcategory:(int64_t)subcategory catalog:(id)catalog songID:(id)d title:(id)title subtitle:(id)subtitle
{
  catalogCopy = catalog;
  dCopy = d;
  titleCopy = title;
  subtitleCopy = subtitle;
  identifierCopy = identifier;
  v20 = [PFStoryConcreteRecipeSongAsset URLWithCatalog:catalogCopy songID:dCopy];
  if (identifierCopy)
  {
    v21 = identifierCopy;
  }

  else
  {
    v21 = dCopy;
  }

  v33.receiver = self;
  v33.super_class = PFStoryConcreteRecipeSongAsset;
  v22 = [(PFStoryConcreteRecipeAsset *)&v33 initWithIdentifier:v21 kind:2 url:v20];

  if (v22)
  {
    v22->_category = category;
    v22->_subcategory = subcategory;
    v23 = [dCopy copy];
    songID = v22->_songID;
    v22->_songID = v23;

    v25 = [catalogCopy copy];
    catalog = v22->_catalog;
    v22->_catalog = v25;

    v27 = [titleCopy copy];
    title = v22->_title;
    v22->_title = v27;

    v29 = [subtitleCopy copy];
    subtitle = v22->_subtitle;
    v22->_subtitle = v29;

    colorGradeCategory = v22->_colorGradeCategory;
    v22->_colorGradeCategory = 0;
  }

  return v22;
}

+ (BOOL)decomposeURL:(id)l usingBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:1];
  host = [v7 host];
  if (([host isEqualToString:@"song"] & 1) == 0)
  {

    goto LABEL_17;
  }

  queryItems = [v7 queryItems];
  v10 = [queryItems count];

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
  queryItems2 = [v7 queryItems];
  v12 = [queryItems2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v26 = blockCopy;
    v27 = lCopy;
    v14 = 0;
    v15 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(queryItems2);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        name = [v17 name];
        v19 = [name isEqualToString:@"songID"];

        if (v19)
        {
          value = [v17 value];

          v14 = value;
        }
      }

      v13 = [queryItems2 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v13);

    if (!v14)
    {
      v24 = 0;
      blockCopy = v26;
      lCopy = v27;
      goto LABEL_23;
    }

    scheme = [v7 scheme];
    blockCopy = v26;
    lCopy = v27;
    if (scheme && (v32[0] = @"applemusic", v32[1] = @"flexmusic", v32[2] = @"mock", [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", scheme), v22, v23))
    {
      v26[2](v26, scheme, v14);
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
    v14 = queryItems2;
  }

LABEL_23:
  return v24;
}

+ (id)URLWithCatalog:(id)catalog songID:(id)d
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = MEMORY[0x1E696AEC0];
  dCopy = d;
  catalogCopy = catalog;
  dCopy = [[v6 alloc] initWithFormat:@"%@://song?songID=%@", catalogCopy, dCopy];

  v10 = [v5 URLWithString:dCopy];

  return v10;
}

@end