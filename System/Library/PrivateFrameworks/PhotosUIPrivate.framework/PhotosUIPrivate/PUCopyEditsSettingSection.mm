@interface PUCopyEditsSettingSection
- (PUCopyEditsSettingSection)initWithItems:(id)items header:(id)header footer:(id)footer;
@end

@implementation PUCopyEditsSettingSection

- (PUCopyEditsSettingSection)initWithItems:(id)items header:(id)header footer:(id)footer
{
  itemsCopy = items;
  headerCopy = header;
  footerCopy = footer;
  v15.receiver = self;
  v15.super_class = PUCopyEditsSettingSection;
  v12 = [(PUCopyEditsSettingSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_items, items);
    objc_storeStrong(&v13->_header, header);
    objc_storeStrong(&v13->_footer, footer);
  }

  return v13;
}

@end