@interface WLKLookupBasedInstallable
- (NSArray)appAdamIDs;
- (NSArray)appBundleIDs;
- (NSString)name;
- (NSString)title;
- (NSURL)appStoreURL;
- (WLKLookupBasedInstallable)init;
- (WLKLookupBasedInstallable)initWithLookupItem:(id)item;
- (id)appIconURLForSize:(CGSize)size;
@end

@implementation WLKLookupBasedInstallable

- (WLKLookupBasedInstallable)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Use -initWithLookupItem: instead."];

  return 0;
}

- (WLKLookupBasedInstallable)initWithLookupItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item must not be nil."];
  }

  v9.receiver = self;
  v9.super_class = WLKLookupBasedInstallable;
  v6 = [(WLKLookupBasedInstallable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

- (NSString)title
{
  item = [(WLKLookupBasedInstallable *)self item];
  displayName = [item displayName];

  return displayName;
}

- (NSString)name
{
  item = [(WLKLookupBasedInstallable *)self item];
  displayName = [item displayName];

  return displayName;
}

- (NSArray)appBundleIDs
{
  v7[1] = *MEMORY[0x277D85DE8];
  item = [(WLKLookupBasedInstallable *)self item];
  bundleIdentifier = [item bundleIdentifier];
  v7[0] = bundleIdentifier;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSArray)appAdamIDs
{
  v8[1] = *MEMORY[0x277D85DE8];
  item = [(WLKLookupBasedInstallable *)self item];
  iTunesStoreIdentifier = [item iTunesStoreIdentifier];
  stringValue = [iTunesStoreIdentifier stringValue];
  v8[0] = stringValue;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)appIconURLForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  item = [(WLKLookupBasedInstallable *)self item];
  itemDictionary = [item itemDictionary];

  v7 = [itemDictionary wlk_dictionaryForKey:@"artwork"];
  v8 = [v7 wlk_stringForKey:@"url"];
  height = [WLKArtworkVariant artworkURLFromTemplate:v8 forSize:@"png" format:width, height];

  return height;
}

- (NSURL)appStoreURL
{
  item = [(WLKLookupBasedInstallable *)self item];
  productPageURL = [item productPageURL];

  return productPageURL;
}

@end