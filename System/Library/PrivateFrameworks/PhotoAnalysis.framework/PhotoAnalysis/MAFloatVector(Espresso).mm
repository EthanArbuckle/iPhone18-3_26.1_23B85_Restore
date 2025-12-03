@interface MAFloatVector(Espresso)
- (uint64_t)initWithDataTensor:()Espresso;
@end

@implementation MAFloatVector(Espresso)

- (uint64_t)initWithDataTensor:()Espresso
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  shape = [v4 shape];
  v6 = [shape countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(shape);
        }

        v9 *= [*(*(&v13 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [shape countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1;
  }

  v11 = [self initWithFloats:objc_msgSend(v4 count:{"dataPointer"), v9}];
  return v11;
}

@end