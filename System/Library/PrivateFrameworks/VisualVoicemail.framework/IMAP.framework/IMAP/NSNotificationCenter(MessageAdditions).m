@interface NSNotificationCenter(MessageAdditions)
- (id)mf_addImmediateObserver:()MessageAdditions selector:name:object:;
- (void)mf_removeObservers:()MessageAdditions;
@end

@implementation NSNotificationCenter(MessageAdditions)

- (id)mf_addImmediateObserver:()MessageAdditions selector:name:object:
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__NSNotificationCenter_MessageAdditions__mf_addImmediateObserver_selector_name_object___block_invoke;
  v15[3] = &unk_279E34418;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v13 = [a1 addObserverForName:v11 object:v12 queue:0 usingBlock:v15];
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);

  return v13;
}

- (void)mf_removeObservers:()MessageAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a1 removeObserver:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end