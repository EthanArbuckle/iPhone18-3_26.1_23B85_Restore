@interface PUCopyEditsSettingSection
- (PUCopyEditsSettingSection)initWithItems:(id)a3 header:(id)a4 footer:(id)a5;
@end

@implementation PUCopyEditsSettingSection

- (PUCopyEditsSettingSection)initWithItems:(id)a3 header:(id)a4 footer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PUCopyEditsSettingSection;
  v12 = [(PUCopyEditsSettingSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_items, a3);
    objc_storeStrong(&v13->_header, a4);
    objc_storeStrong(&v13->_footer, a5);
  }

  return v13;
}

@end