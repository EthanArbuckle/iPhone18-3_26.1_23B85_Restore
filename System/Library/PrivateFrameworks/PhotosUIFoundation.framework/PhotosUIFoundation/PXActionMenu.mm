@interface PXActionMenu
+ (id)menuWithTitle:(id)title childElements:(id)elements;
- (PXActionMenu)initWithTitle:(id)title systemImageName:(id)name childElements:(id)elements;
@end

@implementation PXActionMenu

- (PXActionMenu)initWithTitle:(id)title systemImageName:(id)name childElements:(id)elements
{
  titleCopy = title;
  nameCopy = name;
  elementsCopy = elements;
  v19.receiver = self;
  v19.super_class = PXActionMenu;
  v11 = [(PXActionMenu *)&v19 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [nameCopy copy];
    systemImageName = v11->_systemImageName;
    v11->_systemImageName = v14;

    v16 = [elementsCopy copy];
    childElements = v11->_childElements;
    v11->_childElements = v16;
  }

  return v11;
}

+ (id)menuWithTitle:(id)title childElements:(id)elements
{
  elementsCopy = elements;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy systemImageName:0 childElements:elementsCopy];

  return v8;
}

@end