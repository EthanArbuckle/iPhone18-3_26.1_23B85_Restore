@interface NSMutableSet
- (void)mb_minusPathSet:(id)a3;
@end

@implementation NSMutableSet

- (void)mb_minusPathSet:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 mb_pathComponentExistsInSet:{v4, v12}] & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)v6 setSet:v5];
}

@end