@interface VUIAppDocumentUpdateEventStore
- (NSArray)events;
- (VUIAppDocumentUpdateEventStore)init;
- (id)description;
- (void)addEvent:(id)a3;
- (void)addEvents:(id)a3;
- (void)removeAllEvents;
- (void)removeEvent:(id)a3;
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
  v2 = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  v3 = [v2 allValues];

  return v3;
}

- (void)addEvent:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(VUIAppDocumentUpdateEventStore *)self addEvents:v6, v7, v8];
}

- (void)addEvents:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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
        v12 = [v11 descriptor];
        v13 = [v5 objectForKey:v12];
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
        [v5 vui_setOrRemoveObject:v15 forKey:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)removeEvent:(id)a3
{
  v4 = a3;
  v6 = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  v5 = [v4 descriptor];

  [v6 removeObjectForKey:v5];
}

- (void)removeAllEvents
{
  v2 = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  [v2 removeAllObjects];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIAppDocumentUpdateEventStore;
  v4 = [(VUIAppDocumentUpdateEventStore *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIAppDocumentUpdateEventStore *)self eventByEventDescriptor];
  v7 = [v5 stringWithFormat:@"%@=%@", @"eventByEventDescriptor", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end