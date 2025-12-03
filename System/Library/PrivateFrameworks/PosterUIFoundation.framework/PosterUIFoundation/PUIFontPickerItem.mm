@interface PUIFontPickerItem
- (PUIFontPickerItem)initWithFont:(id)font systemItem:(BOOL)item;
@end

@implementation PUIFontPickerItem

- (PUIFontPickerItem)initWithFont:(id)font systemItem:(BOOL)item
{
  fontCopy = font;
  v11.receiver = self;
  v11.super_class = PUIFontPickerItem;
  v8 = [(PUIFontPickerItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_font, font);
    v9->_systemItem = item;
  }

  return v9;
}

@end