@interface NSMutableSet
- (void)mb_minusPathSet:(id)set;
@end

@implementation NSMutableSet

- (void)mb_minusPathSet:(id)set
{
  setCopy = set;
  v5 = +[NSMutableSet set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v7 = [(NSMutableSet *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 mb_pathComponentExistsInSet:{setCopy, v12}] & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableSet *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)selfCopy setSet:v5];
}

@end