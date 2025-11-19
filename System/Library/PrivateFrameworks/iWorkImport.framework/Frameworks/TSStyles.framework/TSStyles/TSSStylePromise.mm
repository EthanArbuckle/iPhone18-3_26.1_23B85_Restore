@interface TSSStylePromise
+ (id)promiseForStyle:(id)a3;
- (TSSStylePromise)initWithStyle:(id)a3;
- (void)addPromisee:(id)a3;
- (void)fulfillWithStyle:(id)a3;
@end

@implementation TSSStylePromise

+ (id)promiseForStyle:(id)a3
{
  v3 = a3;
  v4 = [TSSStylePromise alloc];
  v6 = objc_msgSend_initWithStyle_(v4, v5, v3);

  return v6;
}

- (TSSStylePromise)initWithStyle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSSStylePromise;
  v6 = [(TSSStylePromise *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceStyle, a3);
  }

  return v7;
}

- (void)addPromisee:(id)a3
{
  v4 = a3;
  promisees = self->_promisees;
  v8 = v4;
  if (!promisees)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_promisees;
    self->_promisees = v6;

    v4 = v8;
    promisees = self->_promisees;
  }

  objc_msgSend_addObject_(promisees, v4, v4);
}

- (void)fulfillWithStyle:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_promisees;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_276CB47B0;
        v15[3] = &unk_27A6EF0B0;
        v15[4] = self;
        v16 = v4;
        objc_msgSend_replaceReferencedStylesUsingBlock_(v11, v12, v15);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v17, v21, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end