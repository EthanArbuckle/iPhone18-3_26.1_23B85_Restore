@interface PXStoryMusicCurationProviderOptions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addCategory:(id)category;
@end

@implementation PXStoryMusicCurationProviderOptions

- (void)addCategory:(id)category
{
  categoryCopy = category;
  categories = [(PXStoryMusicCurationProviderOptions *)self categories];
  v6 = categories;
  if (categories)
  {
    v7 = categories;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v9 = v7;

  v8 = [v9 setByAddingObject:categoryCopy];

  [(PXStoryMusicCurationProviderOptions *)self setCategories:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXStoryMusicCurationProviderOptions);
  categories = [(PXStoryMusicCurationProviderOptions *)self categories];
  v6 = [categories copy];
  [(PXStoryMusicCurationProviderOptions *)v4 setCategories:v6];

  [(PXStoryMusicCurationProviderOptions *)v4 setLogContext:[(PXStoryMusicCurationProviderOptions *)self logContext]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    categories = [equalCopy categories];
    categories2 = [(PXStoryMusicCurationProviderOptions *)self categories];
    if (categories == categories2)
    {
      v7 = 1;
    }

    else
    {
      v7 = [categories isEqual:categories2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  categories = [(PXStoryMusicCurationProviderOptions *)self categories];
  v3 = [categories hash];

  return v3;
}

@end