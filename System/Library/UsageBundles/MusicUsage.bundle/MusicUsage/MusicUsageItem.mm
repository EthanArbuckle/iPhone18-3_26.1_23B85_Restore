@interface MusicUsageItem
+ (MusicUsageItem)usageItemWithItemCollection:(id)collection displayNameBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (MusicUsageGroup)usageGroup;
- (id)artworkCatalog;
- (id)subtitles;
- (id)title;
- (unint64_t)hash;
@end

@implementation MusicUsageItem

+ (MusicUsageItem)usageItemWithItemCollection:(id)collection displayNameBlock:(id)block
{
  blockCopy = block;
  collectionCopy = collection;
  v7 = objc_alloc_init(MusicUsageItem);
  [(MusicUsageItem *)v7 setItemCollection:collectionCopy];

  [(MusicUsageItem *)v7 setTitleBlock:blockCopy];

  return v7;
}

- (id)title
{
  titleBlock = [(MusicUsageItem *)self titleBlock];

  if (titleBlock)
  {
    titleBlock2 = [(MusicUsageItem *)self titleBlock];
    itemCollection = [(MusicUsageItem *)self itemCollection];
    v6 = (titleBlock2)[2](titleBlock2, itemCollection);
  }

  else
  {
    v6 = @"FORGOT_DISPLAY_NAME_BLOCK!";
  }

  return v6;
}

- (id)subtitles
{
  subtitlesBlock = [(MusicUsageItem *)self subtitlesBlock];

  if (subtitlesBlock)
  {
    subtitlesBlock2 = [(MusicUsageItem *)self subtitlesBlock];
    itemCollection = [(MusicUsageItem *)self itemCollection];
    v6 = (subtitlesBlock2)[2](subtitlesBlock2, itemCollection);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MusicUsageItem *)self artworkCatalogBlock];

  if (artworkCatalogBlock)
  {
    artworkCatalogBlock2 = [(MusicUsageItem *)self artworkCatalogBlock];
    itemCollection = [(MusicUsageItem *)self itemCollection];
    v6 = (artworkCatalogBlock2)[2](artworkCatalogBlock2, itemCollection);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    itemCollection = [(MusicUsageItem *)self itemCollection];
    itemCollection2 = [v5 itemCollection];

    v8 = [itemCollection isEqual:itemCollection2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  itemCollection = [(MusicUsageItem *)self itemCollection];
  v3 = [itemCollection hash];

  return v3;
}

- (MusicUsageGroup)usageGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_usageGroup);

  return WeakRetained;
}

@end