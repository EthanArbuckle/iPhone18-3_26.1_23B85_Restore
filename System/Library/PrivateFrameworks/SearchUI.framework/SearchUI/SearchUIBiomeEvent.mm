@interface SearchUIBiomeEvent
+ (id)eventForEvent:(id)event contextualAction:(id)action;
- (SearchUIBiomeEvent)initWithEvent:(id)event contextualAction:(id)action;
- (void)getEnabledStatusWithCompletion:(id)completion;
@end

@implementation SearchUIBiomeEvent

+ (id)eventForEvent:(id)event contextualAction:(id)action
{
  v21[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  actionCopy = action;
  v7 = eventForEvent_contextualAction__classes;
  if (!eventForEvent_contextualAction__classes)
  {
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v9 = eventForEvent_contextualAction__classes;
    eventForEvent_contextualAction__classes = v8;

    v7 = eventForEvent_contextualAction__classes;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([(objc_class *)v14 supportsEvent:eventCopy contextualAction:actionCopy, v16]& 1) != 0)
        {
          v11 = [[v14 alloc] initWithEvent:eventCopy contextualAction:actionCopy];
          goto LABEL_13;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v11;
}

- (SearchUIBiomeEvent)initWithEvent:(id)event contextualAction:(id)action
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = SearchUIBiomeEvent;
  v6 = [(BMEventBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SearchUIBiomeEvent *)v6 setBiomeEvent:eventCopy];
  }

  return v7;
}

- (void)getEnabledStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  biomeEvent = [(SearchUIBiomeEvent *)self biomeEvent];
  if (biomeEvent && (v5 = biomeEvent, [(SearchUIBiomeEvent *)self biomeEvent], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, v5, (v7 & 1) != 0))
  {
    biomeEvent2 = [(SearchUIBiomeEvent *)self biomeEvent];
    [biomeEvent2 getEnabledStatusWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

@end