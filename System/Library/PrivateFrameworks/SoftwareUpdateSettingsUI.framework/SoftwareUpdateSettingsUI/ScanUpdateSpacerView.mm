@interface ScanUpdateSpacerView
- (ScanUpdateSpacerView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)refreshContentsWithSpecifier:(id)specifier;
@end

@implementation ScanUpdateSpacerView

- (ScanUpdateSpacerView)initWithSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = ScanUpdateSpacerView;
  v8 = [(PSFooterHyperlinkView *)&v9 initWithSpecifier:location[0]];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    v4 = [location[0] propertyForKey:@"SUHeight"];
    height = selfCopy->_height;
    selfCopy->_height = v4;
    MEMORY[0x277D82BD8](height);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)refreshContentsWithSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v3 = [location[0] propertyForKey:@"SUHeight"];
  height = selfCopy->_height;
  selfCopy->_height = v3;
  MEMORY[0x277D82BD8](height);
  v5.receiver = selfCopy;
  v5.super_class = ScanUpdateSpacerView;
  [(PSFooterHyperlinkView *)&v5 refreshContentsWithSpecifier:location[0]];
  objc_storeStrong(location, 0);
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  selfCopy = self;
  location[2] = a2;
  location[1] = *&width;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (!selfCopy->_height || ([(NSNumber *)selfCopy->_height floatValue], v4 == 0.0))
  {
    v9 = 0.0;
  }

  else
  {
    [(NSNumber *)selfCopy->_height floatValue];
    v9 = v5;
  }

  objc_storeStrong(location, 0);
  return v9;
}

@end