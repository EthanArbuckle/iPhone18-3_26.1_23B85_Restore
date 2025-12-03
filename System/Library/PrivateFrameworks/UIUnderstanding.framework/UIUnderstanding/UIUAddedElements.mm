@interface UIUAddedElements
- (NSArray)results;
- (NSString)groupID;
- (UIUAddedElements)initWithContents:(id)contents;
@end

@implementation UIUAddedElements

- (UIUAddedElements)initWithContents:(id)contents
{
  contentsCopy = contents;
  v8.receiver = self;
  v8.super_class = UIUAddedElements;
  v5 = [(UIUAddedElements *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = contentsCopy;

  return v5;
}

- (NSArray)results
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  underlyingObject = [(UIUAddedElements *)self underlyingObject];
  dedupeElements = [underlyingObject dedupeElements];

  v6 = [dedupeElements countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(dedupeElements);
        }

        v10 = [[UIUDedupeElement alloc] initWithContents:*(*(&v12 + 1) + 8 * i)];
        [array addObject:v10];
      }

      v7 = [dedupeElements countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (NSString)groupID
{
  underlyingObject = [(UIUAddedElements *)self underlyingObject];
  groupID = [underlyingObject groupID];

  return groupID;
}

@end