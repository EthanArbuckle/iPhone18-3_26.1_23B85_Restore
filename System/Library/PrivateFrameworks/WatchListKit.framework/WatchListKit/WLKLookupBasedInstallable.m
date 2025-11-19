@interface WLKLookupBasedInstallable
- (NSArray)appAdamIDs;
- (NSArray)appBundleIDs;
- (NSString)name;
- (NSString)title;
- (NSURL)appStoreURL;
- (WLKLookupBasedInstallable)init;
- (WLKLookupBasedInstallable)initWithLookupItem:(id)a3;
- (id)appIconURLForSize:(CGSize)a3;
@end

@implementation WLKLookupBasedInstallable

- (WLKLookupBasedInstallable)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Use -initWithLookupItem: instead."];

  return 0;
}

- (WLKLookupBasedInstallable)initWithLookupItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item must not be nil."];
  }

  v9.receiver = self;
  v9.super_class = WLKLookupBasedInstallable;
  v6 = [(WLKLookupBasedInstallable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (NSString)title
{
  v2 = [(WLKLookupBasedInstallable *)self item];
  v3 = [v2 displayName];

  return v3;
}

- (NSString)name
{
  v2 = [(WLKLookupBasedInstallable *)self item];
  v3 = [v2 displayName];

  return v3;
}

- (NSArray)appBundleIDs
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(WLKLookupBasedInstallable *)self item];
  v3 = [v2 bundleIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSArray)appAdamIDs
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(WLKLookupBasedInstallable *)self item];
  v3 = [v2 iTunesStoreIdentifier];
  v4 = [v3 stringValue];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)appIconURLForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(WLKLookupBasedInstallable *)self item];
  v6 = [v5 itemDictionary];

  v7 = [v6 wlk_dictionaryForKey:@"artwork"];
  v8 = [v7 wlk_stringForKey:@"url"];
  v9 = [WLKArtworkVariant artworkURLFromTemplate:v8 forSize:@"png" format:width, height];

  return v9;
}

- (NSURL)appStoreURL
{
  v2 = [(WLKLookupBasedInstallable *)self item];
  v3 = [v2 productPageURL];

  return v3;
}

@end