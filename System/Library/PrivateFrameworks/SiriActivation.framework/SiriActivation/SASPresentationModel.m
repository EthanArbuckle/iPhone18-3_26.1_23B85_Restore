@interface SASPresentationModel
- (SASPresentationModel)initWithPresentationServer:(id)a3;
- (void)flushEnqueuedButtonEventCompletions;
@end

@implementation SASPresentationModel

- (void)flushEnqueuedButtonEventCompletions
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_enqueuedButtonEventCompletions count])
  {
    v3 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      enqueuedButtonEventCompletions = self->_enqueuedButtonEventCompletions;
      v5 = v3;
      *buf = 136315394;
      v20 = "[SASPresentationModel flushEnqueuedButtonEventCompletions]";
      v21 = 2048;
      v22 = [(NSMutableArray *)enqueuedButtonEventCompletions count];
      _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation sending completions for %lu cached event(s)", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_enqueuedButtonEventCompletions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [(SASPresentationModel *)self presentationServer];
          (*(v11 + 16))(v11, v12);

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_enqueuedButtonEventCompletions removeAllObjects];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (SASPresentationModel)initWithPresentationServer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SASPresentationModel;
  v6 = [(SASPresentationModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationServer, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    enqueuedButtonEventCompletions = v7->_enqueuedButtonEventCompletions;
    v7->_enqueuedButtonEventCompletions = v8;
  }

  return v7;
}

@end