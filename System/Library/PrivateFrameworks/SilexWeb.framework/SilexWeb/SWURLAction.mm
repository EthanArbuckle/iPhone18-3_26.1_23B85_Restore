@interface SWURLAction
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SWURLAction)initWithURL:(id)l navigationManager:(id)manager;
- (void)perform;
@end

@implementation SWURLAction

- (SWURLAction)initWithURL:(id)l navigationManager:(id)manager
{
  lCopy = l;
  managerCopy = manager;
  if (lCopy)
  {
    v13.receiver = self;
    v13.super_class = SWURLAction;
    v8 = [(SWURLAction *)&v13 init];
    if (v8)
    {
      v9 = [lCopy copy];
      URL = v8->_URL;
      v8->_URL = v9;

      objc_storeStrong(&v8->_navigationManager, manager);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)perform
{
  navigationManager = [(SWURLAction *)self navigationManager];
  v3 = MEMORY[0x1E696AF68];
  v4 = [(SWURLAction *)self URL];
  v5 = [v3 requestWithURL:v4];
  [navigationManager actionForRequest:v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(SWURLAction *)self type], v5 == [(SWURLAction *)equalCopy type]))
    {
      v6 = [(SWURLAction *)self URL];
      v7 = [(SWURLAction *)equalCopy URL];
      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SWURLAction *)self URL];
  v6 = [v3 stringWithFormat:@"<%@: %p type: %@; URL: %@>", v4, self, @"URL", v5];;

  return v6;
}

@end