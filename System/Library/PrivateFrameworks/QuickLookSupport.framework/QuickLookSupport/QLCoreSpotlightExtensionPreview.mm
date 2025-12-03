@interface QLCoreSpotlightExtensionPreview
- (QLCoreSpotlightExtensionPreview)initWithCoder:(id)coder;
- (QLCoreSpotlightExtensionPreview)initWithQuery:(id)query searchableItemURL:(id)l searchableItemTitle:(id)title searchableItemUUID:(id)d description:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLCoreSpotlightExtensionPreview

- (QLCoreSpotlightExtensionPreview)initWithQuery:(id)query searchableItemURL:(id)l searchableItemTitle:(id)title searchableItemUUID:(id)d description:(id)description
{
  queryCopy = query;
  lCopy = l;
  titleCopy = title;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = QLCoreSpotlightExtensionPreview;
  v16 = [(QLExtensionPreview *)&v19 initWithDescription:description];
  v17 = v16;
  if (v16)
  {
    [(QLCoreSpotlightExtensionPreview *)v16 setQuery:queryCopy];
    [(QLCoreSpotlightExtensionPreview *)v17 setSearchableItemURL:lCopy];
    [(QLCoreSpotlightExtensionPreview *)v17 setSearchableItemTitle:titleCopy];
    [(QLCoreSpotlightExtensionPreview *)v17 setSearchableItemUniqueIdentifier:dCopy];
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = QLCoreSpotlightExtensionPreview;
  coderCopy = coder;
  [(QLExtensionPreview *)&v9 encodeWithCoder:coderCopy];
  v5 = [(QLCoreSpotlightExtensionPreview *)self searchableItemUniqueIdentifier:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"searchableItemUniqueIdentifier"];

  query = [(QLCoreSpotlightExtensionPreview *)self query];
  [coderCopy encodeObject:query forKey:@"query"];

  searchableItemTitle = [(QLCoreSpotlightExtensionPreview *)self searchableItemTitle];
  [coderCopy encodeObject:searchableItemTitle forKey:@"searchableItemTitle"];

  searchableItemURL = [(QLCoreSpotlightExtensionPreview *)self searchableItemURL];
  [coderCopy encodeObject:searchableItemURL forKey:@"searchableItemURL"];
}

- (QLCoreSpotlightExtensionPreview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = QLCoreSpotlightExtensionPreview;
  v5 = [(QLExtensionPreview *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemUniqueIdentifier"];
    [(QLCoreSpotlightExtensionPreview *)v5 setSearchableItemUniqueIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    [(QLCoreSpotlightExtensionPreview *)v5 setQuery:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemTitle"];
    [(QLCoreSpotlightExtensionPreview *)v5 setSearchableItemTitle:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemURL"];
    [(QLCoreSpotlightExtensionPreview *)v5 setSearchableItemURL:v9];
  }

  return v5;
}

@end