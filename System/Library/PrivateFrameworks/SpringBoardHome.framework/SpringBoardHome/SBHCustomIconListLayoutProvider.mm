@interface SBHCustomIconListLayoutProvider
- (SBHCustomIconListLayoutProvider)initWithListLayouts:(id)a3 defaultLayout:(id)a4;
- (id)layoutForIconLocation:(id)a3;
@end

@implementation SBHCustomIconListLayoutProvider

- (SBHCustomIconListLayoutProvider)initWithListLayouts:(id)a3 defaultLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBHCustomIconListLayoutProvider;
  v8 = [(SBHCustomIconListLayoutProvider *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    listLayouts = v8->_listLayouts;
    v8->_listLayouts = v9;

    objc_storeStrong(&v8->_defaultLayout, a4);
  }

  return v8;
}

- (id)layoutForIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBHCustomIconListLayoutProvider *)self listLayouts];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [(SBHCustomIconListLayoutProvider *)self defaultLayout];
  }

  return v6;
}

@end