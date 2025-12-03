@interface _PXSharedLibrarySettingsItem
+ (id)itemWithTitle:(id)title;
@end

@implementation _PXSharedLibrarySettingsItem

+ (id)itemWithTitle:(id)title
{
  titleCopy = title;
  v5 = objc_alloc_init(self);
  [v5 setTitle:titleCopy];

  return v5;
}

@end