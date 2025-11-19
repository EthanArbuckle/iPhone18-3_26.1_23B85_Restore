@interface SVXServiceCommandHandlerRegistry
- (SVXServiceCommandHandlerRegistry)initWithHandlers:(id)a3;
- (id)handlersForCommand:(id)a3;
@end

@implementation SVXServiceCommandHandlerRegistry

- (id)handlersForCommand:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_opt_class();
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      handlersByServiceCommandClassName = self->_handlersByServiceCommandClassName;
      v9 = NSStringFromClass(v7);
      v10 = [(NSDictionary *)handlersByServiceCommandClassName objectForKey:v9];

      if ([v10 count])
      {
        [v5 addObjectsFromArray:v10];
      }

      if (v7 == objc_opt_class())
      {
        break;
      }

      v7 = [(objc_class *)v7 superclass];

      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v11 = [v5 copy];

  return v11;
}

- (SVXServiceCommandHandlerRegistry)initWithHandlers:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SVXServiceCommandHandlerRegistry;
  v5 = [(SVXServiceCommandHandlerRegistry *)&v37 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [objc_opt_class() supportedCommandClass];
          v14 = NSStringFromClass(v13);
          v15 = [v6 objectForKey:v14];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v6 setObject:v15 forKey:v14];
          }

          [v15 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v9);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [v6 allKeys];
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * j);
          v22 = [v6 objectForKey:v21];
          v23 = [v22 copy];
          [v6 setObject:v23 forKey:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v18);
    }

    v24 = [v6 copy];
    handlersByServiceCommandClassName = v5->_handlersByServiceCommandClassName;
    v5->_handlersByServiceCommandClassName = v24;

    v4 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

@end