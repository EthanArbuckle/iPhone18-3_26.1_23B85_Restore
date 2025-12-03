@interface NSOrderedSet(FieldSpecTupleAdditions)
- (id)allFieldSpecs;
@end

@implementation NSOrderedSet(FieldSpecTupleAdditions)

- (id)allFieldSpecs
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        fieldSpec = [*(*(&v10 + 1) + 8 * i) fieldSpec];
        [array addObject:fieldSpec];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

@end