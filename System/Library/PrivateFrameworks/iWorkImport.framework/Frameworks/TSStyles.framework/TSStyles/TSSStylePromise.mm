@interface TSSStylePromise
+ (id)promiseForStyle:(id)style;
- (TSSStylePromise)initWithStyle:(id)style;
- (void)addPromisee:(id)promisee;
- (void)fulfillWithStyle:(id)style;
@end

@implementation TSSStylePromise

+ (id)promiseForStyle:(id)style
{
  styleCopy = style;
  v4 = [TSSStylePromise alloc];
  v6 = objc_msgSend_initWithStyle_(v4, v5, styleCopy);

  return v6;
}

- (TSSStylePromise)initWithStyle:(id)style
{
  styleCopy = style;
  v9.receiver = self;
  v9.super_class = TSSStylePromise;
  v6 = [(TSSStylePromise *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceStyle, style);
  }

  return v7;
}

- (void)addPromisee:(id)promisee
{
  promiseeCopy = promisee;
  promisees = self->_promisees;
  v8 = promiseeCopy;
  if (!promisees)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_promisees;
    self->_promisees = v6;

    promiseeCopy = v8;
    promisees = self->_promisees;
  }

  objc_msgSend_addObject_(promisees, promiseeCopy, promiseeCopy);
}

- (void)fulfillWithStyle:(id)style
{
  v22 = *MEMORY[0x277D85DE8];
  styleCopy = style;
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
        v16 = styleCopy;
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