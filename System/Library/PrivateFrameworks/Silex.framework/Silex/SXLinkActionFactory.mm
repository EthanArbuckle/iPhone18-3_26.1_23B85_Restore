@interface SXLinkActionFactory
- (SXLinkActionFactory)initWithURLActionFactory:(id)factory;
- (id)actionForAddition:(id)addition;
- (id)actionForURL:(id)l;
@end

@implementation SXLinkActionFactory

- (SXLinkActionFactory)initWithURLActionFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = SXLinkActionFactory;
  v6 = [(SXLinkActionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URLActionFactory, factory);
  }

  return v7;
}

- (id)actionForAddition:(id)addition
{
  additionCopy = addition;
  if (additionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uRLActionFactory = [(SXLinkActionFactory *)self URLActionFactory];
    v6 = [additionCopy URL];
    analytics = [additionCopy analytics];
    v8 = [uRLActionFactory actionForURL:v6 analytics:analytics openInBrowser:{objc_msgSend(additionCopy, "openInBrowser")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)actionForURL:(id)l
{
  if (l)
  {
    v4 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v4 queryValueForName:@"URL"];
    v7 = [v5 URLWithString:v6];

    if (v7)
    {
      uRLActionFactory = [(SXLinkActionFactory *)self URLActionFactory];
      v9 = [uRLActionFactory actionForURL:v7];
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