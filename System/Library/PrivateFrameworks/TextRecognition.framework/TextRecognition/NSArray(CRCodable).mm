@interface NSArray(CRCodable)
- (id)crCodableDataRepresentation;
- (id)initWithCRCodableDataRepresentation:()CRCodable objectProviderBlock:;
@end

@implementation NSArray(CRCodable)

- (id)crCodableDataRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = [self count];
  v2 = [MEMORY[0x1E695DF88] dataWithCapacity:(32 * v15) | 8];
  [v2 appendBytes:&v15 length:8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {

          v9 = 0;
          goto LABEL_11;
        }

        [CRCodingUtilities appendCodable:v8 toData:v2, v11];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = v2;
LABEL_11:

  return v9;
}

- (id)initWithCRCodableDataRepresentation:()CRCodable objectProviderBlock:
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v14 = 0;
    v8 = [CRCodingUtilities unsignedIntegerFromEncodingData:v6 offset:&v14];
    for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
    {
      v10 = [CRCodingUtilities objectDataFromEncodingData:v6 offset:&v14];
      v11 = v7[2](v7, v10);
      if (v11)
      {
        [i addObject:v11];
      }
    }

    self = [self initWithArray:i];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end