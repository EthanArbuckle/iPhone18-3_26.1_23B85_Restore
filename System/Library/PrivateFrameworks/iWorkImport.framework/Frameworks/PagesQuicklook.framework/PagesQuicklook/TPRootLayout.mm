@interface TPRootLayout
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)setChildren:(id)children;
@end

@implementation TPRootLayout

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  childCopy = child;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();

  if (v7)
  {
    v8.receiver = self;
    v8.super_class = TPRootLayout;
    [(TPRootLayout *)&v8 insertChild:v7 atIndex:index];
  }

  else
  {
    TSULogBacktrace();
  }
}

- (void)setChildren:(id)children
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  childrenCopy = children;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v5, v6, v7, v8, v9, &v21, v25, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(childrenCopy);
        }

        objc_opt_class();
        v14 = TSUCheckedDynamicCast();
        if (!v14)
        {
          TSULogBacktrace();

          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v15, v16, v17, v18, v19, &v21, v25, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20.receiver = self;
  v20.super_class = TPRootLayout;
  [(TPRootLayout *)&v20 setChildren:childrenCopy];
LABEL_11:
}

@end