@interface SBSApplicationShortcutContactIcon(ShortcutUIKit)
- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit;
@end

@implementation SBSApplicationShortcutContactIcon(ShortcutUIKit)

- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:2 diameter:35.0];
  contactIdentifier = [self contactIdentifier];
  if (!contactIdentifier)
  {
    goto LABEL_13;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v5 = [MEMORY[0x277CBDC70] descriptorForRequiredKeysIncludingImage:1];
  v19[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v4 unifiedContactWithIdentifier:contactIdentifier keysToFetch:v6 error:0];

  if (!v7 || ([v2 monogramForContact:v7], silhouetteMonogram = objc_claimAutoreleasedReturnValue(), v7, !silhouetteMonogram))
  {
LABEL_13:
    imageData = [self imageData];
    if (!imageData)
    {
      goto LABEL_14;
    }

    v10 = imageData;
    v11 = objc_alloc_init(MEMORY[0x277CBDB38]);
    [v11 setImageData:v10];
    firstName = [self firstName];
    [v11 setGivenName:firstName];

    lastName = [self lastName];
    [v11 setFamilyName:lastName];

    silhouetteMonogram = [v2 monogramForContact:v11];

    if (!silhouetteMonogram)
    {
LABEL_14:
      firstName2 = [self firstName];
      lastName2 = [self lastName];
      silhouetteMonogram = [v2 monogramForPersonWithFirstName:firstName2 lastName:lastName2];

      if (!silhouetteMonogram)
      {
        silhouetteMonogram = [v2 silhouetteMonogram];
      }
    }
  }

  v16 = [silhouetteMonogram imageWithRenderingMode:1];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end