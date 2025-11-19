@interface SWShareConfiguration
- (SWShareConfiguration)initWithTitle:(id)a3 shareItems:(id)a4;
@end

@implementation SWShareConfiguration

- (SWShareConfiguration)initWithTitle:(id)a3 shareItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SWShareConfiguration;
  v8 = [(SWShareConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    shareItems = v8->_shareItems;
    v8->_shareItems = v11;
  }

  return v8;
}

@end