@interface _UISearchBarAppearanceStorage
- (id)imageForIcon:(int64_t)a3 state:(unint64_t)a4;
- (id)searchFieldBackgroundImageForState:(unint64_t)a3;
- (void)setImage:(id)a3 forIcon:(int64_t)a4 state:(unint64_t)a5;
- (void)setSearchFieldBackgroundImage:(id)a3 forState:(unint64_t)a4;
@end

@implementation _UISearchBarAppearanceStorage

- (void)setSearchFieldBackgroundImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  searchFieldBackgroundImages = self->searchFieldBackgroundImages;
  v11 = v6;
  if (v6)
  {
    if (!searchFieldBackgroundImages)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->searchFieldBackgroundImages;
      self->searchFieldBackgroundImages = v8;

      searchFieldBackgroundImages = self->searchFieldBackgroundImages;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)searchFieldBackgroundImages setObject:v11 forKey:v10];
  }

  else
  {
    if (!searchFieldBackgroundImages)
    {
      goto LABEL_8;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)searchFieldBackgroundImages removeObjectForKey:v10];
  }

LABEL_8:
}

- (id)searchFieldBackgroundImageForState:(unint64_t)a3
{
  searchFieldBackgroundImages = self->searchFieldBackgroundImages;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)searchFieldBackgroundImages objectForKey:v4];

  return v5;
}

- (void)setImage:(id)a3 forIcon:(int64_t)a4 state:(unint64_t)a5
{
  v8 = a3;
  iconImages = self->iconImages;
  v14 = v8;
  if (v8)
  {
    if (!iconImages)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->iconImages;
      self->iconImages = v10;
    }

    goto LABEL_5;
  }

  if (iconImages)
  {
LABEL_5:
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5 + 100 * a4];
    v13 = self->iconImages;
    if (v14)
    {
      [(NSMutableDictionary *)v13 setObject:v14 forKey:v12];
    }

    else
    {
      [(NSMutableDictionary *)v13 removeObjectForKey:v12];
    }
  }
}

- (id)imageForIcon:(int64_t)a3 state:(unint64_t)a4
{
  iconImages = self->iconImages;
  v7 = 100 * a3;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:100 * a3 + a4];
  v9 = [(NSMutableDictionary *)iconImages objectForKey:v8];

  if (a4 == 1 && !v9)
  {
    v10 = self->iconImages;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [(NSMutableDictionary *)v10 objectForKey:v11];
  }

  return v9;
}

@end