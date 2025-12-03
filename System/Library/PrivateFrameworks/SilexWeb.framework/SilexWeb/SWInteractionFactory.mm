@interface SWInteractionFactory
- (SWInteractionFactory)initWithNavigationManager:(id)manager;
- (id)interactionForDictionary:(id)dictionary;
@end

@implementation SWInteractionFactory

- (SWInteractionFactory)initWithNavigationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SWInteractionFactory;
  v6 = [(SWInteractionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationManager, manager);
  }

  return v7;
}

- (id)interactionForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"type"];
  if ([v5 isEqualToString:@"interactable"])
  {
    v6 = 1;
LABEL_8:
    v12 = [[SWInteraction alloc] initWithType:v6];
    goto LABEL_11;
  }

  if (![v5 isEqualToString:@"selectable"])
  {
    v6 = 0;
    goto LABEL_8;
  }

  v7 = [dictionaryCopy objectForKey:@"URL"];
  if (v7 && ([MEMORY[0x1E695DFF8] URLWithString:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [SWURLInteraction alloc];
    navigationManager = [(SWInteractionFactory *)self navigationManager];
    v12 = [(SWURLInteraction *)v10 initWithURL:v9 navigationManager:navigationManager];
  }

  else
  {
    v12 = [[SWInteraction alloc] initWithType:0];
  }

LABEL_11:

  return v12;
}

@end