@interface SWShareConfiguration
- (SWShareConfiguration)initWithTitle:(id)title shareItems:(id)items;
@end

@implementation SWShareConfiguration

- (SWShareConfiguration)initWithTitle:(id)title shareItems:(id)items
{
  titleCopy = title;
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = SWShareConfiguration;
  v8 = [(SWShareConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [itemsCopy copy];
    shareItems = v8->_shareItems;
    v8->_shareItems = v11;
  }

  return v8;
}

@end