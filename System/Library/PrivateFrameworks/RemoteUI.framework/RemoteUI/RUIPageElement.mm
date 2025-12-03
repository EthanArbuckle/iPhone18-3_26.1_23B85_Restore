@interface RUIPageElement
- (BOOL)isLoading;
- (NSString)title;
- (RUIPage)page;
- (id)staticValues;
- (void)setLoading:(BOOL)loading;
- (void)setTitle:(id)title;
@end

@implementation RUIPageElement

- (NSString)title
{
  page = [(RUIPageElement *)self page];
  navTitle = [page navTitle];

  return navTitle;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  page = [(RUIPageElement *)self page];
  [page setNavTitle:titleCopy];
}

- (BOOL)isLoading
{
  page = [(RUIPageElement *)self page];
  isLoading = [page isLoading];

  return isLoading;
}

- (void)setLoading:(BOOL)loading
{
  loadingCopy = loading;
  page = [(RUIPageElement *)self page];
  [page setLoading:loadingCopy];
}

- (RUIPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (id)staticValues
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setIdentifier:"title"];
  [v2 setGetter:RUIJSPage_getProperty];
  [v2 setSetter:RUIJSPage_setProperty];
  [v2 setJSPropertyAttributes:8];
  v3 = objc_opt_new();
  [v3 setIdentifier:"loading"];
  [v3 setGetter:RUIJSPage_getProperty];
  [v3 setSetter:RUIJSPage_setProperty];
  [v3 setJSPropertyAttributes:8];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

@end