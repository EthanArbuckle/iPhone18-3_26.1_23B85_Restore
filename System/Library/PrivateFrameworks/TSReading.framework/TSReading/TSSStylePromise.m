@interface TSSStylePromise
+ (id)promiseForStyle:(id)a3;
- (TSSStylePromise)initWithStyle:(id)a3;
- (void)addPromisee:(id)a3;
- (void)dealloc;
- (void)fulfillWithStyle:(id)a3;
@end

@implementation TSSStylePromise

+ (id)promiseForStyle:(id)a3
{
  v3 = [[TSSStylePromise alloc] initWithStyle:a3];

  return v3;
}

- (TSSStylePromise)initWithStyle:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSSStylePromise;
  v4 = [(TSSStylePromise *)&v6 init];
  if (v4)
  {
    v4->_sourceStyle = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSStylePromise;
  [(TSSStylePromise *)&v3 dealloc];
}

- (void)addPromisee:(id)a3
{
  promisees = self->_promisees;
  if (!promisees)
  {
    promisees = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_promisees = promisees;
  }

  [(NSMutableArray *)promisees addObject:a3];
}

- (void)fulfillWithStyle:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  promisees = self->_promisees;
  v6 = [(NSMutableArray *)promisees countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(promisees);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __36__TSSStylePromise_fulfillWithStyle___block_invoke;
        v11[3] = &unk_279D48180;
        v11[4] = self;
        v11[5] = a3;
        [v10 replaceReferencedStylesUsingBlock:v11];
      }

      v7 = [(NSMutableArray *)promisees countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

uint64_t __36__TSSStylePromise_fulfillWithStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return *(a1 + 40);
  }

  return a2;
}

@end