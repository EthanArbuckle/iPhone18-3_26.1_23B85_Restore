@interface _UVBSActionHandler
- (_UVBSActionHandler)initWithHandler:(id)a3;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UVBSActionHandler

- (_UVBSActionHandler)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UVBSActionHandler;
  v5 = [(_UVBSActionHandler *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
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