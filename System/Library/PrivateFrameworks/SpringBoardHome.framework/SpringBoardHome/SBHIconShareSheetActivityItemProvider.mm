@interface SBHIconShareSheetActivityItemProvider
- (SBHIconShareSheetActivityItemProvider)initWithIconManager:(id)manager icon:(id)icon;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation SBHIconShareSheetActivityItemProvider

- (SBHIconShareSheetActivityItemProvider)initWithIconManager:(id)manager icon:(id)icon
{
  managerCopy = manager;
  iconCopy = icon;
  data = [MEMORY[0x1E695DEF0] data];
  v44.receiver = self;
  v44.super_class = SBHIconShareSheetActivityItemProvider;
  v9 = [(UIActivityItemProvider *)&v44 initWithPlaceholderItem:data];
  if (v9)
  {
    if (![iconCopy isLeafIcon] || (objc_msgSend(iconCopy, "applicationBundleID"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v20 = objc_opt_class();
      v21 = iconCopy;
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

      webClip = [v23 webClip];

      pageURL = [webClip pageURL];
      itemURL = v9->_itemURL;
      v9->_itemURL = pageURL;

      title = [webClip title];
      itemName = v9->_itemName;
      v9->_itemName = title;
      goto LABEL_16;
    }

    webClip = v10;
    itemName = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
    iTunesMetadata = [(NSString *)itemName iTunesMetadata];
    iTunesMetadata = v9->_iTunesMetadata;
    v9->_iTunesMetadata = iTunesMetadata;

    distributorInfo = [(LSiTunesMetadata *)v9->_iTunesMetadata distributorInfo];
    shareURL = [distributorInfo shareURL];

    distributorInfo2 = [(LSiTunesMetadata *)v9->_iTunesMetadata distributorInfo];
    v18 = distributorInfo2;
    if (shareURL)
    {
      shareURL2 = [distributorInfo2 shareURL];
    }

    else
    {
      sourceURL = [distributorInfo2 sourceURL];

      v28 = v9->_iTunesMetadata;
      if (!sourceURL)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[LSiTunesMetadata storeItemIdentifier](v28, "storeItemIdentifier")}];
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://apps.apple.com/app/id%@", v18];
        v42 = [MEMORY[0x1E695DFF8] URLWithString:v32];
        v43 = v9->_itemURL;
        v9->_itemURL = v42;

        goto LABEL_15;
      }

      v29 = MEMORY[0x1E696AF20];
      distributorInfo3 = [(LSiTunesMetadata *)v28 distributorInfo];
      sourceURL2 = [distributorInfo3 sourceURL];
      v18 = [v29 componentsWithURL:sourceURL2 resolvingAgainstBaseURL:0];

      [v18 setPath:0];
      shareURL2 = [v18 URL];
    }

    v32 = v9->_itemURL;
    v9->_itemURL = shareURL2;
LABEL_15:

    itemName = [(LSiTunesMetadata *)v9->_iTunesMetadata itemName];
    v34 = v9->_itemName;
    v9->_itemName = itemName;

LABEL_16:
    iconImageCache = [managerCopy iconImageCache];
    rootViewController = [managerCopy rootViewController];
    traitCollection = [rootViewController traitCollection];
    v38 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
    v39 = [iconImageCache imageForIcon:iconCopy imageAppearance:v38 options:0];
    itemImage = v9->_itemImage;
    v9->_itemImage = v39;
  }

  return v9;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  itemURL = [(SBHIconShareSheetActivityItemProvider *)self itemURL];
  [v4 setOriginalURL:itemURL];
  [v4 setURL:itemURL];
  v6 = objc_alloc_init(MEMORY[0x1E696ED50]);
  itemName = [(SBHIconShareSheetActivityItemProvider *)self itemName];
  [v6 setName:itemName];

  iTunesMetadata = [(SBHIconShareSheetActivityItemProvider *)self iTunesMetadata];
  v9 = iTunesMetadata;
  if (iTunesMetadata)
  {
    artistName = [iTunesMetadata artistName];
    [v6 setSubtitle:artistName];

    genre = [v9 genre];
    [v6 setGenre:genre];
  }

  else
  {
    genre = [itemURL host];
    [v6 setSubtitle:genre];
  }

  v12 = objc_alloc(MEMORY[0x1E696EC68]);
  itemImage = [(SBHIconShareSheetActivityItemProvider *)self itemImage];
  v14 = UIImagePNGRepresentation(itemImage);
  v15 = [v12 initWithData:v14 MIMEType:@"image/png"];

  [v6 setIcon:v15];
  [v4 setSpecialization:v6];

  return v4;
}

@end