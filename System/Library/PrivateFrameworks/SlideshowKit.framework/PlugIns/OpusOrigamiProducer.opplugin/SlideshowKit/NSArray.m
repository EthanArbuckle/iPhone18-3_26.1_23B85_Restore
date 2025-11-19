@interface NSArray
- (void)removeImages;
@end

@implementation NSArray

- (void)removeImages
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSArray *)self countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(self);
        }

        [objc_msgSend(*(*(&v7 + 1) + 8 * v6) objectForKey:{@"image", "removingFromCollection"}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)self countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end