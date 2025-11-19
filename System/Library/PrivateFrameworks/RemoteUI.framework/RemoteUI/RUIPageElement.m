@interface RUIPageElement
- (BOOL)isLoading;
- (NSString)title;
- (RUIPage)page;
- (id)staticValues;
- (void)setLoading:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation RUIPageElement

- (NSString)title
{
  v2 = [(RUIPageElement *)self page];
  v3 = [v2 navTitle];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(RUIPageElement *)self page];
  [v5 setNavTitle:v4];
}

- (BOOL)isLoading
{
  v2 = [(RUIPageElement *)self page];
  v3 = [v2 isLoading];

  return v3;
}

- (void)setLoading:(BOOL)a3
{
  v3 = a3;
  v4 = [(RUIPageElement *)self page];
  [v4 setLoading:v3];
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