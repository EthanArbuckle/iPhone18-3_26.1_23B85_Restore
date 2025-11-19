@interface WBSPageTestBundle
- (WBSPageTestBundle)initWithIdentifier:(id)a3 tests:(id)a4;
@end

@implementation WBSPageTestBundle

- (WBSPageTestBundle)initWithIdentifier:(id)a3 tests:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSPageTestBundle;
  v9 = [(WBSPageTestBundle *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_allTests, a4);
    v11 = v10;
  }

  return v10;
}

@end