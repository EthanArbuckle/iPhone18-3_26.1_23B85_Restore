@interface SBHIconShareSheetActivityItemProvider
- (SBHIconShareSheetActivityItemProvider)initWithIconManager:(id)a3 icon:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation SBHIconShareSheetActivityItemProvider

- (SBHIconShareSheetActivityItemProvider)initWithIconManager:(id)a3 icon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DEF0] data];
  v44.receiver = self;
  v44.super_class = SBHIconShareSheetActivityItemProvider;
  v9 = [(UIActivityItemProvider *)&v44 initWithPlaceholderItem:v8];
  if (v9)
  {
    if (![v7 isLeafIcon] || (objc_msgSend(v7, "applicationBundleID"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v20 = objc_opt_class();
      v21 = v7;
      if (v20)
      {
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      v11 = [v23 webClip];

      v24 = [v11 pageURL];
      itemURL = v9->_itemURL;
      v9->_itemURL = v24;

      v26 = [v11 title];
      itemName = v9->_itemName;
      v9->_itemName = v26;
      goto LABEL_16;
    }

    v11 = v10;
    itemName = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
    v13 = [(NSString *)itemName iTunesMetadata];
    iTunesMetadata = v9->_iTunesMetadata;
    v9->_iTunesMetadata = v13;

    v15 = [(LSiTunesMetadata *)v9->_iTunesMetadata distributorInfo];
    v16 = [v15 shareURL];

    v17 = [(LSiTunesMetadata *)v9->_iTunesMetadata distributorInfo];
    v18 = v17;
    if (v16)
    {
      v19 = [v17 shareURL];
    }

    else
    {
      v27 = [v17 sourceURL];

      v28 = v9->_iTunesMetadata;
      if (!v27)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[LSiTunesMetadata storeItemIdentifier](v28, "storeItemIdentifier")}];
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://apps.apple.com/app/id%@", v18];
        v42 = [MEMORY[0x1E695DFF8] URLWithString:v32];
        v43 = v9->_itemURL;
        v9->_itemURL = v42;

        goto LABEL_15;
      }

      v29 = MEMORY[0x1E696AF20];
      v30 = [(LSiTunesMetadata *)v28 distributorInfo];
      v31 = [v30 sourceURL];
      v18 = [v29 componentsWithURL:v31 resolvingAgainstBaseURL:0];

      [v18 setPath:0];
      v19 = [v18 URL];
    }

    v32 = v9->_itemURL;
    v9->_itemURL = v19;
LABEL_15:

    v33 = [(LSiTunesMetadata *)v9->_iTunesMetadata itemName];
    v34 = v9->_itemName;
    v9->_itemName = v33;

LABEL_16:
    v35 = [v6 iconImageCache];
    v36 = [v6 rootViewController];
    v37 = [v36 traitCollection];
    v38 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v37];
    v39 = [v35 imageForIcon:v7 imageAppearance:v38 options:0];
    itemImage = v9->_itemImage;
    v9->_itemImage = v39;
  }

  return v9;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  v5 = [(SBHIconShareSheetActivityItemProvider *)self itemURL];
  [v4 setOriginalURL:v5];
  [v4 setURL:v5];
  v6 = objc_alloc_init(MEMORY[0x1E696ED50]);
  v7 = [(SBHIconShareSheetActivityItemProvider *)self itemName];
  [v6 setName:v7];

  v8 = [(SBHIconShareSheetActivityItemProvider *)self iTunesMetadata];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 artistName];
    [v6 setSubtitle:v10];

    v11 = [v9 genre];
    [v6 setGenre:v11];
  }

  else
  {
    v11 = [v5 host];
    [v6 setSubtitle:v11];
  }

  v12 = objc_alloc(MEMORY[0x1E696EC68]);
  v13 = [(SBHIconShareSheetActivityItemProvider *)self itemImage];
  v14 = UIImagePNGRepresentation(v13);
  v15 = [v12 initWithData:v14 MIMEType:@"image/png"];

  [v6 setIcon:v15];
  [v4 setSpecialization:v6];

  return v4;
}

@end