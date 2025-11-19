@interface PXStoryMusicCurationProviderOptions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addCategory:(id)a3;
@end

@implementation PXStoryMusicCurationProviderOptions

- (void)addCategory:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryMusicCurationProviderOptions *)self categories];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v9 = v7;

  v8 = [v9 setByAddingObject:v4];

  [(PXStoryMusicCurationProviderOptions *)self setCategories:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXStoryMusicCurationProviderOptions);
  v5 = [(PXStoryMusicCurationProviderOptions *)self categories];
  v6 = [v5 copy];
  [(PXStoryMusicCurationProviderOptions *)v4 setCategories:v6];

  [(PXStoryMusicCurationProviderOptions *)v4 setLogContext:[(PXStoryMusicCurationProviderOptions *)self logContext]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 categories];
    v6 = [(PXStoryMusicCurationProviderOptions *)self categories];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isEqual:v6];
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
  v2 = [(PXStoryMusicCurationProviderOptions *)self categories];
  v3 = [v2 hash];

  return v3;
}

@end