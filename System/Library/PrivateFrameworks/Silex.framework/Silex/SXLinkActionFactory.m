@interface SXLinkActionFactory
- (SXLinkActionFactory)initWithURLActionFactory:(id)a3;
- (id)actionForAddition:(id)a3;
- (id)actionForURL:(id)a3;
@end

@implementation SXLinkActionFactory

- (SXLinkActionFactory)initWithURLActionFactory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXLinkActionFactory;
  v6 = [(SXLinkActionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URLActionFactory, a3);
  }

  return v7;
}

- (id)actionForAddition:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(SXLinkActionFactory *)self URLActionFactory];
    v6 = [v4 URL];
    v7 = [v4 analytics];
    v8 = [v5 actionForURL:v6 analytics:v7 openInBrowser:{objc_msgSend(v4, "openInBrowser")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)actionForURL:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v4 queryValueForName:@"URL"];
    v7 = [v5 URLWithString:v6];

    if (v7)
    {
      v8 = [(SXLinkActionFactory *)self URLActionFactory];
      v9 = [v8 actionForURL:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end