@interface SBHCustomIconListLayoutProvider
- (SBHCustomIconListLayoutProvider)initWithListLayouts:(id)layouts defaultLayout:(id)layout;
- (id)layoutForIconLocation:(id)location;
@end

@implementation SBHCustomIconListLayoutProvider

- (SBHCustomIconListLayoutProvider)initWithListLayouts:(id)layouts defaultLayout:(id)layout
{
  layoutsCopy = layouts;
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SBHCustomIconListLayoutProvider;
  v8 = [(SBHCustomIconListLayoutProvider *)&v12 init];
  if (v8)
  {
    v9 = [layoutsCopy copy];
    listLayouts = v8->_listLayouts;
    v8->_listLayouts = v9;

    objc_storeStrong(&v8->_defaultLayout, layout);
  }

  return v8;
}

- (id)layoutForIconLocation:(id)location
{
  locationCopy = location;
  listLayouts = [(SBHCustomIconListLayoutProvider *)self listLayouts];
  defaultLayout = [listLayouts objectForKey:locationCopy];

  if (!defaultLayout)
  {
    defaultLayout = [(SBHCustomIconListLayoutProvider *)self defaultLayout];
  }

  return defaultLayout;
}

@end