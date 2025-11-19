@interface QLCoreSpotlightExtensionPreview
- (QLCoreSpotlightExtensionPreview)initWithCoder:(id)a3;
- (QLCoreSpotlightExtensionPreview)initWithQuery:(id)a3 searchableItemURL:(id)a4 searchableItemTitle:(id)a5 searchableItemUUID:(id)a6 description:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLCoreSpotlightExtensionPreview

- (QLCoreSpotlightExtensionPreview)initWithQuery:(id)a3 searchableItemURL:(id)a4 searchableItemTitle:(id)a5 searchableItemUUID:(id)a6 description:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = QLCoreSpotlightExtensionPreview;
  v16 = [(QLExtensionPreview *)&v19 initWithDescription:a7];
  v17 = v16;
  if (v16)
  {
    [(QLCoreSpotlightExtensionPreview *)v16 setQuery:v12];
    [(QLCoreSpotlightExtensionPreview *)v17 setSearchableItemURL:v13];
    [(QLCoreSpotlightExtensionPreview *)v17 setSearchableItemTitle:v14];
    [(QLCoreSpotlightExtensionPreview *)v17 setSearchableItemUniqueIdentifier:v15];
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = QLCoreSpotlightExtensionPreview;
  v4 = a3;
  [(QLExtensionPreview *)&v9 encodeWithCoder:v4];
  v5 = [(QLCoreSpotlightExtensionPreview *)self searchableItemUniqueIdentifier:v9.receiver];
  [v4 encodeObject:v5 forKey:@"searchableItemUniqueIdentifier"];

  v6 = [(QLCoreSpotlightExtensionPreview *)self query];
  [v4 encodeObject:v6 forKey:@"query"];

  v7 = [(QLCoreSpotlightExtensionPreview *)self searchableItemTitle];
  [v4 encodeObject:v7 forKey:@"searchableItemTitle"];

  v8 = [(QLCoreSpotlightExtensionPreview *)self searchableItemURL];
  [v4 encodeObject:v8 forKey:@"searchableItemURL"];
}

- (QLCoreSpotlightExtensionPreview)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = QLCoreSpotlightExtensionPreview;
  v5 = [(QLExtensionPreview *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemUniqueIdentifier"];
    [(QLCoreSpotlightExtensionPreview *)v5 setSearchableItemUniqueIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    [(QLCoreSpotlightExtensionPreview *)v5 setQuery:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemTitle"];
    [(QLCoreSpotlightExtensionPreview *)v5 setSearchableItemTitle:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemURL"];
    [(QLCoreSpotlightExtensionPreview *)v5 setSearchableItemURL:v9];
  }

  return v5;
}

@end