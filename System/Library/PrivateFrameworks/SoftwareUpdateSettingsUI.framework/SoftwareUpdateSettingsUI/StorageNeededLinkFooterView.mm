@interface StorageNeededLinkFooterView
- (StorageNeededLinkFooterView)initWithSpecifier:(id)a3;
- (void)setText:(id)a3;
@end

@implementation StorageNeededLinkFooterView

- (StorageNeededLinkFooterView)initWithSpecifier:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = StorageNeededLinkFooterView;
  v9 = [(PSFooterHyperlinkView *)&v7 initWithSpecifier:location[0]];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v6 = [location[0] propertyForKey:*MEMORY[0x277D3FF88]];
    if ([v6 length])
    {
      [(StorageNeededLinkFooterView *)v9 setText:v6];
    }

    objc_storeStrong(&v6, 0);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)setText:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] length])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v6 localizedStringForKey:@"LEARN_MORE_LINK" value:&stru_287B79370 table:@"Software Update"];
    MEMORY[0x277D82BD8](v6);
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  %@", location[0], v10];
    v4 = location[0];
    location[0] = v3;
    MEMORY[0x277D82BD8](v4);
    *&v9 = [location[0] rangeOfString:v10];
    *(&v9 + 1) = v5;
    v8 = v9;
    [(PSFooterHyperlinkView *)v12 setLinkRange:v9, v5];
    objc_storeStrong(&v10, 0);
  }

  v7.receiver = v12;
  v7.super_class = StorageNeededLinkFooterView;
  [(PSFooterHyperlinkView *)&v7 setText:location[0]];
  objc_storeStrong(location, 0);
}

@end