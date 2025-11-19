@interface PUIFontPickerItem
- (PUIFontPickerItem)initWithFont:(id)a3 systemItem:(BOOL)a4;
@end

@implementation PUIFontPickerItem

- (PUIFontPickerItem)initWithFont:(id)a3 systemItem:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PUIFontPickerItem;
  v8 = [(PUIFontPickerItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_font, a3);
    v9->_systemItem = a4;
  }

  return v9;
}

@end