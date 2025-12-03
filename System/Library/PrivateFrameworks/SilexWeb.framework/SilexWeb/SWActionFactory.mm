@interface SWActionFactory
- (SWActionFactory)initWithNavigationManager:(id)manager;
- (id)actionForDictionary:(id)dictionary;
@end

@implementation SWActionFactory

- (SWActionFactory)initWithNavigationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SWActionFactory;
  v6 = [(SWActionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationManager, manager);
  }

  return v7;
}

- (id)actionForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"type"];
  v6 = [v5 isEqualToString:@"url"];
  if (v6)
  {
    v7 = 1;
  }

  else if ([v5 isEqualToString:@"share"])
  {
    v7 = 2;
  }

  else if ([v5 isEqualToString:@"close"])
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKey:@"info"];
  v9 = v8;
  if (v6)
  {
    v10 = [v8 objectForKey:@"URL"];
    if (v10 && ([MEMORY[0x1E695DFF8] URLWithString:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [SWURLAction alloc];
      navigationManager = [(SWActionFactory *)self navigationManager];
      v15 = [(SWURLAction *)v13 initWithURL:v12 navigationManager:navigationManager];
    }

    else
    {
      v15 = [[SWEmbedAction alloc] initWithType:0 info:v9];
    }
  }

  else
  {
    v15 = [[SWEmbedAction alloc] initWithType:v7 info:v8];
  }

  return v15;
}

@end