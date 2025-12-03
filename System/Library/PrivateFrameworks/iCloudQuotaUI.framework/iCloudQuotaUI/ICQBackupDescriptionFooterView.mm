@interface ICQBackupDescriptionFooterView
- (ICQBackupDescriptionFooterView)initWithSpecifier:(id)specifier;
@end

@implementation ICQBackupDescriptionFooterView

- (ICQBackupDescriptionFooterView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = ICQBackupDescriptionFooterView;
  v5 = [(PSFooterHyperlinkView *)&v16 initWithSpecifier:specifierCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"BACKUPS_INFO_LEARN_MORE" value:&stru_28844FC60 table:@"Backup"];

    v8 = MEMORY[0x277CCACA8];
    v9 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF88]];
    v10 = [v8 stringWithFormat:@"%@ %@", v9, v7];
    [(PSFooterHyperlinkView *)v5 setText:v10];

    text = [(PSFooterHyperlinkView *)v5 text];
    v12 = [text rangeOfString:v7];
    [(PSFooterHyperlinkView *)v5 setLinkRange:v12, v13];

    target = [specifierCopy target];
    [(PSFooterHyperlinkView *)v5 setTarget:target];

    [(PSFooterHyperlinkView *)v5 setAction:sel_openBackupHelpPage_];
  }

  return v5;
}

@end