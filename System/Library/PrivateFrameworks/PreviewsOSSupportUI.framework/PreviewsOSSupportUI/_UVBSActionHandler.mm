@interface _UVBSActionHandler
- (_UVBSActionHandler)initWithHandler:(id)handler;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UVBSActionHandler

- (_UVBSActionHandler)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = _UVBSActionHandler;
  v5 = [(_UVBSActionHandler *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v8 = [actionsCopy mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = actionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ((*(self->_handler + 2))(self->_handler))
        {
          [v8 removeObject:{v14, v17}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

@end