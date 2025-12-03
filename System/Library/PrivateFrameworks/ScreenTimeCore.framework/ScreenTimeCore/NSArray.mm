@interface NSArray
- (id)orderedDescription;
@end

@implementation NSArray

- (id)orderedDescription
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v5 = [(NSArray *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        orderedDescription = [*(*(&v12 + 1) + 8 * i) orderedDescription];
        [v3 addObject:orderedDescription];
      }

      v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:&stru_1001AC900];

  return v10;
}

@end