@interface WBSPageTestBundle
- (WBSPageTestBundle)initWithIdentifier:(id)identifier tests:(id)tests;
@end

@implementation WBSPageTestBundle

- (WBSPageTestBundle)initWithIdentifier:(id)identifier tests:(id)tests
{
  identifierCopy = identifier;
  testsCopy = tests;
  v13.receiver = self;
  v13.super_class = WBSPageTestBundle;
  v9 = [(WBSPageTestBundle *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_allTests, tests);
    v11 = v10;
  }

  return v10;
}

@end