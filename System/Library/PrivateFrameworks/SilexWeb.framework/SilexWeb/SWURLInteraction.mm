@interface SWURLInteraction
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SWURLInteraction)initWithURL:(id)l navigationManager:(id)manager;
- (void)perform;
@end

@implementation SWURLInteraction

- (SWURLInteraction)initWithURL:(id)l navigationManager:(id)manager
{
  lCopy = l;
  managerCopy = manager;
  if (lCopy)
  {
    v13.receiver = self;
    v13.super_class = SWURLInteraction;
    v8 = [(SWURLInteraction *)&v13 init];
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
  navigationManager = [(SWURLInteraction *)self navigationManager];
  v3 = MEMORY[0x1E696AF68];
  v4 = [(SWURLInteraction *)self URL];
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(SWURLInteraction *)self type], v5 == [(SWURLInteraction *)equalCopy type]))
    {
      v6 = [(SWURLInteraction *)self URL];
      v7 = [(SWURLInteraction *)equalCopy URL];
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
  if ([(SWURLInteraction *)self type]== 1)
  {
    v3 = @"interactable";
  }

  else if ([(SWURLInteraction *)self type]== 2)
  {
    v3 = @"selectable";
  }

  else
  {
    v3 = @"none";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(SWURLInteraction *)self URL];
  v7 = [v4 stringWithFormat:@"<%@: %p type: %@; URL: %@>", v5, self, v3, v6];;

  return v7;
}

@end