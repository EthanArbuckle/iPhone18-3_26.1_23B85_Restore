@interface VUIAppDocumentUpdateEventStore
- (NSArray)events;
- (VUIAppDocumentUpdateEventStore)init;
- (id)description;
- (void)addEvent:(id)event;
- (void)addEvents:(id)events;
- (void)removeAllEvents;
- (void)removeEvent:(id)event;
@end

@implementation VUIAppDocumentUpdateEventStore

- (VUIAppDocumentUpdateEventStore)init
{
  v6.receiver = self;
  v6.super_class = VUIAppDocumentUpdateEventStore;
  v2 = [(VUIAppDocumentUpdateEventStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    eventByEventDescriptor = v2->_eventByEventDescriptor;
    v2->_eventByEventDescriptor = v3;
  }

  return v2;
}

- (NSArray)events
{
  eventByEventDescriptor = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  allValues = [eventByEventDescriptor allValues];

  return allValues;
}

- (void)addEvent:(id)event
{
  v8 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = MEMORY[0x1E695DEC8];
  eventCopy2 = event;
  v6 = [v4 arrayWithObjects:&eventCopy count:1];

  [(VUIAppDocumentUpdateEventStore *)self addEvents:v6, eventCopy, v8];
}

- (void)addEvents:(id)events
{
  v22 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  eventByEventDescriptor = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        descriptor = [v11 descriptor];
        v13 = [eventByEventDescriptor objectForKey:descriptor];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 coalescedEvent:v11];
        }

        else
        {
          v15 = v11;
        }

        v16 = v15;
        [eventByEventDescriptor vui_setOrRemoveObject:v15 forKey:descriptor];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)removeEvent:(id)event
{
  eventCopy = event;
  eventByEventDescriptor = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  descriptor = [eventCopy descriptor];

  [eventByEventDescriptor removeObjectForKey:descriptor];
}

- (void)removeAllEvents
{
  eventByEventDescriptor = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  [eventByEventDescriptor removeAllObjects];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIAppDocumentUpdateEventStore;
  v4 = [(VUIAppDocumentUpdateEventStore *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  eventByEventDescriptor = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  v7 = [v5 stringWithFormat:@"%@=%@", @"eventByEventDescriptor", eventByEventDescriptor];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end