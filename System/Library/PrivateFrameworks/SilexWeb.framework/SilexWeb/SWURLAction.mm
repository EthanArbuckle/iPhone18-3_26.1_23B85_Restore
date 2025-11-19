@interface SWURLAction
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SWURLAction)initWithURL:(id)a3 navigationManager:(id)a4;
- (void)perform;
@end

@implementation SWURLAction

- (SWURLAction)initWithURL:(id)a3 navigationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13.receiver = self;
    v13.super_class = SWURLAction;
    v8 = [(SWURLAction *)&v13 init];
    if (v8)
    {
      v9 = [v6 copy];
      URL = v8->_URL;
      v8->_URL = v9;

      objc_storeStrong(&v8->_navigationManager, a4);
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)perform
{
  v6 = [(SWURLAction *)self navigationManager];
  v3 = MEMORY[0x1E696AF68];
  v4 = [(SWURLAction *)self URL];
  v5 = [v3 requestWithURL:v4];
  [v6 actionForRequest:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(SWURLAction *)self type], v5 == [(SWURLAction *)v4 type]))
    {
      v6 = [(SWURLAction *)self URL];
      v7 = [(SWURLAction *)v4 URL];
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