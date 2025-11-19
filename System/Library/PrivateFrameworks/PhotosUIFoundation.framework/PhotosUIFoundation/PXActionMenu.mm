@interface PXActionMenu
+ (id)menuWithTitle:(id)a3 childElements:(id)a4;
- (PXActionMenu)initWithTitle:(id)a3 systemImageName:(id)a4 childElements:(id)a5;
@end

@implementation PXActionMenu

- (PXActionMenu)initWithTitle:(id)a3 systemImageName:(id)a4 childElements:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PXActionMenu;
  v11 = [(PXActionMenu *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    systemImageName = v11->_systemImageName;
    v11->_systemImageName = v14;

    v16 = [v10 copy];
    childElements = v11->_childElements;
    v11->_childElements = v16;
  }

  return v11;
}

+ (id)menuWithTitle:(id)a3 childElements:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 systemImageName:0 childElements:v6];

  return v8;
}

@end