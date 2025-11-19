@interface UIUAddedElements
- (NSArray)results;
- (NSString)groupID;
- (UIUAddedElements)initWithContents:(id)a3;
@end

@implementation UIUAddedElements

- (UIUAddedElements)initWithContents:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIUAddedElements;
  v5 = [(UIUAddedElements *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = v4;

  return v5;
}

- (NSArray)results
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(UIUAddedElements *)self underlyingObject];
  v5 = [v4 dedupeElements];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [[UIUDedupeElement alloc] initWithContents:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (NSString)groupID
{
  v2 = [(UIUAddedElements *)self underlyingObject];
  v3 = [v2 groupID];

  return v3;
}

@end