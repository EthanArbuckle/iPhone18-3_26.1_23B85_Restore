@interface _UISearchBarAppearanceStorage
- (id)imageForIcon:(int64_t)icon state:(unint64_t)state;
- (id)searchFieldBackgroundImageForState:(unint64_t)state;
- (void)setImage:(id)image forIcon:(int64_t)icon state:(unint64_t)state;
- (void)setSearchFieldBackgroundImage:(id)image forState:(unint64_t)state;
@end

@implementation _UISearchBarAppearanceStorage

- (void)setSearchFieldBackgroundImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  searchFieldBackgroundImages = self->searchFieldBackgroundImages;
  v11 = imageCopy;
  if (imageCopy)
  {
    if (!searchFieldBackgroundImages)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->searchFieldBackgroundImages;
      self->searchFieldBackgroundImages = v8;

      searchFieldBackgroundImages = self->searchFieldBackgroundImages;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [(NSMutableDictionary *)searchFieldBackgroundImages setObject:v11 forKey:v10];
  }

  else
  {
    if (!searchFieldBackgroundImages)
    {
      goto LABEL_8;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [(NSMutableDictionary *)searchFieldBackgroundImages removeObjectForKey:v10];
  }

LABEL_8:
}

- (id)searchFieldBackgroundImageForState:(unint64_t)state
{
  searchFieldBackgroundImages = self->searchFieldBackgroundImages;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v5 = [(NSMutableDictionary *)searchFieldBackgroundImages objectForKey:v4];

  return v5;
}

- (void)setImage:(id)image forIcon:(int64_t)icon state:(unint64_t)state
{
  imageCopy = image;
  iconImages = self->iconImages;
  v14 = imageCopy;
  if (imageCopy)
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
    icon = [MEMORY[0x1E696AD98] numberWithInteger:state + 100 * icon];
    v13 = self->iconImages;
    if (v14)
    {
      [(NSMutableDictionary *)v13 setObject:v14 forKey:icon];
    }

    else
    {
      [(NSMutableDictionary *)v13 removeObjectForKey:icon];
    }
  }
}

- (id)imageForIcon:(int64_t)icon state:(unint64_t)state
{
  iconImages = self->iconImages;
  v7 = 100 * icon;
  state = [MEMORY[0x1E696AD98] numberWithInteger:100 * icon + state];
  v9 = [(NSMutableDictionary *)iconImages objectForKey:state];

  if (state == 1 && !v9)
  {
    v10 = self->iconImages;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [(NSMutableDictionary *)v10 objectForKey:v11];
  }

  return v9;
}

@end