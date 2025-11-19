@interface MusicUsageItem
+ (MusicUsageItem)usageItemWithItemCollection:(id)a3 displayNameBlock:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MusicUsageGroup)usageGroup;
- (id)artworkCatalog;
- (id)subtitles;
- (id)title;
- (unint64_t)hash;
@end

@implementation MusicUsageItem

+ (MusicUsageItem)usageItemWithItemCollection:(id)a3 displayNameBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MusicUsageItem);
  [(MusicUsageItem *)v7 setItemCollection:v6];

  [(MusicUsageItem *)v7 setTitleBlock:v5];

  return v7;
}

- (id)title
{
  v3 = [(MusicUsageItem *)self titleBlock];

  if (v3)
  {
    v4 = [(MusicUsageItem *)self titleBlock];
    v5 = [(MusicUsageItem *)self itemCollection];
    v6 = (v4)[2](v4, v5);
  }

  else
  {
    v6 = @"FORGOT_DISPLAY_NAME_BLOCK!";
  }

  return v6;
}

- (id)subtitles
{
  v3 = [(MusicUsageItem *)self subtitlesBlock];

  if (v3)
  {
    v4 = [(MusicUsageItem *)self subtitlesBlock];
    v5 = [(MusicUsageItem *)self itemCollection];
    v6 = (v4)[2](v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)artworkCatalog
{
  v3 = [(MusicUsageItem *)self artworkCatalogBlock];

  if (v3)
  {
    v4 = [(MusicUsageItem *)self artworkCatalogBlock];
    v5 = [(MusicUsageItem *)self itemCollection];
    v6 = (v4)[2](v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MusicUsageItem *)self itemCollection];
    v7 = [v5 itemCollection];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(MusicUsageItem *)self itemCollection];
  v3 = [v2 hash];

  return v3;
}

- (MusicUsageGroup)usageGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_usageGroup);

  return WeakRetained;
}

@end